#include "CommunicationGraph.h"

#include "DynamicVertex.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <assert.h>
using namespace std;

// false means undirected graph 
CommunicationGraph::CommunicationGraph() :EFNocGraph(true)
{
	mReverseEdgeOffset = -1;
}

void CommunicationGraph::SetReverseEdgesOffset(int reverseEdgeOffset)
{
	mReverseEdgeOffset = reverseEdgeOffset;
}

bool CommunicationGraph::InitFromFiles(const char * commGraphFileName)
{

	return ReadCommunicationGraphFile(commGraphFileName);
}

bool CommunicationGraph::WriteToFiles(const char * commGraphFileName) const
{

	return WriteCommunicationGraphFile(commGraphFileName);
}

bool CommunicationGraph::WriteCommunicationGraphFile (const char * commGraphFileName) const
{
	if (commGraphFileName == NULL)
		return true;


	ofstream commGraphFile;
	commGraphFile.open(commGraphFileName,ios_base::trunc);
    if (!commGraphFile) 
	{
		cout << "Unable to open file" << commGraphFileName << endl;
        return false;
    }
	// first line - the edges number
	commGraphFile << "# num-edges , num-vertices ,";
	commGraphFile << name << endl;
	commGraphFile << GetNumEdges() << "," << GetNumVertices() << endl;
	commGraphFile << "# edge num,from,to,edge price \n";
	map<int,EFNocEdge *>::const_iterator edgesIter;
	for (edgesIter = mEdges.begin();edgesIter != mEdges.end(); edgesIter++)
	{
		EFNocEdge * pEdge = (EFNocEdge *)edgesIter->second;

		commGraphFile << pEdge->GetEdgeNum() << "," << pEdge->GetFrom() << "," 
			<< pEdge->GetTo()  << "," << pEdge->GetPrice() << endl;
	}

	commGraphFile.close();
	return true;
}

bool CommunicationGraph::ReadCommunicationGraphFile(const char * commGraphFileName)
{
	ifstream communicationFile;
    communicationFile.open(commGraphFileName);
    if (!communicationFile) 
	{
		cout << "Unable to open file" << commGraphFileName << endl;
        return false;
    }
 
    bool firstLine = true; 
    string  line; 
	while (getline(communicationFile,line)) 
    {
		if ( (line.size() == 0) || 
             ((line.size() >= 1) && (line[0] == '#') ))
        {
			if (name == "") {
				int l = line.find(",");
				l = line.find(",", l+1);
				name = line.substr(l + 1, line.length());
			}
			continue;  // comment
        } 
        else 
        {
           // parse lines
			stringstream ss (line);
			string token;
            if (firstLine) // header line - number of edges
            {
				getline (ss,token,',');
				mReverseEdgeOffset = atoi(token.c_str());
				getline (ss,token,',');
				int numVertex = atoi(token.c_str());
				for (int v=0;v<numVertex;v++) {
					if (!AddVertex(new EFNocVertex(v,true)))
						return false;
				}
                firstLine = false;
                continue;
            }
 
            getline(ss, token, ',');
            int edgeNum = atoi(token.c_str());
            getline(ss, token, ',');
            int from = atoi(token.c_str());
            getline(ss, token, ',');
			int to = atoi(token.c_str());
            getline(ss, token, ',');
			double price = atof(token.c_str());
            getline(ss, token, ',');
			EFNocEdge * pEdgeOneWay =
				new EFNocEdge(edgeNum, from, to, true,price);
            if (!AddEdge  (pEdgeOneWay))
				return false;
/*			The reverse edge is written to the file, so no need to add it now
			CommunicationEdge * pEdgeReverse = 
				new CommunicationEdge(mReverseEdgeOffset + edgeNum,to, from, capacity);
			AddEdge  (pEdgeReverse); */
		}
	}
 
    communicationFile.close();
    return true;
}

