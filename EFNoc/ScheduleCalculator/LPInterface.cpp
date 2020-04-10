#include "LPInterface.h"

#include "ClpSimplex.hpp"
#include "ClpInterior.hpp"
#include "ClpPrimalColumnSteepest.hpp"
#include "ClpPrimalColumnDantzig.hpp"
#include "CoinModel.hpp"

#include "VarRepository.h"
#include <time.h>
#include <assert.h>
#define USE_MATRIX_MODEL
using namespace std;

static const double FLOW_TOLERANCE = 1e-5;

LPInterface::LPInterface(void)
{}

bool LPInterface::SolveLP(CommunicationGraph & commGraph, RequestsCollection & requests, 
							SchedulingParams & params,  
							double *& solution, VarRepository *& vars)
{
	// calculate the number of variables: # requests * #directed edges
	int nReq = (int) requests.GetRequests().size();
	int nVertices = commGraph.GetNumVertices();
	int nCommEdges = commGraph.GetNumEdges();

	int nVars = (nReq+1) * nCommEdges + 1; 

	// each variable is a pair (edge #, request #) denoted f_{i}(e) (i-request).
	// request i can be seen as request from u to v.
	// the other types of variables are bounds for the flows.
	// the numbering of the variables is 0...nVars-1 in the following order:
	//  (e=0,r=0), 
	//  (e=1,r=0),  
	//   ... 
	//  (e=nInterEdges-1,r=0)
	//  (e=0,r=1) 
	//   ... 
	//  (e=nInterEdges-1,r=nReq-1),
	//
	//  (e=0,\bw)
	//  (e=nInterEdges-1,\bw)  
	//  \rho (this is variable number nVars-1)


	// the constraints excluding the upper/lower bound on the variables are:
	// type I - flow conservation \forall i,v 
	//    \Sum_{i, e\in out(v)} f_{i} (e) - \Sum_{i, e\in in(v)} f_{i} (e) = 0
	int nTypeOneConstraints = (nVertices-2)*nReq;

	// type II - meet demand for the flow leaving u_i \forall i 
	// \Sum_{i, e \in out(u_i)} f_{i} (e) = d_i
	int nTypeTwoConstraints = nReq;

	//type III - capacitance on edge
	// \Sum_{i,e} f_{i} (e) <= w(e) 
	int nTypeThreeConstraints = nCommEdges;

	//type 4 - w(e) is smaller than edge cost multiplied by \rho
	// w(e) <= c(e)*\rho 
	int nTypeFourConstraints = nCommEdges;

	int nConstraints = nTypeOneConstraints + nTypeTwoConstraints +
		nTypeThreeConstraints + nTypeFourConstraints;

	vars = new VarRepository(nReq, commGraph);
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
	if (AvoidCirculations(commGraph, requests, colub, *vars) == false)
	{
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}

	double * obj;
	if (SetObjective(nReq, nCommEdges, nVars,obj,commGraph) == NULL)
	{
		delete [] colub;
		delete [] collb;
		delete [] solution;
		solution = NULL;
		return false;
	}
	CoinModel coinModel;
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
	ConstructTypeOneAndTwo(firstRowNum, commGraph, requests, rowlb, rowub, matrix, coinModel, vars, obj, params, nConstraints);
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	// type III constraints
	time(&start);
	cout << "Start constructing constraints III" << endl;
	firstRowNum = nTypeOneConstraints + nTypeTwoConstraints;
	ConstructTypeThree(firstRowNum, commGraph, nReq, rowlb, rowub, matrix, coinModel, vars);
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	// type 4 constraints
	time(&start);
	cout << "Start constructing constraints 4" << endl;
	firstRowNum = nTypeOneConstraints + nTypeTwoConstraints + nTypeThreeConstraints;
	ConstructTypeFour(firstRowNum, commGraph, nReq, rowlb, rowub, matrix, coinModel, vars);
	time(&end);
	dif = difftime(end, start);
	printf("time elapsed: %f\n", dif);

	cout << "Start solving" << endl;
	time (&start);

#ifdef INTERIOR
	ClpInterior  model;
#else
	ClpSimplex  model;
#endif
	model.setOptimizationDirection(1);  // minimize
	model.setLogLevel(10);
	model.setSolveType(3);

/*  Solve type - 1 simplex, 2 simplex interface, 3 Interior.
  inline int solveType() const
  { return solveType_;}
  inline void setSolveType(int type)
*/
	
	/*
	  min ctx (obj)
        such that:

      rowlower_bound <= Ax <= rowupper_bound
      columnlower_bound <= x <= columnupper_bound
	*/
#ifdef USE_MATRIX_MODEL
	//coinModel.setColumnLower(nVars,collb);
	//for (int i = 0; i < nVars; i++)
	//	model.setColumnLower(i, collb[i]);
	//coinModel.setColumnUpper(nVars,colub);
	//for (int i = 0; i < nVars; i++)
	//	model.setColumnUpper(i, colub[i]);
	//coinModel.setRowUpper(nConstraints, rowub);
	//for (int i = 0; i < nConstraints; i++)
	//	model.setRowUpper(i, rowub[i]);
	//coinModel.setRowLower(nConstraints, rowlb);
	//for (int i = 0; i < nConstraints; i++)
	//	model.setRowLower(i, rowlb[i]);
	//coinModel.setObjective(nVars, obj);
	//model.setRowObjective(obj);
	coinModel.createPackedMatrix(matrix, coinModel.associatedArray());
	//coinModel.setOptimizationDirection(1); // minimize
	model.loadProblem(matrix, collb, colub, obj, rowlb, rowub);
	//model.loadProblem(coinModel);// , collb, colub, obj, rowlb, rowub);
#else
	model.loadProblem (matrix, collb, colub, obj, rowlb, rowub); 
#endif

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
		if (solution[i] > FLOW_TOLERANCE) {
			VarTypes varType;
			int req, from, to, edgeId;
			vars->IdToVar(i, varType, req, from, to, edgeId);
			if (varType == EDGE_REQ)
				cout << "Variable # : " << i << " value: " << solution[i] << ", <edge,req>= " << from <<"->"<<to << "," << req << ",edgeId=" << edgeId << endl;
			if (varType == BW_I)
				cout << "Variable # : " << i << " value: " << solution[i] << ", BW<edge>= " << from << "->" << to << ",edgeId=" << edgeId << endl;
			if (varType == RHO)
				cout << "Variable # : " << i << " value: " << solution[i] << ", Rho(maxBW)" << endl;
		}
		else
			solution[i] = 0.;

	}
	printf("time elapsed: %f\n",dif);

	// update capability in graph
	for (unsigned bw=0;bw<nCommEdges;bw++) {
		commGraph.GetEdge(bw)->SetCapacity(solution[nCommEdges*nReq + bw]);
	}


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
		colub[i] = COIN_DBL_MAX ; //; // TODO - upper bound for flow ?-(demand for request) for bw ? 
	}
	return true;
}


