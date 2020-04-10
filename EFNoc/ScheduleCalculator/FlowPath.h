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
	std::vector<double> & GetTimesRequiredOnEdge();
	std::vector<double> & GetCapacities();
	const std::vector<double> & GetCapacities() const;
	double GetAllocated() const;

	void AddEdge(int edgeNum, double timeRequiredOnEdge, double capacity);

	void SetAllocated (double newAllocation);

	friend bool operator < (const FlowPath& lhs, const FlowPath& rhs);
private:
	int request;
	double flow;
	double allocated;
	std::vector<int> edgesIds;
	std::vector<double> timesRequiredOnEdge;
	std::vector<double> capacities;
};
