/*********************************************************************************
 *
 * File name:		rec_task.h
 * Class name:		RecTask
 * Version:         1.6
 *
 * Software:        MCSL Traffic Loader
 * Author:          Zhe Wang (HKUST), Jiang Xu (HKUST), Xiaowen Wu (HKUST), Xuan Wang (HKUST)
 *                  Zhehui Wang (HKUST), Duong Luan (HKUST), Peng Yang (HKUST), 
 *                  Wei Zhang (HKUST), Bin Li (Intel), Ravi Lyer (Intel), Ramesh Illikkal (Intel)
 * Past members:    Weichen Liu, Yaoyao Ye
 * Website:         http://www.ece.ust.hk/~eexu 
 *
 * The copyright information of this program can be found in the file COPYRIGHT.
 *
 *********************************************************************************/

#ifndef MCSL_REC_TASK
#define MCSL_REC_TASK

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>
#include "rec_edge.h"

using namespace std;

class RecProc;

class RecTask {

public:
	RecTask()			{}
	~RecTask()			{}

	// critical functions for the recorded trace
	vector<int>&		get_recorded_execution_time();								// get the recorded execution time
	int					set_recorded_execution_time(vector<int> &t);				// set the recorded execution time
	
	// assistant functions
	int					add_incoming_edge(RecEdge *e);
	int					add_outgoing_edge(RecEdge *e);
	int					print_all_edge();

	// basic functions
	int					get_id();
	int					set_id(int tid);

	int					get_proc_id();
	int					get_proc_row_index();
	int					get_proc_col_index();
	int					set_proc(RecProc *p);

	vector<int>&		get_schedule();
	int					set_schedule(vector<int> &s);
	
private:
	// the recorded task executions
	vector<int> 		rec_time_list;              // the list of recorded execution times of the instances of the task in sequence

	// basic parameters
	int                 id;                         // the id of the task
	RecProc*            proc;                		// the PB the task is assigned
	vector<int>         schedule_list;              // the list of sequence numbers the task instances execute on the PB
	vector<RecEdge*>    incoming_edge_list;         // each entry is an incoming edge
	vector<RecEdge*>    outgoing_edge_list;         // each entry is an outgoing edge

};

#endif


