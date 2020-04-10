/*********************************************************************************
 *
 * File name:		stat_task.cpp
 * Class name:		StatTask
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

#include "stat_task.h"
#include "stat_proc.h"

int StatTask::add_incoming_edge(StatEdge *e) {

	incoming_edge_list.push_back(e);
	return 0;
}

int StatTask::add_outgoing_edge(StatEdge *e) {

	outgoing_edge_list.push_back(e);
	return 0;
}

int StatTask::print_all_edge() {

	cout << "    Incoming dependencies: " << endl;
	if (0 == incoming_edge_list.size()) {
		cout << "      No dependencies" << endl;
	}
	else {
		for (unsigned int i=0; i<incoming_edge_list.size(); i++) {
			StatEdge &e = *(incoming_edge_list.at(i));
			assert (id == e.get_dst_task_id());
			assert (proc->get_id() ==  e.get_dst_proc_id());
			cout << "      Edge " << e.get_id() << ": from Task " << e.get_src_task_id() << " on PB " << e.get_src_proc_id() << endl;
			cout << "        Virtual memory address: 0x" << hex << e.get_mem_start_addr() << ", 0x" << e.get_mem_size() << dec << endl;
			cout << "        Message size (in words): " << e.get_mu() << ", " << e.get_sigma() << ", " << e.get_lambda() << endl;
		}
	}
	
	cout << "    Outgoing dependencies: " << endl;
	if (0 == outgoing_edge_list.size()) {
		cout << "      No dependencies" << endl;
	}
	else {
		for (unsigned int i=0; i<outgoing_edge_list.size(); i++) {
			StatEdge &e = *(outgoing_edge_list.at(i));
			assert (id == e.get_src_task_id());
			assert (proc->get_id() ==  e.get_src_proc_id());
			cout << "      Edge " << e.get_id() << ": to Task " << e.get_dst_task_id() << " on PB " << e.get_dst_proc_id() << endl;
			cout << "        Virtual memory address: 0x" << hex << e.get_mem_start_addr() << ", 0x" << e.get_mem_size() << dec << endl;
			cout << "        Message size (in words): " << e.get_mu() << ", " << e.get_sigma() << ", " << e.get_lambda() << endl;
		}
	}

	return 0;
}

double StatTask::get_mu() {

	return mu_time;
}

double StatTask::get_sigma() {
	
	return sigma_time;
}

int	StatTask::set_statistical_execution_time(double mu, double sigma) {

	assert (mu>0 && sigma>0);
	mu_time = mu;
	sigma_time = sigma;

	return 0;
}

int	StatTask::get_id() {

	return id;
}

int	StatTask::set_id(int tid) {

	assert (tid >= 0);
	id = tid;

	return 0;
}

int	StatTask::set_proc(StatProc *p) {

	assert (p != NULL);
	proc = p;
	
	return 0;
}

int	StatTask::get_proc_id() {
	
	return proc->get_id();
}

int	StatTask::get_proc_row_index() {
	
	return proc->get_row_index();
}

int	StatTask::get_proc_col_index() {
	
	return proc->get_col_index();
}

int	StatTask::get_schedule() {
	
	return schedule;
}

int	StatTask::set_schedule(int s) {
	
	assert (s >= 0);
	schedule = s;

	return 0;
}




