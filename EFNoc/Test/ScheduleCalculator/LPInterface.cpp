#include "LPInterface.h"

#include "ClpSimplex.hpp"
#include "ClpInterior.hpp"
#include "ClpPrimalColumnSteepest.hpp"
#include "ClpPrimalColumnDantzig.hpp"

#include "VarRepository.h"
#include <time.h>

using namespace std;

static const double FLOW_TOLERANCE = 1e-5;

LPInterface::LPInterface(void)
{}

bool LPInterface::SolveLP(CommunicationGraph & commGraph, InterferenceGraph & interGraph, RequestsCollection & requests, 
							SchedulingParams & params, bool useInterferenceConstraints, std::map<int,std::vector<int>> & interfereingEdges, 
							double *& solution, VarRepository *& vars)
{
	// calculate the number of variables: #freq * # requests * #directed edges
	int nFreq = params.N_FREQS_FOR_SCHEDULE;
	int nReq = (int) requests.GetRequests().size();
	int nVertices = commGraph.GetNumVertices();
	int nCommEdges = commGraph.GetNumEdges();

	int nVars = nFreq * nReq * nCommEdges + nReq + 1; 

	// each variable is a triplet (edge #, request #, freq) denoted f_{i,j}(e) (i-request, j-freq).
	// the other types of variables are bounds for the flows.
	// the numbering of the variables is 0...nVars-1 in the following order:
	//  (e=1,r=1,f=1), (e=1,r=1,f=2)...(e=1,r=1,f=nFreq), 
	//  (e=1,r=2,f=1), (e=1,r=2,f=2)...(e=1,r=2,f=nFreq), 
	//   ... 
	//  (e=1,r=nReq,f=1), (e=1,r=nReq,f=2)...(e=1,r=nReq,f=nFreq), 
	//  ...
	//  ...
	//  (e=nInterEdges,r=1,f=1), (e=nInterEdges,r=1,f=2)...(e=nInterEdges,r=1,f=nFreq), 
	//   ... 
	//  (e=nInterEdges,r=nReq,f=1), (e=nInterEdges,r=nReq,f=2)...(e=nInterEdges,r=nReq,f=nFreq)
	//   \rho_1... \rho_nReq \rho  (this is variable number nVars-1)


	// the constraints excluding the upper/lower bound on the variables are:
	// type I - flow conservation \forall i,v 
	//    \Sum_{j, e\in out(v)} c(e)*f_{i,j} (e) - \Sum_{j, e\in in(v)} c(e)*f_{i,j} (e) = 0
	int nTypeOneConstraints = (nVertices-2)*nReq;

	// type II - maximizing the flow leaving s_i \forall i 
	// \Sum_{j, e \in out(s_i)} c(e)*f_{i,j} (e) - \Sum_{j, e\in in(s_i)} c(e)*f_{i,j} (e) = \rho_i*d_i
	int nTypeTwoConstraints = nReq;

	//type III - \rho is a lower bound on all the requests ratios \forall i
	// \rho_i >= \rho
	int nTypeThreeConstraints = nReq;

	// type IV - a single transmitter-reciever in each node \forall v 
	// \Sum_{u \in N(v),i,j} (f_{i,j}(e)+f_{i,j}(e^R)) \le 1, 
	// where N(v) are the neighbors of v; e=(u,v) and e^R=(v,u) are communication edges
	int nTypeFourConstraints = nVertices;

	// type V - interference within a frequency  \forall e, j
	// \Sum_{i, e' \in conf(e) \cup \{e\}} f_{i,j}(e') <= 1
	// where e is an edge in the communication graph, e' are edges in the communication
	// graph that interferes e, i.e., if e=(u,v) and e'=(w,x) than either w or x equals u or v, 
	// or at least one of the edges (u,w), (u,x), (v,w), (v,x) is in the interference graph.
	// We denote {e,e^R} as N_0, direct neighbors such as (u,w) are the set N_1, 
	// and indirect neighbors such as (w,x) where (u,w) is in the interference graph are the set N_2

	// Note: the condition on e and on e-reverse is equal, so I generate it only once
	int nTypeFiveConstraints = (nCommEdges/2)*nFreq;

	int nConstraints = nTypeOneConstraints + nTypeTwoConstraints +
		nTypeThreeConstraints + nTypeFourConstraints;
	if (useInterferenceConstraints)
	{
		// in the flow formalizm we don't take interference constraints into account
		nConstraints += nTypeFiveConstraints;
	}

	vars = new VarRepository(nFreq, nReq, commGraph, interGraph);
	// set lower and upper bounds for the variables and set the objective.
	solution = new double[nVars];
	if (solution == NULL)
		return false;
	double * collb;
	double * colub;
	if (SetLowUpBoundsVar(nVars, collb, colub) == false)
	{
		delete [] solution;
		solution = NULL;
		return false;
	}
	if (AvoidCirculations(nFreq, commGraph, requests, colub, *vars) == false)
	{
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}

	double * obj;
	if (SetObjective(nFreq, nReq, nCommEdges, nVars,obj) == NULL)
	{
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}

	CoinPackedMatrix matrix(false,0,0);
	matrix.setDimensions(0,nVars);
	double * rowlb = new double [nConstraints];
	if (rowlb == NULL)
	{
		delete [] obj;
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}
	double * rowub = new double [nConstraints];
	if (rowub == NULL)
	{
		delete [] rowlb;
		delete [] obj;
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}

	time_t start,end;
	double dif;

	// type I and II constraints
	time (&start);
	cout << "Start constructing constraints I,II" << endl;
	int firstRowNum = 0;
	ConstructTypeOneAndTwo(firstRowNum, commGraph, requests, nFreq, rowlb, rowub, matrix,  vars);
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	// type III constraints
	time(&start);
	cout << "Start constructing constraints III" << endl;
	firstRowNum = nTypeOneConstraints + nTypeTwoConstraints;
	ConstructTypeThree    (firstRowNum, nReq, rowlb, rowub, matrix, vars);
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	// type IV constraints
	time(&start);
	cout << "Start constructing constraints IV" << endl;
	firstRowNum = nTypeOneConstraints + nTypeTwoConstraints + nTypeThreeConstraints;
	ConstructTypeFour     (firstRowNum, commGraph, nReq, nFreq, rowlb, rowub, matrix, vars);
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	// type V constraints
	if (useInterferenceConstraints)
	{
		time(&start);
		cout << "Start constructing constraints V" << endl;
		firstRowNum = nTypeOneConstraints + nTypeTwoConstraints + 
			nTypeThreeConstraints + nTypeFourConstraints;
		ConstructTypeFive     (firstRowNum, commGraph, nReq, nFreq, interfereingEdges, rowlb, rowub, matrix, vars);
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
	}

	cout << "Start solving" << endl;
	time (&start);

#ifdef INTERIOR
	ClpInterior  model;
#else
	ClpSimplex  model;
#endif
	model.setOptimizationDirection(-1.);  // maximize
	model.setLogLevel(4);
	model.setSolveType(3);

/*  Solve type - 1 simplex, 2 simplex interface, 3 Interior.
  inline int solveType() const
  { return solveType_;}
  inline void setSolveType(int type)
*/

	model.loadProblem (matrix, collb, colub, obj, rowlb, rowub); 

#ifdef INTERIOR
	model.primalDual();
#else
	model.primal();
#endif
	time (&end);
	dif = difftime (end,start);

	double * solutionModel = model.primalColumnSolution();
	for (int i=0;i<nVars;i++)
	{
		solution[i] = solutionModel[i];
		if (solution[i] > FLOW_TOLERANCE)
			cout << "Variable # : " << i << " value: " << solution[i] << endl;
		else
			solution[i] = 0.;

	}
	printf("time elapsed: %f\n",dif);

/*	delete [] rowub;
	delete [] rowlb;
	delete [] obj;
	delete [] colub;
	delete [] colub;
*/
	return true;
}

