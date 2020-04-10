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

#include "ScheduledCalc.h"
#include <NoCs_m.h>
#include <map>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include "EFGlobals.h"
#include <ScheduledSrc.h>

using namespace std;
Define_Module(ScheduledCalc);

ScheduledCalc::VertexToSlotToSchedule ScheduledCalc::vertexToSlotToDestToSchedule;
int ScheduledCalc::scheduleSize = 0;

// return true if the provided cModule pointer is a Port
bool
ScheduledCalc::isPortModule(cModule *mod)
{
	return(mod->getModuleType() == cModuleType::get(portType));
}

// return the pointer to the port on the other side of the given port or NULL
cModule *
ScheduledCalc::getPortRemotePort(cModule *port)
{
	cGate *gate = port->gate("out$o");
	if (!gate) return NULL;
	cGate *remGate = gate->getPathEndGate()->getPreviousGate();
	if (!remGate) return NULL;
	cModule *neighbour = remGate->getOwnerModule();
	if (!isPortModule(neighbour)) return NULL;
	if (neighbour == port) return NULL;
	return neighbour;
}

// return true if the provided cModule pointer is a Core
bool
ScheduledCalc::isCoreModule(cModule *mod)
{
	return(mod->getModuleType() == cModuleType::get(coreType));
}

// return the pointer to the Core on the other side of the given port or NULL
cModule *
ScheduledCalc::getPortRemoteCore(cModule *port)
{
	cGate *gate = port->gate("out$o");
	if (!gate) return NULL;
	cGate *remGate = gate->getPathEndGate()->getPreviousGate();
	if (!remGate) return NULL;
	cModule *neighbour = remGate->getOwnerModule();
	if (!isCoreModule(neighbour)) return NULL;
	if (neighbour == port) return NULL;
	return neighbour;
}

// Given the port pointer find the index idx such that sw_out[idx] 
// connect to that port
int
ScheduledCalc::getIdxOfSwPortConnectedToPort(cModule *port)
{
	for (int i=0; i< getParentModule()->gateSize("sw_in"); i++) {
		cGate *oGate = getParentModule()->gate("sw_in", i);
		if (!oGate) return -1;
		cGate *remGate = oGate->getPathEndGate()->getPreviousGate();
		if (!remGate) return -1;
		cModule *neighbour = remGate->getOwnerModule();
		if (neighbour == port)
			return i;
	}
	return -1;
}

void ScheduledCalc::calcPorts()
{
    corePort  = -1;
    cModule *router = getParentModule()->getParentModule();
    // go over all the router ports and check their remote side if they are of type "Port"
    // in , out, sw_in, sw_out,sw_ctrl_in,sw_ctrl_out
    for (cModule::SubmoduleIterator iter(router); !iter.end(); iter++) {
    	if (! isPortModule(iter())) continue;
        cModule *port = iter();

        for (cModule::SubmoduleIterator subIter(port); !subIter.end(); subIter++) {
        	string type = subIter()->getModuleType()->getFullName();
        	if (type.find(".SwitchSync")!=string::npos)
        		switchSync = dynamic_cast<SwitchSync*>(subIter());
        }

        // get the port module on the other side of the port
        cModule *remPort = getPortRemotePort(port);
        cModule *remCore = getPortRemoteCore(port);

        // obtain the idx of this port sw_out[idx] that connects to port
        int portIdx = getIdxOfSwPortConnectedToPort(port);
        int remID=-1;
        cModule *remPort2=NULL;
        int remID2=-1;
        if (remCore) {
            // remote side is the core connected to the router
            corePort = portIdx;
        } else if (remPort) {
            // remote side is another router port
            remID = remPort->getParentModule()->par("id");
            neighboor2port[remID] = portIdx;
            remPort2 = getPortRemotePort(remPort);
            remID2 = remPort2 ? remPort2->getParentModule()->par("id") : 0;
           // remPort->gate("out[0]$o");
            //int cnt = 0;
        }
        //cout << "CALC:" << id << " " << this->getFullPath() << " " << portIdx << "->" << remID << " " << corePort << ":" << port->getFullPath() <<"," << (remPort ? remPort->getFullPath() : "NA") << ";" << (remPort2 ? remPort2->getFullName() : "NA") << endl;
    }


    if (corePort < 0) {
        EV << "-W- " << getParentModule()->getFullPath()
            << " could not find corePort (of coreType:" << coreType << ")" << endl;
    }
}

void ScheduledCalc::initialize()
{
    coreType = par("coreType");
    portType = par("portType");

    scheduleFileName = par("scheduleFileName");
    timeslots = par("timeslots");
    readSchedule();

    // the id is supposed to be on the router
    cModule *router = getParentModule()->getParentModule();
    id = router->par("id");
    calcPorts();
    WATCH(corePort);
}

