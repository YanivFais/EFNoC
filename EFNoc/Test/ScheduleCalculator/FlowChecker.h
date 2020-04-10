#pragma once
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include <vector>

class FlowChecker
{
public:
	FlowChecker(void);
	~FlowChecker(void);
	static void FilterUnconnectedRequests(CommunicationGraph & graph, RequestsCollection & request, RequestsCollection & activeRequests, std::vector<int> & reqNumToReqId);

};
