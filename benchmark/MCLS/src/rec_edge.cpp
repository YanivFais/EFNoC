/*********************************************************************************
 *
 * File name:		rec_edge.cpp
 * Class name:		RecEdge
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

#include "rec_edge.h"
#include "rec_task.h"

vector<double>& RecEdge::get_recorded_msg_size() {
	
	return rec_msg_size_list;
}

int	RecEdge::set_recorded_msg_size(vector<double> &s) {
	
	assert (s.size() > 0);
	rec_msg_size_list = s;

	return 0;
}

vector<int>& RecEdge::get_mem_addr_list() {

	return mem_addr_list;
}

int RecEdge::set_mem_addr_list(vector<int> &m) {

	assert (m.size() > 0);
	mem_addr_list = m;

	return 0;
}

int	RecEdge::get_id() {

	return id;
}

int	RecEdge::set_id(int eid) {

	assert (eid >= 0);
	id = eid;

	return 0;
}

int	RecEdge::set_src_task(RecTask *t) {

	assert (t != NULL);
	src_task = t;
	
	return 0;
}

int	RecEdge::set_dst_task(RecTask *t) {

	assert (t != NULL);
	dst_task = t;
	
	return 0;
}

int	RecEdge::get_src_task_id() {
	
	return src_task->get_id();
}

int	RecEdge::get_dst_task_id() {
	
	return dst_task->get_id();
}

int	RecEdge::get_src_proc_id() {
	
	return src_task->get_proc_id();
}

int	RecEdge::get_dst_proc_id() {
	
	return dst_task->get_proc_id();
}


