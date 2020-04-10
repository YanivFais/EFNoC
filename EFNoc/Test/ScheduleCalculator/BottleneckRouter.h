#pragma once
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "FlowPath.h"

class BottleneckRouter
{
public:
	BottleneckRouter(void);
	~BottleneckRouter(void);
	static bool CalcBottleneckRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
										SchedulingParams & params, std::vector<FlowPath> & outFlow);

};