void CommunicationGraph::WriteOmnetNetworkParams(int slots,const std::string& pkgName) const
{
	ofstream of("omnetpp.ini.include");
	of << "# Copyright Yaniv Fais,Tel Aviv University\n\n";
	of << "network = efnoc." << pkgName << "." << name << "\n\n";
	of << "**.timeslots = " << slots << "\n";
	of << "**.source.fileName = \"";
	if (name == "mcsl_rtp") // TODO
		of << "../mcsl.rtp";
	of << "\"\n";

	double wwidth = 0,wcost=0;
	for (int e = 0; e < mEdges.size(); e++) {
		wcost += mEdges.find(e)->second->GetCapacity()*mEdges.find(e)->second->GetPrice();
		wwidth += mEdges.find(e)->second->GetCapacity();
	}
	cout << "Edges total wire width:" << wwidth << ", Edges: " << mEdges.size() << " Average: " << wwidth / mEdges.size() << endl;
	of << "# Edges total wire width:" << wwidth << ", Edges: " << mEdges.size() << " Average: " << wwidth / mEdges.size() << endl;
	cout << "Edges total wire cost:" << wcost << ", Edges: " << mEdges.size() << " Average: " << wcost / mEdges.size() << endl;
	of << "# Edges total wire cost:" << wcost << ", Edges: " << mEdges.size() << " Average: " << wcost / mEdges.size() << endl;

	for (int v = 0; v < GetNumVertices(); v++) {
		const EFNocVertex * vertex = mVertices.find(v)->second;
		std::vector<int> edges = vertex->GetOutEdges();
		int e = 0;
		for (std::vector<int>::const_iterator it = edges.begin(); it != edges.end(); it++, e++) {
			int to = mEdges.find(*it)->second->GetTo();
			const EFNocVertex * toV = mVertices.find(to)->second;
			std::vector<int> inEdges = toV->GetInEdges();
			of << name << "." << "router" << v << ".out$o[" << e << "].channel.bw = " << mEdges.find(*it)->second->GetCapacity() << endl;
			of << name << "." << "router" << v << ".out$o[" << e << "].channel.edge_num = " << *it << endl;
		}
		of << endl;
	}
	of << "**.channel.edge_num = -1\n";
	of << "**.channel.bw = 0\n";
	of.close();
}

bool CommunicationGraph::WriteOmnetNetwork(ostream& os,const std::string& name,const std::string& pkgName) const
{
	os << "// Copyright Yaniv Fais,Tel Aviv University\n\n";

	os << "package efnoc." << pkgName << ";\n\n";

	os << "import hnocs.routers.Router_Ifc;\n";
	os << "import hnocs.cores.NI_Ifc;\n\n";

	os << "import ned.DelayChannel;\n";
	os << "import hnocs.topologies.VariableBandWidthLink;\n\n";

	os << "network " << name << endl;
	os << "{\n";
	os << "  parameters:\n";
	os << "    string routerType;\n";
	os << "    string coreType;\n";
	os << "  submodules:\n";
	for (int v = 0; v < GetNumVertices(); v++) {
		const EFNocVertex * vertex = mVertices.find(v)->second;
		if (vertex->isTarget()) {
			os << "    core" << v << " : <coreType> like NI_Ifc {\n";
			os << "      parameters:\n";
			os << "        id = " << v << ";\n";
			os << "        @display(\"p=" << vertex->GetLocation().x << ", " << vertex->GetLocation().y + 30 << "\");\n";
			os << "    }\n";
		}
		os << "    router" << v << " : <routerType> like Router_Ifc {\n";
		os << "      parameters:\n";
		os << "        id = " << v << ";\n";
		os << "        numPorts = " << vertex->GetNumInEdges() + vertex->isTarget() << ";\n";
		assert(vertex->GetNumInEdges() == vertex->GetNumOutEdges());
		os << "        @display(\"p=" << vertex->GetLocation().x << ", " << vertex->GetLocation().y << "\");\n";
		os << "      gates:\n";
		os << "        in[" << vertex->GetNumInEdges()+1 << "];\n";
		os << "        out[" << vertex->GetNumOutEdges()+1 << "];\n";
		os << "    };\n";

		os << endl;
	}
	os << "  connections allowunconnected :\n";
	for (int v = 0; v < GetNumVertices(); v++) {
		const EFNocVertex * vertex = mVertices.find(v)->second;

		std::vector<int> edges = vertex->GetOutEdges();
		int e = 0;
		for (std::vector<int>::const_iterator it = edges.begin(); it != edges.end(); it++,e++) {
			int to = mEdges.find(*it)->second->GetTo();
			const EFNocVertex * toV = mVertices.find(to)->second;
			std::vector<int> inEdges = toV->GetInEdges();
			unsigned toIndex = 0;
			for (toIndex = 0; toIndex < inEdges.size() && inEdges[toIndex] != *it; toIndex++);
			os << "      router" << v << ".out[" << e << "] <--> VariableBandWidthLink <--> router" << to << ".in[" << toIndex << "];\n";
			//os << "      router" << v << ".out[" << e << "] <--> VariableBandWidthLink <--> router" << to << ".in[" << toIndex << "];\n";
		}
		if (vertex->isTarget()) {
			os << "      router" << v << ".in[" << vertex->GetNumInEdges() << "] <--> VariableBandWidthLink <--> core" << v << ".out; \n";
			os << "      router" << v << ".out[" << vertex->GetNumInEdges() << "] <--> VariableBandWidthLink <--> core" << v << ".in; \n";
		}
	}
	os << "}\n";

	return true;
}