bool LPInterface::SetLowUpBoundsVar(int nVars,double *& collb, double *& colub)
{
	collb = new double[nVars]; 
	if (collb == NULL)
	{
		return false;
	}
	colub = new double[nVars]; 
	if (colub == NULL)
	{
		delete [] collb; collb = NULL;
		return false;
	}
	for (int i=0;i<nVars;i++)
	{
		collb[i] = 0.;
		colub[i] = 1.;
	}
	return true;
}


bool LPInterface::SetObjective(int nFreq, int nReq, int nCommEdges, int nVars,double *& obj)
{
	obj = new double[nVars];
	if (obj == NULL)
		return false;
	for (int i=0;i<nVars;i++)
	{
		obj[i] = 0.;
	}

/*	double SUM_IMPORTANCE_RATIO =  1./20.;
	for (int i=(nFreq * nReq * nCommEdges); i< nVars-1;i++)
	{
		obj[i] = SUM_IMPORTANCE_RATIO;  // rho_i
	}
*/	obj[nVars-1] = 1.;  // rho
	return true;
}

bool LPInterface::AvoidCirculations(int nFReq, CommunicationGraph & commGraph, RequestsCollection & requests, double * colub, VarRepository & vars)
{
	vector<CommunicationRequest*> requestsVec = requests.GetRequests();
	int nReq = (int) requestsVec.size();
	for (int i=0; i < nReq; i++)
	{
		CommunicationRequest* pReq = requestsVec[i];
		int src = pReq->GetSource();
		int dest = pReq->GetFirstDestination();

		for (int j=0;j<nFReq;j++)
		{
			// force the edges that enter the source of a request to be 0 (for this request and all frequencies).
			RescueVertex *pSrc = commGraph.GetVertex(src);
			const vector<int> & ins = pSrc->GetInEdges();
			for (int k=0; k< (int) ins.size();k++)
			{
				int varId = vars.VarToId(EDGE_REQ_FREQ,i+1,j+1,ins[k]);
				colub[varId] = 0.;
/*				int rrr,fff,fr,to,ed;
				VarTypes ttt;
				vars.IdToVar(varId,ttt,rrr,fff,fr,to,ed);
				int n=5; */
			}
			// force the edges that exit the target of a request to be 0 (for this request and all frequencies).
			RescueVertex *pDest = commGraph.GetVertex(dest);
			const vector<int> & outs = pDest->GetOutEdges();
			for (int k=0; k< (int) outs.size();k++)
			{
				int varId = vars.VarToId(EDGE_REQ_FREQ,i+1,j+1,outs[k]);
				colub[varId] = 0.;
			}
		}
	}
	return true;
}

