#pragma once
#include "CommunicationGraph.h"

#include <utility>
#include <map>
#include <unordered_map>

enum VarTypes {
	EDGE_REQ, 
	BW_I,
	RHO
};

class VarRepository
{
public:
	VarRepository(int nReq, CommunicationGraph & commGraph);
	~VarRepository(void);
	int  VarToId(VarTypes varType, int request, int from, int to);
	int  VarToId(VarTypes varType, int request, int edgeId);
	bool IdToVar(int varId, VarTypes &o_varType, int &o_request, int &o_from, int &o_to, int &o_edgeId);

	int  GetNVars      () const;
	int  GetNReq       () const;
	int  GetNCommEdges () const;
	int  GetNEdgeVars  () const;

protected:
	std::tr1::unordered_map<int, int> edgeIdToConsecEdgeNum;
	std::tr1::unordered_map<int, int> consecEdgeNumToEdgeId;
	int ** from_toToEdgeId;
	std::tr1::unordered_map<int, std::pair<int, int>> edgeIdToFrom_to;

	int mNReq;
	int mNCommEdges;
};
