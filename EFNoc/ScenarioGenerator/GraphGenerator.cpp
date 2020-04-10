#include "GraphGenerator.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <vector>
#include <list>
#include <string>
#include <iostream>
#include <sstream>
#include <assert.h>
#include <set>
#include "MCSL\rec_noc_traffic.h"

#define MCSL_WORD_WIDTH 32
#define MCSL_ITERATIONS 20

using namespace std; 

GraphGenerator::GraphGenerator(GenerationParams & params) :
	mParams(params), 
	mDebug(true)
{
}

GraphGenerator::~GraphGenerator()
{
}


CommunicationGraph * GraphGenerator::GenerateGraphs()
{
	CommunicationGraph * commGraph;

	switch (mParams.TOPOLOGY) {
	case 1: commGraph = GenerateMesh(mParams.K, mParams.N); break;
	case 2: commGraph = GenerateFatTree(mParams.K, mParams.N); break;
	case 3: commGraph = GenerateButterfly(mParams.K, mParams.N); break;
	case 4: commGraph = GenerateClos(mParams.M, mParams.N, mParams.R, mParams.LEVELS); break;
	case 5: commGraph = GenerateKaryNfly(mParams.K, mParams.N, false); break;
	case 6: commGraph = GenerateRandomVertices(mParams.K, mParams.N); break;
	case 7: commGraph = GenerateBenesh(mParams.R, mParams.N); break;
	case 8: commGraph = GenerateKaryNfly(mParams.K, mParams.N, true); break;
	case 9: commGraph = NULL; break;
	default: throw std::exception("Unknown toplogy!");
	}

	if (commGraph)
		RenameVertices(commGraph);

	if (string(mParams.MCSL_FILENAME) != string(""))
		commGraph = GenerateMCSL(commGraph);
	commGraph->ComputeWireLength();
	return commGraph;

}

void GraphGenerator::RenameVertices(CommunicationGraph * commGraph)
{
	// rename the vertices such that low numbers are cores, usefull for having common requests regardless of topology
	map<int, int> v2mcsl;
	for (int i = 0; i < commGraph->GetNumVertices(); i++) {
		if (commGraph->GetVertex(i)->isTarget())
			v2mcsl[i] = v2mcsl.size();
	}
	commGraph->RenameVertices(v2mcsl);
}


extern int mcsl_main(int argc, char **argv, RecNOCTraffic& rec_noc);
CommunicationGraph * GraphGenerator::GenerateMCSL(CommunicationGraph * commGraph) {
	char * argv[] = { "Internal", mParams.MCSL_FILENAME,"NO_PRINT_OUT" };
	int r = mcsl_main(2, argv, recNoc);
	if (r!=0)
		throw std::exception("Error in MCSL!");
	int k = (int)std::ceil(sqrt(recNoc.get_num_proc()));
	int n = recNoc.get_num_proc();
	int kk = 0;
	do {
		n = (int)std::ceil(sqrt(n));
	} while ((n > 2) && (kk++<k));

	if (commGraph == NULL) {
		if (recNoc.get_topology() == 0 || recNoc.get_topology() == 1) { // mesh/torus
			commGraph = GenerateMesh(std::ceil(sqrt(recNoc.get_num_proc())), std::ceil(sqrt(recNoc.get_num_proc())));
		}
		if (recNoc.get_topology() == 2) { // FatTree
			commGraph = GenerateFatTree(k - 1, n);
		}
	}
	map<int, int> v2mcsl;
	for (int i = 0; i < commGraph->GetNumVertices(); i++) {
		if (commGraph->GetVertex(i)->isTarget())
			v2mcsl[i] = v2mcsl.size();
	}
	commGraph->RenameVertices(v2mcsl);

	ofstream v2mcslFile("mcsl2v.txt");
	v2mcslFile << "# vertex , MCSL core\n";
	for (map<int, int>::const_iterator it = v2mcsl.begin(); it != v2mcsl.end(); it++)
		v2mcslFile << it->first << "," << it->second << endl;
	v2mcslFile.close();
	string s = mParams.MCSL_FILENAME;
	std::replace(s.begin(), s.end(), '.', '_');
	commGraph->SetName(s);
	if (recNoc.get_topology() <= 2)
		return commGraph;
	EFNocVertex * V;
	for (int v = 0; v < recNoc.get_num_proc(); v++) {
		commGraph->AddVertex(V=new EFNocVertex(v, true));
		DblPoint p;
		p.x = rand() % (recNoc.get_num_proc() * 100);
		p.y = rand() % (recNoc.get_num_proc() * 100);
		V->setLocation(p);
		RecProc * proc = recNoc.get_proc(v);
	}
	vector<set<int> > destinations(recNoc.get_num_proc()); // destinations per source
	for (vector<RecEdge>::iterator eIter = recNoc.edge_list.begin(); eIter != recNoc.edge_list.end(); eIter++) {
		destinations[eIter->get_src_proc_id()].insert(eIter->get_dst_proc_id());
	}
	int edgeId = 0;
	for (int v = 0; v < recNoc.get_num_proc(); v++) {
		for (set<int>::const_iterator toIter = destinations[v].begin(); toIter != destinations[v].end(); toIter++)
			if (v != *toIter) {
				commGraph->AddEdge(new EFNocEdge(edgeId++, v, *toIter, false, 1.0));
				commGraph->AddEdge(new EFNocEdge(edgeId++, *toIter,v, false, 1.0));
			}
	}
	return commGraph;
}

