//
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

#ifndef __STATIC_SOURCE_H_
#define __STATIC_SOURCE_H_

#include <omnetpp.h>
#include <NoCs_m.h>
#include "RequestsCollection.h"

#include <ScheduledCalc.h>
#include <string.h>
#include "MCSL\rec_noc_traffic.h"
#define MCSL_ITERATIONS 20
int mcsl_main(int argc, const char **argv, RecNOCTraffic& rec_noc);
#include "EFGlobals.h"
//
// A simple source of Packets made out of FLITs on a single VC (0)
//
class ScheduledSrc: public cSimpleModule {
public:
	typedef struct McslTaskState {
		unsigned iteration;
		typedef enum { WAITING,EXECUTING,FINISHED} State;
		State state[MCSL_ITERATIONS];
		SimTime startTime[MCSL_ITERATIONS];
		RecTask * task;
		list<int> requests;
		bool starting;
		map<int,long> receivedMsgs[MCSL_ITERATIONS],sentMsgs[MCSL_ITERATIONS]; // map source/destination edge to messages received/sent sizes (bytes)
		void send(int edge,long bits) { if (iteration < MCSL_ITERATIONS) sentMsgs[iteration][edge]+= bits; }
		void recv(int edge,long bits,int iter) { if (iteration < MCSL_ITERATIONS) receivedMsgs[iter][edge]+= bits; }
		long received(int edge) { return receivedMsgs[iteration][edge]; }
		list<long> lags; // lag per task
		McslTaskState(RecTask * task=NULL);
		friend ostream & operator << (ostream& os,const McslTaskState& ts);
	} McslTaskState;

private:
	static RecNOCTraffic * mcslRtpTraffic;
	static std::map<int,int> mcsl2id,id2mcsl;
	static std::multimap<int, std::pair<int,int> > task2procNreq;
	static std::map<int,int> edge2req;
	RecProc * mcslProc;
	map<int,McslTaskState> taskStates; // task id -> task state
	static map<int,ScheduledSrc*> sources;

	void mcslUpdateProc();
	void mcslUpdateTasks();
	void mcslUpdateTask(int task);
	void mcslUpdateStart();
	void mcslCheckFinished();
	void mcslReadMapping();
	void mcslMoveToExecute(int task);
    void mcslCheckDone(McslTaskState state, RecTask *task, int & taskId);
    void mcslComputeDone(int task);
    void handleStartingTask(cMessage * msg);
    void handleComputeDone(cMessage * msg);
    void mcslCheckTasks();
    void mcslRecieveMsg(NoCFlitMsg * flit);

	static map<int,unsigned long long> req2delays;
	static map<int,unsigned long long> req2flits;
	static map<int,unsigned long long> req2MaxDelays;

	map<int,CommEdge> commEdges; // destination id to edge
	static map<int,CommEdge> allEdges; // edge id to edge(BW)

	set<int> executingTasks;
	virtual void updateDisplay();

	static long totalLag;
	// parameters:
	int srcId;
    int timeslots; // number of time slots in each period
	int flitSize_B;
	simtime_t statStartTime; // in sec
	bool			isTrace; 					// If true uses a trace file for flitArrivalDelay
	std::string		fileName;					// trace filename
	static map<int,long> sentBitsPerEdge;  // sent bits per edge
	static map<int,cOutVector*> temportalSendBitsPerEdge; // send at time per edge
	static map<int,cOutVector*> taskTimes; // end time for task
	static map<int,vector<long long> > taskStartTimes; // task number to start time
	static int L; // allowed lag
	static double alpha; // allowed lag relative to message size
	static double task_msg_start; // task msg start
	set<int> requestNumbers;


	// state:
	int pktIdx;
	int flitIdx;
	int curPktId;
	double numQueuedPkts;
	int curPktIdx;          // the packet index in the msg

	int numSentPackets;// number of sent packets, assume that there is only single destination
	double numGenPackets; // number of generated packets, for loss probability
	double totalNumQPackets; // number of queued packets, for loss probability
	vector<cQueue*> Qs;
	NoCPopMsg *popMsg; // used to pop packets modeling the wire BW
	cMessage  *genMsg; // used to gen next flit
	cMessage * computeDoneMsg; // used for computation done of a task
	long period; // number of periods
	int slot; // number of slot in period
	long bitsSent; // number of bits sent
	long iterations; // number of iterations

	// Statistics
	cLongHistogram dstIdHist;
	cOutVector dstIdVec;
	cStdDev numSentPkt; // number of sent packets, assume that there is only single destination
	cStdDev numGenPkt; // number of generated packets, for loss probability
	cStdDev numQPkt; // number of queued packets, for loss probability

	// methods
	void sendFlitFromQ();
	void handleCreateMsg(int requestId,int task,RecEdge * edge);
	void handleCreate(cMessage * msg);
	void handlePopMsg(cMessage *msg);
	void handleSendLocal(cMessage * msg);
	bool scheduledToSend();
	void resetAllStatistics();

protected:
    virtual void initialize(int stage);
    virtual void handleMessage(cMessage *msg);
    virtual void finish();

public:
    void recieveMsg(NoCFlitMsg * flit);
    virtual ~ScheduledSrc();
    virtual int numInitStages() const { return 2; }
    static void setFlitTransmitStat(int edge_num,NoCFlitMsg * msg);
	static double tClk_s;     // clk extracted from output channel,TODO , private

	static int InitEdge(cGate * g,int srcId,map<int,CommEdge>& commEdges);
	static RequestsCollection requests; // requests collection

};

#endif
