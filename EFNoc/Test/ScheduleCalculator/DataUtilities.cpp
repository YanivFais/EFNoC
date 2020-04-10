#include "DataUtilities.h"
using namespace std;

DataUtilities::DataUtilities(void)
{}

bool DataUtilities::CalcInterferingEdges(CommunicationGraph & commGraph, InterferenceGraph & interGraph, 
			std::map<int,std::vector<int>> & interferingEdges,std::map<int,std::vector<int>> & interferingVertices)
{
	std::map<int,RescueEdge*> edges = commGraph.GetEdges();
	int nEdges = (int) edges.size();

	std::map<int,RescueEdge*>::iterator edgesIter;
	for (edgesIter = edges.begin();edgesIter != edges.end();edgesIter++)
	{
		RescueEdge * pEdge = edgesIter->second;
		int edgeNum = pEdge->GetEdgeNum();
		int from = pEdge->GetFrom();
		int to = pEdge->GetTo();
		if (from > to)  // process only edges in one direction
			continue;
		set<int> currInterferingEdges;
		set<int> currInterferingVertices;
		set<int> neighbors;
		// N_0 - e =(u,v) and its reverse edge (v,u)
		// N_1 - all the edges in the communication graph of the form: 
		//       (u,w), (w,u), (v,w), (w,v) 
		// N_2 - all edges in the communication graph of the form (w,x) 
		//       where either w or x is a neighbor of u or v in the 
		//       interfering graph.
		CollectNeighbors(interGraph, from, neighbors);
		currInterferingVertices.insert(from);
		CollectNeighbors(interGraph, to, neighbors);
		currInterferingVertices.insert(to);

		// go over u,v and all their neighbors (in the interference graph) and collect their
		// edges (in the communication graph)
		set<int>::iterator neighborsIter;
		for (neighborsIter=neighbors.begin(); neighborsIter != neighbors.end(); neighborsIter++)
		{
			int node = *neighborsIter;
			CollectAdjacentEdges(commGraph, node, currInterferingEdges, currInterferingVertices);
		}

		// copy the edges to a vector and insert it to the output map
		vector<int> currInterferingEdgesVector;
		set<int>::iterator interferingEdgesIter;
		for (interferingEdgesIter=currInterferingEdges.begin(); interferingEdgesIter != currInterferingEdges.end(); 
			interferingEdgesIter++)
		{
			currInterferingEdgesVector.push_back(*interferingEdgesIter);
		}
		interferingEdges[edgeNum] = currInterferingEdgesVector;

		vector<int> currInterferingVerticesVector;
		set<int>::iterator interferingVerticesIter;
		for (interferingVerticesIter=currInterferingVertices.begin(); interferingVerticesIter != currInterferingVertices.end(); 
			interferingVerticesIter++)
		{
			currInterferingVerticesVector.push_back(*interferingVerticesIter);
		}
		interferingVertices[edgeNum] = currInterferingVerticesVector;
	}

	return true;
}

void DataUtilities::CollectNeighbors(RescueGraph & graph, int node, std::set<int> & neighbors)
{
	neighbors.insert(node); 
	RescueVertex * pFrom = graph.GetVertex(node);
	const vector<int> &ins = pFrom->GetInEdges();
	for (int i=0;i<(int) ins.size();i++)
	{
		RescueEdge * pEdge = graph.GetEdge(ins[i]);
		neighbors.insert(pEdge->GetFrom());
	}
	const vector<int> &outs = pFrom->GetOutEdges();
	for (int i=0;i<(int) outs.size();i++)
	{
		RescueEdge * pEdge = graph.GetEdge(outs[i]);
		neighbors.insert(pEdge->GetTo());
	}
}

void DataUtilities::CollectAdjacentEdges(RescueGraph & graph, int node, std::set<int> & adjacentEdges, std::set<int> & currInterferingVertices)
{
	currInterferingVertices.insert(node);
	RescueVertex * pFrom = graph.GetVertex(node);
	const vector<int> &ins = pFrom->GetInEdges();
	for (int i=0;i<(int) ins.size();i++)
	{
		adjacentEdges.insert(ins[i]);
		int from = graph.GetEdge(ins[i])->GetFrom();
		currInterferingVertices.insert(from);
	}
	const vector<int> &outs = pFrom->GetOutEdges();
	for (int i=0;i<(int) outs.size();i++)
	{
		adjacentEdges.insert(outs[i]);
		int to = graph.GetEdge(outs[i])->GetFrom();
		currInterferingVertices.insert(to);
	}
}