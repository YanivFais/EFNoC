//receiveF.
// Copyright (C) Yaniv Fais,Tel Aviv University
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
//
#include "ScheduledSrc.h"

#define MCSL_MSG_SIZE 32
Define_Module(ScheduledSrc);
#include <iostream>
#include <fstream>
#include <sstream>
#include <list>
#include <limits>
using namespace std;
RecNOCTraffic * ScheduledSrc::mcslRtpTraffic=NULL;
std::map<int,int> ScheduledSrc::mcsl2id;
std::map<int,int> ScheduledSrc::id2mcsl;
std::multimap<int, std::pair<int,int> > ScheduledSrc::task2procNreq;
std::map<int,int> ScheduledSrc::edge2req;
map<int,ScheduledSrc*> ScheduledSrc::sources;
map<int,long> ScheduledSrc::sentBitsPerEdge;  // sent bits per edge
map<int,cOutVector*> ScheduledSrc::temportalSendBitsPerEdge; // send at time per edge
map<int,cOutVector*> ScheduledSrc::taskTimes; // end time for task
long ScheduledSrc::totalLag; // total delay for all tasks
map<int,CommEdge> ScheduledSrc::allEdges; // edge id to edge
map<int,unsigned long long> ScheduledSrc::req2delays;
map<int,unsigned long long> ScheduledSrc::req2flits;
map<int,unsigned long long> ScheduledSrc::req2MaxDelays;
RequestsCollection ScheduledSrc::requests;
double ScheduledSrc::tClk_s;     // clk extracted from output channel
int ScheduledSrc::L; // allowed lag
double ScheduledSrc::task_msg_start; // task msg start
double ScheduledSrc::alpha; // allowed delay based on message size
map<int,vector<long long> > ScheduledSrc::taskStartTimes; // task number to start time (expected)

#define DBG_HEADER DBG << "Node " << srcId << " @" << period
#define DBG_TASK DBG_HEADER << " T: " << taskId << "(" << taskStates[taskId].iteration << ")"

void ScheduledSrc::initialize(int stage) {
    if (stage==0) {
    	if (requests.GetRequests().empty())
    		requests.InitFromFile("Requests.txt"); // TODO
    	period = 0;
    	slot = 0;
    	bitsSent = 0;
        pktIdx = 0;
        flitIdx = 0;
        flitSize_B = par("flitSize");
        statStartTime = par("statStartTime");
        timeslots = par("timeslots");
        for (int t=0;t<timeslots;t++) {
        	char name[10];
        	sprintf(name,"T-%d",t);
        	Qs.push_back(new cQueue(name));
        }
        iterations = par("iterations");
    	computeDoneMsg = NULL;

        isTrace = par("isTrace");
        fileName = par("fileName").stringValue();
        if (fileName != "" && mcslRtpTraffic==NULL) {
        	const char * argv[] = {"OMNET",fileName.c_str(),"NO_PRINT_OUT"};
        	mcslRtpTraffic = new RecNOCTraffic();
        	int r = mcsl_main(3, argv, *mcslRtpTraffic);
			if (r!=0)
				throw cRuntimeError("Error in MCSL traffic reader");
			mcslReadMapping();
        }

        numQueuedPkts = 0;
        WATCH(numQueuedPkts);
        srcId = par("srcId");
    	sources[srcId] = this;
        curPktId = srcId << 16;
        popMsg = NULL;
        numSentPackets = 0;
        numSentPkt.setName("number-sent-packets");
        numGenPackets = 0;
        numGenPkt.setName("number-generated-packets");
        totalNumQPackets = 0;
        numQPkt.setName("number-queue-packets");

        char genMsgName[32];
        sprintf(genMsgName, "gen-%d", srcId);
        genMsg = new cMessage(genMsgName);

        dstIdHist.setName("dstId-Hist");
        dstIdHist.setRangeAutoUpper(0);
        dstIdHist.setCellSize(1.0);
        dstIdVec.setName("dstId");

    	vector<CommunicationRequest*> requestsVec = requests.GetRequests();
    	for (unsigned r=0;r<requestsVec.size();r++)
    		if (requestsVec[r]->GetSource()==srcId)
    			requestNumbers.insert(requestsVec[r]->GetRequestNum());
    }
    else {
		// obtain the data rate of the outgoing link
		cGate *g = gate("out$o")->getNextGate();
		if (!g->getChannel()) {
			throw cRuntimeError("-E- no out$o 0 gate for module %s ???",
					g->getFullPath().c_str());
		}
		double given_tClks=par("tClk");
        tClk_s = given_tClks;
        //EV<< "-I- " << getFullPath() << " Clock is:" << tClk_s<< " (givenClk=" << given_tClks << ")"<< endl;
        stringstream sstr;
        sstr << "router" << srcId;
        cModule * router = this->getParentModule()->getParentModule();
        router = router->getSubmodule(sstr.str().c_str());
        int gateSize = router->gateSize("out$o");
        for (int i=0;i<gateSize;i++) {
        	cGate * g = router->gate("out$o",i);
        	if (g) {
        		InitEdge(g,srcId,commEdges);
        	}
        }

		char popMsgName[32];
		sprintf(popMsgName, "pop-src-%d", srcId);
		popMsg = new NoCPopMsg(popMsgName);
		popMsg->setKind(NOC_POP_MSG);
		// start in the low phase to avoid race
		scheduleAt(tClk_s*0.5, popMsg);

		// handling messages
		curPktIdx = 0;

		if (mcslRtpTraffic!=NULL)
			mcslUpdateProc();
		else
			scheduleAt(simTime(), genMsg);
    }

}

