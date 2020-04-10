/*********************************************************************************
 *
 * File name:		stat_edge.cpp
 * Class name:		StatEdge
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

#include "stat_edge.h"
#include "stat_task.h"

double StatEdge::get_mu() {

	return mu_msg_size;
}

double StatEdge::get_sigma() {
	
	return sigma_msg_size;
}

int	StatEdge::set_statistical_msg_size(double mu, double sigma) {

	assert (mu>0 && sigma>0);
	mu_msg_size = mu;
	sigma_msg_size = sigma;

	return 0;
}

double StatEdge::get_lambda() {

	return lambda_pkt_interval;
}

int	StatEdge::set_statistical_pkt_interval(double lambda) {

	assert (lambda > 0);
	lambda_pkt_interval = lambda;

	return 0;
}

int StatEdge::get_mem_start_addr() {

	return mem_start_addr;
}

int	StatEdge::set_mem_start_addr(int m) {

	assert (m >= 0);
	mem_start_addr = m;

	return 0;
}

int	StatEdge::get_mem_size() {

	return mem_size;
}

int	StatEdge::set_mem_size(int s) {

	assert (s >= 0);
	mem_size = s;

	return 0;
}

int	StatEdge::get_id() {

	return id;
}

int	StatEdge::set_id(int eid) {

	assert (eid >= 0);
	id = eid;

	return 0;
}

int	StatEdge::set_src_task(StatTask *t) {

	assert (t != NULL);
	src_task = t;
	
	return 0;
}

int	StatEdge::set_dst_task(StatTask *t) {

	assert (t != NULL);
	dst_task = t;
	
	return 0;
}

int	StatEdge::get_src_task_id() {
	
	return src_task->get_id();
}

int	StatEdge::get_dst_task_id() {
	
	return dst_task->get_id();
}

int	StatEdge::get_src_proc_id() {
	
	return src_task->get_proc_id();
}

int	StatEdge::get_dst_proc_id() {
	
	return dst_task->get_proc_id();
}





