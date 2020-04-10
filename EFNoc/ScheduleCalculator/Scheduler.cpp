#include "Scheduler.h"

#include <time.h>
#include <iostream>

#include "NaiveScheduler.h"
#include "SmartScheduler.h"
#include "EmptyScheduler.h"
#include <sstream>

using namespace std;

int Scheduler::slots = -1;

Scheduler::Scheduler(void)
{
}

Scheduler::~Scheduler(void)
{
}

bool Scheduler::CalcSchedule(CommunicationGraph & commGraph,  
								std::vector<FlowPath> & paths, 
								RequestsCollection& requests,
								SchedulingParams & params, Schedule & o_schedule)
{
	time_t start,end;
	double dif;

	slots = params.N_TIME_SLOTS;

	if (params.SCHEDULER_TYPE==0)
	{
		cout << "Statring smart scheuler" << endl;
		time (&start);

		SmartScheduler scheduler;
		double roundingFactor;
		if (scheduler.CalcSchedule(commGraph,paths,params,roundingFactor, o_schedule) == false)
		{
			cout << "Error calculating schedule" << endl;
			return false;
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
	}
	else if (params.SCHEDULER_TYPE == 1)
	{
		cout << "Statring Naive scheuler" << endl;
		time(&start);

		NaiveScheduler scheduler;
		double roundingFactor;
		bool allocated = false;
		int iterations = 10;
		do {
			allocated = scheduler.CalcSchedule(commGraph, paths, requests, params, o_schedule);
			if (!allocated)
			{
				cout << "Error calculating schedule " << params.N_TIME_SLOTS << endl;
				if (params.ALLOW_ADDING_SLOTS==0)
					return false;
				if (!allocated) {
					stringstream name;
					name << "temp_sched" << params.N_TIME_SLOTS << ".csv";
					o_schedule.WriteSchedule(name.str().c_str());
					o_schedule.CleanSchedule();
					params.N_TIME_SLOTS = params.N_TIME_SLOTS*(1 + params.WIDTH_PERCENTAGE_ALLOW_INCREASE);
					cout << "************************* CLEAN SCHEDULE = timeslots=" << params.N_TIME_SLOTS << endl;
				}
			}
			iterations--;
		} while (!allocated && iterations);
		time(&end);
		dif = difftime(end, start);
		printf("time elapsed: %f\n", dif);
	}
	else
	{
		cout << "Statring empty scheuler" << endl;
		time (&start);

		EmptyScheduler scheduler;
		if (scheduler.CalcSchedule(commGraph,paths,params, o_schedule) == false)
		{
			cout << "Error calculating schedule" << endl;
			return false;
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);


	}
	updateCapcities(commGraph, o_schedule);

	return true;
}

void Scheduler::updateCapcities(CommunicationGraph & commGraph,
	 Schedule & o_schedule) {

	for (int e = 0; e < commGraph.GetNumEdges(); e++) {
		EFNocEdge * edge = commGraph.GetEdge(e);
		double max = o_schedule.GetMaxFlowForEdge(e);
		if (edge->GetCapacity()>max) {
			cout << "Updating capacity in edge " << e << ": (" << edge->GetFrom() << "->" << edge->GetTo() << ") from " << edge->GetCapacity() << " to " << max << endl;
			edge->SetCapacity(max);
		}
	}

}