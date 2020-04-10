/*********************************************************************************
 *
 * File name:		stat_edge.h
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

#ifndef MCSL_STAT_EDGE
#define MCSL_STAT_EDGE

#include <assert.h>
#include <string>
#include <iostream>
#include <vector>

using namespace std;

class StatTask;

class StatEdge {

public:
	StatEdge()			{}
	~StatEdge()			{}

	// critical functions for the statistical trace
	double				get_mu();
	double				get_sigma();
	int					set_statistical_msg_size(double mu, double sigma);		//

	double				get_lambda();
	int					set_statistical_pkt_interval(double lambda);			//

	int					get_mem_start_addr();
	int					set_mem_start_addr(int m);
	int					get_mem_size();
	int					set_mem_size(int s);

	// basic functions to operate on the basic parameters
	int					get_id();
	int					set_id(int eid);

	int					set_src_task(StatTask *t);
	int					set_dst_task(StatTask *t);
	int					get_src_task_id();
	int					get_dst_task_id();

	int					get_src_proc_id();
	int					get_dst_proc_id();

private:
	// the statistical message sizes follow Gaussian distribution
	double              mu_msg_size;				// the mean of the message size
	double              sigma_msg_size;				// the sd of the message size

	// the statistical packet generation intervals follow Exponential distribution
	double              lambda_pkt_interval;        // the rate parameter, the inverse of the average packet generation interval

    // the memory access information
    int                 mem_start_addr;        		// the starting address of the memory
    int                 mem_size;         			// the size of the memory
   
	// basic parameters
	int                 id;                         // the id of the edge
	StatTask*			src_task;					// the source task
	StatTask*			dst_task;					// the destination task

};


#endif

