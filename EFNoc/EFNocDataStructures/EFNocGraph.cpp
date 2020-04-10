#include "EFNocGraph.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <queue>

using namespace std;

EFNocGraph::EFNocGraph(bool i_isDirected) : mIsDirected(i_isDirected)
{}

EFNocGraph::~EFNocGraph(void)
{
	// delete all the pointers 
	map<int,EFNocVertex *>::iterator verticesIter;
	for (verticesIter = mVertices.begin();verticesIter != mVertices.end(); verticesIter++)
	{
		delete verticesIter->second;  // delete the vertex
	}
	
	map<int,EFNocEdge *>::iterator edgesIter;
	for (edgesIter = mEdges.begin();edgesIter != mEdges.end(); edgesIter++)
	{
		delete edgesIter->second;  // delete the edge
	}
}

int EFNocGraph::GetNumVertices() const
{
	return mVertices.size();
}

int EFNocGraph::GetNumEdges() const
{
	return mEdges.size(); 
}

std::map <int,EFNocEdge*>   & EFNocGraph::GetEdges      ()
{
	return mEdges;
}

std::map <int,EFNocVertex*> & EFNocGraph::GetVertices   ()
{
	return mVertices;
}
	
EFNocVertex * EFNocGraph::GetVertex (int vertexNum)
{
	map<int,EFNocVertex *>::iterator found = mVertices.find(vertexNum);
	if (found != mVertices.end())
		return found->second;
	else
		return NULL; 
}

EFNocEdge * EFNocGraph::GetEdge (int edgeNum)
{
	map<int,EFNocEdge *>::iterator found = mEdges.find(edgeNum);
	if (found != mEdges.end())
		return found->second;
	else
		return NULL; 
}

EFNocEdge  * EFNocGraph::GetReverseEdge (int edgeNum)
{
	map<int,int>::iterator found = mReverseEdges.find(edgeNum);
	if (found != mReverseEdges.end())
		return GetEdge (found->second);
	else
		return NULL; 
}

bool EFNocGraph::AddVertex(EFNocVertex * pVertex)
{
	int vertexNum = pVertex->GetVertexNum();
	map<int,EFNocVertex *>::iterator found = mVertices.find(vertexNum);
	if (found != mVertices.end())
		return false;

	mVertices[vertexNum] = pVertex;
	return true;
}

bool EFNocGraph::AddEdge  (EFNocEdge * pEdge)
{
	int edgeNum = pEdge->GetEdgeNum();
	map<int,EFNocEdge *>::iterator foundEdge = mEdges.find(edgeNum);
	if (foundEdge != mEdges.end())
		return false;

	// make sure both vertices exists.
	int from = pEdge->GetFrom();
	map<int,EFNocVertex *>::iterator found = mVertices.find(from);
	if (found == mVertices.end())
		return false;
	
	int to = pEdge->GetTo();
	found = mVertices.find(to);
	if (found == mVertices.end())
		return false;

	mEdges[edgeNum] = pEdge;

	EFNocVertex * pFrom = mVertices[from];
	pFrom->AddOutEdge(edgeNum,to);
	if (mIsDirected == false)
	{
		pFrom->AddInEdge(edgeNum,to);
	}
	EFNocVertex * pTo = mVertices[to];
	pTo->AddInEdge(edgeNum,from);
	if (mIsDirected == false)
	{
		pTo->AddOutEdge(edgeNum,from);
	}

	// keep the reverse edge map
	if (mIsDirected == false)
	{
		mReverseEdges[edgeNum] = edgeNum;
	}
	else
	{
		mReverseEdges[edgeNum] = -1;
		EFNocVertex * pReverseFrom = mVertices[to];
		const vector<int> & candidateEdges = pReverseFrom->GetOutEdges();
		for (int i=0;i<(int) candidateEdges.size();i++)
		{
			int candId = candidateEdges[i];
			EFNocEdge * pCandEdge = GetEdge(candId);
			if (pCandEdge->GetTo() == from)
			{
				mReverseEdges[edgeNum] = candId;
				mReverseEdges[candId] = edgeNum;
				break;
			}
		}
	}

	return true;
}

void EFNocGraph::RemoveEdge(int edgeId)
{
	EFNocEdge * pEdge = GetEdge(edgeId);
	if (pEdge == NULL)
		return;

	int from = pEdge->GetFrom();
	EFNocVertex * pFrom = GetVertex(from);
	int to = pEdge->GetTo();
	EFNocVertex * pTo = GetVertex(to);
	RemoveIdFromVec(edgeId, pFrom->GetOutEdges());
	RemoveIdFromVec(edgeId, pTo->GetInEdges());
	if (!mIsDirected)
	{
		RemoveIdFromVec(edgeId, pTo->GetOutEdges());
		RemoveIdFromVec(edgeId, pFrom->GetInEdges());
	}
	else
	{
		int reverseId = mReverseEdges[edgeId];
		if (reverseId != -1)  // there was a reverse edge but now we delete its pair.
			mReverseEdges[reverseId] = -1;
	}
	mReverseEdges.erase(edgeId);  // in the non-directed case id is the reverse of itself

	mEdges.erase(edgeId);
	delete pEdge;
}

void EFNocGraph::RemoveIdFromVec(int id, vector<int> & vec)
{
	vector<int> helper;
	for (int i = 0; i<(int)vec.size(); i++)
	{
		if (vec[i] != id)
			helper.push_back(vec[i]);
	}
	vec = helper;
}

