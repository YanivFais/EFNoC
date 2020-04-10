#pragma once

#include <map>
#include <vector>
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "FlowPath.h"

class Router
{
public:
	Router(void);
	~Router(void);

	static bool CalcRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
		SchedulingParams & params, std::vector<FlowPath> & paths);

	static void updateCapacity(CommunicationGraph & commGraph, RequestsCollection & requests,
		SchedulingParams & params, std::vector<FlowPath> & paths);
};
