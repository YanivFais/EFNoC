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

vector<double> & FlowPath::GetTimesRequiredOnEdge()
{
	return timesRequiredOnEdge;
}

double FlowPath::GetAllocated() const
{
	return allocated;
}

void FlowPath::AddEdge(int edgeNum, double timeRequiredOnEdge, double capacity)
{
	edgesIds.push_back(edgeNum);
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

const vector<double> & FlowPath::GetCapacities() const
{
	return capacities;
}

bool operator < (const FlowPath& lhs, const FlowPath& rhs)
{
	const vector<double>& lhsC = lhs.GetCapacities();
	const vector<double>& rhsC = rhs.GetCapacities();
	double L = 0;
	for (vector<double>::const_iterator it = lhsC.cbegin(); it != lhsC.end(); it++)
		L += *it * lhs.GetFlow();
	double R = 0;
	for (vector<double>::const_iterator it = rhsC.cbegin(); it != rhsC.end(); it++)
		R += *it * rhs.GetFlow();
	return L < R;
}
