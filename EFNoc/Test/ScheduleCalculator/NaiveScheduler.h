#pragma once
#include "CommunicationGraph.h"
#include "VarRepository.h"
#include "SchedulingParams.h"
#include "Schedule.h"

#include <map>
#include <vector>

class NaiveScheduler
{
public:
	NaiveScheduler(void);
	~NaiveScheduler(void);

	static bool CalcSchedule(CommunicationGraph & commGraph, std::map<int,std::vector<int>> & interferingVertices, 
		double *solution, VarRepository * vars, SchedulingParams & params, Schedule & o_schedule);
};
