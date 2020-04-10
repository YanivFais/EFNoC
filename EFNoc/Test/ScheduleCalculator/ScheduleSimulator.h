#pragma once
#include "SchedulingParams.h"
#include "Schedule.h"
#include "RequestsCollection.h"

class ScheduleSimulator
{
public:
	ScheduleSimulator(void);
	~ScheduleSimulator(void);
	static void SimulateAndReport(SchedulingParams & params, Schedule & schedule, RequestsCollection & requests, int maxReq, std::vector<int> & reqNumToReqId);

private:
	static void SimulateQueues(Schedule & schedule, RequestsCollection & requests, std::vector<std::vector<double>> & maxQueueSizesOut, std::vector<int> & vertexIdOut, int maxReq, std::vector<int> & reqNumToReqId);
	static void UpdateMaxQLengths(const std::vector<std::vector<double>> &queueSize, std::vector<std::vector<double>> &maxQSizes);
	static void ReportQueues(char * filename, const std::vector<std::vector<double>> & maxQueueSizes, const std::vector<int> & vertexIds, int maxReq);
};
