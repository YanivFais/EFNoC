#pragma once

#include <map>
#include <vector>
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "InterferenceGraph.h"
#include "RequestsCollection.h"
#include "FlowPath.h"

class Router
{
public:
	Router(void);
	~Router(void);

	static bool CalcRouting(CommunicationGraph & commGraph, InterferenceGraph & interGraph, RequestsCollection & requests, 
		const std::vector<int> & reqNumToReqId, 
		SchedulingParams & params, std::map<int,std::vector<int>> & interferingEdges, std::vector<FlowPath> & paths);

};
