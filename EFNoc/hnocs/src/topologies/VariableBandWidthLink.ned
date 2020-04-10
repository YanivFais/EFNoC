
package hnocs.topologies;
//package sync.RobotMesh2x2;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;


channel VariableBandWidthLink extends ned.DelayChannel
{
	parameters:
	    delay = 2ns;
		double bw;
		int edge_num;
}
