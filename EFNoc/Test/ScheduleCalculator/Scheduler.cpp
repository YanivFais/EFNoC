#include "Scheduler.h"

#include <time.h>
#include <iostream>

#include "NaiveScheduler.h"
#include "SmartScheduler.h"
#include "EmptyScheduler.h"

using namespace std;

Scheduler::Scheduler(void)
{
}

Scheduler::~Scheduler(void)
{
}

bool Scheduler::CalcSchedule(CommunicationGraph & commGraph, std::map<int,std::vector<int>> & interferingVertices, 
								std::vector<FlowPath> & paths, SchedulingParams & params, Schedule & o_schedule)
{
	time_t start,end;
	double dif;

	if (params.USE_SMART_SCHEDULER)
	{
		cout << "Statring smart scheuler" << endl;
		time (&start);

		SmartScheduler scheduler;
		double roundingFactor;
		if (scheduler.CalcSchedule(commGraph,interferingVertices,paths,params,roundingFactor, o_schedule) == false)
		{
			cout << "Error calculating schedule" << endl;
			return false;
		}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
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
/*	else
	{
		cout << "Statring naive scheuler" << endl;
		time (&start);
		NaiveScheduler scheduler;

		//if (scheduler.CalcSchedule(commGraph,interferingVertices,solution,vars,params,o_schedule) == false)
		//{
		//	cout << "Error calculating schedule" << endl;
		//	return false;
		//}
		time (&end);
		dif = difftime (end,start);
		printf("time elapsed: %f\n",dif);
	}
*/
	return true;
}
