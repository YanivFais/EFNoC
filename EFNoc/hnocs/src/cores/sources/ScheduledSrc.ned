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

package hnocs.cores.sources;

//
// Message Source according to schedule
//
simple ScheduledSrc like Source_Ifc 
{
    parameters:
        int             timeslots;                   // number of timeslots in round
        int             iterations;                  // number of iterations of period or trace
        int             srcId;                       // must be globally unique
        volatile int    pktVC;                       // the VC to be used for packets
        volatile double flitArrivalDelay @unit(s);   // Inter Flit delay [sec] 
        int             flitSize @unit(byte);        // FLIT size [bytes]
        double          statStartTime @unit(s);      // start time for recording statistics [sec]
        bool			isTrace; 					 // If true uses a trace file for flitArrivalDelay
        string 			fileName;					 // trace filename
		double tClk @unit(s); // clock of transmission
           
    @display("i=block/source");
    gates: 
        inout out;
}
