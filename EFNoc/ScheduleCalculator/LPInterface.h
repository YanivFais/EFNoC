#pragma once
#include "CoinPackedMatrix.hpp"
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "VarRepository.h"
#include "CoinModel.hpp"

#include <map>
#include <vector>

class LPInterface
{
public:
	LPInterface(void);
	bool SolveLP(CommunicationGraph & commGraph, RequestsCollection & requests, 
					SchedulingParams & params,  
					double *& solution,VarRepository *& vars);
private:
	bool SetLowUpBoundsVar(int nVars,double *& collb, double *& colub);
	bool SetObjective(int nReq, int nCommEdges, int nVars,double *& obj,CommunicationGraph & commGraph);
	bool AvoidCirculations(CommunicationGraph & commGraph, RequestsCollection & requests, 
							double * colub, VarRepository & vars);

	void ConstructTypeOneAndTwo(int firstRowNum, CommunicationGraph & commGraph, RequestsCollection & requests, 
		double * rowlb, double * rowub, CoinPackedMatrix & matrix, CoinModel& model,
									VarRepository * vars, double *& obj, SchedulingParams& params, int nConstraints);

	void ConstructTypeThree    (int firstRowNum, CommunicationGraph & commGraph,int nReq, double * rowlb, double * rowub, 
							CoinPackedMatrix & matrix, CoinModel& model, VarRepository * vars);
	void ConstructTypeFour (int firstRowNum, CommunicationGraph & commGraph, int nReq, double * rowlb, double * rowub,
		CoinPackedMatrix & matrix, CoinModel& model, VarRepository * vars);
};
