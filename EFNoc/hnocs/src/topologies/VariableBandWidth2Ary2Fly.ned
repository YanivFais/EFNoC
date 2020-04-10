// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidth2Ary2Fly
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=200, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=200, 100");
      gates:
        in[2];
        out[2];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=200, 230");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=200, 200");
      gates:
        in[2];
        out[2];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=200, 330");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=200, 300");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=200, 430");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=200, 400");
      gates:
        in[2];
        out[2];
    };

    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 4;
        @display("p=400, 400");
      gates:
        in[5];
        out[5];
    };

    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 4;
        @display("p=600, 200");
      gates:
        in[5];
        out[5];
    };

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 4;
        @display("p=600, 400");
      gates:
        in[5];
        out[5];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=800, 130");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=800, 100");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=800, 230");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=800, 200");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=800, 330");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=800, 300");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=800, 430");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=800, 400");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router4.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router5.in[0];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router5.in[1];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router4.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router4.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router4.out[3] <--> VariableBandWidthLink <--> router7.in[0];
      router5.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router5.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router5.out[2] <--> VariableBandWidthLink <--> router7.in[1];
      router5.out[3] <--> VariableBandWidthLink <--> router6.in[1];
      router6.out[0] <--> VariableBandWidthLink <--> router4.in[2];
      router6.out[1] <--> VariableBandWidthLink <--> router5.in[3];
      router6.out[2] <--> VariableBandWidthLink <--> router8.in[0];
      router6.out[3] <--> VariableBandWidthLink <--> router9.in[0];
      router7.out[0] <--> VariableBandWidthLink <--> router4.in[3];
      router7.out[1] <--> VariableBandWidthLink <--> router5.in[2];
      router7.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router7.out[3] <--> VariableBandWidthLink <--> router11.in[0];
      router8.out[0] <--> VariableBandWidthLink <--> router6.in[2];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router6.in[3];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router7.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router7.in[3];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
}
