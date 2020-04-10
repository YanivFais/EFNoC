#pragma once
#include "CommunicationGraph.h"
#include "FlowPath.h"
#include "SchedulingParams.h"
#include "Schedule.h"

#include <vector>

class EmptyScheduler
{
public:
	EmptyScheduler(void);
	~EmptyScheduler(void);
	static bool CalcSchedule(CommunicationGraph & commGraph, std::vector<FlowPath> & paths, 
							SchedulingParams & params, Schedule & o_schedule);

};