int ScheduledSrc::InitEdge(cGate * g,int srcId,map<int,CommEdge>& commEdges)
{
	cChannel * c = g->getChannel();
	CommEdge edge;
	edge.bw = c->par("bw");
	edge.number = c->par("edge_num");
	allEdges[edge.number] = edge;
	cGate * endGate = g->getPathEndGate();
	cObject * endModule = endGate->getOwnerModule()->getOwner()->getOwner();
	string endRouter = endModule->getFullName();
	string::size_type pos = endRouter.find("router");
	int endRouterID = -1;
	if (pos!=string::npos) {
		endRouter = endRouter.substr(pos+6);
		endRouterID = atoi(endRouter.c_str());
	}
	if (endRouterID>=0) {
		commEdges[endRouterID] = edge;
	}
	if (edge.number>=0) {
		sentBitsPerEdge[edge.number] = 0;
		if (temportalSendBitsPerEdge.find(edge.number)==temportalSendBitsPerEdge.end()) {
			stringstream str;
			str << "edge #" << edge.number;
			temportalSendBitsPerEdge[edge.number] = new cOutVector(str.str().c_str());
		}
	}
	DBG << "Node" << srcId << " " << endRouterID << " bw=" << edge.bw << " edge=" << edge.number << endl;
	return edge.number;
}

// send the FLIT out and schedule the next pop
void ScheduledSrc::sendFlitFromQ() {
	if (Qs[slot]->empty())
		return;

	NoCFlitMsg* flit = (NoCFlitMsg*) Qs[slot]->pop();

	// we count number of outstanding packets
	if (flit->getType() == NOC_END_FLIT) {
		numQueuedPkts--;
		numSentPackets++;
	}
	flit->setInjectTime(simTime());
	EV<< "-I- " << getFullPath() << " flit injected at time: " << flit->getInjectTime() << endl;
    DBG_HEADER << " :"  << simTime()<< " flit inject " << flit->getDisplayString() << "," << flit->getFullName() << endl;
    int edge = flit->getPktId()&0xFFFF;
    if (mcslRtpTraffic) {
    	int taskId = flit->getSchedulingPriority();
    	taskStates[taskId].send(edge,flit->getBitLength());
        mcslUpdateTask(taskId);
        edge = commEdges[flit->getDstId()].number;
    }
	sentBitsPerEdge[edge]+=flit->getBitLength();  // sent bits per edge
	temportalSendBitsPerEdge[edge]->recordWithTimestamp(simTime(),flit->getBitLength()); // send at time per edge
	bitsSent += flit->getBitLength();
	send(flit, "out$o");
	mcslCheckTasks();

}

void ScheduledSrc::setFlitTransmitStat(int edge_num,NoCFlitMsg * msg)
{
	if (edge_num==-1)
		return;
	sentBitsPerEdge[edge_num]+=msg->getBitLength();
	temportalSendBitsPerEdge[edge_num]->recordWithTimestamp(simTime(),msg->getBitLength()); // send at time per edge
}

