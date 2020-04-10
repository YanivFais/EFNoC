/*********************************************************************************
 *
 * File name:		stat_noc_traffic.h
 * Class name:		StatNOCTraffic
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

#ifndef MCSL_STAT_NOC_TRAFFIC
#define MCSL_STAT_NOC_TRAFFIC

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>
#include "stat_proc.h"

using namespace std;

class StatNOCTraffic {

public:
	StatNOCTraffic()	{}
	~StatNOCTraffic()	{}

	// assistant functions
	int					load_traffic(string trace_file);	// load traffic from trace file
	int					print_traffic();					// verify the loaded traffic

	StatProc*			get_proc(int x, int y);				// get processor by coordinate
	StatProc*			get_proc(int id);					// get processor by id
	
	// basic functions
	int					get_topology();
	int					get_num_proc();
	int					get_num_row();
	int					get_num_col();
	int					get_num_task();
	int					get_num_edge();

private:
    int                 topology;               	// the topology code
	int					num_row;					// number of rows in mesh/torus
	int					num_col;					// number of columns in mesh/torus
	vector<StatProc>    proc_list;                  // the list of PBs
	vector<StatTask>    task_list;                  // the list of tasks
	vector<StatEdge>    edge_list;                  // the list of edges
	
    vector<StatTask*>	starting_task_list;    	 	// the list of starting tasks
    vector<StatTask*>	finishing_task_list;    	// the list of finishing tasks		

};

#endif