CommunicationGraph * GraphGenerator::GenerateRandomVertices(int k, int n)
{
	CommunicationGraph * pGraph = new CommunicationGraph();

	int nVertices = mParams.N;

	stringstream sstr;
	sstr << "VariableBandWidthRandom" << "_" << nVertices;
	pGraph->SetName(sstr.str());

	srand ((unsigned int) time(NULL) );

	for (int i=0;i<nVertices;i++)
	{
		EFNocVertex * pVertex = new EFNocVertex(i, true);
		DblPoint p;
		p.x = rand() % (nVertices * 100);
		p.y = rand() % (nVertices * 100);
		pVertex->setLocation(p);
		pGraph->AddVertex(pVertex);
	}
	list<set<int> > SCCs;
	for (int k = 0; k < mParams.K || SCCs.size()!=1; k++) {
		int from = rand() % nVertices;
		int to = rand() % nVertices;
		if (from == to)
			continue;
		pGraph->AddEdge(new EFNocEdge(pGraph->GetNumEdges(), from, to, true, 1.0));
		pGraph->AddEdge(new EFNocEdge(pGraph->GetNumEdges(), to, from, true, 1.0));
		list<set<int> > SCCstmp;
		set<int> newSet;
		newSet.insert(from);
		newSet.insert(to);
		for (list < set<int> >::iterator sccsIter = SCCs.begin(); sccsIter != SCCs.end(); sccsIter++) {
			if ((sccsIter->find(from) != sccsIter->end()) || (sccsIter->find(to) != sccsIter->end())) {
				sccsIter->insert(from);
				sccsIter->insert(to);
				newSet.insert(sccsIter->begin(), sccsIter->end());
			}
			else {
				SCCstmp.push_back(*sccsIter);
			}
		}
		SCCstmp.push_back(newSet);
		SCCs = SCCstmp;
	}
	for (int i = 0; i<nVertices; i++)
	{
		EFNocVertex * pVertex = pGraph->GetVertex(i);
		while (pVertex->isTarget() && pVertex->GetInEdges().size() == 0) {
			int to = rand() % nVertices;
			if (i == to)
				continue;
			pGraph->AddEdge(new EFNocEdge(pGraph->GetNumEdges(), i, to, true, 1.0));
			pGraph->AddEdge(new EFNocEdge(pGraph->GetNumEdges(), to, i, true, 1.0));

		}
	}
	return pGraph;
}

RequestsCollection & GraphGenerator::GenerateRequests(CommunicationGraph & graph)
{
	RequestsCollection * pRequest = new RequestsCollection;
	int requestsNum = 0;
	if (string(mParams.MCSL_FILENAME) != string("")) {
		GenerateMCSLRequests(pRequest);
		return *pRequest;
	}

	// generate random all to all
	vector<int> cores;
	for (int v = 0; v < graph.GetNumVertices(); v++) {
		if (graph.GetVertex(v)->isTarget())
			cores.push_back(v);
	}
	for (unsigned v = 0; v < cores.size(); v++) {
		int toCores = rand() % ((int)(mParams.RATIO_CLIENTS*cores.size())+1);
		set<int> dests;
		for (int toIdx = 0; toIdx < toCores; toIdx++) {
			int to = cores[rand() % cores.size()];
			if (to == cores[v])
				continue;
			if (dests.find(to) != dests.end())
				continue;
			int bw = rand() % ((int)(mParams.PAYLOAD*mParams.RATIO_PAYLOAD)+1);
			bw = std::ceil(bw / mParams.FLIT_SIZE)*mParams.FLIT_SIZE;
			if (bw == 0)
				bw = mParams.FLIT_SIZE;
			CommunicationRequest * req = new CommunicationRequest(requestsNum++, cores[v], to,bw);
			pRequest->AddRequest(req);
		}
	}
	for (unsigned v = 0; v < cores.size(); v++) {
		while (graph.GetVertex(v)->GetInEdges().size() == 0) {
			int to = cores[rand() % cores.size()];
			if (to == v)
				continue;
			int bw = rand() % ((int)(mParams.PAYLOAD*mParams.RATIO_PAYLOAD) + 1);
			CommunicationRequest * req = new CommunicationRequest(requestsNum++, cores[v], to, bw);
			pRequest->AddRequest(req);
		}
	}
	return *pRequest;
}

