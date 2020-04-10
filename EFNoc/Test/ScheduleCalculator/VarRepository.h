#pragma once
#include "CommunicationGraph.h"
#include "InterferenceGraph.h"

#include <utility>
#include <map>

enum VarTypes {
	EDGE_REQ_FREQ, 
	RHO_I, 
	RHO
};

class VarRepository
{
public:
	VarRepository(int nFreq, int nReq, CommunicationGraph & commGraph, InterferenceGraph & interGraph);
	~VarRepository(void);
	int  VarToId(VarTypes varType, int request, int freq, int from, int to);
	int  VarToId(VarTypes varType, int request, int freq, int edgeId);
	bool IdToVar(int varId, VarTypes &o_varType, int &o_request, int &o_freq, int &o_from, int &o_to, int &o_edgeId);

	int  GetNVars      () const;
	int  GetNReq       () const;
	int  GetNFreq      () const;
	int  GetNCommEdges () const;
	int  GetNEdgeVars  () const;

protected:
	std::map<int, int> edgeIdToConsecEdgeNum;
	std::map<int, int> consecEdgeNumToEdgeId;
	std::map<std::pair<int,int>,int> from_toToEdgeId;
	std::map<int, std::pair<int,int>> edgeIdToFrom_to;

	int mNFreq;
	int mNReq;
	int mNCommEdges;
};
