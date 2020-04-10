#include "BottleneckRouter.h"
#include <iostream>
#include <time.h>

using namespace std;

BottleneckRouter::BottleneckRouter(void)
{
}

BottleneckRouter::~BottleneckRouter(void)
{
}

bool BottleneckRouter::CalcBottleneckRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
												SchedulingParams & params, std::vector<FlowPath> & outFlow)
{
	vector<CommunicationRequest *> & requestsVec = requests.GetRequests();
	int nRequests = (int) requestsVec.size();
	srand((unsigned int) time(NULL));
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
		commGraph.FindMaxBottleneckPath(src, dest, pathEdges);
		if (pathEdges.size() == 0)
		{
			cout << "Cannot find a path for request: " << i << " source: " << src 
				<< " destination: " << dest << endl;
			continue;
		}
		FlowPath path(currReq.GetRequestNum(),demand);
		int freq = (rand() % params.N_FREQS_FOR_SCHEDULE)+1;
		for (int e=0;e<(int) pathEdges.size();e++)
		{
			int edgeNum = pathEdges[e];
			double capacity = commGraph.GetEdge(edgeNum)->GetCapacity();
			//@@@@@@ TODO
			path.AddEdgeAndFreq(edgeNum,(i % params.N_FREQS_FOR_SCHEDULE)+1, demand / capacity, capacity);
			//path.AddEdgeAndFreq(edgeNum,freq, demand / capacity, capacity);
		}
		outFlow.push_back(path);
	}
	return true;
}
