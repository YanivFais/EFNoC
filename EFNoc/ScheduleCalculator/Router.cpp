#include "Router.h"

#include <time.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <tuple>
#include "LPInterface.h"
#include "FlowDecomposer.h"
#include "FlowPath.h"

using namespace std;

Router::Router(void)
{
}

Router::~Router(void)
{
}

bool Router::CalcRouting(CommunicationGraph & commGraph, RequestsCollection & requests, 
		SchedulingParams & params, std::vector<FlowPath> & paths)
{
	time_t start,end;
	double dif;

	cout << "Start the routing using LP " << endl;
	if (params.ROUTER_TYPE == 1)
	{
		bool successRoute = false;
		do {

			time(&start);
			double * solution;
			VarRepository * vars;
			LPInterface lpSolver;
			if (lpSolver.SolveLP(commGraph, requests, params,
				solution, vars) == false)
			{
				cout << "Error solving the LP" << endl;
				return false;
			}
			time(&end);
			dif = difftime(end, start);
			printf("time elapsed: %f\n", dif);

			cout << "Decomposing Flow" << endl;
			time(&start);
			if (!FlowDecomposer::DecomposeFlow(commGraph, requests, params, solution, vars, paths))
			{
				cout << "Error decomposing paths" << endl;
				successRoute = false;
			}
			else successRoute = true;
			time(&end);
			dif = difftime(end, start);
			printf("time elapsed: %f\n", dif);
		} while (!successRoute);
		// 
		if (params.SCHEDULER_TYPE == 0)
		{
			vector<FlowPath> oldPaths = paths;
			paths.clear();
			vector<CommunicationRequest *> requestVec =  requests.GetRequests();
			int nRequests = (int) requestVec.size();
			vector<vector<int>> pathIdsInReq(nRequests);
			vector<double> flows(nRequests, 0.);
			for (int i=0;i<(int) oldPaths.size();i++)
			{
				FlowPath & curr = oldPaths[i];
				int reqNum = curr.GetRequest();

				pathIdsInReq[reqNum].push_back(i);
				flows[reqNum] += curr.GetFlow();
			}

			for (int i=0;i<nRequests;i++)
			{
				vector<int> & ids = pathIdsInReq[i];
				int nPaths = (int) ids.size();
				if (nPaths == 0)
					continue;

				FlowPath newPath(requestVec[i]->GetRequestNum(), flows[i]);
				map<int, tr1::tuple<double, double>> edgesInRequest;
				for (int j=0; j<nPaths; j++)
				{
					FlowPath & currPath = oldPaths[ids[j]];
					vector<int> & edgesInPath = currPath.GetEdges();
					for (int k=0; k<(int) edgesInPath.size(); k++)
					{
						int edgeId = edgesInPath[k];
						tr1::tuple<double, double> edgeVal(currPath.GetCapacities()[k], 
								currPath.GetTimesRequiredOnEdge()[k]);
						map<int, tr1::tuple<double, double>>::iterator iter = 
							edgesInRequest.find(edgeId);
						if (iter == edgesInRequest.end())
						{
							edgesInRequest[edgeId] = edgeVal;
						}
						else
						{
							tr1::tuple<double, double > currVal = iter->second;
							tr1::tuple<double, double> newVal(tr1::get<0>(currVal), 
								tr1::get<1>(currVal) + tr1::get<1>(edgeVal));
							edgesInRequest[edgeId] = newVal;
						}
					}
				}
				map<int, tr1::tuple<double, double>>::iterator iter = edgesInRequest.begin();
				for (; iter != edgesInRequest.end(); iter++)
				{
					tr1::tuple<double, double> currVal = iter->second;
					newPath.AddEdge(iter->first, tr1::get<1>(currVal), tr1::get<0>(currVal));
				}
				paths.push_back(newPath);
			}
		}
	}
	else return false;
	updateCapacity(commGraph, requests, params, paths);
	return true;
}


void Router::updateCapacity(CommunicationGraph & commGraph, RequestsCollection & requests,
	SchedulingParams & params, std::vector<FlowPath> & paths)
{
	int nRequest = requests.GetRequests().size();
	// first expand capacity to fit flows with flit size..
	for (int edgeId = 0; edgeId < commGraph.GetNumEdges(); edgeId++) {
		double edgeFlow = 0;
		EFNocEdge * edge = commGraph.GetEdge(edgeId);
		for (int p = 0; p < paths.size(); p++) {
			for (int e = 0; e < paths[p].GetEdges().size(); e++) {
				if (paths[p].GetEdges()[e] == edgeId) {
					double t = paths[p].GetTimesRequiredOnEdge()[e];
					edgeFlow += t;
				}
			}
		}
		double c = edge->GetCapacity();
		c *= edgeFlow;
		c = std::ceil(c / params.FLIT_SIZE)*params.FLIT_SIZE;
		if (c != edge->GetCapacity())
			cout << "Updating edge capacity from " << edge->GetCapacity() << " to " << c << " edge ID = " << edgeId << " " << edge->GetFrom() << "->" << edge->GetTo() << endl;
		edge->SetCapacity(c);
	}
}