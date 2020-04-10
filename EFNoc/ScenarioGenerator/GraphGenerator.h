#pragma once

#include "CommunicationGraph.h"
#include "CommunicationRequest.h"
#include "RequestsCollection.h"
#include "EFNocEdge.h"
#include "EFNocVertex.h"
#include "GenerationParams.h"

#include "MCSL\rec_noc_traffic.h"
#include <utility>
#include <string>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>


class GraphGenerator
{
public:
	GraphGenerator(GenerationParams & params);
	~GraphGenerator();

	CommunicationGraph * GenerateGraphs();
	RequestsCollection & GenerateRequests(CommunicationGraph & graph);
	void WriteRequestsFile(RequestsCollection & requests);
	void WriteGraphFiles(const CommunicationGraph & communicationGraph);

	CommunicationGraph * GenerateMCSL(CommunicationGraph * commGraph);

protected:
	GenerationParams     & mParams;
	RecNOCTraffic recNoc;

	void RenameVertices(CommunicationGraph * commGraph);
	void GenerateMCSLRequests(RequestsCollection * pReqs);
	CommunicationGraph * GenerateRandomVertices(int k, int n);
	CommunicationGraph * GenerateMesh(int K, int N);
	CommunicationGraph * GenerateFatTree(int k, int n);
	void GenerateFatTree(int k, int n, int& vertexIdStart, int& edgeIdStart,
		std::vector<EFNocEdge*>& edges, std::vector<EFNocVertex*>& vertices,
		std::vector<int>& ports, bool last, CommunicationGraph& graph,int num);
	CommunicationGraph * GenerateButterfly(int K, int N);
	CommunicationGraph * GenerateKaryNfly(int k, int n, bool tree);
	CommunicationGraph * GenerateBenesh(int k, int n);
	CommunicationGraph * GenerateClos(int m, int n, int r, int levels);
	void GenerateClos(int m, int n, int r, int level,
		int& vertexIdStart, int& edgeIdStart,int & placeX, int& placeY,
		std::vector<int>& portsIn, std::vector<int>& portsOut, CommunicationGraph& graph);

protected:
	bool          mDebug;
};
