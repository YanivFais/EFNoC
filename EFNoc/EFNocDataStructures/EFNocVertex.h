#pragma once
#include <vector>
#include "EFNocEdge.h"
#include <map>
#include "dblpoint.h"
class CommunicationGraph;

class EFNocVertex
{
public:
	EFNocVertex ();
	EFNocVertex (int i_vertexNum,bool i_target);
	EFNocVertex (const EFNocVertex & other);

	std::vector<int>  const & GetInEdges () const;
	std::vector<int>  const & GetOutEdges() const;
	std::vector<int>   & GetInEdges();
	std::vector<int>   & GetOutEdges();
	int                  GetVertexNum  () const;
	int                  GetNumInEdges () const;
	int                  GetNumOutEdges() const;

	void                 AddInEdge     (int edgeNum,int from);
	void                 AddOutEdge    (int edgeNum,int to);

	int GetInPort(int vertex2);
	int GetOutPort(int vertex2);
	bool isTarget() const { return mTarget; }

	void setLocation(DblPoint& l) { location = l; }
	const DblPoint& GetLocation() const { return location; }

	void RenameVertex(const map<int, int>& v2v);
	void InitMemory(int timeslot);
	void AddMemory(int timeslot, int flow);
	void RemoveMemory(int timeslot, int flow);
	int GetMaxMemory();


//private:
protected:
	
	void calcInSwitch();
	void calcOutSwitch();

	std::vector<int> mInEdges;
	std::vector<int> mOutEdges;
	int              mVertexNum;
	std::map<int,int> inPorts,outPorts;
	bool mTarget;
	DblPoint location;
	std::vector<int> mMemory;
};