void LPInterface::ConstructTypeOneAndTwo(int firstRowNum, CommunicationGraph & commGraph, RequestsCollection & requests, int nFreq,
										double * rowlb, double * rowub, CoinPackedMatrix & matrix,  VarRepository * vars)
{
	vector<CommunicationRequest*> requestsVec = requests.GetRequests();
	int nReq = (int) requestsVec.size();
	int rowNum = firstRowNum;
	map<int,RescueVertex*> & vertices = commGraph.GetVertices();
	map<int,RescueVertex*>::iterator vertIter;

	int    * indices = new int   [vars->GetNVars()];
	double * values  = new double[vars->GetNVars()];

	int ll = 0;
	for (vertIter = vertices.begin(); vertIter != vertices.end(); vertIter++)
	{
		ll = ll + 1;
		cout << "I,II - Start constructing constraints for node " << ll << endl;

		RescueVertex * pVert = vertIter->second;
		const vector<int> & ins  = pVert->GetInEdges();
		const vector<int> & outs = pVert->GetOutEdges();
		for (int i=0;i<nReq;i++)
		{
			CommunicationRequest* pReq = requestsVec[i];
			double demand = pReq->GetDemand();
			int src = pReq->GetSource();
			int dest = pReq->GetFirstDestination();
			int vertId = pVert->GetVertexNum();
			if (vertId == dest)
				continue;  
			int nVals = 0;

		// type I - flow conservation \forall i,v 
		//    \Sum_{j, e\in in(v)} c(e)*f_{i,j} (e) - \Sum_{j, e\in out(v)} c(e)*f_{i,j} (e) = 0

		// type II - maximizing the flow leaving s_i \forall i 
		// \Sum_{j, e \in out(s_i)} c(e) f_{i,j} (e) - \Sum_{j, e\in in(s_i)} c(e)*f_{i,j} (e) = \rho_i*d_i
			for (int k=1;k<=nFreq;k++)  // one based
			{
				for (int j=0;j<(int)ins.size();j++)
				{
					int edgeId = ins[j];
					RescueEdge * pEdge = commGraph.GetEdge(edgeId);
					double capacity = pEdge->GetCapacity();
					int varNum = vars->VarToId(EDGE_REQ_FREQ,i+1,k,edgeId);
					indices[nVals] = varNum;
					values[nVals] = -capacity;
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,-capacity); 
				}
				for (int j=0;j<(int)outs.size();j++)
				{
					int edgeId = outs[j];
					RescueEdge * pEdge = commGraph.GetEdge(edgeId);
					double capacity = pEdge->GetCapacity();
					int varNum = vars->VarToId(EDGE_REQ_FREQ,i+1,k,edgeId);
					indices[nVals] = varNum;
					values[nVals] = capacity;
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,capacity); 
				}
			}
			if (src == vertId)
			{
				// last two variables are dummy 
				int varNum = vars->VarToId(RHO_I,i+1,1,1);
				indices[nVals] = varNum;
				values[nVals] = -demand;
				nVals++;
//				matrix.modifyCoefficient(rowNum,varNum,-demand);
			}

			rowlb[rowNum] = 0;
			rowub[rowNum] = 0;
			matrix.appendRow(nVals,indices, values);
		
			rowNum++;
		}
	}
	delete [] values;
	delete [] indices;
}

