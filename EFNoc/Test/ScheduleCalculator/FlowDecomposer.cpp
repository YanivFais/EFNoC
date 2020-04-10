#include "FlowDecomposer.h"
#include "CommunicationEdge.h"

using namespace std;

FlowDecomposer::FlowDecomposer()
{
}

FlowDecomposer::~FlowDecomposer(void)
{
}

bool FlowDecomposer::DecomposeFlow(CommunicationGraph & commGraph, RequestsCollection &requests, 
									SchedulingParams & params, 
									double * solution, VarRepository *vars, std::vector<FlowPath> & pathsOut)
{
	vector<CommunicationRequest*> & req = requests.GetRequests();
	int nRequests = (int) req.size();

	for (int i=0;i<nRequests;i++)
	{
		CommunicationRequest* currReq = req[i];
		int reqNum = currReq->GetRequestNum();
		int reqId = i+1;
		int source = currReq->GetSource();
		int dest = currReq->GetFirstDestination();
		double demand = currReq->GetDemand();

		vector<FlowDetails> edgesForRequest;
		double totalFlow;
		GetEdgesUsedForRequest(commGraph, params, reqNum, reqId, demand, solution, vars,edgesForRequest, totalFlow);
		FindPathsOnEdges(currReq, reqNum, totalFlow, commGraph, params,edgesForRequest, pathsOut);
	}
	return true;
}

void FlowDecomposer::FindPathsOnEdges(CommunicationRequest* request, int reqNum, double requiredFlow,
									  CommunicationGraph & commGraph, 
										SchedulingParams & params, 
										vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut)
{
	if (edgesForRequest.size() == 0)
		return;
	// The flow may contain parallel edges (different frequencies). Since
	// our graph implementation does not support it we keep them in an array 
	// until the first instance of the edge was removed from the graph. 
	int source = request->GetSource();
	int target = request->GetFirstDestination(); 

	RescueGraph subGraph(true);
	map<int, int> edgeToDetails;
	while (true)
	{
		// To solve the problem of parallel edges we work in iterations
		// 1. Add all the edges that are either unique or one instance of parallel
		// edges.
		AddEdges(commGraph, edgesForRequest, subGraph, edgeToDetails);

		// 2. Remove all paths that can be removed
		CollectPaths(commGraph, source, target, reqNum, subGraph, edgeToDetails, edgesForRequest, pathsOut);
		// 3. check the achieved flow
		double achievedFlow = 0.;
		for (int i=0;i<(int) pathsOut.size();i++)
		{
			if (pathsOut[i].GetRequest() == reqNum)
				achievedFlow += pathsOut[i].GetFlow();
		}
		if (fabs(requiredFlow - achievedFlow) < 1e-2)
			break;
	}
}

void FlowDecomposer::CollectPaths(CommunicationGraph & commGraph, int source, int target, int reqNum, RescueGraph & subGraph, map<int, int> & edgeToDetails, vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut)
{
	while (true)
	{
		// first get the path
		vector<int> pathToRemove;
		subGraph.FindBFSPath(source,target,pathToRemove);
		if (pathToRemove.size() == 0)
			return;

		// now analyze the path and reduce the flow on it.
		// 1. Find the edge with minimum flow on it.
		double minFlow = 1e10;
		for (int i=0;i<(int)pathToRemove.size();i++)
		{
			RescueEdge * pEdge = subGraph.GetEdge(pathToRemove[i]);
			double flowInEdge = pEdge->GetCapacity();
			if (flowInEdge < minFlow)
				minFlow = flowInEdge;
		}

		FlowPath currPath(reqNum, minFlow);
		for (int i=0;i<(int)pathToRemove.size();i++)
		{
			int edgeId = pathToRemove[i];
			map<int, int>::iterator found = edgeToDetails.find(edgeId); 
			int detailId = found->second;
			FlowDetails & detail = edgesForRequest[detailId];
			double timeOnEdge = detail.lpValue*minFlow/detail.flow;
			// note: this is the original capacity (not the one on the subGraph)
			double capacity = commGraph.GetEdge(edgeId)->GetCapacity();
			currPath.AddEdgeAndFreq(edgeId, detail.freq,timeOnEdge, capacity);
			detail.used += minFlow;

			RescueEdge * pEdge = subGraph.GetEdge(edgeId);
			double flowInEdge = pEdge->GetCapacity();
			double remainingFlow = flowInEdge - minFlow;
			pEdge->SetCapacity(remainingFlow);
			if (remainingFlow < 1e-3)
				subGraph.RemoveEdge(edgeId); 
		}
		pathsOut.push_back(currPath);
	}
}