void ScheduledCalc::readSchedule()
{
    if (!vertexToSlotToDestToSchedule.empty())
        return;
    ifstream ifile(scheduleFileName);
    if (!ifile) {
        throw cRuntimeError("Error reading schedule file %s",scheduleFileName);
    }

    string line;
    while (getline(ifile,line))
    {
        if ( (line.size() == 0) ||
             ((line.size() >= 1) && (line[0] == '#') ))
        {
            continue;  // comment
        }
        else
        {
            stringstream ss (line);
            string token;
            ScheduleItem * pSched = ScheduleItem::InitFromString(line);
            assert(ScheduledSrc::requests.GetRequests().size()>pSched->GetRequestNum());
            CommunicationRequest * pReq = ScheduledSrc::requests.GetRequests()[pSched->GetRequestNum()];
            if (pSched->GetSender()!=pReq->GetSource()) // we count only non network interface
            	scheduleSize++;
            if (pSched != NULL) {
            	VertexToSlotToSchedule::iterator vIt = vertexToSlotToDestToSchedule.find(pSched->GetSender());
            	if (vIt==vertexToSlotToDestToSchedule.end()) {
            		vertexToSlotToDestToSchedule[pSched->GetSender()] = SlotToDestToSchedule();
            		vIt = vertexToSlotToDestToSchedule.find(pSched->GetSender());
            	}
            	SlotToDestToSchedule::iterator sIt = vIt->second.find(pSched->GetTimeSlot());
            	if (sIt==vIt->second.end()) {
            		vIt->second.insert(make_pair(pSched->GetTimeSlot(),DestinationToSchedule()));
            		sIt = vIt->second.find(pSched->GetTimeSlot());
            	}
            	sIt->second.insert(make_pair(pSched->GetReciever(),pSched));
            }
        }
    }

    ifile.close();
}

void ScheduledCalc::handlePacketMsg(NoCFlitMsg* msg)
{
    int swOutPortIdx=-1;
    int routeIn = msg->getSrcId();
    int schedTimeslot = -1,t,selectedSlot=-1;
    bool found = false;
    VertexToSlotToSchedule::const_iterator vIter = vertexToSlotToDestToSchedule.find(id);
    if (vIter!=vertexToSlotToDestToSchedule.end()) {
    	for (t=0,schedTimeslot=switchSync->slot;t<timeslots && !found;t++,schedTimeslot=(schedTimeslot+1)%timeslots) {
			SlotToDestToSchedule::const_iterator sIter = vIter->second.find(schedTimeslot);
			if (sIter != vIter->second.end()) {
//				for (DestinationToSchedule::const_iterator pIter=sIter->second.find(msg->getDstId());pIter!=sIter->second.end() && !found;pIter++) {
				for (DestinationToSchedule::const_iterator pIter=sIter->second.begin();pIter!=sIter->second.end() && !found;pIter++) {
					//cout << msg->getFullName() << " req# " << pIter->second->GetRequestNum() << " src=" << pIter->second->GetSender() << " rcv=" << pIter->second->GetReciever() << endl;
					if ((msg->getSL()==pIter->second->GetRequestNum())) {
						int to = pIter->second->GetReciever();
						swOutPortIdx = neighboor2port[to];
						DBG << "Node " << id << ":" << simTime()<< " Routing " << msg->getSrcId() << "->" << msg->getDstId() << "," << pIter->second->GetSender() << "->" << to << " request=" << msg->getSL() << endl;
						msg->setSrcId(id);
						msg->setDstId(to);
						selectedSlot = schedTimeslot;
						found = true;
					}
			   } // TODO: multiple incoming/outgoing edges
			}
    	}
    }

    if (msg->getDstId()==id) {
        swOutPortIdx = corePort;
		DBG << "Node " << id << ":" << simTime()<< " Reached core " << msg->getSrcId() << "->" << msg->getDstId() << " request=" << msg->getSL() << " inject=" << msg->getInjectTime() << endl;
    }
    if (swOutPortIdx < 0) {
    		throw cRuntimeError("Routing dead end at %s"
    				"for destination %d ,src %d,request %d",
    				getParentModule()->getFullPath().c_str(),
    				msg->getDstId(),msg->getSrcId(),msg->getSL());
    }
    // TODO - move into a common header for msgs ?
	cObject *obj = msg->getControlInfo();
	if (obj == NULL) {
		throw cRuntimeError("-E- %s BUG - No Control Info for FLIT: %s",
				getFullPath().c_str(), msg->getFullName());
	}

	inPortFlitInfo *info = dynamic_cast<inPortFlitInfo*>(obj);
	info->outPort = swOutPortIdx;
	simtime_t txTime;
	int cycles = (selectedSlot>switchSync->slot) ? (selectedSlot-switchSync->slot) : selectedSlot + (timeslots-switchSync->slot);
	txTime = cycles*ScheduledSrc::tClk_s;
	if ((!(msg->getDstId()==id)) && (((routeIn==id) && (cycles!=timeslots)) || ((routeIn!=id) && (cycles!=timeslots)))) {
		msg->setKind(-1); // need to wait..
		scheduleAt(simTime()+txTime,msg);
	}
	else
		send(msg, "calc$o");
}

void ScheduledCalc::handleMessage(cMessage *msg)
{
    int msgType = msg->getKind();
    if ( msgType == NOC_FLIT_MSG ) {
    	handlePacketMsg((NoCFlitMsg*)msg);
    } else if (msgType==-1) {
    	msg->setKind(NOC_FLIT_MSG);
		send(msg, "calc$o");
    } else {
    	throw cRuntimeError("Does not know how to handle message of type %d", msg->getKind());
    	delete msg;
    }
}
