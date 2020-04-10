#pragma once
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "LPInterface.h"
#include "FlowPath.h"
#include <map>

class FlowDecomposer
{
public:
	FlowDecomposer();
	~FlowDecomposer(void);

	static bool DecomposeFlow(CommunicationGraph & commGraph, RequestsCollection &requests, 
								SchedulingParams & params, 
								double * solution, VarRepository *vars, 
								std::vector<FlowPath> & pathsOut);


private:
	struct FlowDetails
	{
		int    edgeId;
		double flow;
		int    freq;
		int    lpVarNum;
		double lpValue;
		int    request;
		double used;
	};

	static void GetEdgesUsedForRequest(CommunicationGraph & commGraph, 
										SchedulingParams & params, int reqNum, int reqId, double demand, 
										double * solution, VarRepository *vars, 
										std::vector<FlowDetails> & edgesForRequest, double & totalFlow);

	static void FindPathsOnEdges(CommunicationRequest* request, int reqNum, double totalFlow,
								CommunicationGraph & commGraph, 
								SchedulingParams & params, 
								std::vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut);

	static void AddEdges(CommunicationGraph & commGraph, std::vector<FlowDetails> & edgesForRequest, RescueGraph & subGraph, 
								std::map<int, int> & edgeToDetails);

	static bool IsAllUsed(const std::vector<FlowDetails> & edgesForRequest, SchedulingParams & params);

	static void CollectPaths(CommunicationGraph & commGraph, int source, int target, int reqNum, RescueGraph & subGraph, std::map<int, int> & edgeToDetails, std::vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut);

};