bool LPInterface::SetObjective(int nReq, int nCommEdges, int nVars,double *& obj,CommunicationGraph & commGraph)
{
	obj = new double[nVars];
	if (obj == NULL)
		return false;
	for (int i = 0; i<nVars; i++)
	{
		obj[i] = 0.;
	}
	obj[nVars - 1] = 1; // \rho
	return true;
}

bool LPInterface::AvoidCirculations(CommunicationGraph & commGraph, RequestsCollection & requests, double * colub, VarRepository & vars)
{
	vector<CommunicationRequest*> requestsVec = requests.GetRequests();
	int nReq = (int) requestsVec.size();
	for (int i=0; i < nReq; i++)
	{
		CommunicationRequest* pReq = requestsVec[i];
		int src = pReq->GetSource();
		int dest = pReq->GetFirstDestination();

			// force the edges that enter the source of a request to be 0 (for this request and all frequencies).
			EFNocVertex *pSrc = commGraph.GetVertex(src);
			const vector<int> & ins = pSrc->GetInEdges();
			for (int k=0; k< (int) ins.size();k++)
			{
				int varId = vars.VarToId(EDGE_REQ,i,ins[k]);
				colub[varId] = 0.;
			}
			// force the edges that exit the target of a request to be 0 (for this request and all frequencies).
			EFNocVertex *pDest = commGraph.GetVertex(dest);
			const vector<int> & outs = pDest->GetOutEdges();
			for (int k=0; k< (int) outs.size();k++)
			{
				int varId = vars.VarToId(EDGE_REQ,i,outs[k]);
				colub[varId] = 0.;
			}
		}
	return true;
}

