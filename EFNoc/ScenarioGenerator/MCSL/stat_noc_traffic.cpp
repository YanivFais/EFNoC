/*********************************************************************************
 *
 * File name:		stat_noc_traffic.cpp
 * Class name:		StatNOCTraffic
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

#include "stat_noc_traffic.h"

extern bool TO_PRINT_STAT;
extern int num_line_header;

int StatNOCTraffic::load_traffic(string trace_file) {

	// temp variables
	int			v[10];
	double		d[10];

	FILE *fp = fopen(trace_file.c_str() ,"r");
	if (fp == NULL) {
		cout << "Error: cannot open file \"" << trace_file << "\"" << endl;
		return -1;
	}

	// ignore the copyright information

	char tmp_char[200];
	string tmp_str;
	while(1){
	  fgets(tmp_char, 200, fp);
	  tmp_str = string(tmp_char);
	  if(tmp_str.find("*/")!=string::npos) break;
	  cout<<tmp_str<<endl;
	}

	// read the first five lines
	// trace type, 
	// topology, number of PBs, number of rows, number of columns, 
	// number of tasks, number of edges,
	// number of starting tasks, list of starting tasks
	// number of finishing tasks, list of finishing tasks
	int trace_type, num_proc, num_task, num_edge;
	fscanf(fp, "%d", &trace_type);
	assert (trace_type == 0);
	fscanf(fp, "%d", &topology);
	fscanf(fp, "%d", &num_proc);
	fscanf(fp, "%d", &num_row);
	fscanf(fp, "%d", &num_col);
	fscanf(fp, "%d", &num_task);
	fscanf(fp, "%d", &num_edge);
	assert (topology>=0 && num_proc>0 && num_row>=0 && num_col>=0);
	assert (num_task>0 && num_edge>0);
	
	int num_starting_task, num_finishing_task;
	vector<int> starting_task_id, finishing_task_id;
	fscanf(fp, "%d", &num_starting_task);
	for (int i=0; i<num_starting_task; i++) {
		fscanf(fp, "%d", &v[0]);
		assert (v[0] >= 0 && v[0] < num_task);
		starting_task_id.push_back(v[0]);
	}
	fscanf(fp, "%d", &num_finishing_task);
	for (int i=0; i<num_finishing_task; i++) {
		fscanf(fp, "%d", &v[0]);
		assert (v[0] >= 0 && v[0] < num_task);
		finishing_task_id.push_back(v[0]);
	}

	// initialize the lists
	proc_list.resize(num_proc);
	task_list.resize(num_task);
	edge_list.resize(num_edge);
	for (unsigned int i=0; i<proc_list.size(); i++) {
		proc_list.at(i).set_id(i);
		if (topology == 0 || topology == 1) {
			proc_list.at(i).set_coordinate(i/num_col, i%num_col);
		}
		else if (topology == 2) {
			proc_list.at(i).set_coordinate(0, 0);
		}
		else {
			assert (0);
		}
	}

	// read the next number of tasks lines: task info
	for (int i=0; i<num_task; i++) {

		// task id, mapped PB id, schedule sequence number, mu & sigma for task execution time distribution
		fscanf(fp, "%d", &v[0]);
		int proc_id = -1;
		if (topology == 0 || topology == 1) {
			fgetc(fp);
			fgetc(fp);
			fscanf(fp, "%d", &v[1]);
			fgetc(fp);
			fscanf(fp, "%d", &v[2]);
			fgetc(fp);
			proc_id = v[1]*num_col + v[2];
		}
		else if (topology == 2) {
			fscanf(fp, "%d", &v[1]);
			proc_id = v[1];
		}
		else {
			assert (0);
		}
		fscanf(fp, "%d", &v[3]);
		fscanf(fp, "%lf", &d[0]);
		fscanf(fp, "%lf", &d[1]);

		// add the task to the processor
		StatTask t;
		t.set_id(v[0]);
		t.set_proc( &(proc_list.at(proc_id)) );
		t.set_schedule(v[3]);
		t.set_statistical_execution_time(d[0], d[1]);
		
		assert (v[0] >= 0 && v[0] < (int)task_list.size());
		task_list.at(v[0]) = t;
		proc_list.at(proc_id).add_task( &(task_list.at(v[0])) );
		
	}

	// read the next number of edges lines: communication info
	for (int i=0; i<num_edge; i++){

		// edge id, src task id, dst task id, 
		// memory starting address, memory size
		// mu & sigma for message size distribution, lambda for packet generation interval distribution
		fscanf(fp, "%d", &v[0]);
		fscanf(fp, "%d", &v[1]);
		fscanf(fp, "%d", &v[2]);
		fscanf(fp, "%x", &v[3]);
		fscanf(fp, "%x", &v[4]);
		fscanf(fp, "%lf", &d[0]);
		fscanf(fp, "%lf", &d[1]);
		fscanf(fp, "%lf", &d[2]);

		// construct the edge
		StatEdge e;
		e.set_id(v[0]);
		e.set_src_task( &(task_list.at(v[1])) );
		e.set_dst_task( &(task_list.at(v[2])) );
		e.set_mem_start_addr(v[3]);
		e.set_mem_size(v[4]);
		e.set_statistical_msg_size(d[0], d[1]);
		e.set_statistical_pkt_interval(d[2]);

		assert (v[0] >= 0 && v[0] < (int)edge_list.size());
		edge_list.at(v[0]) = e;

		StatTask &src_task = task_list.at(v[1]);
		StatTask &dst_task = task_list.at(v[2]);
		src_task.add_outgoing_edge(&edge_list.at(v[0]));
		dst_task.add_incoming_edge(&edge_list.at(v[0]));

	}

	// sort the task list on each processor following schedule sequence
	for (unsigned int i=0; i<proc_list.size(); i++) {
		proc_list.at(i).sort_task_list();
	}

	// fill the starting and finishing task lists
	starting_task_list.resize(num_starting_task);
	for (int i=0; i<num_starting_task; i++) {
		int task_id = starting_task_id.at(i);
		starting_task_list.at(i) = &task_list.at(task_id);
	}
	finishing_task_list.resize(num_finishing_task);
	for (int i=0; i<num_finishing_task; i++) {
		int task_id = finishing_task_id.at(i);
		finishing_task_list.at(i) = &task_list.at(task_id);
	}
	
	return 0;
}

