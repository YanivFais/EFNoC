// Copyright Yaniv Fais,Tel Aviv University

package efnoc.KaryNfly.S_256.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidth2Ary3Fly
{
  parameters:
    string routerType;
    string coreType;
  submodules:
  connections allowunconnected :
}