void CommunicationGraph::RenameVertices(const map<int, int>& v2v)
{
	for (map<int, int>::const_iterator it = v2v.begin(); it != v2v.end(); it++) {
		if (it->first == it->second)
			continue;
		map<int, int> allV2V;
		allV2V[it->first] = it->second;
		allV2V[it->second] = it->first;

		for (map<int, EFNocVertex*>::iterator vIter = mVertices.begin(); vIter != mVertices.end(); vIter++) {
			vIter->second->RenameVertex(allV2V);
		}
		for (map<int, EFNocEdge*>::iterator eIter = mEdges.begin(); eIter != mEdges.end(); eIter++) {
			eIter->second->RenameVertices(allV2V);
		}
	}
	map<int, EFNocVertex*> vertices;
	for (map<int, EFNocVertex*>::iterator vIter = mVertices.begin(); vIter != mVertices.end(); vIter++) {
		vertices[vIter->second->GetVertexNum()] = vIter->second;
	}
	mVertices = vertices;
}


void CommunicationGraph::computeAllNodesDiatances(int ** adjMatrix)
{
	int size = mVertices.size();

	cout << "Computing distance between nodes in order to estimate wire length" << endl;
	// Floyd Warshal algorithm for finding minimal distance between all nodes
	int i, j, k;
	for (k = 0; k < size; k++)
	{
		for (i = 0; i < size; i++)
		{
			for (j = 0; j < size; j++)
			{
				if ((adjMatrix[i][k] * adjMatrix[k][j] != 0) && (i != j))
				{
					if ((adjMatrix[i][k] + adjMatrix[k][j] < adjMatrix[i][j]) || (adjMatrix[i][j] == 0))
					{
						adjMatrix[i][j] = adjMatrix[i][k] + adjMatrix[k][j];
					}
				}
			}
		}
	}
	for (i = 0; i < size; i++)
	{
		//cout << "Minimum Distance With Respect to Node:" << i << endl;
		for (j = 0; j < size; j++)
		{
			//cout << matrix[i][j] << ",";
		}
		//cout << endl;
	}
}

int ** CommunicationGraph::allocateAdjancyMatrix()
{
	int ** adjMatrix = new int*[mVertices.size()];
	for (int i = 0; i < mVertices.size(); i++) {
		adjMatrix[i] = new int[mVertices.size()];
		memset(adjMatrix[i], 0, mVertices.size()*sizeof(int));
	}
		
	for (map<int, EFNocVertex*>::iterator vIter = mVertices.begin(); vIter != mVertices.end(); vIter++) {
		EFNocVertex *v = (vIter->second);
		vector<int>& inEdges = v->GetInEdges();
		for (int e = 0; e < inEdges.size(); e++) {
			EFNocEdge * edge = mEdges[inEdges[e]];
			adjMatrix[vIter->first][edge->GetFrom()] = 1;
		}
		vector<int>& outEdges = v->GetOutEdges();
		for (int e = 0; e < outEdges.size(); e++) {
			EFNocEdge * edge = mEdges[outEdges[e]];
			adjMatrix[vIter->first][edge->GetTo()] = 1;
		}
	}
	return adjMatrix;
}

