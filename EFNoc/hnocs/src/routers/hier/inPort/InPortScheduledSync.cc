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

#include "InPortScheduledSync.h"

// Behavior:
// Just forward to calc, no credits,no req,no gnt !
// NOTE: on each VC there is only 1 packet being received at a given time
// Also there is one packet being arbitrated on each out port
//
Define_Module(InPortScheduledSync);

void InPortScheduledSync::initialize() {
	numReqs = par("numReqs");
	flitsPerRequest = par("flitsPerRequest");
	statStartTime = par("statStartTime");

	QByiReq.resize(numReqs);
	curOutPort.resize(numReqs);
	curPktId.resize(numReqs, 0);

	QLenVec.setName("Inport_total_Queue_Length");

}

// obtain the attached info
inPortFlitInfo* InPortScheduledSync::getFlitInfo(NoCFlitMsg *msg) {
	cObject *obj = msg->getControlInfo();
	if (obj == NULL) {
		throw cRuntimeError("-E- %s BUG - No Control Info for FLIT: %s",
				getFullPath().c_str(), msg->getFullName());
	}

	inPortFlitInfo *info = dynamic_cast<inPortFlitInfo*> (obj);
	return info;
}


// when we get here it is assumed there is NO messages on the out port
void InPortScheduledSync::sendFlit(NoCFlitMsg *msg) {
	int inVC = getFlitInfo(msg)->inVC;
	int outPort = getFlitInfo(msg)->outPort;

	if (gate("out", outPort)->getTransmissionChannel()->isBusy()) {
		EV << "-E-" << getFullPath() << " out port of InPort is busy! will be available in " << (gate("out", outPort)->getTransmissionChannel()->getTransmissionFinishTime()-simTime()) << endl;
		throw cRuntimeError(
				"-E- Out port of InPort is busy!");
	}

	EV << "-I- " << getFullPath() << " sending Flit from inVC: " << inVC
	   << " through outPort:" << outPort << " on VC: " << msg->getVC() << endl;

	// delete the info object
	inPortFlitInfo *info = (inPortFlitInfo*) msg->removeControlInfo();
	delete info;

	// send to Sched
	send(msg, "out", outPort);

}

// Handle the Packet when it is back from the VC calc
// store the outVC in curOutVC[inVC] for next pops and Send the req
void InPortScheduledSync::handleCalcVCResp(NoCFlitMsg *msg) {
	// store the calc out VC in the current received packet on the inVC
	inPortFlitInfo *info = getFlitInfo(msg);
	int inVC = info->inVC;
	int outVC = msg->getVC();

	int inReq  = msg->getSL();
	// we queue the flits on their inVC
	if (QByiReq[inReq].isEmpty()) {
		QByiReq[inReq].insert(msg);
	} else {
		QByiReq[inReq].insertBefore(QByiReq[inReq].front(), msg);
	}

	// Total queue size
	measureQlength();

	EV << "-I- " << getFullPath() << " Packet:" << (msg->getPktId() >> 16)
	   << "." << (msg->getPktId() % (1<< 16))
	   << " will be sent on VC:" << outVC << endl;


    NoCFlitMsg* foundFlit = NULL;
    if (!QByiReq[inReq].empty()) {
        foundFlit = (NoCFlitMsg*)QByiReq[inReq].pop();


        // If NOC_END_FLIT, then check if there is another packet, if yes send to calcVC
        if (foundFlit->getType() == NOC_END_FLIT && !QByiReq[inReq].empty()) {
            NoCFlitMsg* nextPkt = (NoCFlitMsg*)QByiReq[inReq].pop();
            // need to get oVC and the response will send the req
            send(nextPkt,"calcVc$o");
        }

        sendFlit(foundFlit);
    }
}

// Handle the packet when it is back from the Out Port calc
// Keep track of current out port per inVC
// if the Q is empty send to calc out VC or else Q it
void InPortScheduledSync::handleCalcOPResp(NoCFlitMsg *msg) {
	int inVC = getFlitInfo(msg)->inVC;

	curOutPort[inVC] = getFlitInfo(msg)->outPort;
	EV << "-I- " << getFullPath() << " Packet:" << (msg->getPktId() >> 16)
	   << "." << (msg->getPktId() % (1<< 16))
	   << " will be sent to port:" << curOutPort[inVC] << endl;

	int inReq = msg->getSL();
	// buffering is by inVC
	if (QByiReq[inReq].length() >= flitsPerRequest) {
		throw cRuntimeError("-E- VC %d is already full receiving packet:%d",
				inVC, msg->getPktId());
	}

	// send it to get the out VC
	if (QByiReq[inReq].empty()) {
		send(msg,"calcVc$o");
	} else {
		// we queue the flits on their inVC
		QByiReq[inReq].insert(msg);

		// Total queue size
		measureQlength();
	}
}

// handle received FLIT
void InPortScheduledSync::handleInFlitMsg(NoCFlitMsg *msg) {
	// allocate control info
	inPortFlitInfo *info = new inPortFlitInfo;
	msg->setControlInfo(info);
	int inVC = msg->getVC();
	info->inVC = inVC;

	// record the first time the flit is transmitted by sched, in order to mask source-router latency effects
	if (msg->getFirstNet()) {
		msg->setFirstNetTime(simTime());
		msg->setFirstNet(false);
	}


	curPktId[inVC] = msg->getPktId();

	// for first flit we need to calc outVC and outPort
	EV << "-I- " << getFullPath() << " Received Packet:"
	   << (msg->getPktId() >> 16) << "." << (msg->getPktId() % (1<< 16))
	   << endl;

	// send it to get the out port calc
	send(msg, "calcOp$o");
}

void InPortScheduledSync::handleMessage(cMessage *msg) {
	int msgType = msg->getKind();
	cGate *inGate = msg->getArrivalGate();
	if (msgType == NOC_FLIT_MSG) {
		if (inGate == gate("calcVc$i")) {
			handleCalcVCResp((NoCFlitMsg*) msg);
		} else if (inGate == gate("calcOp$i")) {
			handleCalcOPResp((NoCFlitMsg*) msg);
		} else {
			handleInFlitMsg((NoCFlitMsg*) msg);
		}
	}
    else {
		throw cRuntimeError("Does not know how to handle message of type %d",
				msg->getKind());
		delete msg;
	}
}

InPortScheduledSync::~InPortScheduledSync() {
	// clean up messages at QByiVC
	numReqs = par("numReqs");
	NoCFlitMsg* msg = NULL;
	for (int req = 0; req < numReqs; req++) {
		while (!QByiReq[req].empty()) {
			msg = (NoCFlitMsg*) QByiReq[req].pop();
			cancelAndDelete(msg); //cancelAndDelete?!
		}
	}
}

void InPortScheduledSync::measureQlength() {
	// measure Total queue length
	if (simTime() > statStartTime) {
		int numReqs = par("numReqs");
		int Qsize = 0;
		for (int req = 0; req < numReqs; req++) {
			Qsize = Qsize + QByiReq[req].length();
		}
		QLenVec.record(Qsize);
	}
}

void InPortScheduledSync::finish() {
}