void LPInterface::ConstructTypeThree(int firstRowNum, int nReq, double * rowlb, double * rowub, 
									 CoinPackedMatrix & matrix, VarRepository * vars)
{
	int rowNum = firstRowNum;
	int varIdTotalRho = vars->VarToId(RHO,1,1,1); 
	for (int i=1;i<=nReq;i++)  // 1 based
	{
		int varIdCurrRho = vars->VarToId(RHO_I,i,1,1);
		//type III - \rho is a lower bound on all the requests ratios \forall i
		// \rho_i >= \rho
		int indices[2];
		double values[2];
		indices[0] = varIdTotalRho;
		values[0] = -1.;
//		matrix.modifyCoefficient(rowNum,varIdTotalRho,-1.);
		indices[1] = varIdCurrRho;
		values[1] = 1.;
		matrix.appendRow(2,indices,values);
//		matrix.modifyCoefficient(rowNum,varIdCurrRho,1.);

		rowlb[rowNum] = 0;
		rowub[rowNum] = 1; // not needed
		
		rowNum++;
	}
}


void LPInterface::ConstructTypeFour(int firstRowNum, CommunicationGraph & commGraph, int nReq, int nFreq,
										double * rowlb, double * rowub, CoinPackedMatrix & matrix, VarRepository * vars)
{
	int rowNum = firstRowNum;
	map<int,RescueVertex*> & vertices = commGraph.GetVertices();
	map<int,RescueVertex*>::iterator vertIter;

	int    * indices = new int   [vars->GetNVars()];
	double * values  = new double[vars->GetNVars()];

	int ll = 0;
	for (vertIter = vertices.begin(); vertIter != vertices.end(); vertIter++)
	{
		ll = ll + 1;
		cout << "IV - Start constructing constraints for node " << ll << endl;
		RescueVertex * pVert = vertIter->second;
		const vector<int> & ins  = pVert->GetInEdges();
		const vector<int> & outs = pVert->GetOutEdges();
		int nVals = 0;
		for (int i=1;i<=nReq;i++)  // 1 based
		{

			// type IV - a single transmitter-reciever in each node \forall v 
			// \Sum_{u \in N(v),i,j} (f_{i,j}(e)+f_{i,j}(e^R)) \le 1, 
			// where N(v) are the neighbors of v; e=(u,v) and e^R=(v,u) are communication edges
			for (int j=1;j<=nFreq;j++)  // 1 based
			{
				for (int k=0;k<(int)ins.size();k++)
				{
					int edgeId = ins[k];
					int varNum = vars->VarToId(EDGE_REQ_FREQ,i,j,edgeId);\
					indices[nVals] = varNum;
					values[nVals] = 1.;
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,1); 
				}
				for (int k=0;k<(int)outs.size();k++)
				{
					int edgeId = outs[k];
					int varNum = vars->VarToId(EDGE_REQ_FREQ,i,j,edgeId);
					indices[nVals] = varNum;
					values[nVals] = 1.;
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,1); 
				}
			}
		}
		rowlb[rowNum] = 0;
		rowub[rowNum] = 1;
		matrix.appendRow(nVals,indices, values);
		
		rowNum++;
	}
	delete [] values;
	delete [] indices;
}

