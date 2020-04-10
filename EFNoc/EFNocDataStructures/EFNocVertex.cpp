#include "EFNocVertex.h"
#include <algorithm>
#include "CommunicationGraph.h"

using namespace std;

EFNocVertex::EFNocVertex () 
{
	mVertexNum = -1;
	mTarget = false;
}

EFNocVertex::EFNocVertex(int i_vertexNum, bool i_target) : mTarget(i_target)
{
	mVertexNum = i_vertexNum;
}

EFNocVertex::EFNocVertex (const EFNocVertex & other) :
	mInEdges(other.mInEdges), mOutEdges(other.mOutEdges)
{
	mVertexNum = other.mVertexNum;
	mTarget = other.mTarget;
}


std::vector<int>  const & EFNocVertex::GetInEdges () const
{
	return mInEdges;
}

std::vector<int>  const & EFNocVertex::GetOutEdges() const
{
	return mOutEdges;
}

std::vector<int>  & EFNocVertex::GetInEdges() 
{
	return mInEdges;
}

std::vector<int>  & EFNocVertex::GetOutEdges() 
{
	return mOutEdges;
}

int EFNocVertex::GetVertexNum() const
{
	return mVertexNum;
}

int EFNocVertex::GetNumInEdges () const
{
	return mInEdges.size();
}
int EFNocVertex::GetNumOutEdges() const
{
	return mOutEdges.size();
}

void EFNocVertex::AddInEdge(int edgeNum,int from)
{
	mInEdges.push_back(edgeNum);
	inPorts[from]=0;
	calcInSwitch();
}

void EFNocVertex::AddOutEdge(int edgeNum,int to)
{
	mOutEdges.push_back(edgeNum);
	outPorts[to]=0;
	calcOutSwitch();
}

int EFNocVertex::GetInPort(int vertex2)
{
	return inPorts[vertex2];
}

int EFNocVertex::GetOutPort(int vertex2)
{
	return outPorts[vertex2];
}

void EFNocVertex::calcInSwitch()
{
	vector<int> ins;
	for (map<int,int>::const_iterator cit = inPorts.begin(); cit != inPorts.end(); cit++)
		ins.push_back(cit->first);
	sort(ins.begin(),ins.end());
	int i=0;
	for (vector<int>::const_iterator cit=ins.begin();cit!=ins.end();cit++,i++)
		inPorts[*cit]=i;
}

void EFNocVertex::calcOutSwitch()
{
	vector<int> outs;
	for (map<int,int>::const_iterator cit = outPorts.begin(); cit != outPorts.end(); cit++)
		outs.push_back(cit->first);
	sort(outs.begin(),outs.end());
	int i=0;
	for (vector<int>::const_iterator cit=outs.begin();cit!=outs.end();cit++,i++)
		outPorts[*cit]=i;
}

void EFNocVertex::RenameVertex(const map<int, int>& v2v)
{
	map<int, int>::const_iterator it = v2v.find(mVertexNum);
	if (it != v2v.end()) {
		mVertexNum = it->second;
	}
}

void EFNocVertex::InitMemory(int timeslots)
{
	for (int t = 0; t < timeslots; t++)
		mMemory.push_back(0);
}

void EFNocVertex::AddMemory(int timeslot,int flow)
{
	mMemory[timeslot] += flow;
}

void EFNocVertex::RemoveMemory(int timeslot, int flow)
{
	mMemory[timeslot] -= flow;
}

int EFNocVertex::GetMaxMemory()
{
	int m = 0;
	for (int t = 0; t < mMemory.size(); t++) {
		if (mMemory[t]>m)
			m = mMemory[t];
	}
	return m;
}
