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
#include "BFSRouter.h"
#include "BottleneckRouter.h"

using namespace std;

static const char * routerTypeNames[] = {"Shortest Path BFS", "Maximum bottleneck Path",
			"Multicommodity flow without conflicts",
			"Multicommodity flow with conflicts (Suri)"};

Router::Router(void)
{
}

Router::~Router(void)
{
}

void WriteLPSummary(VarRepository * vars, LPInterface & lpSolver, double * solution, char * filename)
{
	ofstream summaryFile;
	summaryFile.open(filename,ios_base::trunc);
    if (!summaryFile) 
	{
		cout << "Unable to open file " << filename << " << endl";
        return;
    }
 
	int nVars = vars->GetNVars();
	int nEdgeVars = vars->GetNEdgeVars();
	for (int i=nEdgeVars; i<(nVars-1); i++)
	{
		summaryFile << "Ratio for flow: " << (i-nEdgeVars+1) << " is: " << solution[i] << endl;
	}
	summaryFile << "Oveall ratio is: " << solution[nVars-1] << endl;
	
	summaryFile.close();
}

bool Router::CalcRouting(CommunicationGraph & commGraph, InterferenceGraph & interGraph, RequestsCollection & requests, 
		const vector<int> & reqNumToReqId, 
		SchedulingParams & params, std::map<int,std::vector<int>> & interferingEdges, std::vector<FlowPath> & paths)
{
	time_t start,end;
	double dif;

	cout << "Start the routing, router type: " << routerTypeNames[params.ROUTER_TYPE-1] << endl;
	if ((params.ROUTER_TYPE == 1) || (params.ROUTER_TYPE == 2))
	{
//		params.USE_SMART_SCHEDULER = 0;
		time (&start);
		if (params.ROUTER_TYPE == 1)
		{
			cout << "Start routing using BFS paths  " << endl;

			if (BFSRouter::CalcBFSRouting(commGraph, requests, params, paths) == false)
			{
				cout << "Error solving BFS routing" << endl;
				return false;
			}
		}
		else
		{
			cout << "Start routing using maximum bottleneck paths  " << endl;

			if (BottleneckRouter::CalcBottleneckRouting(commGraph, requests, params, paths) == false)
			{
				cout << "Error solving maximum bottleneck routing" << endl;
				return false;
			}
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
	}
	else
	{
		time (&start);
		double * solution;
		VarRepository * vars;
		LPInterface lpSolver;
		bool useInterferenceConstraints = true;
		if (params.ROUTER_TYPE == 3)
		{
			cout << "Start solving flow (LP)" << endl;
			useInterferenceConstraints = false;
		}
		else 
		{
			cout << "Start solving flow with interference constraints (LP)" << endl;
		}

		if (lpSolver.SolveLP(commGraph, interGraph, requests, params, useInterferenceConstraints,
							interferingEdges, solution, vars) == false)
		{
			cout << "Error solving the LP" << endl;
			return false;
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
		WriteLPSummary(vars, lpSolver, solution, params.LP_REPORT_FILENAME);

		cout << "Decomposing Flow" << endl;
		time (&start);
		if (!FlowDecomposer::DecomposeFlow(commGraph, requests, params, solution, vars, paths))
		{
			cout << "Error decomposing paths" << endl;
			return false;
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
		// 
		if (params.USE_SMART_SCHEDULER == 0)
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
				int reqId = reqNumToReqId[reqNum-1];

				pathIdsInReq[reqId].push_back(i);
				flows[reqId] += curr.GetFlow();
			}

			for (int i=0;i<nRequests;i++)
			{
				vector<int> & ids = pathIdsInReq[i];
				int nPaths = (int) ids.size();
				if (nPaths == 0)
					continue;

				const int FREQ_NUM = 1; // supports one frequency

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
					newPath.AddEdgeAndFreq(iter->first, FREQ_NUM, tr1::get<1>(currVal), tr1::get<0>(currVal));
				}
				paths.push_back(newPath);
			}
		}
	}
	return true;
}