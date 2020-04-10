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

#ifndef ___SWITCH_SYNC_H_
#define ___SWITCH_SYNC_H_

#include <omnetpp.h>
#include <NoCs_m.h>
#include <HierRouter.h>
#include <map>
using namespace std;

#include "EFGlobals.h"

//
// Crossbar Switch Scheduler
//
// Ports:
//  inout in - the input of data and requests from the switch crossbar
//  inout out - the NoC router output
//
// Event:
//   FLIT/Packet - the data being provided from the InPort
//
//
class SwitchSync : public Sched
{
private:
	// parameters
	int numVCs;
    int flitSize_B;           // flitSize
    simtime_t statStartTime; // in sec
    int timeslots; // number of timeslots in period


	// Out link info
	cDatarateChannel *chan;
	double data_rate ;
	bool givenTclk; 		// if true uset_clk a parameter from ini file
	// state
	int numInPorts;
	int numReqs;  // total number of requests
	std::vector< int > vcUsage; // count number of pending reqs per VC
	std::vector<int> credits; // credits per VC (always have)

	cMessage *popMsg; // this is the clock...
	double tClk_s;    // clock cycle time
	bool isDisconnected; // if true means there is no InPort or Core on the other side
	int numSends; // counts the number of flit sends through the egress link connected to the sched

	// Statistics
	cStdDev linkUtilization; // the egress link utilization connected to the sched

	// methods
	void handleFlitMsg(NoCFlitMsg *msg );
	void handlePopMsg();

	int edge_num; // the edge which this is controlling
	int id;
	map<int,CommEdge> commEdges;


protected:
    virtual void initialize(int stage);
    virtual void handleMessage(cMessage *msg);
    virtual void finish();
public:
    virtual ~SwitchSync();
    virtual const std::vector<int>* getCredits() const { return &credits; }
    virtual const std::vector<int>* getVCUsage() const { return &vcUsage; }
    virtual void incrVCUsage(int) {}
    virtual int numInitStages() const { return 2; }
    int slot; // current slot in period
};

#endif
