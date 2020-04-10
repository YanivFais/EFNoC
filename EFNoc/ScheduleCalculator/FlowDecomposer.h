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
		int    lpVarNum;
		double lpValue;
		int    request;
		double used;
	};

	static void GetEdgesUsedForRequest(CommunicationGraph & commGraph, 
										SchedulingParams & params, int reqNum, double demand, 
										double * solution, VarRepository *vars, 
										std::vector<FlowDetails> & edgesForRequest, 
										double & totalFlow,RequestsCollection& requests);

	static void FindPathsOnEdges(CommunicationRequest* request, int reqNum, double totalFlow,
								CommunicationGraph & commGraph, 
								SchedulingParams & params, 
								std::vector<FlowDetails> & edgesForRequest, std::vector<FlowPath> & pathsOut);

	static void AddEdges(CommunicationGraph & commGraph, std::vector<FlowDetails> & edgesForRequest, EFNocGraph & subGraph, 
		std::map<int, int> & edgeToDetails,
		SchedulingParams& params);

	static bool IsAllUsed(const std::vector<FlowDetails> & edgesForRequest, SchedulingParams & params);

	static void CollectPaths(CommunicationGraph & commGraph, int source, int target, int reqNum, 
		EFNocGraph & subGraph, std::map<int, int> & edgeToDetails, 
		std::vector<FlowDetails> & edgesForRequest, std::list<FlowPath> & pathsOut,
		SchedulingParams& params);

};