void GraphGenerator::GenerateMCSLRequests(RequestsCollection * pRequest)
{
	int requestsNum = 0;
	int perTask = mParams.MCSL_REQ_PER_EDGE;
	multimap<int, pair<int, int> > task2procNreq;
	map<int, int> edge2req;
	map<int, RecEdge*> edges;

	ofstream v2mcslFile("mcsl2v.txt", ios_base::app);
	if (perTask == 2) {

		// compute the start time for each task
		map<int,int> lastOrder;
		map<int, vector<long long> > taskStartTime; // task to vector of start time per iteration
		map<int, map<int,list<RecTask*> > > procTaskOrder; // processor to tasks schedule order number
		for (int v = 0; v < recNoc.get_num_proc(); v++) {
			lastOrder[v] = 0;
			RecProc * proc = recNoc.get_proc(v);
			map<int,list<RecTask*> > order;
			for (vector<RecTask*>::const_iterator cTIter = proc->task_list.begin();
				cTIter != proc->task_list.end(); cTIter++) {
				vector<int>& schedule = (*cTIter)->get_schedule();
				for (vector<int>::const_iterator scIter = schedule.begin(); scIter != schedule.end(); scIter++) {
					// problem -- assert(order[*scIter] == NULL);
					if (order.find(*scIter) != order.end())
						cout << "Core " << v << " multiple assignements for task " << (*cTIter)->get_id() << " order " << *scIter << " and " << order[*scIter].front()->get_id() << endl;
					order[*scIter].push_back(*cTIter);
					lastOrder[v] = std::max(lastOrder[v], *scIter);
				}
			}
			long long startTime = 0;
			for (int o = 0; o <= lastOrder[v]; o++) {
				if (order.find(o)!=order.end()) {
					long long seqTime = 0,taskTime=0;
					for (list<RecTask*>::iterator it = order[o].begin(); it != order[o].end(); it++) {
						taskStartTime[(*it)->get_id()].push_back(startTime);
						taskTime = (*it)->get_recorded_execution_time()[taskStartTime[(*it)->get_id()].size() - 1];
						if (taskTime > seqTime)
							seqTime = taskTime;
					}
					startTime += seqTime;
				}
			}
			procTaskOrder[v] = order;
		}
		map<pair<int,int>,double> srcXdst2BW;
		for (int v = 0; v < recNoc.get_num_proc(); v++) {
			map<int, int> task2iteration;
			map<int,list<RecTask*> >& taskOrder = procTaskOrder[v];
			for (int o = 0; o < lastOrder[v]; o++) {
				if (taskOrder.find(o)!=taskOrder.end()) {
					for (list<RecTask*>::iterator it = taskOrder[o].begin(); it != taskOrder[o].end(); it++) {
						int taskId = (*it)->get_id();
						if (task2iteration.find(taskId) == task2iteration.end())
							task2iteration[taskId] = 0;
						int iteration = task2iteration[taskId];
						for (vector<RecEdge*>::const_iterator eIter = (*it)->outgoing_edge_list.begin();
							eIter != (*it)->outgoing_edge_list.end(); eIter++) {
							double msg_size = (*eIter)->get_recorded_msg_size()[iteration] * MCSL_WORD_WIDTH;
							int srcTask = (*eIter)->get_src_task_id();
							int dstTask = (*eIter)->get_dst_task_id();
							int dstProc = (*eIter)->get_dst_proc_id();
							long long startTimeSrc = taskStartTime[srcTask][iteration];
							long long startTimeDst = taskStartTime[dstTask][iteration];
							startTimeSrc += (*it)->get_recorded_execution_time()[iteration]*mParams.TASK_MSG_START; // we add the task time
							if (startTimeDst <= startTimeSrc)
								startTimeDst = startTimeSrc + 1;
							startTimeDst += mParams.L; // additive value for allowed end compared to optimal
							startTimeDst += msg_size*mParams.ALPHA; // additive value for allowed end compared to optimal depending on message start
							double bw = msg_size / (startTimeDst - startTimeSrc);
							if (srcXdst2BW[make_pair(v, dstProc)] < bw && (startTimeDst>startTimeSrc))
								srcXdst2BW[make_pair(v, dstProc)] = bw;
						}
						task2iteration[taskId] = iteration + 1;
					}
				}
			}
		}

#ifndef PE2PE_RATES
		double totalUsedBw = 0;
		double totalAllocatedBw = 0;
		// compute rates histogram per PE x PE
		map<pair<int, int>, vector<int> > srcXdst2histogram;
		for (int v = 0; v < recNoc.get_num_proc(); v++) {
			map<int, int> task2iteration;
			map<int, list<RecTask*> >& taskOrder = procTaskOrder[v];
			for (int o = 0; o < lastOrder[v]; o++) {
				if (taskOrder.find(o) != taskOrder.end()) {
					for (list<RecTask*>::iterator it = taskOrder[o].begin(); it != taskOrder[o].end(); it++) {
						int taskId = (*it)->get_id();
						if (task2iteration.find(taskId) == task2iteration.end())
							task2iteration[taskId] = 0;
						int iteration = task2iteration[taskId];
						for (vector<RecEdge*>::const_iterator eIter = (*it)->outgoing_edge_list.begin();
							eIter != (*it)->outgoing_edge_list.end(); eIter++) {
							double msg_size = (*eIter)->get_recorded_msg_size()[iteration] * MCSL_WORD_WIDTH;
							int srcTask = (*eIter)->get_src_task_id();
							int dstTask = (*eIter)->get_dst_task_id();
							int dstProc = (*eIter)->get_dst_proc_id();
							long long startTimeSrc = taskStartTime[srcTask][iteration];
							long long startTimeDst = taskStartTime[dstTask][iteration];
							startTimeSrc += (*it)->get_recorded_execution_time()[iteration] * mParams.TASK_MSG_START; // we add the task time
							if (startTimeDst <= startTimeSrc)
								startTimeDst = startTimeSrc + 1;
							startTimeDst += mParams.L; // additive value for allowed end compared to optimal
							startTimeDst += msg_size*mParams.ALPHA; // additive value for allowed end compared to optimal depending on message start
							int timeDiff = (startTimeDst - startTimeSrc);
							double bw = msg_size / timeDiff;
							double bw10 = bw * 10;
							pair<int, int> pe2pe = make_pair(v, dstProc);
							double maxRatio = srcXdst2BW[pe2pe];
							totalUsedBw += msg_size;
							totalAllocatedBw += maxRatio*(timeDiff);
							int location = bw10 / maxRatio;
							if (location == 10)
								location--;
							if (srcXdst2histogram.find(pe2pe) == srcXdst2histogram.end()) {
								srcXdst2histogram[pe2pe] = vector<int>(10);
								for (int j = 0; j < 10; j++)
									srcXdst2histogram[pe2pe][j] = 0;
							}
							srcXdst2histogram[pe2pe][location] += (startTimeDst - startTimeSrc);
						}
						task2iteration[taskId] = iteration + 1;
					}
				}
			}
		}
		cout << "Total Used BW:" << totalUsedBw << " Allocated BW:" << totalAllocatedBw << " Utilization upper bound: " << (totalUsedBw / totalAllocatedBw) * 100 << "%\n";
		ofstream ratiosFile("ratios.csv");
		ratiosFile << "From,To,time@MaxValue,time<90Percentile,ratio,maxValue\n";
		for (map<pair<int, int>, vector<int> > ::const_iterator histIter = srcXdst2histogram.begin(); histIter != srcXdst2histogram.end(); histIter++) {
			if (histIter->first.first == histIter->first.second)
				continue;
			pair<int, int> pe2pe = make_pair(histIter->first.first, histIter->first.second);
			unsigned long long _90Percentile = 0;
			for (int j = 0; j < 9; j++)
				_90Percentile += histIter->second[j];
			double ratio = histIter->second[9];
			if (_90Percentile)
				ratio /= _90Percentile;
			else
				ratio /= 1e-10;

			cout << "Request:" << histIter->first.first << "->" << histIter->first.second << " time@max=" << histIter->second[9] << ",time<90percentile=" << _90Percentile << ",ratio=" << ratio << ",maxValue=" << srcXdst2BW[pe2pe] << endl;
			ratiosFile << histIter->first.first << "," << histIter->first.second << "," << histIter->second[9] << "," << _90Percentile << "," << ratio << "," << srcXdst2BW[pe2pe] << endl;
		}
#endif


		v2mcslFile << "# TASK_MSG_START, L , ALPHA\n";
		v2mcslFile << mParams.TASK_MSG_START << "," << mParams.L << "," << mParams.ALPHA << endl;
		v2mcslFile << "# task , task start times\n";
		for (map<int, vector<long long> >::const_iterator tIt = taskStartTime.begin(); tIt != taskStartTime.end(); tIt++) {
			v2mcslFile << tIt->first;
			for (vector<long long>::const_iterator timeIter = tIt->second.begin(); timeIter != tIt->second.end(); timeIter++)
				v2mcslFile << "," << (*timeIter);
			v2mcslFile << endl;
		}
		map<pair<int,int> , int > srcXdst2req;
		for (map < pair<int, int>, double >::iterator edgeIter = srcXdst2BW.begin(); edgeIter != srcXdst2BW.end(); edgeIter++) {
			if (edgeIter->first.first == edgeIter->first.second)
					continue;
			srcXdst2req[edgeIter->first] = requestsNum;
			pRequest->AddRequest(new CommunicationRequest(requestsNum++, edgeIter->first.first, edgeIter->first.second, edgeIter->second));
		}

		for (int v = 0; v < recNoc.get_num_proc(); v++) {
			RecProc * proc = recNoc.get_proc(v);
			for (vector<RecTask*>::const_iterator cTIter = proc->task_list.begin();
				cTIter != proc->task_list.end(); cTIter++) {
				for (vector<RecEdge*>::const_iterator eIter = (*cTIter)->outgoing_edge_list.begin();
					eIter != (*cTIter)->outgoing_edge_list.end(); eIter++) {
					int reqNum = srcXdst2req[make_pair(v,(*eIter)->get_dst_proc_id())];
					edge2req[(*eIter)->get_id()] = reqNum;
					task2procNreq.insert(make_pair((*cTIter)->get_id(), make_pair(proc->get_id(), reqNum)));
				}
			}
		}

	}


	if (perTask!=2) {
		for (int v = 0; v < recNoc.get_num_proc(); v++) {
			RecProc * proc = recNoc.get_proc(v);
			map<int, set<int> > toTasks;
			vector<double> toSizes(recNoc.get_num_proc());
			for (int v1 = 0; v1 < recNoc.get_num_proc(); v1++)
				toSizes[v1] = 0;
			for (vector<RecTask*>::const_iterator cTIter = proc->task_list.begin();
				cTIter != proc->task_list.end(); cTIter++) {
				vector<int>& exec_time = (*cTIter)->get_recorded_execution_time();
				double avgTime = 0;
				for (vector<int>::const_iterator execTimeIter = exec_time.begin(); execTimeIter != exec_time.end(); execTimeIter++) {
					avgTime += *execTimeIter;
				}
				avgTime /= exec_time.size();
				for (vector<RecEdge*>::const_iterator eIter = (*cTIter)->outgoing_edge_list.begin();
					eIter != (*cTIter)->outgoing_edge_list.end(); eIter++) {
					vector<double>&		msg_size = (*eIter)->get_recorded_msg_size();
					double size = 0;
					for (vector<double>::const_iterator sizeIter = msg_size.begin(); sizeIter != msg_size.end(); sizeIter++)
						size += *sizeIter*MCSL_WORD_WIDTH;
					size /= msg_size.size();
					size /= avgTime;
					if (perTask) {
						edge2req[(*eIter)->get_id()] = requestsNum;
						task2procNreq.insert(make_pair((*cTIter)->get_id(), make_pair(proc->get_id(), requestsNum)));
						pRequest->AddRequest(new CommunicationRequest(requestsNum++, v, (*eIter)->get_dst_proc_id(), perTask == 1 ? std::ceil(size) : size));
					}
					else edges[(*eIter)->get_id()] = (*eIter);
					toSizes[(*eIter)->get_dst_proc_id()] += size;
					toTasks[(*eIter)->get_dst_proc_id()].insert((*cTIter)->get_id());
				}
			}
			if (!perTask) {
				for (int v1 = 0; v1 < recNoc.get_num_proc(); v1++) {
					if (toSizes[v1] != 0 && v != v1) {
						for (map<int, RecEdge*>::const_iterator eIter = edges.begin(); eIter != edges.end(); eIter++) {
							if ((eIter->second->get_src_proc_id() == v) && (eIter->second->get_dst_proc_id() == v1))
							if (edge2req.find(eIter->first) == edge2req.end())
								edge2req[eIter->first] = requestsNum;
							else requestsNum = requestsNum;
						}
						for (set<int>::iterator it = toTasks[v1].begin(); it != toTasks[v1].end(); it++)
							task2procNreq.insert(make_pair(*it, make_pair(proc->get_id(), requestsNum)));
						CommunicationRequest * req = new CommunicationRequest(requestsNum++, v, v1, std::ceil(toSizes[v1]));
						pRequest->AddRequest(req);
					}
				}
			}
		}
	}

	v2mcslFile << "# MCSL task , MCSL core,request\n";
	for (multimap<int, pair<int, int> >::const_iterator it = task2procNreq.begin(); it != task2procNreq.end(); it++)
		v2mcslFile << it->first << "," << it->second.first << "," << it->second.second << endl;
	v2mcslFile << "# MCSL edge , request\n";
	for (map<int, int >::const_iterator it = edge2req.begin(); it != edge2req.end(); it++)
		v2mcslFile << it->first << "," << it->second << endl;
	v2mcslFile.close();
}