int	StatNOCTraffic::print_traffic() {

	cout << "Type: statistical traffic pattern" << endl << endl;
	switch(topology) {
	case 0: 
		cout << "Topology:			mesh" << endl;
		cout << "Number of PBs:			" << get_num_proc() << endl;
		cout << "Number of rows:			" << get_num_row() << endl;
		cout << "Number of columns:		" << get_num_col() << endl;
		break;
	case 1:
		cout << "Topology:			torus" << endl;
		cout << "Number of PBs:			" << get_num_proc() << endl;
		cout << "Number of rows:			" << get_num_row() << endl;
		cout << "Number of columns:		" << get_num_col() << endl;
		break;
	case 2:
		cout << "Topology:			fattree" << endl;
		cout << "Number of PBs:			" << get_num_proc() << endl;
		break;
	default:
		cout << "Unknown topology" << endl;
		assert (0);
	}
	
	cout << "Number of tasks:		" << get_num_task() << endl;
	cout << "Number of edges:		" << get_num_edge() << endl << endl;

	cout << "Number of starting tasks:	" << starting_task_list.size() << endl;
	cout << "The list of starting tasks:	";
	for (unsigned int i=0; i<starting_task_list.size(); i++) {
		cout << starting_task_list.at(i)->get_id() << " ";
	}
	cout << endl;

	cout << "Number of finishing tasks:	" << finishing_task_list.size() << endl;
	cout << "The list of finishing tasks:	";
	for (unsigned int i=0; i<finishing_task_list.size(); i++) {
		cout << finishing_task_list.at(i)->get_id() << " ";
	}
	cout << endl << endl;
	
	if (TO_PRINT_STAT) {
		for (unsigned int i=0; i<proc_list.size(); i++) {
			StatProc &p = proc_list.at(i);
			cout << "***********************************************\n";
			if (topology == 0 || topology == 1) {
				cout << "PB (" << p.get_row_index() << "," << p.get_col_index() << "): " << endl;
			}
			else if (topology == 2) {
				cout << "PB " << p.get_id() << ": " << endl;
			}
			else {
				assert (0);
			}
			p.print_all_task();
		}
	}

	return 0;
}

StatProc* StatNOCTraffic::get_proc(int x, int y) {

	assert (x>=0 && x<num_row);
	assert (y>=0 && y<num_col);
	
	for (unsigned int i=0; i<proc_list.size(); i++) {
	
		StatProc* p = &(proc_list.at(i));
		if (x == p->get_row_index() && y == p->get_col_index()) {
		
			return p;
		}	
	}
	assert (0);
	return 0;
}

StatProc* StatNOCTraffic::get_proc(int id) {

	assert (id>=0 && id<get_num_proc());
	
	for (unsigned int i=0; i<proc_list.size(); i++) {
	
		StatProc* p = &(proc_list.at(i));
		if (id == p->get_id()) {
		
			return p;
		}	
	}
	assert (0);
	return 0;
}

int	StatNOCTraffic::get_num_task() {

	return task_list.size();
}

int	StatNOCTraffic::get_num_edge() {

	return edge_list.size();
}

int	StatNOCTraffic::get_num_proc() {

	return proc_list.size();
}

int	StatNOCTraffic::get_topology() {

	return topology;
}

int	StatNOCTraffic::get_num_row() {

	return num_row;
}

int	StatNOCTraffic::get_num_col() {

	return num_col;
}



