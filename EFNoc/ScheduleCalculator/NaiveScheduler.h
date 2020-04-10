#pragma once
#include "CommunicationGraph.h"
#include "VarRepository.h"
#include "SchedulingParams.h"
#include "Schedule.h"
#include "FlowPath.h"
#include <map>
#include <vector>
#include <RequestsCollection.h>

class NaiveScheduler
{
public:
	NaiveScheduler(void);
	~NaiveScheduler(void);

	static bool CalcSchedule(CommunicationGraph & commGraph,  
		std::vector<FlowPath>& paths, 
		RequestsCollection& requests,
		SchedulingParams & params, Schedule & o_schedule);
};