void GraphGenerator::WriteRequestsFile(RequestsCollection & requests)
{
	requests.WriteToFile(mParams.REQUESTS_FILENAME);
}

void GraphGenerator::WriteGraphFiles(const CommunicationGraph & communicationGraph)
{
	communicationGraph.WriteToFiles(mParams.COMMUNICATION_GRAPH_FILENAME);
	ofstream of(string(communicationGraph.GetName() + string(".ned")).c_str());
	communicationGraph.WriteOmnetNetwork(of, communicationGraph.GetName().c_str(),mParams.OMNET_PACKAGE_NAME);
	of.close();
}


CommunicationGraph * GraphGenerator::GenerateMesh(int K, int N)
{
	CommunicationGraph * graph = new CommunicationGraph();
	stringstream sstr;
	sstr << "VariableBandWidthMesh" << "_" << K << "_" << N;
	graph->SetName(sstr.str());
	for (int k = 0; k < K; k++) {
		for (int n = 0; n < N; n++) {
			EFNocVertex * v;
			graph->AddVertex(v=new EFNocVertex(k*N + n,true));
			DblPoint p;
			p.x = n * 100;
			p.y = k * 100;
			v->setLocation(p);
		}
	}
	int edgeId = 0;
	for (int k = 0; k < K; k++) {
		for (int n = 0; n < N; n++) {
			if (n < N - 1) { // connect right 
				graph->AddEdge(new EFNocEdge(edgeId++, k*N + n, k*N + n+1,true,1.0));
				graph->AddEdge(new EFNocEdge(edgeId++, k*N + n+1, k*N + n, true, 1.0));
			}
			if (k < K - 1) { // connect bottom 
				graph->AddEdge(new EFNocEdge(edgeId++, k*N + n, (k+1)*N + n , true, 1.0));
				graph->AddEdge(new EFNocEdge(edgeId++, (k+1)*N + n , k*N + n, true, 1.0));
			}
		}
	}
	return graph;
}