// generate a new packet and Q all its flits
void ScheduledSrc::handleCreateMsg(int request,int taskId,RecEdge * edge) {
   // double flowInSlot = 1.0/timeslots;
    map<int,NoCFlitMsg*> destinations;
    map<int,int> dest2flits;
    int size = edge ? edge->get_recorded_msg_size()[taskStates[taskId].iteration]*MCSL_MSG_SIZE : 65365; //TODO max int
    int sizeSave = size;
	int flitIdx = 0;
	map<int,list<NoCFlitMsg*> > flitsPerSlot;
	/*if (destinations.find(dstId)==destinations.end()) {
		numGenPackets++;
		dest2flits[dstId] = 1;
	}
	else {
		flitIdx = destinations[dstId]->getFlitIdx()+1;
	}*/
    ScheduledCalc::VertexToSlotToSchedule::const_iterator vIter = ScheduledCalc::vertexToSlotToDestToSchedule.find(srcId);
    if (vIter!=ScheduledCalc::vertexToSlotToDestToSchedule.end()) {
		for (int t=0;t<timeslots;t++)
		  flitsPerSlot[t]=(list<NoCFlitMsg*>());
		int prevSize = size+1;
    	while (size > 0) {
    		if (prevSize == size) {
    			cerr << "Error in node " << srcId << " request " << request << " T:" << taskId << endl;
    			assert(0);
    			return;
    		}
    		prevSize = size;
			for (int t=0;t<timeslots && (size>0);t++) {
			  ScheduledCalc::SlotToDestToSchedule::const_iterator sIter = vIter->second.find(t);
			  if (sIter != vIter->second.end()) {
				for (ScheduledCalc::DestinationToSchedule::const_iterator pIter=sIter->second.begin();pIter!=sIter->second.end() && (size>0);pIter++) {
					int requestNum = pIter->second->GetRequestNum();
					if (request!=-1) {
						if (requestNum!=request)
							continue;
					}
					else {
						if (requestNumbers.find(requestNum)==requestNumbers.end())
							continue; // not the initiator
					}
					int source = pIter->second->GetSender();
					if (source != srcId)
						continue;
					int dstId = pIter->second->GetReciever();
					dstIdHist.collect(dstId);
					dstIdVec.record(dstId);
					pktIdx = numGenPackets;
					curPktId = (srcId << 16) + pktIdx;
					curPktIdx++;
					int edgeId = edge ? edge->get_id() : commEdges[dstId].number;
					int bw = pIter->second->GetFlowInSlot();
					char flitName[128];
					if (bw>size)
						bw = size;
					sprintf(flitName, "flit e:%d,r:#%d,s:%d->t:%d,p:%d,f:%d,bw:%d", edgeId,requestNum,srcId, dstId, pktIdx,flitIdx,bw);
					NoCFlitMsg *flit = new NoCFlitMsg(flitName);
					destinations[dstId]=flit;
					flit->setKind(NOC_FLIT_MSG);
					flit->setByteLength(bw/8);
					flit->setBitLength(bw);
					flit->setInjectTime(t);
					flit->setVC(0);
					flit->setSL(requestNum); // mock QoS value
					flit->setSrcId(srcId);
					flit->setDstId(dstId);
					flit->setPktId(edgeId | ((taskStates[taskId].iteration)<<16));
					flit->setSchedulingPriority(taskId);
					flit->setFlitIdx(flitIdx++);
					flit->setFlits(-1);
					size -= flit->getBitLength();
					flitsPerSlot[t].push_back(flit);
				}
            } // TODO: multiple incoming/outgoing edges
          }
	      if (edge==NULL)
	    	size=0;
    	}
    }

    if (flitIdx>0) {
		DBG_TASK << " " << simTime()<< " Gen req# " << request << " edge:" << (edge ? edge->get_id() : -1) << " size=" << sizeSave << " iter=" << taskStates[taskId].iteration << endl;
		numGenPackets++;
		for (map<int,list<NoCFlitMsg*> >::iterator it=flitsPerSlot.begin();it!=flitsPerSlot.end();it++) {
			for (list<NoCFlitMsg*>::iterator fIt=it->second.begin(); fIt!=it->second.end();fIt++) {
				NoCFlitMsg * flit = *fIt;
				if (flit->getFlitIdx() == 0) {
					flit->setType(NOC_START_FLIT);
				} else if (flit->getFlitIdx() == flitIdx-1) {
					flit->setType(NOC_END_FLIT);
				} else {
					flit->setType(NOC_MID_FLIT);
				}
				flit->setFlits(flitIdx-1);
				Qs[it->first]->insert(flit);
			}
		}
    }

	mcslCheckTasks();
}

void ScheduledSrc::handlePopMsg(cMessage *msg) {
	slot++;
	if (slot>=timeslots) {
		period++;
		slot=0;
		if (period==iterations/2 && srcId==0)
			resetAllStatistics();
		if (period==iterations && mcslRtpTraffic==NULL)
			endSimulation();
	}
	mcslCheckTasks();
    if (scheduledToSend())
        sendFlitFromQ();
	scheduleAt(simTime() + tClk_s, msg);
}

bool ScheduledSrc::scheduledToSend() {
    if (!Qs[slot]->empty()) {
       return true;
    }
    return false;
}

void ScheduledSrc::handleMessage(cMessage *msg) {
	int msgType = msg->getKind();
	if (msgType == NOC_POP_MSG) {
		handlePopMsg((NoCPopMsg*) msg);
	} if (msgType==NOC_GNT_MSG) { // computeDone
		handleComputeDone(msg);
	}
	else if (msgType==NOC_APP_MSG) {
		handleStartingTask(msg);
	}
	else if (msgType==NOC_GEN_MSG) {
		handleCreate(msg);
	}
	else if (msgType==NOC_ACK_MSG) {
		handleSendLocal(msg);
	}
	else {
		if (this->mcslRtpTraffic==NULL) {
			handleCreateMsg(-1,-1,NULL);
		}
	}
}