void LPInterface::ConstructTypeOneAndTwo(int firstRowNum, CommunicationGraph & commGraph, RequestsCollection & requests,
					double * rowlb, double * rowub, CoinPackedMatrix & matrix, CoinModel& coinModel,
										VarRepository * vars,double *& obj,SchedulingParams& params,int nConstraints)
{
	vector<CommunicationRequest*> requestsVec = requests.GetRequests();
	int nReq = (int) requestsVec.size();
	int rowNum = firstRowNum;
	map<int,EFNocVertex*> & vertices = commGraph.GetVertices();
	map<int,EFNocVertex*>::iterator vertIter;

	int nVars = vars->GetNVars();
	int    * indices = new int   [nVars];
	double * values  = new double[nVars];

	int ll = 0;
	for (vertIter = vertices.begin(); vertIter != vertices.end(); vertIter++)
	{
		ll = ll + 1;
		cout << "I,II - Start constructing constraints for node " << ll << endl;

		EFNocVertex * pVert = vertIter->second;
		const vector<int> & ins  = pVert->GetInEdges();
		const vector<int> & outs = pVert->GetOutEdges();
		for (int i=0;i<nReq;i++)
		{
			CommunicationRequest* pReq = requestsVec[i];
			double demand = pReq->GetDemand()*(1+params.SLOTS_ROUNDING_FACTOR);
			int src = pReq->GetSource();
			int dest = pReq->GetFirstDestination();
			int vertId = pVert->GetVertexNum();
			int nVals = 0;
			if (vertId != dest && vertId!=src) {

		// type I - flow conservation \forall i,v 
		//    \Sum_{j, e\in in(v)} f_{i} (e) - \Sum_{j, e\in out(v)} f_{i} (e) = 0

			for (int j=0;j<(int)ins.size();j++)
			{
				int edgeId = ins[j];
				EFNocEdge * pEdge = commGraph.GetEdge(edgeId);
				int varNum = vars->VarToId(EDGE_REQ,pReq->GetRequestNum(),pEdge->GetFrom(),pEdge->GetTo());
				assert(nVals < nVars);
				indices[nVals] = varNum;
				values[nVals] = -1;
				nVals++;
//				matrix.modifyCoefficient(rowNum,varNum,-1); 
			}
			for (int j=0;j<(int)outs.size();j++)
			{
				int edgeId = outs[j];
				EFNocEdge * pEdge = commGraph.GetEdge(edgeId);
				int varNum = vars->VarToId(EDGE_REQ,pReq->GetRequestNum(),pEdge->GetFrom(),pEdge->GetTo());
				assert(nVals < nVars);
				indices[nVals] = varNum;
				values[nVals] = 1;
				nVals++;
//				matrix.modifyCoefficient(rowNum,varNum,1); 
			}

			rowlb[rowNum] = 0;
			rowub[rowNum] = 0;
			assert(rowNum < nConstraints);
#ifdef USE_MATRIX_MODEL
			coinModel.addRow(nVals, indices, values);
#else
			matrix.appendRow(nVals,indices, values);
#endif
			rowNum++;
		}
		// type II - meet demand 
		// \Sum_{j, e \in out(s_i)} f_{i} (e) = d_i
			if (src == vertId)
			{
				for (int j=0;j<(int)outs.size();j++)
				{
					int edgeId = outs[j];
					EFNocEdge * pEdge = commGraph.GetEdge(edgeId);
					int varNum = vars->VarToId(EDGE_REQ,pReq->GetRequestNum(),pEdge->GetFrom(),pEdge->GetTo());
					indices[nVals] = varNum;
					values[nVals] = 1.0;
					assert(nVals < nVars);
					nVals++;
//					matrix.modifyCoefficient(rowNum,varNum,1); 
				}
				rowlb[rowNum] = demand;
				rowub[rowNum] = demand;
				//cout << "Row " << rowNum << " nConstraints " << nConstraints <<"\n";
				assert(rowNum < nConstraints);
#ifdef USE_MATRIX_MODEL
				coinModel.addRow(nVals, indices, values);
#else
				matrix.appendRow(nVals, indices, values);
#endif
				rowNum++;
			}
		}
	}
	delete [] values;
	delete [] indices;
}


