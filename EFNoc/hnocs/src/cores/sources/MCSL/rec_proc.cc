/*********************************************************************************
 *
 * File name:		rec_proc.cpp
 * Class name:		RecProc
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

#include "rec_proc.h"

RecTask* RecProc::get_task(int tid) {

	for (unsigned int i=0; i<task_list.size(); i++) {
		RecTask *t = task_list.at(i);
		if (tid == t->get_id()) {
			return t;
		}
	}
	cout << "No task is found with id = " << tid << endl;
	assert (0);
}

int RecProc::add_task(RecTask *t) {

	task_list.push_back(t);
	return 0;
}

int RecProc::sort_task_list() {

	sort( task_list.begin(), task_list.end(), compare );
	return 0;
}

int RecProc::print_all_task(int iter) {

	if (0 == task_list.size()) {
		cout << "  No task assigned on this PB" << endl << endl;
		return -1;
	}
	
	for (unsigned int i=0; i<task_list.size(); i++) {
		RecTask &t = *(task_list.at(i));
		assert (id == t.get_proc_id());
		cout << "  Task " << t.get_id();
		cout << " (" << iter << " iterations of executions):" << endl;

		vector<int> &v = t.get_schedule();
		cout << "    Vector of schedule sequence numbers:";
		for (unsigned int i=0; i<v.size(); i++)
			cout << " " << v.at(i);
		cout << endl;
		
		v = t.get_recorded_execution_time();
		cout << "    Vector of recorded execution times (in clock cycles):";
		for (unsigned int i=0; i<v.size(); i++)
			cout << " " << v.at(i);
		cout << endl;
		t.print_all_edge();

		cout << endl;
	}
	cout << endl;

	return 0;
}

int	RecProc::get_id() {

	return id;
}

int	RecProc::set_id(int pid) {

	assert (pid >= 0);
	id = pid;

	return 0;
}

int	RecProc::get_row_index() {

	return row_index;
}

int	RecProc::get_col_index() {

	return col_index;
}

int	RecProc::set_coordinate(int x, int y) {

	assert (x >= 0 && y >= 0);
	row_index = x;
	col_index = y;

	return 0;
}



