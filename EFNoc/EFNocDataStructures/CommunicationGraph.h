#pragma once

#include "EFNocGraph.h"
#include <ostream>
#include <string>

class CommunicationGraph : public EFNocGraph
{
public:
	CommunicationGraph  (void);

	void SetReverseEdgesOffset(int reverseEdgeOffset);
	// serialize and de-serialize
	bool InitFromFiles (const char * commGraphFileName); 
	bool WriteToFiles  (const char * commGraphFileName) const; 
	bool WriteOmnetNetwork(std::ostream& os, const std::string& name, const std::string& pkgName) const;
	void WriteOmnetNetworkParams(int slots, const std::string& pkgName) const;
	void SetName(const std::string& n) { name = n; }
	const std::string& GetName() const { return name; }
	void RenameVertices(const map<int,int>& v2mcsl);
	void ComputeWireLength();

protected:

	bool ReadCommunicationGraphFile  (const char * commGraphFileName);
	bool WriteCommunicationGraphFile (const char * commGraphFileName) const;
	void computeAllNodesDiatances(int ** adjMatrix);
	int ** allocateAdjancyMatrix();

	int  mReverseEdgeOffset;
	std::string name;
};