void LPInterface::ConstructTypeThree(int firstRowNum, CommunicationGraph & commGraph, int nReq, double * rowlb, double * rowub,
	CoinPackedMatrix & matrix, CoinModel& coinModel, VarRepository * vars)
{
	int rowNum = firstRowNum;
	int    * indices = new int[vars->GetNVars()];
	double * values = new double[vars->GetNVars()];
	for (int e = 0; e<commGraph.GetNumEdges(); e++)
	{
		EFNocEdge * edge = commGraph.GetEdge(e);
		int varIdCurrBW = vars->VarToId(BW_I, 0, edge->GetFrom(), edge->GetTo());
		//type III - sum of all flows on edge is lower equal to BW_I
		indices[0] = varIdCurrBW;
		values[0] = -1.;
		int nVal = 1;
		for (int r = 0; r<nReq; r++) {
			int varNum = vars->VarToId(EDGE_REQ, r, edge->GetFrom(), edge->GetTo());
			indices[nVal] = varNum;
			values[nVal] = 1.;
			nVal++;
		}
#ifdef USE_MATRIX_MODEL
		coinModel.addRow(nVal, indices, values);
#else
		matrix.appendRow(nVal, indices, values);
#endif
		//		matrix.modifyCoefficient(rowNum,varIdCurrRho,1.);

		rowlb[rowNum] = 0;
		rowub[rowNum] = 0;

		rowNum++;
	}
	delete[] values;
	delete[] indices;
}


void LPInterface::ConstructTypeFour(int firstRowNum, CommunicationGraph & commGraph, int nReq, double * rowlb, double * rowub,
	CoinPackedMatrix & matrix, CoinModel& coinModel, VarRepository * vars)
{
	int rowNum = firstRowNum;
	int    * indices = new int[vars->GetNVars()];
	double * values = new double[vars->GetNVars()];
	int rhoVarId = vars->VarToId(RHO, 0, 0, 0);
	for (int e = 0; e<commGraph.GetNumEdges(); e++)
	{
		EFNocEdge * edge = commGraph.GetEdge(e);
		int varIdCurrBW = vars->VarToId(BW_I, 0, edge->GetFrom(), edge->GetTo());
		//type 4 - BW_I lower equal \rho times cost
		indices[0] = varIdCurrBW;
		values[0] = 1.;
		indices[1] = rhoVarId;
		values[1] = -1.0*commGraph.GetEdge(e)->GetPrice();
		int nVal = 2;
#ifdef USE_MATRIX_MODEL
		coinModel.addRow(nVal, indices, values);
#else
		matrix.appendRow(nVal, indices, values);
#endif
		//		matrix.modifyCoefficient(rowNum,varIdCurrRho,1.);

		rowlb[rowNum] = -DBL_MAX;
		rowub[rowNum] = 0;

		rowNum++;
	}
	delete[] values;
	delete[] indices;
}
