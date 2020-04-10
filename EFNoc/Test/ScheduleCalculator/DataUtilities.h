#pragma once

#include "CommunicationGraph.h"
#include "InterferenceGraph.h"

#include <map>
#include <vector>
#include <set>


class DataUtilities
{
public:
	DataUtilities(void);
	static bool CalcInterferingEdges(CommunicationGraph & commGraph, InterferenceGraph & interGraph, 
					std::map<int,std::vector<int>> & interferingEdges, std::map<int,std::vector<int>> & interferingVertices);

private:
	static void CollectNeighbors(RescueGraph & graph, int node, std::set<int> & neighbors);
	static void CollectAdjacentEdges(RescueGraph & graph, int node, std::set<int> & adjacentEdges, std::set<int> & currInterferingVertices);

};
