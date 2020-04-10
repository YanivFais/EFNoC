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

#ifndef __EFNOC_SCHEDULED_CALC_H_
#define __EFNOC_SCHEDULED_CALC_H_

#include <omnetpp.h>
#include <NoCs_m.h>
#include <FlitMsgCtrl.h>
#include <ScheduleItem.h>
#include <map>
#include <tr1/unordered_map>
//
// The Out Port Calc class implements the local routing decision.
// Given a packet message it decides what router output port the message
// should be forwarded to
//
// Ports:
//   inout calc - through which the packets are received and returned
//
// Events:
//   NoCPacketMsg - the head FLIT to be processed and the lastOutPort to be set
//   then the same FLIT is returned on the clac port
//
// This implementation provides static routing (switch) based on ROM (file) which is already scheduled
// ===========================================
//

#include <SwitchSync.h>

class ScheduledCalc : public cSimpleModule
{
private:
	// parameters
	int corePort; // port index where the core module connects
	int timeslots; // number of time slots in each round
	const char *portType; // the name of the actual module used for Port_Ifc
	const char *coreType; // the name of the actual module used for Core_Ifc
	const char *scheduleFileName; // name of schedule file
	int id;

	// methods:

	// return true if the module is a "Port"
	bool isPortModule(cModule *mod);
	// Get the pointer to the remote Port module on the given port module
	cModule *getPortRemotePort(cModule *port);
	// return true if the module is a "Core"
	bool isCoreModule(cModule *mod);
	// Get the pointer to the remote Core module on the given port module
	cModule *getPortRemoteCore(cModule *port);
	// obtain the index of the current port out_sw port vector connecting to the port
	int getIdxOfSwPortConnectedToPort(cModule *port);
	// handle the message
	void handlePacketMsg(NoCFlitMsg* msg);

	void calcPorts();
	void readSchedule();

protected:
    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
public:
    typedef std::tr1::unordered_multimap<int,ScheduleItem *> DestinationToSchedule;
    typedef std::tr1::unordered_multimap<int,DestinationToSchedule> SlotToDestToSchedule;
    typedef std::tr1::unordered_map<int,SlotToDestToSchedule> VertexToSlotToSchedule;
    static VertexToSlotToSchedule vertexToSlotToDestToSchedule;

    std::map<int,int> neighboor2port;
    static int scheduleSize;
    SwitchSync * switchSync;
};

#endif
