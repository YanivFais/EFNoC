#pragma once
#include "CommunicationGraph.h"
#include "VarRepository.h"
#include "SchedulingParams.h"
#include "Schedule.h"
#include "FlowPath.h"
#include "RequestsCollection.h"

#include <map>
#include <vector>

class Scheduler
{
public:
	Scheduler(void);
	~Scheduler(void);

	static bool CalcSchedule(CommunicationGraph & commGraph,  
							std::vector<FlowPath> & paths, 
							RequestsCollection& requests,
							SchedulingParams & params, Schedule & o_schedule);

	static int slots;

private:
	static void updateCapcities(CommunicationGraph & commGraph,
		Schedule & o_schedule);
};
