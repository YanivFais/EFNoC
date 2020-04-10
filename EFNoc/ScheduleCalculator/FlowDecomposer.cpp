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
	int nRequests = (int)req.size();

	// first expand capacity to fit flows with flit size..
	for (int edgeId = 0; edgeId < commGraph.GetNumEdges(); edgeId++) {
		double edgeFlow = 0;
		EFNocEdge * edge = commGraph.GetEdge(edgeId);
		for (int r = 0; r < nRequests; r++) {
			int id = vars->VarToId(EDGE_REQ, r, edgeId);
			double flow = solution[id];
			edgeFlow += std::ceil(flow / params.FLIT_SIZE)*params.FLIT_SIZE;
		}
		edge->updateCapacityForFlitSize(params.FLIT_SIZE);
		edge->SetCapacity(edgeFlow);
	}

	typedef std::list<std::pair<double, int> > RequestBySize;
	RequestBySize requestsBySize;
	for (int r = 0; r < nRequests; r++) {
		requestsBySize.push_back(make_pair(requests.GetRequests()[r]->GetDemand(), r));
	}
	requestsBySize.sort();
	RequestBySize::const_iterator it = requestsBySize.end();
	for (int j = 0; j < nRequests;j++) {
		it--;
		int i = it->second;
		CommunicationRequest* currReq = req[i];
		int reqNum = currReq->GetRequestNum();
		int source = currReq->GetSource();
		int dest = currReq->GetFirstDestination();
		double demand = currReq->GetDemand();

		vector<FlowDetails> edgesForRequest;
		double totalFlow;
		GetEdgesUsedForRequest(commGraph, params, reqNum, demand, solution, vars,edgesForRequest, totalFlow,requests);
		totalFlow = std::min(totalFlow, demand);
		FindPathsOnEdges(currReq, reqNum, totalFlow, commGraph, params,edgesForRequest, pathsOut);
	}

	vector<int> flitsOnEdge(commGraph.GetNumEdges());
	double maxFlits = 0;
	for (int e = 0; e < commGraph.GetNumEdges(); e++) {
		double flitsTime = 0;
		for (int r = 0; r < pathsOut.size(); r++) {
			for (int p = 0; p < pathsOut[r].GetEdges().size(); p++) {
				if (pathsOut[r].GetEdges()[p] == e)
					flitsTime += (int)pathsOut[r].GetTimesRequiredOnEdge()[p];
			}
		}
		flitsOnEdge[e] = flitsTime;
		if (flitsTime>maxFlits)
			maxFlits = flitsTime;
	}
	maxFlits /= params.FLIT_SIZE;
	if (maxFlits<=1) 
		return true;
	else if ((maxFlits )<(1 + params.SLOTS_ROUNDING_FACTOR)) {
		params.N_TIME_SLOTS *=  maxFlits;
		return true;
	}
	else {
		params.SLOTS_ROUNDING_FACTOR = params.SLOTS_ROUNDING_FACTOR * 2;
		return false;
	}
}

void FlowDecomposer::FindPathsOnEdges(CommunicationRequest* request, int reqNum, double requiredFlow,
									  CommunicationGraph & commGraph, 
										SchedulingParams & params, 
										vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut)
{
	if (edgesForRequest.size() == 0)
		return;
	// The flow may contain parallel edges . Since
	// our graph implementation does not support it we keep them in an array 
	// until the first instance of the edge was removed from the graph. 
	int source = request->GetSource();
	int target = request->GetFirstDestination(); 

	EFNocGraph subGraph(true);
	map<int, int> edgeToDetails;
	std::list<FlowPath> pathsCollect;
	bool done=false;
	while (!done)
	{
		// To solve the problem of parallel edges we work in iterations
		// 1. Add all the edges that are either unique or one instance of parallel
		// edges.
		AddEdges(commGraph, edgesForRequest, subGraph, edgeToDetails,params);

		// 2. Remove all paths that can be removed
		CollectPaths(commGraph, source, target, reqNum, subGraph, edgeToDetails, edgesForRequest, pathsCollect, params);
		pathsCollect.sort();
		// 3. check the achieved flow
		double achievedFlow = 0.;
		for (list<FlowPath>::iterator it = pathsCollect.begin(); it != pathsCollect.end() && !done; it++)
		{
			if (it->GetRequest() == reqNum)
				achievedFlow += it->GetFlow();
			pathsOut.push_back(*it);
			// go over path, make sure capacity can sustain flow (due to rounding to flits), increase if needed
			std::vector<int> flowEdges = it->GetEdges();
			for (std::vector<int>::const_iterator edgeIt = flowEdges.begin(); edgeIt != flowEdges.end(); edgeIt++) {
				for (vector<FlowDetails>::iterator flowIt = edgesForRequest.begin(); flowIt != edgesForRequest.end(); flowIt++) {
					if (flowIt->edgeId == *edgeIt) {
						double flowGapOnEdge = it->GetFlow() - flowIt->flow;
						EFNocEdge * edge = commGraph.GetEdge(*edgeIt);
						edge->IncreaseFlow(flowGapOnEdge,params.FLIT_SIZE);
					}
				}
			}
			if ((fabs(requiredFlow - achievedFlow) < MIN_PRECISION) || (requiredFlow < achievedFlow)) {
				done = true; // should we decrease flow for removed paths ?
			}
		}
		if (pathsCollect.size() == 0)
			done = true;
	}
}

