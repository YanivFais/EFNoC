#pragma once
#include "CommunicationGraph.h"
#include "FlowPath.h"
#include "SchedulingParams.h"
#include "Schedule.h"

#include <map>
#include <vector>


class SmartScheduler
{
public:
	SmartScheduler(void);
	~SmartScheduler(void);

	static bool CalcSchedule(CommunicationGraph & commGraph,  
		std::vector<FlowPath> & paths, SchedulingParams & params, double & o_finalRoundingFactor,
		Schedule & o_schedule);

private:
	static double  CalcAllocationUnit(double flow, double remainingFlow, std::vector<double> & capacities, std::vector<double> & times, double virtualTimeUnitForAllocation);

	static bool CalcScheduleInternal(CommunicationGraph & commGraph,  
									std::vector<FlowPath> & paths, double oneTimeSlot, 
									int currentNumberOfSlotsInSchedule, double virtualTimeUnitForAllocation, 
									double roundingFactor, Schedule & o_schedule);

};