void CommunicationGraph::ComputeWireLength()
{
	// This is merely an estimation, we don't have full optimized floor plan
	// We assume cores are big,switches are small
	// We thus place cores along a tile, switches become neglectible
	// we place switches in the 'center of mass' of all their edge
	int cores = 0;
	for (map<int, EFNocVertex*>::iterator vIter = mVertices.begin(); vIter != mVertices.end(); vIter++) {
		EFNocVertex v = *(vIter->second);
		cores += (v.isTarget());
	}
	int n = (int) sqrt(cores);
	int core = 0;
	// places cores along a grid
	map<int, EFNocVertex> vertices;
	for (map<int, EFNocVertex*>::iterator vIter = mVertices.begin(); vIter != mVertices.end(); vIter++) {
		EFNocVertex v = *(vIter->second);
		if (v.isTarget()) {
			DblPoint pt;
			pt.x = (core%n + 1) * 100;
			pt.y = (core/n + 1) * 100;
			v.setLocation(pt);
			core++;
		}
		vertices[vIter->second->GetVertexNum()] = v;
	}


	// place switches along midpoint, note- since switches are often connected to other switches, we compute 'center of mass'
	// compute 'distance' in hops from each switch to each core
	int ** adjMatrix = allocateAdjancyMatrix();
	computeAllNodesDiatances(adjMatrix);

	cout << "Place switches in 'hot spots'" << endl;
	// better to minimize wire lengths according to placement algorithm (min(\sigma(x^2+y^2))...
	for (map<int, EFNocVertex>::iterator vIter = vertices.begin(); vIter != vertices.end(); vIter++) {
		EFNocVertex v = (vIter->second);
		if (!v.isTarget()) {
			int maxDist=0;
			for (int neighbor = 0; neighbor<vertices.size(); neighbor++)
				if (vertices[neighbor].isTarget() && (adjMatrix[vIter->first][neighbor]> maxDist))
					maxDist = adjMatrix[vIter->first][neighbor];
			vector<int>& inEdges = v.GetInEdges();
			double Xtotal=0, Ytotal=0,massTotal=0;
			for (int e = 0; e < inEdges.size(); e++) {
				EFNocEdge * edge = mEdges[ inEdges[e] ];
				EFNocVertex vIn = vertices[edge->GetFrom()];
				int weight = (maxDist - adjMatrix[vIter->first][edge->GetFrom()] + 1);
				if (vIn.isTarget()) {
					massTotal += weight;
					Xtotal += vIn.GetLocation().x*weight;
					Ytotal += vIn.GetLocation().y*weight;
				}
			}
			vector<int>& outEdges = v.GetOutEdges();
			for (int e = 0; e < outEdges.size(); e++) {
				EFNocEdge * edge = mEdges[outEdges[e]];
				EFNocVertex vOut = vertices[edge->GetTo()];
				int weight = (maxDist - adjMatrix[vIter->first][edge->GetTo()] + 1);
				if (vOut.isTarget()) {
					massTotal += weight;
					Xtotal += vOut.GetLocation().x*weight;
					Ytotal += vOut.GetLocation().y*weight;
				}
			}
			DblPoint pt;
			pt.x = massTotal&&Xtotal ? (Xtotal / massTotal) * 100 : (n / 2) * 100;
			pt.y = massTotal&&Ytotal ? (Ytotal / massTotal) * 100 : (n / 2) * 100;
			v.setLocation(pt);
		}
	}
	for (int i = 0; i < vertices.size(); i++) {
		delete[] adjMatrix[i];
	}
	delete[] adjMatrix;

	double wTotalLen = 0;
	cout << "Computing wire lengths\n";
	for (int e = 0; e < mEdges.size(); e++) {
		EFNocEdge * edge = mEdges[e];
		DblPoint pFrom, pTo;
		pFrom = vertices[edge->GetFrom()].GetLocation();
		pTo = vertices[edge->GetTo()].GetLocation();
		double wlen = sqrt((pFrom.x - pTo.x)*(pFrom.x - pTo.x) + (pFrom.y - pTo.y)*(pFrom.y - pTo.y));
		wlen /= 100;
		wTotalLen += wlen;
		if (wlen == 0)
			wlen = 1;
		edge->SetPrice(wlen);
	}
	cout << "\nCores:" << cores << " Switches:" << vertices.size() << " Links:" << mEdges.size() / 2 << ",Average link length=" << wTotalLen/mEdges.size() << endl;
}