void FlowDecomposer::CollectPaths(CommunicationGraph & commGraph, int source, int target,
	int reqNum, EFNocGraph & subGraph, map<int, int> & edgeToDetails, 
	vector<FlowDetails> & edgesForRequest, std::list<FlowPath> & pathsOut,
	SchedulingParams& params)
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
			EFNocEdge * pEdge = subGraph.GetEdge(pathToRemove[i]);
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
			double capacity = commGraph.GetEdge(edgeId)->GetCapacity();
			double timeOnEdge = (std::ceil(detail.lpValue / params.FLIT_SIZE)*params.FLIT_SIZE)/capacity;
			// note: this is the original capacity (not the one on the subGraph)
			currPath.AddEdge(edgeId,timeOnEdge, capacity);
			detail.used += minFlow;

			EFNocEdge * pEdge = subGraph.GetEdge(edgeId);
			double flowInEdge = pEdge->GetCapacity();
			double remainingFlow = flowInEdge - minFlow;
			pEdge->SetCapacity(remainingFlow);
			pEdge->updateCapacityForFlitSize(params.FLIT_SIZE);
			if (remainingFlow < 1e-3)
				subGraph.RemoveEdge(edgeId); 
		}
		pathsOut.push_back(currPath);
	}
}

void FlowDecomposer::AddEdges(CommunicationGraph & commGraph, vector<FlowDetails> & edgesForRequest, 
	EFNocGraph & subGraph, 
	map<int, int> & edgeToDetails,
	SchedulingParams& params)
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
			EFNocVertex * pVertex = new EFNocVertex(from,true);
			subGraph.AddVertex(pVertex);
		}
		int to = pEdge->GetTo();
		if (subGraph.GetVertex(to) == NULL)
		{
			EFNocVertex * pVertex = new EFNocVertex(to,true);
			subGraph.AddVertex(pVertex);
		}
		EFNocEdge * pEdgeSubGraph = subGraph.GetEdge(edgeId);
		if (pEdgeSubGraph == NULL)
		{
			EFNocEdge * pEdgeSubGraph = new EFNocEdge(edgeId, from, to, true, pEdge->GetPrice());
			pEdgeSubGraph->SetCapacity(details.flow);
			pEdgeSubGraph->updateCapacityForFlitSize(params.FLIT_SIZE);
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
											int reqNum , double demand, double * solution, VarRepository *vars, 
											vector<FlowDetails> & edgesForRequest, double & totalFlow,
											RequestsCollection& requests)
{
	int nVars = vars->GetNVars();
	int nEdgeVars = vars->GetNEdgeVars();
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;
	int i=0;
	totalFlow = 0;
	for (;i<nEdgeVars;i++)
	{
		if (solution[i] <= oneTimeSlot/10.)
			continue;

		VarTypes varType;
		int request,  from, to, edgeId;
		vars->IdToVar(i, varType, request, from, to, edgeId);
		if (request != reqNum)
			continue;

		FlowDetails details;
		details.edgeId = edgeId;
		details.lpVarNum = i;
		details.request = reqNum;
		details.lpValue = solution[i];
		CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
		details.flow = details.lpValue;
		details.used = 0.;
		edgesForRequest.push_back(details);
		if (from == requests.GetRequests()[reqNum]->GetSource())
			totalFlow += details.flow;
		/*		cout << edgeId << "," << from << "," << to << "," << freq << "," << solution[i]
				<< "," << details.flow << endl;
*/	}
}
