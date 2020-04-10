// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;


network VariableBandWidthBenes_2_2
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 4;
        @display("p=200, 100");
      gates:
        in[5];
        out[5];
    };

    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 4;
        @display("p=200, 200");
      gates:
        in[5];
        out[5];
    };

    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=300, 100");
      gates:
        in[5];
        out[5];
    };

    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 4;
        @display("p=300, 200");
      gates:
        in[5];
        out[5];
    };

    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 4;
        @display("p=400, 100");
      gates:
        in[5];
        out[5];
    };

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
        @display("p=100, 100");
      gates:
        in[2];
        out[2];
    };
    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=150, 50");
    }

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=500, 100");
      gates:
        in[2];
        out[2];
    };
    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=550, 50");
    }

    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=100, 200");
      gates:
        in[2];
        out[2];
    };
    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=150, 150");
    }

    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=500, 200");
      gates:
        in[2];
        out[2];
    };
    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=550, 150");
    }

    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=100, 300");
      gates:
        in[2];
        out[2];
    };
    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=150, 250");
    }

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=500, 300");
      gates:
        in[2];
        out[2];
    };
    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=550, 250");
    }

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=100, 400");
      gates:
        in[2];
        out[2];
    };
    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=150, 350");
    }

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=500, 400");
      gates:
        in[2];
        out[2];
    };
    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=550, 350");
    }

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router0.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router0.out[3] <--> VariableBandWidthLink <--> router8.in[0];
      router1.out[0] <--> VariableBandWidthLink <--> router2.in[1];
      router1.out[1] <--> VariableBandWidthLink <--> router3.in[1];
      router1.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router1.out[3] <--> VariableBandWidthLink <--> router12.in[0];
      router2.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router2.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router2.out[2] <--> VariableBandWidthLink <--> router4.in[0];
      router2.out[3] <--> VariableBandWidthLink <--> router5.in[0];
      router3.out[0] <--> VariableBandWidthLink <--> router0.in[1];
      router3.out[1] <--> VariableBandWidthLink <--> router1.in[1];
      router3.out[2] <--> VariableBandWidthLink <--> router4.in[1];
      router3.out[3] <--> VariableBandWidthLink <--> router5.in[1];
      router4.out[0] <--> VariableBandWidthLink <--> router2.in[2];
      router4.out[1] <--> VariableBandWidthLink <--> router3.in[2];
      router4.out[2] <--> VariableBandWidthLink <--> router7.in[0];
      router4.out[3] <--> VariableBandWidthLink <--> router9.in[0];
      router5.out[0] <--> VariableBandWidthLink <--> router2.in[3];
      router5.out[1] <--> VariableBandWidthLink <--> router3.in[3];
      router5.out[2] <--> VariableBandWidthLink <--> router11.in[0];
      router5.out[3] <--> VariableBandWidthLink <--> router13.in[0];
      router6.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router4.in[2];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router0.in[3];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router4.in[3];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router1.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router5.in[2];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router1.in[3];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router5.in[3];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
}