void EFNocGraph::FindBFSPath(int source, int target, vector<int> & path)
{
	path.clear();
	if (source == target)
		return;

	int maxVertexId = 0;
	map<int, EFNocVertex*>::iterator iter = mVertices.begin();
	for (; iter != mVertices.end(); iter++)
	{
		if (maxVertexId < iter->first)
			maxVertexId = iter->first;
	}

	vector<bool> processed(maxVertexId+1, false);
	if (maxVertexId < source)
		return;
	map<int, pair<int, int> > fathers;
	pair<int, int> dummyPair(-1, -1);
	fathers[source] = dummyPair;  // no father
	queue<int> reached;
	reached.push(source);
	processed[source ] = true;
	while (!reached.empty())
	{
		int currVertex = reached.front();
		if (currVertex == target)
			break;

		reached.pop();
		EFNocVertex * v = GetVertex(currVertex);
		if (v == NULL)
			return;
		vector<int> & outEdges = v->GetOutEdges();
		for (int i = 0; i<(int)outEdges.size(); i++)
		{
			EFNocEdge * pEdge = GetEdge(outEdges[i]);
			int to = pEdge->GetTo();

			if (!processed[to])
			{
				pair<int, int> fatherAndEdge(currVertex, outEdges[i]);
				fathers[to] = fatherAndEdge;
				reached.push(to);
				processed[to] = true;
			}
		}
	}

	// reconstruct the path backwards
	vector<int> reversePath;
	map<int, pair<int, int>>::iterator found = fathers.find(target);
	if (found == fathers.end())
		return;
	pair<int, int> fathersData = found->second;
	while (fathersData.first != -1)
	{
		reversePath.push_back(fathersData.second);
		found = fathers.find(fathersData.first);
		if (found == fathers.end())
			return;   // error? 
		fathersData = found->second;
	}

	for (int i = (int)reversePath.size() - 1; i >= 0; i--)
		path.push_back(reversePath[i]);
}

int EFNocGraph::GetEdgeNumByVertices(int from, int to)
{
	int edgeId = -1;
	EFNocVertex * pFrom = GetVertex(from);
	EFNocVertex * pTo = GetVertex(to);
	if ((pFrom == NULL) || (pTo == NULL))
		return edgeId;
	vector<int> & edges = pFrom->GetOutEdges();
	int nEdgeFrom = (int)edges.size();
	for (int i = 0; i<nEdgeFrom; i++)
	{
		if (GetEdge(edges[i])->GetTo() == to)
		{
			edgeId = edges[i];
			break;
		}
	}
	return edgeId;
}

void EFNocGraph::FindMaxBottleneckPath(int source, int target, vector<int> & path)
{
	path.clear();
	if (source == target)
		return;

	int maxVertexId = 0;
	map<int, EFNocVertex*>::iterator iter = mVertices.begin();
	for (; iter != mVertices.end(); iter++)
	{
		if (maxVertexId < iter->first)
			maxVertexId = iter->first;
	}

	int MY_INFINITY = 100000000;
	const int BEFORE = 0;
	const int IN_PROCESS = 1;
	const int FINAL = 2;
	vector<int> processingState(maxVertexId, BEFORE);
	vector<int> bottleneckValue(maxVertexId, -MY_INFINITY);
	vector<int> distance(maxVertexId, MY_INFINITY);
	map<int, pair<int, int>> fathers;

	pair<int, int> dummyPair(-1, -1);
	fathers[source] = dummyPair;  // no father
	bottleneckValue[source - 1] = MY_INFINITY;
	distance[source - 1] = 0;
	vector<tr1::tuple<int, int, int>> active;
	active.push_back(tr1::make_tuple(bottleneckValue[source - 1], distance[source - 1], source));
	processingState[source - 1] = IN_PROCESS;

	while (!active.empty())
	{
		sort(active.begin(), active.end());
		int nActives = active.size();
		int currVertex = tr1::get<2>(active[nActives - 1]);
		int currDist = -tr1::get<1>(active[nActives - 1]);
		processingState[currVertex - 1] = FINAL;
		if (currVertex == target)
			break;

		active.pop_back();

		const vector<int> & outEdges = GetVertex(currVertex)->GetOutEdges();
		for (int i = 0; i<(int)outEdges.size(); i++)
		{
			EFNocEdge * pEdge = GetEdge(outEdges[i]);
			int to = pEdge->GetTo();

			if (processingState[to - 1] != FINAL)
			{
				int candidateWeight = min(bottleneckValue[currVertex - 1],
					(int)(floor(pEdge->GetCapacity()*1000.)));
				int candidateDist = currDist + 1;
				if (processingState[to - 1] == BEFORE)
				{
					active.push_back(tr1::make_tuple(candidateWeight, -candidateDist, to));
					processingState[to - 1] = IN_PROCESS;
				}
				if ((bottleneckValue[to - 1] < candidateWeight) ||
					((bottleneckValue[to - 1] == candidateWeight) &&
					(distance[to - 1] > candidateDist)))
				{
					fathers[to] = make_pair(currVertex, outEdges[i]);;
					bottleneckValue[to - 1] = candidateWeight;
					distance[to - 1] = candidateDist;
					for (int iActives = 0; iActives < (int)active.size(); iActives++)
					{
						if (tr1::get<2>(active[iActives]) == to)
						{
							tr1::get<1>(active[iActives]) = -candidateDist;
							tr1::get<0>(active[iActives]) = candidateWeight;
							break;
						}
					}
				}
			}
		}
	}

	// reconstruct the path backwards
	vector<int> reversePath;
	map<int, pair<int, int>>::iterator found = fathers.find(target);
	if (found == fathers.end())
		return;
	pair<int, int> fathersData = found->second;
	while (fathersData.first != -1)
	{
		reversePath.push_back(fathersData.second);
		found = fathers.find(fathersData.first);
		if (found == fathers.end())
			return;   // error? 
		fathersData = found->second;
	}

	for (int i = (int)reversePath.size() - 1; i >= 0; i--)
		path.push_back(reversePath[i]);
}

