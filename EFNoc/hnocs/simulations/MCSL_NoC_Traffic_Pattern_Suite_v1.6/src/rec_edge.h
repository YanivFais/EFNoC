/*********************************************************************************
 *
 * File name:		rec_edge.h
 * Class name:		RecEdge
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

#ifndef MCSL_REC_EDGE
#define MCSL_REC_EDGE

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>

using namespace std;

class RecTask;

class RecEdge {

public:
	RecEdge()			{}
	~RecEdge()			{}

	// critical functions for the recorded trace
	vector<double>&		get_recorded_msg_size();					// get the list of recorded message sizes
	int					set_recorded_msg_size(vector<double> &s);	// set the list of recorded message sizes

	vector<int>&		get_mem_addr_list();						// get the list of memory addresses
	int					set_mem_addr_list(vector<int> &m);			// set the list of memory addresses

	// basic functions to operate on the basic parameters
	int					get_id();
	int					set_id(int eid);

	int					set_src_task(RecTask *t);
	int					set_dst_task(RecTask *t);
	int					get_src_task_id();
	int					get_dst_task_id();

	int					get_src_proc_id();
	int					get_dst_proc_id();
	
//private:
	// the recorded message sizes
	vector<double>      rec_msg_size_list;			// the list of recorded message sizes on the edge in sequence

    // the memory access information
    vector<int>         mem_addr_list;         		// the list of memory addresses

	// basic parameters
	int                 id;                         // the id of the edge
	RecTask*            src_task;                	// the source task
	RecTask*            dst_task;                	// the destination task

};

#endif


