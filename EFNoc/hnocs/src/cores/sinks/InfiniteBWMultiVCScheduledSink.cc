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

// Behavior
// This sink is simple - it assumes NO delay on receiving packets
//
// PktId check is valid only for single source .
//
#include "InfiniteBWMultiVCScheduledSink.h"
#include <stdio.h>
#include "ScheduledSrc.h"
using namespace std;

Define_Module(InfiniteBWMultiVCScheduledSink);

void InfiniteBWMultiVCScheduledSink::initialize() {
	numVCs = par("numVCs");

	end2EndLatency.setName("end-to-end-latency-ns"); // end-to-end latency per flit
	networkLatency.setName("network-latency-ns"); // network-latency per flit
	packetLatency.setName("packet-network-latency-ns"); // network-latency per packet

	// statistics for head-flits only
	SoPEnd2EndLatency.setName("SoP-end-to-end-latency-ns");
	SoPLatency.setName("SoP-network-latency-ns");
	SoPQTime.setName("SoP-queueing-time-ns");

	// statistics for tail-flits only
	EoPEnd2EndLatency.setName("EoP-end-to-end-latency-ns");
	EoPLatency.setName("EoP-network-latency-ns");
	EoPQTime.setName("EoP-queueing-time-ns");

	numReceivedPkt.setName("number-received-packets");

	// Vectors
	end2EndLatencyVec.setName("end-to-end-latency-ns");

	numRecPkt = 0;

	vcFLITs.resize(numVCs, 0);
	vcFlitIdx.resize(numVCs, 0);
	curPktId.resize(numVCs, -1);

	SoPFirstNetTime.resize(numVCs, 0);
	statStartTime = par("statStartTime");


	SoPEnd2EndLatencyHist.setName("SoP-E2E-Latency-Hist");

    source = check_and_cast<ScheduledSrc*>(getParentModule()->getSubmodule("source",0));
}


void InfiniteBWMultiVCScheduledSink::handleMessage(cMessage *msg) {
	NoCFlitMsg *flit = dynamic_cast<NoCFlitMsg*> (msg);
	int vc = flit->getVC();
	source->recieveMsg(flit);

	// some statistics
	if (simTime() > statStartTime) {
		vcFLITs[vc]++;

		if (flit->getFirstNet()) {
			throw cRuntimeError(
					"-E- BUG - received flit on vc %d, but firstNet flag set is true !",
					vc);
		}

		double eed = (simTime().dbl() - msg->getCreationTime().dbl());
		double d = (simTime().dbl() - flit->getFirstNetTime().dbl());
		double eed_ns = eed * 1e9;
		double d_ns = d * 1e9;

		end2EndLatency.collect(eed_ns);
		networkLatency.collect(d_ns);
		end2EndLatencyVec.record(eed_ns);

		if (flit->getType() == NOC_START_FLIT) {
			SoPEnd2EndLatency.collect(eed_ns);
			SoPEnd2EndLatencyHist.collect(eed_ns);

			SoPLatency.collect(d_ns);
			SoPQTime.collect(1e9 * (flit->getInjectTime().dbl()
					- msg->getCreationTime().dbl()));

			if (SoPFirstNetTime[vc] == 0) {
				SoPFirstNetTime[vc] = flit->getFirstNetTime();
				EV<< "-I- " << getFullPath() << "Assign SoPFirstNetTime[" << vc <<"]=" <<SoPFirstNetTime[vc] << endl;
			} else {
				throw cRuntimeError(
						"-E- BUG - SoPFirstNetTime[%d] != 0 at SoP statistics procedure ",
						vc);
			}
			numRecPkt++;
		}

		if (flit->getType() == NOC_END_FLIT) {
			EoPEnd2EndLatency.collect(eed_ns);
			EoPLatency.collect(d_ns);
			EoPQTime.collect(1e9 * (flit->getInjectTime().dbl() - msg->getCreationTime()).dbl());
			if (SoPFirstNetTime[vc] != 0) { // avoid collecting statistics when statStartTime is between SoP and EoP
				packetLatency.collect(1e9 * (simTime().dbl() - SoPFirstNetTime[vc].dbl()));
			}
			SoPFirstNetTime[vc] = 0;
			EV<< "-I- " << getFullPath() << "Assign statistics to [" << vc <<"]" << endl;

		}

	}

	// should implement re-order buffer
	delete msg;
}

void InfiniteBWMultiVCScheduledSink::finish() {
	char name[32];
	double totalFlits = 0;
	int flitSize_B = par("flitSize"); // in bytes
	for (int vc = 0; vc < numVCs; vc++) {
		sprintf(name, "flit-per-vc-%d", vc);
		recordScalar(name, vcFLITs[vc]);
		totalFlits += vcFLITs[vc];
	}
	if (simTime() > statStartTime) {
		SoPEnd2EndLatency.record();
		SoPEnd2EndLatencyHist.record();
		SoPLatency.record();
		SoPQTime.record();
		EoPEnd2EndLatency.record();
		EoPLatency.record();
		EoPQTime.record();

		packetLatency.record();
		networkLatency.record();
		end2EndLatency.record();

		numReceivedPkt.collect(numRecPkt);
		numReceivedPkt.record();
		double BW_MBps = 1e-6 * totalFlits * flitSize_B / (simTime().dbl()- statStartTime);
		recordScalar("Sink-Total-BW-MBps", BW_MBps);
	}
}
