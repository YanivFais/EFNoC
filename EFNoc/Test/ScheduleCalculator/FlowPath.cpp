#include "FlowPath.h"

using namespace std;

FlowPath::FlowPath(int i_request, double i_flow)
{
	request = i_request;
	flow = i_flow;
	allocated = 0.;
}

FlowPath::~FlowPath(void)
{
}

int FlowPath::GetRequest() const
{
	return request;
}

double FlowPath::GetFlow() const
{
	return flow;
}

vector<int> & FlowPath::GetEdges()
{
	return edgesIds;
}

vector<int> & FlowPath::GetFrequencies()
{
	return frequencies;
}

vector<double> & FlowPath::GetTimesRequiredOnEdge()
{
	return timesRequiredOnEdge;
}

double FlowPath::GetAllocated() const
{
	return allocated;
}

void FlowPath::AddEdgeAndFreq(int edgeNum, int freq, double timeRequiredOnEdge, double capacity)
{
	edgesIds.push_back(edgeNum);
	frequencies.push_back(freq);
	timesRequiredOnEdge.push_back(timeRequiredOnEdge);
	capacities.push_back(capacity);
}

void FlowPath::SetAllocated (double newAllocation)
{
	allocated = newAllocation;
}

vector<double> & FlowPath::GetCapacities()
{
	return capacities;
}
