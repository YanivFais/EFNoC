#pragma once

#include <map>
#include <vector>
#include "EFNocEdge.h"
#include "EFNocVertex.h"


class EFNocGraph
{
public:
	EFNocGraph  (bool i_isDirected);
	~EFNocGraph (void);

	int                            GetNumVertices() const;
	int                            GetNumEdges   () const;
	std::map <int,EFNocEdge*>   & GetEdges      ();
	std::map <int,EFNocVertex*> & GetVertices   (); 
	
	EFNocVertex                 * GetVertex           (int vertexNum);
	EFNocEdge                   * GetEdge             (int edgeNum);
	EFNocEdge                   * GetReverseEdge      (int edgeNum);

	bool						   AddVertex(EFNocVertex * pVertex);
	bool                           AddEdge  (EFNocEdge * pEdge);

	int                            GetEdgeNumByVertices(int from, int to);

	void                           RemoveEdge(int edgeId);
	void						   FindBFSPath(int source, int target, std::vector<int> & path);

	void                           FindMaxBottleneckPath(int source, int target, std::vector<int> & path);


protected:

	std::map<int,EFNocVertex*> mVertices;
	std::map<int,EFNocEdge*> mEdges;
	std::map<int,int> mReverseEdges;
	void RemoveIdFromVec(int id, std::vector<int> & vec);

	bool     mIsDirected;
};
