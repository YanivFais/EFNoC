// Copyright (C) 2002, International Business Machines
// Corporation and others.  All Rights Reserved.
// Yaniv Fais, Tel Aviv University

#include <CoinPackedMatrix.hpp>
using namespace std;
#include <time.h>
#include <iostream>
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "RequestsCollection.h"
#include "LPInterface.h"
#include "DataUtilities.h"
#include "Scheduler.h"
#include "Scheduler.h"
#include "FlowPath.h"
#include "Router.h"

bool ReadInputs(CommunicationGraph & commGraph, RequestsCollection & requests, SchedulingParams & params)
{	
	if (! commGraph.InitFromFiles (params.COMMUNICATION_GRAPH_FILENAME))
	{
		cout << "Error reading communication graph: " << params.COMMUNICATION_GRAPH_FILENAME 
			 << " , " << params.COORDS_FILENAME << endl;
		return false;
	}

	if (! requests.InitFromFile(params.REQUESTS_FILENAME))
	{
		cout << "Error reading requests: " << params.REQUESTS_FILENAME << endl;
		return false;
	}
	return true;
}

CommunicationGraph commGraph;
RequestsCollection  requests;
double * solution;
VarRepository * vars;

int route(SchedulingParams& params)
{
	LPInterface lpSolver;
	return (lpSolver.SolveLP(commGraph, requests, params,
		solution, vars));

}

int main (int argc, const char *argv[])
{
	if (argc != 2)
	{
		cout << "Wrong number of parameters" << endl;
		cout << "ScheduleCalculator <config file name>" << endl;
		return 1;
	}
	time_t start,end;
	double dif;

	// read configuration file
	SchedulingParams params(argv[1]);
	if (params.mIsValid == false)
	{
		cout << "Error reading parameters file" << endl;
		return 1;
	}

	cout << "Start Reading inputs" << endl;
	time (&start);

	if (ReadInputs(commGraph, requests, params) == false)
	{
		cout << "Error reading input files" << endl;
		return 1;
	}
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	cout << "Start constructing the LP" << endl;

	Scheduler scheduler;
	Schedule  sched;
	vector<FlowPath> paths;
	if (!Router::CalcRouting(commGraph, requests, params, paths)) {
		cout << "Error in routing (solving the LP)" << endl;
		return 1;
	}

	if (!Scheduler::CalcSchedule(commGraph, paths, requests, params, sched)) {
		cout << "Error calculating schedule" << endl;
		return 1;
	}

	sched.UpdatePorts(commGraph, scheduler.slots);
	sched.WriteSchedule(params.SCHEDULE_FILENAME);
	commGraph.WriteOmnetNetworkParams(params.N_TIME_SLOTS,params.OMNET_PACKAGE_NAME);

	return 0;
}  