void ScheduledSrc::handleSendLocal(cMessage * msg)
{
	int taskId=0,iter,e;
	unsigned long long size;
	sscanf(msg->getFullName(),"%d,%llu,%d,%d",&taskId,&size,&iter,&e);
	RecEdge * edge = taskStates[taskId].task->outgoing_edge_list[e];
	cancelAndDelete(msg);
	taskStates[edge->get_dst_task_id()].recv(edge->get_id(),size,iter);
	mcslUpdateTask(edge->get_dst_task_id());
}

void ScheduledSrc::handleCreate(cMessage * msg) {
	int taskId=0,edgeId,e;
	sscanf(msg->getFullName(),"%d,%d,%d",&taskId,&edgeId,&e);
	RecEdge * edge = taskStates[taskId].task->outgoing_edge_list[e];
	cancelAndDelete(msg);
	DBG_TASK << " message created" << endl;
	handleCreateMsg(edge2req[edgeId],taskId,edge);
}

void ScheduledSrc::handleStartingTask(cMessage * msg) {
	int taskFrom=0;
	sscanf(msg->getFullName(),"%d",&taskFrom);
	cancelAndDelete(msg);
	mcslMoveToExecute(taskFrom);
}

void ScheduledSrc::handleComputeDone(cMessage * msg) {
	int taskFrom=0;
	sscanf(msg->getFullName(),"%d",&taskFrom);
	cancelAndDelete(msg);
	computeDoneMsg = NULL;
	mcslComputeDone(taskFrom);
}

void ScheduledSrc::finish() {

	if (srcId==0) {
		map<int,long> totalSent;
		map<int,double> totalBw;
		int periodStatistics = (period-iterations/2);
		for (map<int,long>::const_iterator it=sentBitsPerEdge.begin();it!=sentBitsPerEdge.end();it++) {
			stringstream os;
			int edgeId = it->first;
			os << "#sent " << edgeId;
			recordScalar(os.str().c_str(), it->second);
			/*RecEdge edge = mcslRtpTraffic->edge_list[it->first];
			int srcId = edge.get_src_proc_id();
			int dstId = edge.get_dst_proc_id();
			if (sources.find(srcId)==sources.end())
				continue;
			if (sources[srcId]->commEdges.find(dstId)==sources[srcId]->commEdges.end())
				continue;*/
			CommEdge commEdge = allEdges[edgeId];
			totalSent[edgeId]+= it->second;
			totalBw[edgeId] = commEdge.bw*this->timeslots;
		}
		double nocBW=0,totalTx=0;
		for (map<int,long>::iterator it=totalSent.begin();it!=totalSent.end();it++) {
			double periodsBw = totalBw[it->first]*periodStatistics;
			long sent = it->second;
			nocBW += periodsBw;
			totalTx += sent;
			if (periodsBw==0) {
				periodsBw = 1;
				sent = 0;
			}
			double utilization = sent*100/periodsBw;
			cout << "Edge:" << it->first << " Sent:" << sent << " Utilization:" << utilization << "%,BW=" << totalBw[it->first] << ",Period=" << periodStatistics << endl;
		}
		for (map<int,ScheduledSrc*>::const_iterator sIt = sources.begin(); sIt!=sources.end(); sIt++) {
			for (int iter=0;iter<MCSL_ITERATIONS;iter++){
				for (map<int,McslTaskState>::const_iterator tIt=sIt->second->taskStates.begin();tIt!=sIt->second->taskStates.end(); tIt++) {
					for (list<long>::const_iterator lagIter = tIt->second.lags.begin();lagIter != tIt->second.lags.end();lagIter++)
						cout << "Node: " << sIt->first << " T:" << tIt->first << " Lag: " << (*lagIter) << endl;
				}
			}
		}
		double totalLatency = 0;
		unsigned long long totalFlits = 0;
		unsigned long long maxDelay = 0;
		for (unsigned r=0;r<req2delays.size();r++) {
			totalLatency += req2delays[r];
			totalFlits += req2flits[r];
			cout << "Req #" << r << " Max Latency:" << req2MaxDelays[r] << endl;
			maxDelay = std::max(maxDelay,req2MaxDelays[r]);
		}

		for (unsigned u=0;u<mcslRtpTraffic->finishing_task_list.size();u++) {
			RecTask * task = mcslRtpTraffic->finishing_task_list[u];
			for (int iter=0;iter<MCSL_ITERATIONS;iter++){
					for (list<long>::const_iterator lagIter = taskStates[task->get_id()].lags.begin();lagIter != taskStates[task->get_id()].lags.end();lagIter++)
						cout << "Finishing T:" << task->get_id() << " Lag: " << (*lagIter) << endl;
			}
		}
		double utilization = totalTx*100.0/nocBW;

		cout << "Total Lag:" << totalLag << endl;
		cout << "Total Utilization:" << utilization << "%" << endl;
		cout << "Total Schedule size:" << ScheduledCalc::scheduleSize << endl;
		cout << "Max Delay:" << maxDelay << endl;

		cout << " Flits:" << totalFlits << ",Average Latency:" << totalLatency/totalFlits << endl;

	}

	if (computeDoneMsg)
		cancelAndDelete(computeDoneMsg);

	if (popMsg)
		cancelAndDelete(popMsg);

	if ((genMsg)) {
		cancelAndDelete(genMsg);
	}

	for (int t=0;t<timeslots;t++) {
		while (!Qs[t]->empty()) {
			NoCFlitMsg* flit = (NoCFlitMsg*) Qs[t]->pop();
			delete flit;
		}
		delete Qs[t];
	}

	if (srcId==0) {
		for (map<int,cOutVector*>::const_iterator it=temportalSendBitsPerEdge.begin();it!=temportalSendBitsPerEdge.end();it++) {
			delete it->second;
		}

		for (map<int,cOutVector*>::const_iterator it=taskTimes.begin();it!=taskTimes.end();it++) {
			delete it->second;
		}
	}

/*	dstIdHist.record();
	numSentPkt.collect(numSentPackets);
	numSentPkt.record();
	numGenPkt.collect(numGenPackets);
	numGenPkt.record();
	numQPkt.collect(totalNumQPackets);
	numQPkt.record();*/
}