void LPInterface::ConstructTypeFive(int firstRowNum, CommunicationGraph & commGraph, int nReq, 
									int nFreq, std::map<int,std::vector<int>> & interfereingEdges, 
									double * rowlb, double * rowub, CoinPackedMatrix & matrix, VarRepository * vars)
{
	int rowNum = firstRowNum;
	map<int,RescueEdge*> & edges = commGraph.GetEdges();
	map<int,RescueEdge*>::iterator edgesIter;
	int    * indices = new int   [vars->GetNVars()];
	double * values  = new double[vars->GetNVars()];

	int ll = 0;
	for (edgesIter = edges.begin(); edgesIter != edges.end(); edgesIter++)
	{
		ll = ll + 1;
		cout << "V - Start constructing constraints for edge " << ll << endl;
		RescueEdge * pEdge = edgesIter->second;
		int from = pEdge->GetFrom();
		int to = pEdge->GetTo();
		if (from > to)  // process only edges in one direction
			continue;


		int edgeNum = pEdge->GetEdgeNum();
		vector<int> & interfering = interfereingEdges[edgeNum];
		for (int j=1;j<=nFreq;j++)  // 1 based
		{
			int nVals = 0;
			for (int i=1;i<=nReq;i++)  // 1 based
			{

			// type V - interference within a frequency  \forall e, j
			// \Sum_{i, e' \in conf(e) \cup \{e\}} f_{i,j}(e') <= 1
			// where e is an edge in the communication graph, e' are edges in the communication
			// graph that interferes e, i.e., if e=(u,v) and e'=(w,x) than either w or x equals u or v, 
			// or at least one of the edges (u,w), (u,x), (v,w), (v,x) is in the interference graph.
			// We denote {e,e^R} as N_0, direct neighbors such as (u,w) are the set N_1, 
			// and indirect neighbors such as (w,x) where (u,w) is in the interference graph are the set N_2
				for (int k=0;k<(int)interfering.size();k++)
				{
					int edgeId = interfering[k];
					int varNum = vars->VarToId(EDGE_REQ_FREQ,i,j,edgeId);
					indices[nVals] = varNum;
					values[nVals] = 1.;
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,1); 
				}
			}
			rowlb[rowNum] = 0;
			rowub[rowNum] = 1;
			matrix.appendRow(nVals,indices, values);
			rowNum++;
		}
	}
	delete [] values;
	delete [] indices;
}
