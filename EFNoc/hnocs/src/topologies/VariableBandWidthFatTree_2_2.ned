// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidthFatTree_2_2
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
        @display("p=150, 50");
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
        @display("p=250, 50");
    }

    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=100, 200");
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
        @display("p=450, 50");
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
        @display("p=550, 50");
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
        numPorts = 4;
        @display("p=100, 500");
      gates:
        in[5];
        out[5];
    };

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 4;
        @display("p=400, 500");
      gates:
        in[5];
        out[5];
    };

    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=900, 100");
      gates:
        in[2];
        out[2];
    };
    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=950, 50");
    }

    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=1000, 100");
      gates:
        in[2];
        out[2];
    };
    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=1050, 50");
    }

    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 4;
        @display("p=900, 200");
      gates:
        in[5];
        out[5];
    };

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=1200, 100");
      gates:
        in[2];
        out[2];
    };
    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=1250, 50");
    }

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=1300, 100");
      gates:
        in[2];
        out[2];
    };
    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=1350, 50");
    }

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 4;
        @display("p=1200, 200");
      gates:
        in[5];
        out[5];
    };

    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=900, 500");
      gates:
        in[5];
        out[5];
    };

    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 4;
        @display("p=1200, 500");
      gates:
        in[5];
        out[5];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=100, 600");
      gates:
        in[3];
        out[3];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=400, 600");
      gates:
        in[3];
        out[3];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 2;
        @display("p=900, 600");
      gates:
        in[3];
        out[3];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 2;
        @display("p=1200, 600");
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
      router6.out[2] <--> VariableBandWidthLink <--> router16.in[0];
      router6.out[3] <--> VariableBandWidthLink <--> router17.in[0];
      router7.out[0] <--> VariableBandWidthLink <--> router2.in[3];
      router7.out[1] <--> VariableBandWidthLink <--> router5.in[3];
      router7.out[2] <--> VariableBandWidthLink <--> router18.in[0];
      router7.out[3] <--> VariableBandWidthLink <--> router19.in[0];
      router8.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router10.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router14.in[0];
      router10.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router11.out[0] <--> VariableBandWidthLink <--> router13.in[0];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router13.in[1];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router13.out[1] <--> VariableBandWidthLink <--> router12.in[0];
      router13.out[2] <--> VariableBandWidthLink <--> router14.in[1];
      router13.out[3] <--> VariableBandWidthLink <--> router15.in[1];
      router14.out[0] <--> VariableBandWidthLink <--> router10.in[2];
      router14.out[1] <--> VariableBandWidthLink <--> router13.in[2];
      router14.out[2] <--> VariableBandWidthLink <--> router16.in[1];
      router14.out[3] <--> VariableBandWidthLink <--> router17.in[1];
      router15.out[0] <--> VariableBandWidthLink <--> router10.in[3];
      router15.out[1] <--> VariableBandWidthLink <--> router13.in[3];
      router15.out[2] <--> VariableBandWidthLink <--> router18.in[1];
      router15.out[3] <--> VariableBandWidthLink <--> router19.in[1];
      router16.out[0] <--> VariableBandWidthLink <--> router6.in[2];
      router16.out[1] <--> VariableBandWidthLink <--> router14.in[2];
      router17.out[0] <--> VariableBandWidthLink <--> router6.in[3];
      router17.out[1] <--> VariableBandWidthLink <--> router14.in[3];
      router18.out[0] <--> VariableBandWidthLink <--> router7.in[2];
      router18.out[1] <--> VariableBandWidthLink <--> router15.in[2];
      router19.out[0] <--> VariableBandWidthLink <--> router7.in[3];
      router19.out[1] <--> VariableBandWidthLink <--> router15.in[3];
}