void ScheduledSrc::resetAllStatistics() {
	for (map<int,long>::iterator it=sentBitsPerEdge.begin();it!=sentBitsPerEdge.end();it++)
		it->second = 0;
	totalLag = 0;
	for (unsigned i=0;i<req2delays.size();i++)
		req2delays[i] = 0;
	for (unsigned i=0;i<req2flits.size();i++)
		req2flits[i] = 0;
	for (unsigned i=0;i<req2MaxDelays.size();i++)
		req2MaxDelays[i] = 0;
}

ScheduledSrc::~ScheduledSrc() {

}

void ScheduledSrc::mcslUpdateProc()
{
	mcslProc = mcslRtpTraffic->get_proc(srcId);
	for (unsigned u=0;u<mcslProc->task_list.size();u++) {
		RecTask * t = mcslProc->task_list[u];
		taskStates[t->get_id()] = McslTaskState(t);
	}
	for (std::multimap<int, std::pair<int,int> >::const_iterator it=task2procNreq.begin(); it != task2procNreq.end();it++) {
		if (taskStates.find(it->first)!=taskStates.end()) {
			taskStates[it->first].requests.push_back(it->second.second);
			//cout << " on " << srcId << " updating T:" << it->first << " to request number " << it->second.second << endl;
		}
	}
	mcslUpdateStart();
}

void ScheduledSrc::mcslUpdateStart() {
	for (unsigned u=0;u<mcslRtpTraffic->starting_task_list.size();u++) {
		RecTask* t = mcslRtpTraffic->starting_task_list[u];
		map<int,McslTaskState>::iterator it = taskStates.find(t->get_id());
		if (it!=taskStates.end()) {
			it->second.starting = true;
			mcslMoveToExecute(it->first);
		}
	}
}

void ScheduledSrc::mcslCheckTasks() {
	return;
	map<int,int> tasks;
	if (taskStates.empty())
		return;
	for (unsigned u=0;u<mcslRtpTraffic->get_proc(srcId)->task_list.size();u++) {
		RecTask * t = mcslRtpTraffic->get_proc(srcId)->task_list[u];
		tasks[t->get_id()] = 1;
	}
	for (map<int,McslTaskState>::iterator it=taskStates.begin();it!=taskStates.end();it++) {
		if (tasks.find(it->first)==tasks.end()) {
			cerr << "Node " << srcId << ": Error in " << it->first << endl;
			assert(0);
		}
	}
	//assert (mcslRtpTraffic->get_proc(srcId)->task_list.size()<taskStates.size());
}

void ScheduledSrc::recieveMsg(NoCFlitMsg * flit)
{
	int request = flit->getSL();
	double latency = (simTime().dbl()-flit->getInjectTime().dbl()-1e-12);
	long latencyTicks = ceil(latency/tClk_s)-2; // we decrease 2,1 for send and one for transmit
	DBG_HEADER << " receive " << flit->getFullName() << " Latency:" << latency << ",ticks=" << latencyTicks << " For request #" << request << endl;
	req2delays[request]+=latencyTicks;
	req2MaxDelays[request] = std::max(req2MaxDelays[request],(unsigned long long)latencyTicks);
	req2flits[request]++;
	if (mcslRtpTraffic!=NULL)
		mcslRecieveMsg(flit);
}

