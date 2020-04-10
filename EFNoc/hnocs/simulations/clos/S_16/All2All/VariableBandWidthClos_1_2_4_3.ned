// Copyright Yaniv Fais,Tel Aviv University

package efnoc.clos.S_16.All2All;

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
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=100, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=100, 100");
      gates:
        in[2];
        out[2];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=500, 130");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=500, 100");
      gates:
        in[2];
        out[2];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=100, 230");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=100, 200");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=500, 230");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=500, 200");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=100, 330");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=100, 300");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=500, 330");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=500, 300");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=100, 430");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=100, 400");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=500, 430");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=500, 400");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=100, 530");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=100, 500");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=500, 530");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=500, 500");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=100, 630");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=100, 600");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=500, 630");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=500, 600");
      gates:
        in[2];
        out[2];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=100, 730");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=100, 700");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=500, 730");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=500, 700");
      gates:
        in[2];
        out[2];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=100, 830");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 2;
        @display("p=100, 800");
      gates:
        in[2];
        out[2];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=500, 830");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=500, 800");
      gates:
        in[2];
        out[2];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 3;
        @display("p=400, 300");
      gates:
        in[4];
        out[4];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 3;
        @display("p=400, 400");
      gates:
        in[4];
        out[4];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 3;
        @display("p=200, 100");
      gates:
        in[4];
        out[4];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 3;
        @display("p=200, 200");
      gates:
        in[4];
        out[4];
    };

    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 3;
        @display("p=200, 300");
      gates:
        in[4];
        out[4];
    };

    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 3;
        @display("p=200, 400");
      gates:
        in[4];
        out[4];
    };

    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 8;
        @display("p=300, 100");
      gates:
        in[9];
        out[9];
    };

    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 3;
        @display("p=400, 100");
      gates:
        in[4];
        out[4];
    };

    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 3;
        @display("p=400, 200");
      gates:
        in[4];
        out[4];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router18.in[1];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router23.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router23.in[2];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router19.in[1];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router24.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router24.in[2];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router20.in[1];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router16.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router20.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router16.in[2];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router21.in[1];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router17.in[1];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router21.in[2];
      router14.in[1] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[1] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router17.in[2];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router22.in[6];
      router16.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router16.out[2] <--> VariableBandWidthLink <--> router11.in[0];
      router17.out[0] <--> VariableBandWidthLink <--> router22.in[7];
      router17.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router17.out[2] <--> VariableBandWidthLink <--> router15.in[0];
      router18.out[0] <--> VariableBandWidthLink <--> router22.in[0];
      router18.out[1] <--> VariableBandWidthLink <--> router0.in[0];
      router18.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router19.out[0] <--> VariableBandWidthLink <--> router22.in[1];
      router19.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router19.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router20.out[0] <--> VariableBandWidthLink <--> router22.in[2];
      router20.out[1] <--> VariableBandWidthLink <--> router8.in[0];
      router20.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router21.out[0] <--> VariableBandWidthLink <--> router22.in[3];
      router21.out[1] <--> VariableBandWidthLink <--> router12.in[0];
      router21.out[2] <--> VariableBandWidthLink <--> router14.in[0];
      router22.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router22.out[1] <--> VariableBandWidthLink <--> router19.in[0];
      router22.out[2] <--> VariableBandWidthLink <--> router20.in[0];
      router22.out[3] <--> VariableBandWidthLink <--> router21.in[0];
      router22.out[4] <--> VariableBandWidthLink <--> router23.in[0];
      router22.out[5] <--> VariableBandWidthLink <--> router24.in[0];
      router22.out[6] <--> VariableBandWidthLink <--> router16.in[0];
      router22.out[7] <--> VariableBandWidthLink <--> router17.in[0];
      router23.out[0] <--> VariableBandWidthLink <--> router22.in[4];
      router23.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router23.out[2] <--> VariableBandWidthLink <--> router3.in[0];
      router24.out[0] <--> VariableBandWidthLink <--> router22.in[5];
      router24.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router24.out[2] <--> VariableBandWidthLink <--> router7.in[0];
}
