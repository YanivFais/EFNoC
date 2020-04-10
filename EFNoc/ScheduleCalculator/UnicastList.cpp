#include "stdafx.h"
#include "UnicastList.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
using namespace std;

UnicastList::UnicastList(void)
{
	nFreqs = 3;
	nRequests = 0;
}

UnicastList::~UnicastList(void)
{
}

int UnicastList::GetNumRequests() const
{
	return nRequests;
}
int UnicastList::GetNumFreqs() const
{
	return nFreqs;
}


bool UnicastList::initFromFile(char * communicationFileName, int& ncols, int& nrows, double& collb, double& colub, double& obj, double& rowlb, double& rowub, 
							   CoinPackedMatrix& matrix, CommunicationGraph& comm_graph)
{                
	
    ifstream communicationFile;
    communicationFile.open(communicationFileName);
    if (!communicationFile) 
	{
		cout << "Unable to open file" << communicationFileName;
        return false;
    }
 
    bool firstLine = true; 
    string  line; 
				
	int comm_num;

	int edge_num = (comm_graph.getNumEdges())/2; //Edge number in the communication graph (numbr of edges in the flow graph divided by 2).
	int num_vert = comm_graph.getNumVertices(); //Vertexes number in flow graph
	nrows = 0; //The rows number of constraints matrix of CLP
	//ncols = 21; // (#streams)*2*(the number of edges) + 1
	//ncols=50;
	comm_num=0; 
    const double HUGE_NUM = 1e8;

    while (getline(communicationFile,line)) 
    {
		if ( (line.size() == 0) || 
             ((line.size() >= 1) && (line[0] == '#') ))
			{
				continue;  
            } 
        else
            {
				// parse lines
                stringstream ss (line);
                                      
                if (firstLine) // header line - number of requests
                {
					ss >> nRequests;
                    firstLine = false;
                    continue;
                }
 
                int source, num_dest, dest, stream;
                double req_bndwth;
                string token;
                                               
                getline(ss, token, ',');
                stream = atoi(token.c_str());
                getline(ss, token, ',');
                source = atoi(token.c_str());
				getline(ss, token, ',');
                req_bndwth = atof(token.c_str());
                getline(ss, token, ',');
				num_dest = atoi(token.c_str());
				getline(ss, token, ',');
				dest = atoi(token.c_str());
                                           
				//The variables ordering:
				//The first block is for 1:1:number of edges in communication graph
				//The second block is for reversal edges
				//These two blocks are replecated for each commodity

				for (int v=1;v<num_vert+1;v++){  


					if (comm_num == 0) {

					//Conflict Constraints
					//N - is the commidities number
					//edge_num - is the edge number
					nrows++; //count for each node
                    //cout << "vertex  = " << v << source << dest << endl;
					CAtlArray <RescueEdge*> const  * edge_out_conf=comm_graph.getOutEdgesAdjVertex(v);
					CAtlArray <RescueEdge*> const  * edge_in_conf=comm_graph.getInEdgesAdjVertex(v);
					RescueVertex const * pVertex_in_conf = comm_graph.getVertex(v); 
					if (pVertex_in_conf == NULL)		
						return NULL;
						int edge_in_num_conf = pVertex_in_conf->getNumInEdges();
						if (edge_in_num_conf == 0)
							return NULL;

					RescueVertex const * pVertex_out_conf = comm_graph.getVertex(v); 
					if (pVertex_out_conf == NULL)
						return NULL;
						int edge_out_num_conf = pVertex_out_conf->getNumOutEdges();
						if (edge_out_num_conf == 0)
							return NULL;
                     
					//eq13 from th ereport. In multifriquency is prohibited to activate the neighbour edges at any frequency more then one simultaneously.
					for (int f=0;f<nFreqs;f++) { //multiple frequencies extention
						//nrows++; //count for each node
						for (int i=0;i<edge_in_num_conf;i++) { //loop on edges
							//Conflicts for incoming edges to the neighbour node of v
							(&rowlb)[nrows-1] = 0;
							int edge_neig_in_num = (*edge_in_conf)[i]->getEdgeNum();
							RescueEdge const  * edge_neig_num_conf=comm_graph.getEdge(edge_neig_in_num);
							double edge_neig_in_cap = edge_neig_num_conf->getCapacity();
							(&rowub)[nrows-1] = 1;
							for(int j=0;j<nRequests;j++) { //loop on commodities
								matrix.modifyCoefficient(nrows-1, j*nFreqs*2*edge_num+f*2*edge_num+((*edge_in_conf)[i]->getEdgeNum()) -1, (1.0/edge_neig_in_cap));	
							//cout << "NumRows = " << nrows << "Column = " << j*nFreqs*2*edge_num+f*2*edge_num+((*edge_neig_in_conf)[i]->getEdgeNum()) << endl;								}
							}
						}
						
						for (int i=0;i<edge_out_num_conf;i++) {
							//Conflicts for outgoing edges from node v
							(&rowlb)[nrows-1] = 0;
							int edge_neig_out_num = (*edge_out_conf)[i]->getEdgeNum();
							RescueEdge const  * edge_neig_num_conf=comm_graph.getEdge(edge_neig_out_num);
							double edge_neig_out_cap = edge_neig_num_conf->getCapacity();
							(&rowub)[nrows-1] = 1;
							for(int j=0;j<nRequests;j++) { //loop on commodities	
								matrix.modifyCoefficient(nrows-1, j*nFreqs*2*edge_num+f*2*edge_num+((*edge_out_conf)[i]->getEdgeNum()) -1, (1.0/edge_neig_out_cap));
							}
						}
						
					}
                    nrows++;
//cout << "Vert = " << v<< endl;
                     //eq14 from the report - in conf is prohibited to to transmit/receive on the same frequency, but allowed on th edifferent.
					//nrows++; //count for each node
				for (int f=0;f<nFreqs;f++) { //multiple frequencies extention
					for (int i=0;i<edge_in_num_conf;i++) { //loop on edges
						//Conflicts for incoming edges to the node v
						(&rowlb)[nrows-1] = 0;
						int edge_in_num = (*edge_in_conf)[i]->getEdgeNum();
						RescueEdge const  * edge_num_conf=comm_graph.getEdge(edge_in_num);
						//double edge_in_cap = edge_num_conf->getCapacity();
						int edge_vertex_from = edge_num_conf->getFrom(); //Get the all neighbour nodes of v

					    //Find the all edges of the neighbour nodes of v

						CAtlArray <RescueEdge*> const  * edge_neig_out_conf=comm_graph.getOutEdgesAdjVertex(edge_vertex_from);
						CAtlArray <RescueEdge*> const  * edge_neig_in_conf=comm_graph.getInEdgesAdjVertex(edge_vertex_from);
						RescueVertex const * pVertex_neig_in_conf = comm_graph.getVertex(edge_vertex_from); 
						if (pVertex_neig_in_conf == NULL)		
							return NULL;
							int edge_neig_in_num_conf = pVertex_neig_in_conf->getNumInEdges();
							if (edge_neig_in_num_conf == 0)
								return NULL;

						RescueVertex const * pVertex_neig_out_conf = comm_graph.getVertex(edge_vertex_from); 
						if (pVertex_neig_out_conf == NULL)
							return NULL;
							int edge_neig_out_num_conf = pVertex_neig_out_conf->getNumOutEdges();
							if (edge_neig_out_num_conf == 0)
								return NULL;
                     
						//for (int f=0;f<nFreqs;f++) { //multiple frequencies extention
							//nrows++; //count for each node
							for (int i=0;i<edge_neig_in_num_conf;i++) { //loop on edges
								//Conflicts for incoming edges to the neighbour node of v
								(&rowlb)[nrows-1] = 0;
								int edge_neig_in_num = (*edge_neig_in_conf)[i]->getEdgeNum();
								RescueEdge const  * edge_neig_num_conf=comm_graph.getEdge(edge_neig_in_num);
								double edge_neig_in_cap = edge_neig_num_conf->getCapacity();
								(&rowub)[nrows-1] = 1;
								for(int j=0;j<nRequests;j++) { //loop on commodities
									matrix.modifyCoefficient(nrows-1, j*nFreqs*2*edge_num+f*2*edge_num+((*edge_neig_in_conf)[i]->getEdgeNum()) -1, (1.0/edge_neig_in_cap));	
								//cout << "NumRows = " << nrows << "Column = " << j*nFreqs*2*edge_num+f*2*edge_num+((*edge_neig_in_conf)[i]->getEdgeNum()) << endl;
								}
						
							}
						//cout << "EDGE = " << edge_in_num_conf<< endl;
							for (int i=0;i<edge_neig_out_num_conf;i++) {
								//Conflicts for outgoing edges from node v
								(&rowlb)[nrows-1] = 0;
								int edge_neig_out_num = (*edge_neig_out_conf)[i]->getEdgeNum();
								RescueEdge const  * edge_neig_num_conf=comm_graph.getEdge(edge_neig_out_num);
								double edge_neig_out_cap = edge_neig_num_conf->getCapacity();
								(&rowub)[nrows-1] = 1;
								for(int j=0;j<nRequests;j++) { //loop on commodities	
									matrix.modifyCoefficient(nrows-1, j*nFreqs*2*edge_num+f*2*edge_num+((*edge_neig_out_conf)[i]->getEdgeNum()) -1, (1.0/edge_neig_out_cap));
								}
							}
							//nrows++;
						}
					nrows++;
					}
					} //end of if which checks if this is first commodity run
                    //cout << "NumRows_Conflict = " << nrows << "Comm" << comm_num<< endl;

					//Conservation Constraints
					//For each vertex of the communication graph create the constraint below if it is not in source or destination
					if ( (v != source) && (v != dest) ) { //the sequential vertexes numbering on the Comm. Graph is assumed
						nrows++;
                        //cout << "vertex  = " << v << source << dest << endl;
						CAtlArray <RescueEdge*> const  * edge_out=comm_graph.getOutEdgesAdjVertex(v);
						CAtlArray <RescueEdge*> const  * edge_in=comm_graph.getInEdgesAdjVertex(v);

						RescueVertex const * pVertex_in = comm_graph.getVertex(v); 
							if (pVertex_in == NULL)
								return NULL;
							int edge_in_num = pVertex_in->getNumInEdges();
							if (edge_in_num == 0)
								return NULL;

						RescueVertex const * pVertex_out = comm_graph.getVertex(v); 
							if (pVertex_out == NULL)
								return NULL;
							int edge_out_num = pVertex_out->getNumOutEdges();
							if (edge_out_num == 0)
								return NULL;

                            for (int f=0;f<nFreqs;f++) { //multiple frequencies extention
							
								for (int i=0;i<edge_in_num;i++) {
									matrix.modifyCoefficient(nrows-1,comm_num*nFreqs*2*edge_num+f*2*edge_num+(*edge_in)[i]->getEdgeNum() -1,1.0);
								}
								for (int i=0;i<edge_out_num;i++) {
									matrix.modifyCoefficient(nrows-1,comm_num*nFreqs*2*edge_num+f*2*edge_num+(*edge_out)[i]->getEdgeNum() -1,-1.0); 
									(&rowlb)[nrows-1] = 0;
									(&rowub)[nrows-1] = 0;
								}
							}
						
					}
					
					
				}


               //Requirements Constraints
				CAtlArray <RescueEdge*> const  * edge_out_req=comm_graph.getOutEdgesAdjVertex(source);
				CAtlArray <RescueEdge*> const  * edge_in_req=comm_graph.getInEdgesAdjVertex(source);

				RescueVertex const * pVertex_in_req = comm_graph.getVertex(source); 
				if (pVertex_in_req == NULL)
					return NULL;
					int edge_in_num_req = pVertex_in_req->getNumInEdges();
				if (edge_in_num_req == 0)
					return NULL;

				RescueVertex const * pVertex_out_req = comm_graph.getVertex(source); 
				if (pVertex_out_req == NULL)
					return NULL;
					int edge_out_num_req = pVertex_out_req->getNumOutEdges();
				if (edge_out_num_req == 0)
					return NULL;

                nrows++;

				for (int f=0;f<nFreqs;f++) { //multiple frequencies extention

					for (int i=0;i<edge_in_num_req;i++) {
						matrix.modifyCoefficient(nrows-1,comm_num*nFreqs*2*edge_num+f*2*edge_num+(*edge_in_req)[i]->getEdgeNum() -1,-1.0); 
						}
					for (int i=0;i<edge_out_num_req;i++) {
						matrix.modifyCoefficient(nrows-1,comm_num*nFreqs*2*edge_num+f*2*edge_num+(*edge_out_req)[i]->getEdgeNum() -1,1.0);
						}
				}

				//\rho parameter entry
                    matrix.modifyCoefficient(nrows-1,ncols-1,-1.0*req_bndwth);
                    (&rowlb)[nrows-1] = 0;
					(&rowub)[nrows-1] = HUGE_NUM;;
cout << "NumRows = " << nrows << endl;
				comm_num++;
			}//else in while loop


	} //end of while loop
    communicationFile.close();

/*
	
    //Capacity Constraints

	//nRequests - is the commidities number
	//edge_num - is the edge number
    for (int i=1;i<edge_num+1;i++) { //loop on edges
		nrows++;
		(&rowlb)[nrows-1] = 0;
		RescueEdge const  * edge_num_ref=comm_graph.getEdge(i);
        (&rowub)[nrows-1] = edge_num_ref->getCapacity();
		for(int c=0;c<nRequests;c++) { //loop on commodities
			for (int f=0;f<nFreqs;f++) { //multiple frequencies extention
				matrix.modifyCoefficient(nrows-1,c*nFreqs*2*edge_num+f*2*edge_num+i -1,1.0);
				matrix.modifyCoefficient(nrows-1,c*nFreqs*2*edge_num+f*2*edge_num+(edge_num+i) -1,1.0);
			}
		}
	}
   
*/


	//LP Varibles bounds (collb from below, colub from above)
   for (int i=0;i<ncols;i++)
	{
		(&collb)[i] = 0.;
		(&colub)[i] = HUGE_NUM; //put a huge number
		(&obj)[i] = 0;
	}

	//\rho objective and upper bound
    (&obj)[ncols - 1] = -1.0;
    (&colub)[ncols - 1] = 1.0;

    //Positivity Constraints all variables \geq 0 - this is done in main by collb.
	//for (int i=0;i<ncols;i++) {
    //nrows++;
    //matrix.modifyCoefficient(nrows,i,1.0);
	//}
            


   //\rho \leq 1 Constraint - this is done in main by colub
    // nrows++;
    // matrix.modifyCoefficient(nrows,ncols,1);
cout << "NumRows = " << nrows << "NCOLS" << ncols << endl;
	return true;
	}