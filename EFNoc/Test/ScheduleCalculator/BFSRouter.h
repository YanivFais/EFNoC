#pragma once
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "FlowPath.h"

#include <vector>

class BFSRouter
{
public:
	BFSRouter(void);
	~BFSRouter(void);
	static bool CalcBFSRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
				SchedulingParams & params, std::vector<FlowPath> & outFlow);
};
