// Copyright Yaniv Fais,Tel Aviv University

package efnoc.benesh.S_256.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthBenes_4_2
{
  parameters:
    string routerType;
    string coreType;
  submodules:
  connections allowunconnected :
}
