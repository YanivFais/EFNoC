/*********************************************************************************
 *
 * File name:		rec_task.cpp
 * Class name:		RecTask
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

#include "rec_task.h"
#include "rec_proc.h"
#include <iomanip>

int RecTask::add_incoming_edge(RecEdge *e) {

	incoming_edge_list.push_back(e);
	return 0;
}

int RecTask::add_outgoing_edge(RecEdge *e) {

	outgoing_edge_list.push_back(e);
	return 0;
}

int RecTask::print_all_edge() {

	cout << "    Incoming dependencies:" << endl;
	if (0 == incoming_edge_list.size()) {
		cout << "      No dependencies" << endl;
	}
	else {
		for (unsigned int i=0; i<incoming_edge_list.size(); i++) {
			RecEdge &e = *(incoming_edge_list.at(i));
			assert (id == e.get_dst_task_id());
			assert (proc->get_id() ==  e.get_dst_proc_id());
			cout << "      Edge " << e.get_id() << ": from Task " << e.get_src_task_id() << " on PB " << e.get_src_proc_id() << endl;
			vector<int> &v1 = e.get_mem_addr_list();
			vector<double> &v2 = e.get_recorded_msg_size();
			cout << "        Vector of virtual memory addresses:";
			for (unsigned int i=0; i<v1.size(); i++)
				cout << " 0x" << hex << v1.at(i) << dec;
			cout << endl;
			cout << "        Vector of message sizes (in words):";
			for (unsigned int i=0; i<v2.size(); i++)
				cout << " " << setprecision(2) << v2.at(i);
			cout << endl;
		}
	}
	
	cout << "    Outgoing dependencies:" << endl;
	if (0 == outgoing_edge_list.size()) {
		cout << "      No dependencies" << endl;
	}
	else {
		for (unsigned int i=0; i<outgoing_edge_list.size(); i++) {
			RecEdge &e = *(outgoing_edge_list.at(i));
			assert (id == e.get_src_task_id());
			assert (proc->get_id() ==  e.get_src_proc_id());
			cout << "      Edge " << e.get_id() << ": to Task " << e.get_dst_task_id() << " on PB " << e.get_dst_proc_id() << endl;
			vector<int> &v1 = e.get_mem_addr_list();
			vector<double> &v2 = e.get_recorded_msg_size();
			cout << "        Vector of virtual memory addresses:";
			for (unsigned int i=0; i<v1.size(); i++)
				cout << " 0x" << hex << v1.at(i) << dec;
			cout << endl;
			cout << "        Vector of message sizes (in words):";
			for (unsigned int i=0; i<v2.size(); i++)
				cout << " " << setprecision(2) << v2.at(i);
			cout << endl;
		}
	}

	return 0;
}

vector<int>& RecTask::get_recorded_execution_time() {
	
	return rec_time_list;
}

int	RecTask::set_recorded_execution_time(vector<int> &t) {

	assert (t.size() > 0);
	rec_time_list = t;

	return 0;
}

int	RecTask::get_id() {

	return id;
}

int	RecTask::set_id(int tid) {

	assert (tid >= 0);
	id = tid;

	return 0;
}

int	RecTask::set_proc(RecProc *p) {

	assert (p != NULL);
	proc = p;
	
	return 0;
}

int	RecTask::get_proc_id() {
	
	return proc->get_id();
}

int	RecTask::get_proc_row_index() {
	
	return proc->get_row_index();
}

int	RecTask::get_proc_col_index() {
	
	return proc->get_col_index();
}

vector<int>& RecTask::get_schedule() {
	
	return schedule_list;
}

int	RecTask::set_schedule(vector<int> &s) {
	
	assert (s.size() >= 0);
	schedule_list = s;

	return 0;
}
