#include "BFSRouter.h"

#include <vector>
#include <queue>
#include "CommunicationRequest.h"
#include <iostream>

using namespace std;

BFSRouter::BFSRouter(void)
{
}

BFSRouter::~BFSRouter(void)
{
}

bool BFSRouter::CalcBFSRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
								SchedulingParams & params, std::vector<FlowPath> & outFlow)
{
	vector<CommunicationRequest *> & requestsVec = requests.GetRequests();
	int nRequests = (int) requestsVec.size();

	for (int i=0;i<nRequests;i++)
	{
		CommunicationRequest & currReq = *(requestsVec[i]);
		int src = currReq.GetSource();
		int dest = currReq.GetFirstDestination();
		if (src == dest)
		{
			cout << "Error for request: " << currReq.GetRequestNum() << " source: " << src 
				<< " equals destination." << endl;
			continue;
		}

		double demand = currReq.GetDemand();
		vector<int> pathEdges;
		commGraph.FindBFSPath(src, dest, pathEdges);
		if (pathEdges.size() == 0)
		{
			cout << "Cannot find a path for request: " << i << " source: " << src 
				<< " destination: " << dest << endl;
			continue;
		}
		FlowPath path(currReq.GetRequestNum(),demand);
		for (int e=0;e<(int) pathEdges.size();e++)
		{
			int edgeNum = pathEdges[e];
			double capacity = commGraph.GetEdge(edgeNum)->GetCapacity();
			path.AddEdgeAndFreq(edgeNum,(i % params.N_FREQS_FOR_SCHEDULE)+1, demand / capacity, capacity);
		}
		outFlow.push_back(path);
	}
	return true;
}

