// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;


network VariableBandWidthFatTree_1_2
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=100, 100");
      gates:
        in[2];
        out[2];
    };
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=150, 150");
    }

    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=200, 100");
      gates:
        in[2];
        out[2];
    };
    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=250, 150");
    }

    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=200, 200");
      gates:
        in[5];
        out[5];
    };

    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=400, 100");
      gates:
        in[2];
        out[2];
    };
    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=450, 150");
    }

    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=500, 100");
      gates:
        in[2];
        out[2];
    };
    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=550, 150");
    }

    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=200, 300");
      gates:
        in[3];
        out[3];
    };

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=400, 300");
      gates:
        in[3];
        out[3];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router2.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router2.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router2.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router2.out[3] <--> VariableBandWidthLink <--> router7.in[0];
      router3.out[0] <--> VariableBandWidthLink <--> router5.in[0];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router5.in[1];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router3.in[0];
      router5.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router5.out[2] <--> VariableBandWidthLink <--> router6.in[1];
      router5.out[3] <--> VariableBandWidthLink <--> router7.in[1];
      router6.out[0] <--> VariableBandWidthLink <--> router2.in[2];
      router6.out[1] <--> VariableBandWidthLink <--> router5.in[2];
      router7.out[0] <--> VariableBandWidthLink <--> router2.in[3];
      router7.out[1] <--> VariableBandWidthLink <--> router5.in[3];
}