void ScheduledSrc::mcslRecieveMsg(NoCFlitMsg * flit)
{
	mcslCheckTasks();
	int edgeId = flit->getPktId()&0xFFFF;
	int iter = flit->getPktId()>>16;
	RecEdge edge = mcslRtpTraffic->edge_list[edgeId];
	assert(edgeId==edge.get_id());
	int srcTaskId = edge.get_src_task_id();
	int rcvTaskId = edge.get_dst_task_id();
	mcslCheckTasks();

	if (taskStates.find(rcvTaskId)==taskStates.end()) {
	  cerr << "Node " << srcId << " @" << period << " :" << " receive message from T: " << srcTaskId << " to T: " << rcvTaskId << " edge # " << edgeId << " on " << flit->getFullName() << endl;
	  for (map<int,McslTaskState>::const_iterator it = taskStates.begin(); it!=taskStates.end(); it++)
		  cerr << it->first << " " << it->second << endl;
	  assert(taskStates.find(rcvTaskId)!=taskStates.end());
	}
    taskStates[rcvTaskId].recv(edgeId,flit->getBitLength(),iter);
    DBG_HEADER << " receive message from T: " << srcTaskId << "(" << iter << ")" << " to T: " << rcvTaskId << " edge # " << edgeId << " length = " << flit->getBitLength() << " all=" << taskStates[rcvTaskId].received(edgeId) <<endl;
    mcslUpdateTask(rcvTaskId);
}

void ScheduledSrc::mcslUpdateTasks()
{
	for (map<int,McslTaskState>::iterator taskStateIter = taskStates.begin();
			taskStateIter != taskStates.end(); taskStateIter++) { // for each task
		mcslUpdateTask(taskStateIter->first);
	}
}

void ScheduledSrc::mcslCheckDone(McslTaskState state, RecTask *task, int & taskId)
{
	mcslCheckTasks();
    bool allSent = true;
    if(state.state[state.iteration] == McslTaskState::EXECUTING){
        for(vector<RecEdge*>::iterator edgesIter = task->outgoing_edge_list.begin();edgesIter != task->outgoing_edge_list.end();edgesIter++){
            vector<double> & sizes = (*edgesIter)->get_recorded_msg_size();
            int size = sizes[state.iteration]*MCSL_MSG_SIZE; // period to int
            if(size > state.sentMsgs[state.iteration][(*edgesIter)->get_id()]){
            	DBG_TASK << "- not all sent (" << size << ">" << state.sentMsgs[state.iteration][(*edgesIter)->get_id()] << ") on edge " << (*edgesIter)->get_id() << endl;
                allSent = false;
                break;
            }
        }

        SimTime duration = (simTime() + tClk_s - tClk_s/100 - state.startTime[state.iteration])/tClk_s;
        SimTime recordedDuration = state.task->rec_time_list[state.iteration];
        if (allSent && (duration > recordedDuration)){
        	taskTimes[taskId]->recordWithTimestamp(simTime(),-1);
        	executingTasks.erase(taskId);
            taskStates[taskId].state[taskStates[taskId].iteration] = McslTaskState::FINISHED;
            DBG_TASK << " finished iteration " << taskStates[taskId].iteration  << endl;
        	taskStates[taskId].iteration++;
        	if (taskStates[taskId].iteration==iterations) {
            	DBG_TASK << " completed all." << endl;
        	}
        	if (taskStates[taskId].starting && (taskStates[taskId].iteration<iterations)) {
        		SimTime newStart = this->taskStartTimes[taskId][taskStates[taskId].iteration]*tClk_s;
        		if (newStart<simTime())
        			newStart=simTime();
        	    char startingTask[32];
        	    sprintf(startingTask, "%d", taskId);
        	    cMessage * startingTaskMsg = new cMessage(startingTask);
        	    startingTaskMsg->setKind(NOC_APP_MSG);
        	    this->scheduleAt(newStart,startingTaskMsg);
        	}
        	else mcslUpdateTask(taskId);
            mcslCheckFinished();
        }
        else {
        	DBG << "Node " << srcId << " @" << period << " : Not finished T: " << taskId << " " << allSent << " duration:" << duration << "<" << recordedDuration << endl;
        }
    }
}

void ScheduledSrc::mcslUpdateTask(int taskId)
{
	mcslCheckTasks();
	McslTaskState state = taskStates[taskId];
	RecTask * task = state.task;
	bool allReceived = true;
	DBG_TASK << " ";
	for (vector<RecEdge*>::iterator edgesIter=task->incoming_edge_list.begin();
			edgesIter!=task->incoming_edge_list.end(); edgesIter++) {
		vector<double>& sizes = (*edgesIter)->get_recorded_msg_size();
		int size = sizes[state.iteration]*MCSL_MSG_SIZE;
		DBG << (*edgesIter)->get_src_task_id() << "=" << state.received((*edgesIter)->get_id()) << "(" << size << ") ";
		if (size > state.received((*edgesIter)->get_id())) {
			allReceived = false;
			break;
		}
	}
	DBG << endl;
    mcslCheckDone(state, task, taskId);
    if (taskStates[taskId].state[taskStates[taskId].iteration]==McslTaskState::WAITING && allReceived) {
			mcslMoveToExecute(taskId);
	}
}

