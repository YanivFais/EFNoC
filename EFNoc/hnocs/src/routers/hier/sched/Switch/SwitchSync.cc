//
// Copyright (C) Yaniv Fais, Tel Aviv University
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
// Clk'ed according to the outgoing link rate, gets clk only when it has something to arbitrate ...

#include "SwitchSync.h"
#include "ScheduledSrc.h"

Define_Module(SwitchSync)
;

#include <stdio.h>
#include <vector>
using namespace std;

void SwitchSync::initialize(int stage) {
    if (stage==0) {
        numInPorts = gateSize("in");
        numVCs = par("numVCs");
        for (int v=0;v<numVCs;v++)
        	credits.push_back(1);
        flitSize_B = par("flitSize");
        givenTclk=par("givenTclk");
        timeslots=par("timeslots");
        vcUsage.resize(numVCs, 0);
        WATCH_VECTOR(vcUsage);
        slot = 0;

        // link utilization statistics
        linkUtilization.setName("link-utilization");
        statStartTime = par("statStartTime");
        numSends = 0;

        isDisconnected = (gate("out$o", 0)->getPathEndGate()->getType()
                != cGate::INPUT);

   }
    else {
        // start the clock
        if (!isDisconnected) {

        	id = this->getParentModule()->getParentModule()->par("id");

            // obtain the data rate of the outgoing link
            cGate *g = gate("out$o", 0)->getNextGate()->getNextGate();
            if (!g->getChannel()) {
                throw cRuntimeError("-E- no out$o 0 gate for module %s ???",
                        g->getFullPath().c_str());
            }
            edge_num = ScheduledSrc::InitEdge(g,id,commEdges);

            double given_tClks=par("tClk");
            tClk_s = given_tClks;
            EV<< "-I- " << getFullPath() << " Clock is:" << tClk_s<< " (givenClk=" << given_tClks << ")"<< endl;

            // generate 1st clk
            popMsg = new cMessage("pop");
            popMsg->setKind(NOC_POP_MSG);
            popMsg->setSchedulingPriority(5);
            scheduleAt(simTime()+tClk_s, popMsg);
        }
	}
}

// a flit is received on the input so send it to the output
// also update Req waiting for last flit
void SwitchSync::handleFlitMsg(NoCFlitMsg *msg) {
	//int vc = msg->getVC();
	//int ip = msg->getArrivalGate()->getIndex();

	ScheduledSrc::setFlitTransmitStat(edge_num,msg);
	send(msg, "out$o", 0);
	if (simTime()> statStartTime) {
	    numSends++;
	}

}

void SwitchSync::handleMessage(cMessage *msg) {
	int msgType = msg->getKind();
	if (msgType == NOC_FLIT_MSG) {
		handleFlitMsg((NoCFlitMsg*) msg);
	} else if (msgType == NOC_POP_MSG) {
		// just update clock
		slot=(slot+1)%timeslots;
		scheduleAt(simTime() + tClk_s, msg);
	} else {
		throw cRuntimeError("Do not know how to handle message of type %d",
				msg->getKind());
		delete msg;
	}

}

void SwitchSync::finish() {
    if (!isDisconnected && (simTime() > statStartTime)) {
        int numClks=(int) round((simTime().dbl()-statStartTime.dbl())/tClk_s);
        linkUtilization.collect(100*(double) numSends/numClks);
        linkUtilization.record();
    }else{
        linkUtilization.collect(-1); // invalid statistics
        linkUtilization.record();
    }

}


SwitchSync::~SwitchSync() {
	// cleanup owned Req
	if ((!isDisconnected) && (popMsg)) {
		cancelAndDelete(popMsg);
	}
}