//A regular fat-tree is a recursively defined structured. We use
//a 2-tuple (k; n) to donate a fat-tree structure, where k means
//the level of fat-tree, n means the number of fat-treei-1s that
//are used to build a fat-treei(Figure 1(a)).
//When k = 0, a fat-tree (0; n) is built with n servers and a
//switch with n down ports and n up ports. Each server is
//connected to a down port. And we number the up port from
//0 to n 

//When k > 0, a fat-tree (k; n) is built with n fat-tree (k-1,n)
//and n^k switches, each switch with n down ports and n up
//ports. The i-th up port of j-th fat-tree (k-1,n)
//to the j-th down port of the i-th switch. Then we use jxn+i
//to donate the i-th up port of the j-th switch. The number
//of up ports is n^(k+1) in total.
//We call the new switches level-k switches
// Reference: N-to-N Scheduling in Fat-Trees
CommunicationGraph * GraphGenerator::GenerateFatTree(int k, int n)
{
	cout << "Generating fat-tree k=" << k << ",n=" << n << endl;
	CommunicationGraph * graph = new CommunicationGraph();
	stringstream sstr;
	sstr << "VariableBandWidthFatTree" << "_" << k << "_" << n;
	graph->SetName(sstr.str());
	int vStart=0, eStart=0;
	std::vector<EFNocEdge*> edges;
	std::vector<EFNocVertex*> vertices;
	std::vector<int> ports;
	GenerateFatTree(k, n, vStart, eStart, edges, vertices, ports, true, *graph,0);
	return graph;
}