void ScheduledSrc::mcslMoveToExecute(int taskId)
{
	mcslCheckTasks();
    Enter_Method_Silent();
    if (taskStates[taskId].iteration==iterations) {
    	DBG_TASK << " complete" << endl;
    	return;
    }
	DBG_TASK << "- Moving to execute." << endl;
    double cycles = taskStates[taskId].task->get_recorded_execution_time()[taskStates[taskId].iteration];
    double compute = cycles*tClk_s;
	executingTasks.insert(taskId);
	if (taskTimes.find(taskId)==taskTimes.end()) {
		stringstream str;
		str << "Task #" << taskId;
		taskTimes[taskId] = new cOutVector(str.str().c_str());
	}
	taskTimes[taskId]->recordWithTimestamp(simTime(),1);
	taskStates[taskId].state[taskStates[taskId].iteration] = McslTaskState::EXECUTING; // switch to execute and reset
	taskStates[taskId].startTime[taskStates[taskId].iteration] = simTime();

    SimTime now = (simTime())/tClk_s;
    long long nowTicks = (long)now.dbl();
	long long expectedStart = taskStartTimes[taskId][taskStates[taskId].iteration];
	expectedStart += L;
	double maxMsg = 0;
	for (map<int,long>::iterator it=taskStates[taskId].receivedMsgs[taskStates[taskId].iteration].begin();
			it != taskStates[taskId].receivedMsgs[taskStates[taskId].iteration].end(); it++) {
		if (it->second > maxMsg)
			maxMsg = it->second;
	}
	expectedStart += maxMsg*alpha;
	//long long recordedDuration = state.task->rec_time_list[state.iteration];
	//long long expectedEnd = expectedStart+recordedDuration;
	long long lag = nowTicks - expectedStart;
    DBG_TASK << "- Moving to start now=" << nowTicks << ",recorded=" << expectedStart << ",lag=" << lag << endl;
    taskStates[taskId].lags.push_back(lag);
    totalLag += lag;


	for (unsigned e=0;e<taskStates[taskId].task->outgoing_edge_list.size();e++) {
		RecEdge * edge = taskStates[taskId].task->outgoing_edge_list[e];
		if (taskStates.find(edge->get_dst_task_id())!=taskStates.end()) { // local
            //RecTask * taskPtr = taskStates[edge->get_dst_task_id()].task;
            double size = edge->get_recorded_msg_size()[taskStates[taskId].iteration]*MCSL_MSG_SIZE;
    		taskStates[taskId].send(edge->get_id(),size);
            char computeDone[32];
            sprintf(computeDone, "%d,%llu,%d,%d", taskId,(unsigned long long)size,taskStates[taskId].iteration,e);
            cMessage * sendLocalMsg = new cMessage(computeDone);
            sendLocalMsg->setKind(NOC_ACK_MSG);
            scheduleAt(simTime()+compute,sendLocalMsg);
		}
		else { // to other core,send over NoC
		    char genMsgStr[32];
		    sprintf(genMsgStr, "%d,%d,%d", taskId,edge->get_id(),e);
		    cMessage * genMsg = new cMessage(genMsgStr);
		    genMsg->setKind(NOC_GEN_MSG);
		    DBG_TASK << " message start now=" << nowTicks << ",tx start=" << simTime()+compute*task_msg_start << endl;
		    scheduleAt(simTime()+compute*this->task_msg_start,genMsg);
		}
	}

    char computeDone[32];
    sprintf(computeDone, "%d", taskId);
    computeDoneMsg = new cMessage(computeDone);
    computeDoneMsg->setKind(NOC_GNT_MSG);
    this->scheduleAt(simTime()+compute,computeDoneMsg);
	mcslCheckTasks();
}

void ScheduledSrc::mcslComputeDone(int taskId)
{
	mcslCheckTasks();

	/*cout << "Node " << srcId << ":\n";
	for (map<int,McslTaskState>::iterator it=taskStates.begin();it!=taskStates.end();it++) {
	}
	cout << "\n";*/

	DBG_TASK << "-Moving compute done." << endl;
    mcslCheckDone(taskStates[taskId], taskStates[taskId].task,taskId);
}

void ScheduledSrc::mcslCheckFinished() {
	mcslCheckTasks();
	int localIterations = 0;
	for (unsigned u=0;u<mcslRtpTraffic->finishing_task_list.size();u++) {
		RecTask* t = mcslRtpTraffic->finishing_task_list[u];
		bool found = false;
		for (map<int,ScheduledSrc*>::const_iterator sit=sources.begin();sit!=sources.end() && !found;sit++) {
			map<int,McslTaskState>::const_iterator it = sit->second->taskStates.find(t->get_id());
			if (it!=sit->second->taskStates.end()) {
				if (it->second.state[iterations-1] != McslTaskState::FINISHED)
					return;
				localIterations = it->second.iteration;
				found = true;
			}
		}
		assert(found);
	}

	int totalIterations = mcslRtpTraffic->finishing_task_list[0]->rec_time_list.size();
	if (localIterations == iterations)
		endSimulation();
	else {
		cout << "\n\n*** Another iteration " << iterations << "<" << totalIterations << " ****\n\n";
		for (map<int,ScheduledSrc*>::const_iterator it=sources.begin();it!=sources.end();it++)
			it->second->mcslUpdateStart();
	}

}

