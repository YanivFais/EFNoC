// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

channel VariableBandWidthLink extends ned.DelayChannel
{
  delay = 2ns;
}

network Robot_mesh_2x2.rtp
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=0, 30");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 4;
        @display("p=0, 0");
      gates:
        in[4];
        out[4];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=0, 30");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 4;
        @display("p=0, 0");
      gates:
        in[4];
        out[4];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=0, 30");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=0, 0");
      gates:
        in[4];
        out[4];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=0, 30");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 4;
        @display("p=0, 0");
      gates:
        in[4];
        out[4];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router1.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router2.in[0];
      router0.out[2] <--> VariableBandWidthLink <--> router3.in[0];
      router0.in[3] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[3] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router1.out[1] <--> VariableBandWidthLink <--> router2.in[1];
      router1.out[2] <--> VariableBandWidthLink <--> router3.in[1];
      router1.in[3] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[3] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router0.in[1];
      router2.out[1] <--> VariableBandWidthLink <--> router1.in[1];
      router2.out[2] <--> VariableBandWidthLink <--> router3.in[2];
      router2.in[3] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[3] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router3.out[1] <--> VariableBandWidthLink <--> router1.in[2];
      router3.out[2] <--> VariableBandWidthLink <--> router2.in[2];
      router3.in[3] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[3] <--> VariableBandWidthLink <--> core3.in; 
}
