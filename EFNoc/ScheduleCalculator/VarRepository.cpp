#include "VarRepository.h"

#include <algorithm>
#include <vector>
#include <exception>
using namespace std;

VarRepository::VarRepository(int nReq, CommunicationGraph & commGraph)
{
	mNReq  = nReq;
	mNCommEdges = commGraph.GetNumEdges();
	int vNum = commGraph.GetNumVertices();
	from_toToEdgeId = new int*[vNum];
	for (int i = 0; i < vNum; i++) {
		from_toToEdgeId[i] = new int[vNum];
		memset(from_toToEdgeId[i], -1, vNum*sizeof(int));
	}

	// construct referencing maps.
	vector<int> commEdgesIds;

	// construct referencing maps.
	map<int,EFNocEdge *> & commEdges = commGraph.GetEdges();
	map<int,EFNocEdge*>::iterator iter = commEdges.begin();
	for (; iter != commEdges.end(); iter++) 
	{
		EFNocEdge* pEdge = iter->second;
		int currEdgeId = pEdge->GetEdgeNum();
		commEdgesIds.push_back(currEdgeId);
		pair<int,int> val (pEdge->GetFrom(),pEdge->GetTo());
		from_toToEdgeId[pEdge->GetFrom()][pEdge->GetTo()] = currEdgeId;
		edgeIdToFrom_to[currEdgeId] = val;
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

int  VarRepository::VarToId(VarTypes varType, int request, int from, int to)
{
	pair<int,int> val(from,to);
	int edgeId = from_toToEdgeId[from][to];
	if ((edgeId == -1) && (varType!=RHO)) {
		throw std::bad_exception("Internal error:can't find edge variable");
		return false;
	}
	return VarToId(varType, request,edgeId);
}

int  VarRepository::VarToId(VarTypes varType, int request,int edgeId)
{
	if (varType == RHO)
		return mNReq * mNCommEdges + (mNCommEdges);

	int edgeNum;  // 0 based
	std::tr1::unordered_map<int, int>::iterator found = edgeIdToConsecEdgeNum.find(edgeId);
	if (found != edgeIdToConsecEdgeNum.end())
		edgeNum = found->second;
	else
		throw std::bad_exception("Internal error:can't find edge variable");

	if (varType == EDGE_REQ)
		return (request*mNCommEdges)+edgeNum;
	if (varType == BW_I)
		return mNReq * mNCommEdges + (edgeNum);

	throw std::bad_exception("Internal error:can't find variable type");
}

bool VarRepository::IdToVar(int varId, VarTypes &o_varType, int &o_request, int &o_from, int &o_to, int &o_edgeId)
{
	if (mNReq * mNCommEdges + (mNCommEdges) == varId) {
		o_varType = RHO;
		o_from = o_to = o_edgeId = -1;
		return true;
	}

	int lastEdgeId = mNReq * mNCommEdges - 1;
	int lastVarId = (mNReq+1) * mNCommEdges ;
	if ( (varId < 0) || (varId > lastVarId) )
		return false;

	if (varId > lastEdgeId)
	{
		o_varType = BW_I;
		o_request = -1;
		o_edgeId = varId - lastEdgeId - 1;

	}
	else
	{
		o_varType = EDGE_REQ;
		int edgeBlock = mNCommEdges;
		o_request = varId / edgeBlock;
		varId = varId - o_request * edgeBlock;
		int edgeNum = varId;

		// translate edge consecutive number to graph terminology.
		std::tr1::unordered_map<int, int>::iterator found = consecEdgeNumToEdgeId.find(edgeNum);
		if (found != consecEdgeNumToEdgeId.end())
			o_edgeId = found->second;
		else
			return false; // shouldn't happen		
	}
	std::tr1::unordered_map<int, pair<int, int> >::iterator foundVert = edgeIdToFrom_to.find(o_edgeId);
	if (foundVert != edgeIdToFrom_to.end())
	{
		pair <int,int> val = foundVert->second;
		o_from = val.first;
		o_to = val.second;
	}
	else
			return false; // shouldn't happen		
		
	return true;
}

int  VarRepository::GetNVars      () const
{
	return ( (mNReq+1) * mNCommEdges)+1;
}

int  VarRepository::GetNReq       () const
{
	return mNReq;
}


int  VarRepository::GetNCommEdges () const
{
	return mNCommEdges;
}

int  VarRepository::GetNEdgeVars  () const
{
	return (mNCommEdges * mNReq );
}
