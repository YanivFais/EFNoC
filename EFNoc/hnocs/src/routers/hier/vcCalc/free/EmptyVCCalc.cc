// Copyright Yaniv Fais,Tel Aviv University
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

#include "EmptyVCCalc.h"

Define_Module(EmptyVCCalc);

// based on the assumed structure of a Port containing the VcCalc
// connected by sw_in to the other port Sched
Sched *
EmptyVCCalc::getSchedOnPort(int op) {
	if (op >= getParentModule()->gateSize("sw_in")) return NULL;
	cGate *oGate = getParentModule()->gate("sw_in", op);
	if (!oGate) return NULL;
	cGate *remLowestGate = oGate->getPathEndGate();
	if (!remLowestGate) return NULL;
	cModule *mod = remLowestGate->getOwnerModule();
	if (mod->getModuleType() != cModuleType::get(schedType)) return NULL;
	return dynamic_cast<Sched*>(mod);
}

void EmptyVCCalc::initialize()
{
}

// based on the available credits on the msg outPort
// select the first VC with the max num credits
void EmptyVCCalc::handlePacketMsg(NoCFlitMsg *msg)
{
	msg->setVC(0);
	send(msg, "calc$o");
}

void EmptyVCCalc::handleMessage(cMessage *msg)
{
    int msgType = msg->getKind();
    if ( msgType == NOC_FLIT_MSG ) {
    	handlePacketMsg( (NoCFlitMsg*)msg);
    } else {
    	throw cRuntimeError("Does not know how to handle message of type %d", msg->getKind());
    	delete msg;
    }
}