void GraphGenerator::GenerateFatTree(int k, int n, int& vertexIdStart, int& edgeIdStart,
	std::vector<EFNocEdge*>& edges, std::vector<EFNocVertex*>& vertices,
	std::vector<int>& ports,bool last,CommunicationGraph& graph,int num)
{
	EFNocVertex * v;
	EFNocEdge * e;
	DblPoint p;
	if (k == 0) {
		for (int i = 0; i < n; i++) {
			vertices.push_back(v = new EFNocVertex(vertexIdStart + i,true));
			p.x = (vertexIdStart + i+1) * 100;
			p.y = 100;
			v->setLocation(p);
			assert(graph.AddVertex(v));
		}
		vertices.push_back(v = new EFNocVertex(vertexIdStart + n,false)); // switch
		p.x = (vertexIdStart + n/2) * 100;
		p.y = 200;
		v->setLocation(p);
		assert(graph.AddVertex(v));
		for (int i = 0; i < n; i++) { // both directions : "bottom" edges switch to core 
			edges.push_back(e=new EFNocEdge(edgeIdStart + i, vertexIdStart + i, vertexIdStart + n, true, 1.0));
			assert(graph.AddEdge(e));
			edges.push_back(e=new EFNocEdge(edgeIdStart + n+i, vertexIdStart + n, vertexIdStart + i, true, 1.0));
			assert(graph.AddEdge(e));
		}
		for (int i = 0; i < n; i++)
			ports.push_back(vertexIdStart + n); // same switch
		vertexIdStart += n + 1;
		edgeIdStart += 2 * n;
	}
	else {
		vector<EFNocEdge*> * rec_edges = new vector<EFNocEdge*>[n];
		vector<EFNocVertex*> * rec_vertices = new vector<EFNocVertex*>[n];
		vector<vector<int> > rec_ports(n);
		int * rec_vertexStart = new int[n];
		int * rec_edgeStart = new int[n];
		for (int i = 0; i < n; i++) {
			rec_vertexStart[i] = i == 0 ? vertexIdStart : rec_vertexStart[i-1];
			rec_edgeStart[i] = i == 0 ? edgeIdStart : rec_edgeStart[i - 1];
			GenerateFatTree(k - 1, n, rec_vertexStart[i], rec_edgeStart[i], 
							rec_edges[i], rec_vertices[i],rec_ports[i],false,graph,i);
		}
		int switchesStart = rec_vertexStart[n - 1];
		int switchesEdgesStart = rec_edgeStart[n - 1];
		vector<EFNocVertex*> switches;
		int n_k = (int)pow((double)n, (double)k);
		int n_km1 = (int)pow((double)n, (double)k - 1);
		for (int i = 0; i<n_k; i++) { // n^k switches
				switches.push_back(v = new EFNocVertex(switchesStart + i,false));
				p.x = graph.GetVertex(rec_ports[i / n_km1][(i%n_km1)*n])->GetLocation().x;
				p.y = 300+(k+1)*300;
				v->setLocation(p);
				assert(graph.AddVertex(v));
		}
		int eCnt = 0;
		for (int i = 0; i < n_k; i++) { // n^k switches
			for (int j = 0; j<n; j++) { // n down ports per switch
				edges.push_back(e=new EFNocEdge(switchesEdgesStart + eCnt++, switches[i]->GetVertexNum(), rec_ports[j][i], true, 1.0));
				assert(graph.AddEdge(e));
				edges.push_back(e = new EFNocEdge(switchesEdgesStart + eCnt++, rec_ports[j][i], switches[i]->GetVertexNum(), true, 1.0));
				assert(graph.AddEdge(e));
			}
		}
		if (!last) {
			for (int i = 0; i < n_k; i++) {
				for (int j = 0; j < n; j++) {
					ports.push_back(switches[i]->GetVertexNum());
				}
			}
		}
		vertexIdStart = switchesStart + n_k;
		edgeIdStart = switchesEdgesStart + eCnt;
		delete[] rec_edges;
		delete[] rec_vertices;
		delete[] rec_vertexStart;
		delete[] rec_edgeStart;
	}
}

