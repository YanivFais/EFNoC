#pragma once

#include <CoinPackedMatrix.hpp>
#include "ClpSimplex.hpp"
#include "CommunicationGraph.h"

#include "RescueEdge.h"
#include "RescueVertex.h"
#include "atlcoll.h"

class UnicastList 
{
public:
	UnicastList(void);
	~UnicastList(void);

bool initFromFile(char * communicationFileName, int& ncols, int& nrows, double& collb, double& colub, double& obj, double& rowlb, double& rowub,
				  CoinPackedMatrix& matrix, CommunicationGraph& comm_graph); 
	int GetNumRequests() const;
	int GetNumFreqs() const;

private:
	int nRequests;
	int nFreqs;

};
