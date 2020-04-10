// Copyright (C) 2002, International Business Machines
// Corporation and others.  All Rights Reserved.

#include <CoinPackedMatrix.hpp>
/*#include "ClpSimplex.hpp"
#include "ClpPrimalColumnSteepest.hpp"
#include "ClpPrimalColumnDantzig.hpp"
#include "UnicastList.h"
#include "RescueScheduler.h"
*/
using namespace std;
#include <time.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "SchedulingParams.h"
#include "CommunicationGraph.h"
#include "InterferenceGraph.h"
#include "RequestsCollection.h"
#include "DataUtilities.h"
#include "Router.h"
#include "Schedule.h"
#include "Scheduler.h"
#include "FlowPath.h"
#include "FlowChecker.h"
#include "ScheduleSimulator.h"

bool ReadInputs(CommunicationGraph & commGraph, InterferenceGraph & interGraph, RequestsCollection & requests, SchedulingParams & params)
{	
	if (! commGraph.InitFromFiles (params.COMMUNICATION_GRAPH_FILENAME,params.COORDS_FILENAME, params.FILE_NAMES_EXTENSION))
	{
		cout << "Error reading communication graph: " << params.COMMUNICATION_GRAPH_FILENAME 
			 << " , " << params.COORDS_FILENAME << endl;
		return false;
	}

	if (! interGraph.InitFromFiles(params.INTERFERENCE_GRAPH_FILENAME,params.COORDS_FILENAME, params.FILE_NAMES_EXTENSION))
	{
		cout << "Error reading interference graph: " << params.INTERFERENCE_GRAPH_FILENAME << endl;
		return false;
	}

	if (! requests.InitFromFile(params.REQUESTS_FILENAME))
	{
		cout << "Error reading requests: " << params.REQUESTS_FILENAME << endl;
		return false;
	}
	return true;
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

    CommunicationGraph commGraph;
    InterferenceGraph interGraph;
	RequestsCollection  requests;
	if (ReadInputs(commGraph, interGraph, requests, params) == false)
	{
		cout << "Error reading input files" << endl;
		return 1;
	}
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	RequestsCollection activeRequests;
	vector<int> reqNumToReqId;
	FlowChecker::FilterUnconnectedRequests(commGraph, requests, activeRequests, reqNumToReqId);

	cout << "Start calculate interfering edges" << endl;
	time (&start);
	std::map<int,std::vector<int>> interferingEdges;
	std::map<int,std::vector<int>> interferingVertices;
	if (DataUtilities::CalcInterferingEdges(commGraph, interGraph, interferingEdges,interferingVertices) == false)
	{
		cout << "Error constructing interference data structure" << endl;
		return 1;
	}
	time (&end);
	dif = difftime (end,start);
	printf("time elapsed: %f\n",dif);

	vector<FlowPath> paths;
	if (! Router::CalcRouting(commGraph, interGraph, activeRequests, reqNumToReqId, params, interferingEdges, paths))
		return 1;

	Schedule  sched;
	if (! Scheduler::CalcSchedule(commGraph, interferingVertices, paths, params, sched))
		return 1;

	cout << "Writing Schedule" << endl;
	sched.WriteSchedule(params.SCHEDULE_FILENAME);

	ScheduleSimulator::SimulateAndReport(params, sched, activeRequests,(int) requests.GetRequests().size(),reqNumToReqId);
	return 0;
}  


