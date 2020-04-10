#pragma once

#include <map>
#include <vector>
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "FlowPath.h"
#include "Schedule.h"

class Scheduler
{
public:
	Scheduler(void);
	~Scheduler(void);
	static bool CalcSchedule(CommunicationGraph & commGraph, std::map<int,std::vector<int>> & interferingVertices, 
							std::vector<FlowPath> & paths, SchedulingParams & params,  
							Schedule & o_schedule);

};
