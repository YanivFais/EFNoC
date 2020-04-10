#include "VarRepository.h"

#include <algorithm>
#include <vector>

using namespace std;

VarRepository::VarRepository(int nFreq, int nReq, CommunicationGraph & commGraph, InterferenceGraph & interGraph)
{
	mNFreq = nFreq;
	mNReq  = nReq;
	mNCommEdges = commGraph.GetNumEdges();

	// construct referencing maps.
	map<int,RescueEdge *> & interEdges = interGraph.GetEdges();
	int numInterEdges = (int) interEdges.size();
	vector<int> commEdgesIds;
	map<int,RescueEdge*>::iterator iter = interEdges.begin();
	for (; iter != interEdges.end(); iter++) 
	{
		RescueEdge* pEdge = iter->second;
		int currEdgeId = pEdge->GetEdgeNum();
		RescueEdge * pCommEdge = commGraph.GetEdge(currEdgeId);
		if (pCommEdge != NULL)
		{
			commEdgesIds.push_back(currEdgeId);
			pair<int,int> val (pCommEdge->GetFrom(),pCommEdge->GetTo());
			from_toToEdgeId[val] = currEdgeId;
			edgeIdToFrom_to[currEdgeId] = val;
		}
    }
	sort(commEdgesIds.begin(), commEdgesIds.end());
	for (int i=0;i<(int) commEdgesIds.size();i++)
	{
		int edgeId = commEdgesIds[i];
		edgeIdToConsecEdgeNum[edgeId] = i;
		consecEdgeNumToEdgeId[i] = edgeId;
	}
}

VarRepository::~VarRepository(void)
{}

int  VarRepository::VarToId(VarTypes varType, int request, int freq, int from, int to)
{
	int edgeId = -1;
	if (varType == EDGE_REQ_FREQ)
	{
		pair<int,int> val(from,to);
		map<pair<int,int>,int>::iterator foundEdge = from_toToEdgeId.find(val);
		if (foundEdge != from_toToEdgeId.end())
			edgeId = foundEdge->second;
		else
			return false;
		
	}
	return VarToId(varType, request, freq, edgeId);
}

int  VarRepository::VarToId(VarTypes varType, int request, int freq, int edgeId)
{
	if (varType == RHO)
		return mNFreq * mNReq * mNCommEdges + mNReq;

	if (varType == RHO_I)
		return mNFreq * mNReq * mNCommEdges + (request-1);


	int edgeNum;  // 0 based
	map<int,int>::iterator found = edgeIdToConsecEdgeNum.find(edgeId);
	if (found != edgeIdToConsecEdgeNum.end())
		edgeNum = found->second;
	else
		return -1; 

	return ((edgeNum*mNReq + (request-1))*mNFreq + freq-1);
}

bool VarRepository::IdToVar(int varId, VarTypes &o_varType, int &o_request, int &o_freq, int &o_from, int &o_to, int &o_edgeId)
{
	int lastEdgeId = mNFreq * mNReq * mNCommEdges - 1;
	int lastVarId = (lastEdgeId + mNReq + 1);
	if ( (varId < 0) || (varId > lastVarId) )
		return false;

	if (varId == lastVarId)
		o_varType = RHO;
	else
	{
		if (varId > lastEdgeId)
		{
			o_varType = RHO_I;
			o_request = varId - lastEdgeId;
		}
		else
		{
			o_varType = EDGE_REQ_FREQ;
			int edgeBlock = mNReq * mNFreq;
			int edgeNum = varId / edgeBlock;
			varId = varId - edgeNum * edgeBlock;
			o_request = varId / mNFreq;  
			o_freq = varId - o_request*mNFreq + 1; // frequecny # is 1 based
			o_request++; // request # is 1 based

			// translate edge consecutive number to interference graph terminology.
			map<int,int>::iterator found = consecEdgeNumToEdgeId.find(edgeNum);
			if (found != consecEdgeNumToEdgeId.end())
				o_edgeId = found->second;
			else
				return false; // shouldn't happen		

			map<int,pair<int,int>>::iterator foundVert = edgeIdToFrom_to.find(o_edgeId);
			if (foundVert != edgeIdToFrom_to.end())
			{
				pair <int,int> val = foundVert->second;
				o_from = val.first;
				o_to = val.second;
			}
			else
				return false; // shouldn't happen		
		}
	}
		
	return true;
}

int  VarRepository::GetNVars      () const
{
	return (mNFreq * mNReq * mNCommEdges + mNReq + 1);
}

int  VarRepository::GetNReq       () const
{
	return mNReq;
}

int  VarRepository::GetNFreq      () const
{
	return mNFreq;
}

int  VarRepository::GetNCommEdges () const
{
	return mNCommEdges;
}

int  VarRepository::GetNEdgeVars  () const
{
	return (mNCommEdges * mNReq * mNFreq);
}
