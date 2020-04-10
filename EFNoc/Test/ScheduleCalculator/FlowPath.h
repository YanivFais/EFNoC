#pragma once

#include <vector>

class FlowPath
{
public:
	FlowPath(int i_request, double i_flow);
	~FlowPath(void);

	int GetRequest() const;
	double GetFlow() const;
	void SetFlow(double i_flow) {flow = i_flow;}
	std::vector<int> & GetEdges();
	std::vector<int> & GetFrequencies();
	std::vector<double> & GetTimesRequiredOnEdge();
	std::vector<double> & GetCapacities();
	double GetAllocated() const;

	void AddEdgeAndFreq(int edgeNum, int freq, double timeRequiredOnEdge, double capacity);

	void SetAllocated (double newAllocation);

private:
	int request;
	double flow;
	double allocated;
	std::vector<int> edgesIds;
	std::vector<int> frequencies;
	std::vector<double> timesRequiredOnEdge;
	std::vector<double> capacities;
};
