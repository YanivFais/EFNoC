/*********************************************************************************
 *
 * File name:		rec_proc.h
 * Class name:		RecProc
 * Version:			1.5
 *
 * Software:		MCSL Traffic Loader
 * Author:			Weichen Liu (HKUST), Jiang Xu (HKUST), Xiaowen Wu (HKUST), Zhe Wang (HKUST), 
 *					Yaoyao Ye (HKUST), Xuan Wang (HKUST), Wei Zhang (NTU), 
 *					Bin Li (Intel), Ravi Lyer (Intel), Ramesh Illikkal (Intel)
 * Website:			http://www.ece.ust.hk/~eexu
 *
 * The copyright information of this program can be found in the file COPYRIGHT.
 *
 *********************************************************************************/

#ifndef MCSL_REC_PROC
#define MCSL_REC_PROC

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>
#include <algorithm>
#include "rec_task.h"

using namespace std;

class RecProc {

public:
	struct _compare_task {
		bool operator() (RecTask* t1, RecTask* t2) { return (t1->get_schedule().at(0) < t2->get_schedule().at(0));}
	} compare;

public:
	RecProc()			{}
	~RecProc()			{}

	RecTask*			get_task(int tid);					// return the task with the given id
	int					add_task(RecTask *t);				// add a task to the task list 
	int					sort_task_list();					// sort the task list by schedule sequence
	int					print_all_task(int iter);

	// basic functions
	int					get_id();
	int					set_id(int pid);
	
	int					get_row_index();
	int					get_col_index();
	int					set_coordinate(int x, int y);

private:
	int                 id;                         // the id of the PB
	int					row_index;					// the index of the row
	int					col_index;					// the index of the column
	vector<RecTask*>    task_list;                  // the list of scheduled tasks

};

#endif

