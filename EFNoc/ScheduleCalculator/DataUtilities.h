#pragma once

#include "CommunicationGraph.h"
#include "SchedulingParams.h"
#include "LPInterface.h"

#include <map>
#include <vector>
#include <set>


class DataUtilities
{
public:
	DataUtilities(void);

	bool DataUtilities::WriteOmnetConfig(VarRepository * vars, SchedulingParams& params, 
		CommunicationGraph& graph, double *solution) const;

private:
	static void CollectNeighbors(EFNocGraph & graph, int node, std::set<int> & neighbors);
	static void CollectAdjacentEdges(EFNocGraph & graph, int node, std::set<int> & adjacentEdges, std::set<int> & currInterferingVertices);

};