ScheduledSrc::McslTaskState::McslTaskState(RecTask * task)
	:iteration(0),task(task),starting(false)
{
	for (int i=0;i<MCSL_ITERATIONS;i++) {
		state[i] = WAITING;
		receivedMsgs[i] = map<int,long>();
		sentMsgs[i] = map<int,long>();
		if (task!=NULL) {
			for (unsigned u=0;u<task->incoming_edge_list.size();u++)
				receivedMsgs[i][task->incoming_edge_list[u]->get_id()] = 0;
			for (unsigned u=0;u<task->outgoing_edge_list.size();u++)
				sentMsgs[i][task->outgoing_edge_list[u]->get_id()] = 0;
		}
	}
}

void ScheduledSrc::updateDisplay()
{
    stringstream os;
    for (set<int>::const_iterator it=executingTasks.begin();it!=executingTasks.end();it++)
    	os << "T:" << *it << taskStates[*it] << " ";
    getDisplayString().setTagArg("t",0,os.str().c_str());
    getParentModule()->getDisplayString().setTagArg("t",0,os.str().c_str());
    getParentModule()->getParentModule()->getDisplayString().setTagArg("t",0,os.str().c_str());
}

ostream & operator << (ostream& os,const ScheduledSrc::McslTaskState& ts)
{
	os << " Iteration " << ts.iteration;
	os << " Recv:";
	for (map<int,long>::const_iterator it2=ts.receivedMsgs[ts.iteration].begin();it2!=ts.receivedMsgs[ts.iteration].end();it2++) {
		os << it2->first << ":" << it2->second << ",";
	}
	os << " Send:";
	for (map<int,long>::const_iterator it2=ts.sentMsgs[ts.iteration].begin();it2!=ts.sentMsgs[ts.iteration].end();it2++) {
		os << it2->first << ":" << it2->second << ",";
	}
	return os;
}

void ScheduledSrc::mcslReadMapping() {
	ifstream mapFile("mcsl2v.txt");
	if (!mapFile.good()) {
		throw cRuntimeError("Error in MCSL reading mcsl2v.txt");
	}
	string line;
	do {
		getline(mapFile,line);
		if (line[0]=='#')
			continue;
		size_t t = line.find(',');
		int from = atoi(line.substr(0,t).c_str());
		int to = atoi(line.substr(t+1,line.length()-t).c_str());
		id2mcsl[from] = to;
		mcsl2id[to] = from;
	} while ((line.find("TASK_MSG_START")==string::npos) && mapFile.good());
	do {
		getline(mapFile,line);
		if (line[0]=='#')
			continue;
		if (!mapFile.good()) break;
		size_t t = line.find(',');
		task_msg_start = atof(line.substr(0,t).c_str());
		size_t t1 = line.find(',',t+1);
		L = atoi(line.substr(t+1,t1-t).c_str());
		t = t1;
		t1 = line.find(',',t+1);
		alpha = atof(line.substr(t+1,t1-t).c_str());
	} while ((line.find("task , task start times")==string::npos) && mapFile.good());
	do {
		getline(mapFile,line);
		if (line[0]=='#')
			continue;
		if (!mapFile.good()) break;
		size_t t = line.find(',');
		int task = atoi(line.substr(0,t).c_str());
		size_t t1 = t+1;
		vector<long long> timeS;
		do {
			t = line.find(',',t1);
			long long startTime=atoll(line.substr(t1,t-t1+1).c_str());
			t1=t+1;
			timeS.push_back(startTime);
		} while (t!=string::npos);
		assert(timeS.size()==MCSL_ITERATIONS);
		taskStartTimes[task] = timeS;
	} while ((line.find("MCSL task")==string::npos) && mapFile.good());
	do {
		getline(mapFile,line);
		if (line[0]=='#')
			continue;
		if (!mapFile.good()) break;
		size_t t = line.find(',');
		int task = atoi(line.substr(0,t).c_str());
		size_t t1 = line.find(',',t+1);
		int core = atoi(line.substr(t+1,t1-t).c_str());
		int req = atoi(line.substr(t1+1,line.length()-t1).c_str());
		task2procNreq.insert(make_pair(task, make_pair(core,req)));
	} while ((line.find("MCSL edge")==string::npos) && mapFile.good());
	do {
		getline(mapFile,line);
		if (line[0]=='#')
			continue;
		if (!mapFile.good()) break;
		size_t t = line.find(',');
		int edge = atoi(line.substr(0,t).c_str());
		int req = atoi(line.substr(t+1,line.length()-t).c_str());
		edge2req.insert(make_pair(edge, req));
	} while (mapFile.good());
	mapFile.close();
}