CommunicationGraph * GraphGenerator::GenerateButterfly(int K, int N) { 
	return new CommunicationGraph(); 
}

CommunicationGraph * GraphGenerator::GenerateClos(int m, int n, int r, int levels) {
	cout << "Generating clos m=" << m << ",n=" << n << ",r=" << r << ",levels=" << levels << endl;
	CommunicationGraph * graph = new CommunicationGraph();
	stringstream sstr;
	sstr << "VariableBandWidthClos" << "_" << m << "_" << n << "_" << r << "_" << levels;
	graph->SetName(sstr.str());
	int vertexIdStart = 0;
	int edgeIdStart = 0;
	int placeX = 2;
	int placeY = 0;
	EFNocVertex * v;
	EFNocEdge * e;
	DblPoint p;
	vector<int> portsIn;
	vector<int> portsOut;
	GenerateClos(m,n,r,levels,vertexIdStart,edgeIdStart,placeX,placeY,portsIn,portsOut,*graph);
	for (int i = 0; i < r; i++) {
		for (int j = 0; j < n; j++) {
			v = new EFNocVertex(vertexIdStart++, true);
			p.x = 100;
			p.y = 100 * (i*n+j+1);
			v->setLocation(p);
			assert(graph->AddVertex(v));
			e = new EFNocEdge(edgeIdStart++, v->GetVertexNum(), portsIn[i], true, 1.0);
			assert(graph->AddEdge(e));
			e = new EFNocEdge(edgeIdStart++, portsIn[i], v->GetVertexNum(), true, 1.0);
			assert(graph->AddEdge(e));

			v = new EFNocVertex(vertexIdStart++, true);
			p.x = placeX*100;
			p.y = 100 * (i*n + j + 1);
			v->setLocation(p);
			assert(graph->AddVertex(v));
			e = new EFNocEdge(edgeIdStart++, v->GetVertexNum(), portsOut[i], true, 1.0);
			assert(graph->AddEdge(e));
			e = new EFNocEdge(edgeIdStart++, portsOut[i], v->GetVertexNum(), true, 1.0);
			assert(graph->AddEdge(e));
		}
	}
	return graph;
}

// r*n*2
void GraphGenerator::GenerateClos(int m, int n, int r,int level,int& vertexIdStart, int& edgeIdStart,
	int & placeX,int& placeY,
	std::vector<int>& portsIn,vector<int>& portsOut, CommunicationGraph& graph)
{
	EFNocVertex * v;
	EFNocEdge * e;
	DblPoint p;
	int vertexIdStartIn = vertexIdStart;
	if (level == 1) {
			v = new EFNocVertex(vertexIdStart++, false);
			p.y = (placeY++ + 1) * 100;
			p.x = 100 * (placeX);
			v->setLocation(p);
			assert(graph.AddVertex(v));
			for (int i = 0; i < n; i++) {
				portsIn.push_back(v->GetVertexNum());
				portsOut.push_back(v->GetVertexNum());
			}
		return;
	}
	for (int i = 0; i < r; i++) {
		v = new EFNocVertex(vertexIdStart + i, false);
		p.y = (placeY + i + 1) * 100;
		p.x = 100  * (placeX);
		v->setLocation(p);
		assert(graph.AddVertex(v));
		portsIn.push_back(v->GetVertexNum());
	}
	int vertexIdStartM = vertexIdStart+r;
	int edgeIdStartM = edgeIdStart;
	int placeXM = placeX+1;
	int placeYM = placeY;
	vector< vector<int> > portsInM;
	vector< vector<int> > portsOutM;
	for (int i = 0; i < m; i++) {
		portsInM.push_back(vector<int>());
		portsOutM.push_back(vector<int>());
		placeXM = placeX + 1;
		GenerateClos(m, n, r/2, level - 2, vertexIdStartM, edgeIdStartM, placeXM, placeYM, portsInM[i], portsOutM[i], graph);
	}
	placeX = placeXM + 1;
	for (int i = 0; i < r; i++) {
		v = new EFNocVertex(vertexIdStartM++, false);
		p.y = (placeY+i+1) * 100;
		p.x = 100 * (placeX);
		v->setLocation(p);
		assert(graph.AddVertex(v));
		portsOut.push_back(v->GetVertexNum());
	}
	vertexIdStart = vertexIdStartM;
	edgeIdStart = edgeIdStartM;
	placeY = placeYM;
	int eCnt = 0;
	for (int i = 0; i < r; i++) {
		for (int j = 0; j < m; j++) {
			e = new EFNocEdge(edgeIdStart + eCnt++, portsIn[i], portsInM[j][i==0 ? 0 : i/(r/2)], true, 1.0);
			assert(graph.AddEdge(e));
			e = new EFNocEdge(edgeIdStart + eCnt++, portsInM[j][i == 0 ? 0 : i / (r / 2)], portsIn[i], true, 1.0);
			assert(graph.AddEdge(e));
		}
	}
	for (int i = 0; i < r; i++) {
		for (int j = 0; j < m; j++) {
			e = new EFNocEdge(edgeIdStart + eCnt++, portsOut[i], portsOutM[j][i == 0 ? 0 : i / (r / 2)], true, 1.0);
			assert(graph.AddEdge(e));
			e = new EFNocEdge(edgeIdStart + eCnt++, portsOutM[j][i == 0 ? 0 : i / (r / 2)], portsOut[i], true, 1.0);
			assert(graph.AddEdge(e));
		}
	}
	placeX++;
	edgeIdStart += eCnt;
}

