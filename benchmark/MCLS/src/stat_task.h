/*********************************************************************************
 *
 * File name:		stat_task.h
 * Class name:		StatTask
 * Version:			1.5
 *
 * Software:		MCSL Traffic Loader
 * Author:			Weichen Liu (HKUST), Jiang Xu (HKUST), Xiaowen Wu (HKUST), Zhe Wang (HKUST),
 * 					Yaoyao Ye (HKUST), Xuan Wang (HKUST), Wei Zhang (NTU), 
 *					Bin Li (Intel), Ravi Lyer (Intel), Ramesh Illikkal (Intel)
 * Website:			http://www.ece.ust.hk/~eexu
 *
 * The copyright information of this program can be found in the file COPYRIGHT.
 *
 *********************************************************************************/

#ifndef MCSL_STAT_TASK
#define MCSL_STAT_TASK

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>
#include "stat_edge.h"

using namespace std;

class StatProc;

class StatTask {

public:
	StatTask()			{}
	~StatTask()			{}

	// critical functions for the statistical trace
	double				get_mu();
	double				get_sigma();
	int					set_statistical_execution_time(double mu, double sigma);	//

	// assistant functions
	int					add_incoming_edge(StatEdge *e);
	int					add_outgoing_edge(StatEdge *e);
	int					print_all_edge();

	// basic functions
	int					get_id();
	int					set_id(int tid);

	int					get_proc_id();
	int					get_proc_row_index();
	int					get_proc_col_index();
	int					set_proc(StatProc *p);
	
	int					get_schedule();
	int					set_schedule(int s);

private:
	// the statistical task executions follow Gaussian distribution
	double              mu_time;                    // the mean of the task execution time
	double              sigma_time;                 // the sd of the task execution time

	// basic parameters
	int                 id;                         // the id of the task
	StatProc*           proc;                		// the PB the task is assigned
	int                 schedule;                   // the sequence number the task is assigned to execute on the PB
	vector<StatEdge*>   incoming_edge_list;         // each entry is an incoming edge
	vector<StatEdge*>   outgoing_edge_list;         // each entry is an outgoing edge

};


#endif

