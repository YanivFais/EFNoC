#pragma once
#include "CoinPackedMatrix.hpp"
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "InterferenceGraph.h"
#include "RequestsCollection.h"
#include "VarRepository.h"

#include <map>
#include <vector>

class LPInterface
{
public:
	LPInterface(void);
	bool SolveLP(CommunicationGraph & commGraph, InterferenceGraph & interGraph, RequestsCollection & requests, 
					SchedulingParams & params, bool useInterferenceConstraints, std::map<int,std::vector<int>> & interfereingEdges, 
					double *& solution,VarRepository *& vars);
private:
	bool SetLowUpBoundsVar(int nVars,double *& collb, double *& colub);
	bool SetObjective(int nFreq, int nReq, int nCommEdges, int nVars,double *& obj);
	bool AvoidCirculations(int nFReq, CommunicationGraph & commGraph, RequestsCollection & requests, 
							double * colub, VarRepository & vars);

	void ConstructTypeOneAndTwo(int firstRowNum, CommunicationGraph & commGraph, RequestsCollection & requests, int nFreq,
									double * rowlb, double * rowub, CoinPackedMatrix & matrix, VarRepository * vars);

	void ConstructTypeThree    (int firstRowNum, int nReq, double * rowlb, double * rowub, 
									CoinPackedMatrix & matrix, VarRepository * vars);

	void ConstructTypeFour     (int firstRowNum, CommunicationGraph & commGraph, int nReq, int nFreq,
									double * rowlb, double * rowub, CoinPackedMatrix & matrix, VarRepository * vars);

	void ConstructTypeFive     (int firstRowNum, CommunicationGraph & commGraph, int nReq, 
								int nFreq, std::map<int,std::vector<int>> & interfereingEdges, 
									double * rowlb, double * rowub, CoinPackedMatrix & matrix,  VarRepository * vars);

};