void FlowDecomposer::AddEdges(CommunicationGraph & commGraph, vector<FlowDetails> & edgesForRequest, RescueGraph & subGraph, map<int, int> & edgeToDetails)
{
	int nEdges = (int) edgesForRequest.size();
	for (int i=0;i<nEdges;i++)
	{
		FlowDetails & details = edgesForRequest[i];
		if (details.used != 0.)  // this edge was already added
			continue;

		int edgeId = details.edgeId;
		CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
		int from = pEdge->GetFrom();
		if (subGraph.GetVertex(from) == NULL)
		{
			RescueVertex * pVertex = new RescueVertex(from);
			subGraph.AddVertex(pVertex);
		}
		int to = pEdge->GetTo();
		if (subGraph.GetVertex(to) == NULL)
		{
			RescueVertex * pVertex = new RescueVertex(to);
			subGraph.AddVertex(pVertex);
		}
		RescueEdge * pEdgeSubGraph = subGraph.GetEdge(edgeId);
		if (pEdgeSubGraph == NULL)
		{
			RescueEdge * pEdgeSubGraph = new RescueEdge(edgeId, from, to, true, details.flow);
			subGraph.AddEdge(pEdgeSubGraph);
			edgeToDetails[edgeId] = i; 
		}
	}
}

bool FlowDecomposer::IsAllUsed(const std::vector<FlowDetails> & edgesForRequest, SchedulingParams & params)
{
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;
	bool allUsed = true;
	int nEdges = (int) edgesForRequest.size();
	for (int i=0;i < nEdges;i++)
	{
		double remain = edgesForRequest[i].flow - edgesForRequest[i].used;
		if (remain > oneTimeSlot / 10.)
			return false;
	}
	return allUsed;
}

void FlowDecomposer::GetEdgesUsedForRequest(CommunicationGraph & commGraph, 
											SchedulingParams & params, 
											int reqNum ,int reqId, double demand, double * solution, VarRepository *vars, 
									vector<FlowDetails> & edgesForRequest, double & totalFlow)
{
	int nVars = vars->GetNVars();
	int nEdgeVars = vars->GetNEdgeVars();
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;
	int i=0;
	for (;i<nEdgeVars;i++)
	{
		if (solution[i] <= oneTimeSlot/10.)
			continue;

		VarTypes varType;
		int request, freq, from, to, edgeId;
		vars->IdToVar(i, varType, request, freq, from, to, edgeId);
		if (request != reqId)
			continue;
		FlowDetails details;
		details.edgeId = edgeId;
		details.freq = freq;
		details.lpVarNum = i;
		details.request = reqNum;
		details.lpValue = solution[i];
		CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
		details.flow = details.lpValue*pEdge->GetCapacity();
		details.used = 0.;
		edgesForRequest.push_back(details);
/*		cout << edgeId << "," << from << "," << to << "," << freq << "," << solution[i]
				<< "," << details.flow << endl;
*/	}
	// find the total flow achieved for this request
	for (;i<nVars-1;i++)
	{
		VarTypes varType;
		int request, freq, from, to, edgeId;
		vars->IdToVar(i, varType, request, freq, from, to, edgeId);
		if (request != reqId)
			continue;
		totalFlow = solution[i]*demand;
		break;
	}
}
