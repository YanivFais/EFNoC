#include "DataUtilities.h"
#include <iostream>
#include <fstream>
#include "EFNocEdge.h"
using namespace std;

DataUtilities::DataUtilities(void)
{}

void DataUtilities::CollectNeighbors(EFNocGraph & graph, int node, std::set<int> & neighbors)
{
	neighbors.insert(node); 
	EFNocVertex * pFrom = graph.GetVertex(node);
	const vector<int> &ins = pFrom->GetInEdges();
	for (int i=0;i<(int) ins.size();i++)
	{
		EFNocEdge * pEdge = graph.GetEdge(ins[i]);
		neighbors.insert(pEdge->GetFrom());
	}
	const vector<int> &outs = pFrom->GetOutEdges();
	for (int i=0;i<(int) outs.size();i++)
	{
		EFNocEdge * pEdge = graph.GetEdge(outs[i]);
		neighbors.insert(pEdge->GetTo());
	}
}

void DataUtilities::CollectAdjacentEdges(EFNocGraph & graph, int node, std::set<int> & adjacentEdges, std::set<int> & currInterferingVertices)
{
	currInterferingVertices.insert(node);
	EFNocVertex * pFrom = graph.GetVertex(node);
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

bool DataUtilities::WriteOmnetConfig(VarRepository * vars, SchedulingParams& params, CommunicationGraph& graph, double *solution) const
{
	ofstream configFile;
	configFile.open(params.OMNET_CONFIG_FILENAME);
	if (!configFile)
	{
		cout << "Unable to open file" << params.OMNET_CONFIG_FILENAME << endl;
		return false;
	}

	int nCommEdges = vars->GetNCommEdges();
	int nVars = vars->GetNVars();
	for (int e = nCommEdges; e < nVars; e++) {
		EFNocEdge * edge=graph.GetEdge(e-nCommEdges);
		int var = vars->VarToId(VarTypes::BW_I, -1, e - nCommEdges);
		double bw = solution[var];
		configFile << "# " << edge->GetEdgeNum() << ":" << edge->GetFrom() << "->" << edge->GetTo() << "=" << bw << endl;
	}
	return true;
}
