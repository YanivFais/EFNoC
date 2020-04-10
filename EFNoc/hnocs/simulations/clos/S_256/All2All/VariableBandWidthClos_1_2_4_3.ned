// Copyright Yaniv Fais,Tel Aviv University

package efnoc.clos.S_256.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthClos_1_2_4_3
{
  parameters:
    string routerType;
    string coreType;
  submodules:
  connections allowunconnected :
}