CommunicationGraph * GraphGenerator::GenerateKaryNfly(int K, int N,bool tree) {
	cout << "Generating " << K << "-Ary N" << N << "-Fly";
	if (tree)
		cout << "Tree";
	cout << endl;
	CommunicationGraph * graph =  new CommunicationGraph();
	stringstream sstr;
	sstr << "VariableBandWidth" << K << "Ary" << N << "Fly";
	if (tree)
		sstr << "Tree";
	graph->SetName(sstr.str());
	EFNocVertex * v;
	DblPoint p;
	int vNum = 0;
	int eNum = 0;
	int stageCbr = (int) pow((double)K, (double)N - 1);
	int cores = (int) pow((double)K, (double)N);
	for (int i = 0; i < cores; i++) {
			v = new EFNocVertex(vNum++, true);
			p.y = (i+1) * 100;
			p.x = 100*K;
			v->setLocation(p);
			assert(graph->AddVertex(v));
	}
	vector<vector<int> > ra; // [N][stageCbr];
	for (int n = 0; n < N; n++) {
		vector<int> mesh;
		for (int n2 = 0; n2 < stageCbr; n2++) {
			mesh.push_back(vNum);
			v = new EFNocVertex(vNum++, false);
			p.y = (n2 + 1) * 100*K;
			p.x = 100*(n+2)*K;
			v->setLocation(p);
			assert(graph->AddVertex(v));
		}
		ra.push_back(mesh);
	}
	for (int i = 0; i < cores; i++) {
		assert(graph->AddEdge(new EFNocEdge(eNum++, i, cores+i/K, true, 1.0)));
		assert(graph->AddEdge(new EFNocEdge(eNum++, cores+i/K, i, true, 1.0)));
	}
	for (int n = 0; n < N-1; n++) {
		int jump = (int)pow((double)2, (double)N - n - 2);
		int cnt = 1;
		for (int n2 = 0; n2 < stageCbr; n2++) {
			if (n2%jump == 0 && n2>0)
				cnt *= -1;
			for (int k = 0; k < K; k++) {
				int cyclic = (n2 + jump*k*cnt) % stageCbr;
				if (cyclic < 0)
					cyclic += stageCbr;
				assert(graph->AddEdge(new EFNocEdge(eNum++, ra[n][n2], ra[n + 1][cyclic], true, 1.0)));
				assert(graph->AddEdge(new EFNocEdge(eNum++, ra[n + 1][cyclic], ra[n][n2], true, 1.0)));
			}

		}
	}
	if (!tree) {
		for (int i = 0; i < cores; i++) {
			v = new EFNocVertex(vNum++, true);
			p.y = (i + 1) * 100;
			p.x = 100 * (N+2)*K;
			v->setLocation(p);
			assert(graph->AddVertex(v));
			assert(graph->AddEdge(new EFNocEdge(eNum++, vNum - 1, ra[N - 1][i / K], true, 1.0)));
			assert(graph->AddEdge(new EFNocEdge(eNum++, ra[N - 1][i / K], vNum - 1, true, 1.0)));
		}
	}
	return graph;
}

CommunicationGraph * GraphGenerator::GenerateBenesh(int r, int n) { 
	cout << "Generating Benesh r=" << r << ",n=" << n << endl;
	int m = n;
	int N = r*n;
	int levels = (int) (2 * log2(N) - 1);
	CommunicationGraph * graph = GenerateClos(m, n, r, levels);
	stringstream sstr;
	sstr << "VariableBandWidthBenes" << "_" << r << "_" << n;
	graph->SetName(sstr.str());
	return graph;
}
