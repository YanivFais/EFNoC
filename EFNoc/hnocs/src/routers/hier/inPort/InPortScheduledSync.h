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

#ifndef ___SYNC_SCHED_INPORT_H_
#define ___SYNC_SCHED_INPORT_H_

#include <omnetpp.h>
#include <NoCs_m.h>
#include <FlitMsgCtrl.h>

//
// Input Port of a router
//
// Ports:
//   inout in - where FLITs are received and credits are reported
//   inout out_sw - where req/ack and FLITs are provided to schedulers
//
// Events:
//   NoCFlitMsg, NoCPacketMsg - received on the "in" port
//
// NOTE: on each in VC there is only 1 packet being received at a given time
// NOTE: on each out port there is only 1 packet being sent at a given time
//
class InPortScheduledSync: public cSimpleModule {
private:
	// parameters
	int numReqs; // number of supported Requests
	int flitsPerRequest; // number of buffers available per Requests
	simtime_t statStartTime; // in sec

	// state
	std::vector<cQueue> QByiReq; // Q[iReq]
	std::vector<int> curOutPort; // current packet output port per in request
	std::vector<int> curPktId; // the current packet id on the request (0 means not inside packet)

	// methods
	void sendFlit(NoCFlitMsg *msg);
	void handleCalcVCResp(NoCFlitMsg *msg);
	void handleCalcOPResp(NoCFlitMsg *msg);
	void handleInFlitMsg(NoCFlitMsg *msg);
	void handlePopMsg(NoCPopMsg *msg);
	void measureQlength();


	// statistics
	std::vector<std::vector<cStdDev> > qTimeBySrcDst_body_flits; // transmission time: queue time of body flits untill it sent (doesnt include inter delay of the router and the transmission time over the link)
	cOutVector QLenVec; // Queue length

	// we later define the attached extended info for a FLIT in the InPort
	class inPortFlitInfo* getFlitInfo(NoCFlitMsg *msg);

protected:
	virtual void initialize();
	virtual void handleMessage(cMessage *msg);
	virtual void finish();
public:
	virtual ~InPortScheduledSync();

};

#endif
