// Copyright Yaniv Fais,Tel Aviv University

package efnoc.random.S_16.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthRandom_16
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=242, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 7;
        @display("p=242, 100");
      gates:
        in[7];
        out[7];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=573, 1397");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 6;
        @display("p=573, 1367");
      gates:
        in[6];
        out[6];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=583, 396");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 3;
        @display("p=583, 366");
      gates:
        in[3];
        out[3];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=774, 293");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 4;
        @display("p=774, 263");
      gates:
        in[4];
        out[4];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=1560, 251");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 3;
        @display("p=1560, 221");
      gates:
        in[3];
        out[3];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=342, 737");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 3;
        @display("p=342, 707");
      gates:
        in[3];
        out[3];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=542, 369");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 6;
        @display("p=542, 339");
      gates:
        in[6];
        out[6];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=1236, 1093");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 6;
        @display("p=1236, 1063");
      gates:
        in[6];
        out[6];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=413, 1593");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 8;
        @display("p=413, 1563");
      gates:
        in[8];
        out[8];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=561, 459");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=561, 429");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=881, 841");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 7;
        @display("p=881, 811");
      gates:
        in[7];
        out[7];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=1181, 1012");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 5;
        @display("p=1181, 982");
      gates:
        in[5];
        out[5];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=1002, 900");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 4;
        @display("p=1002, 870");
      gates:
        in[4];
        out[4];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=1596, 554");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 3;
        @display("p=1596, 524");
      gates:
        in[3];
        out[3];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=409, 195");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=409, 165");
      gates:
        in[4];
        out[4];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=531, 1315");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 3;
        @display("p=531, 1285");
      gates:
        in[3];
        out[3];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router8.in[6];
      router0.out[1] <--> VariableBandWidthLink <--> router10.in[3];
      router0.out[2] <--> VariableBandWidthLink <--> router15.in[0];
      router0.out[3] <--> VariableBandWidthLink <--> router5.in[1];
      router0.out[4] <--> VariableBandWidthLink <--> router15.in[1];
      router0.out[5] <--> VariableBandWidthLink <--> router4.in[1];
      router0.in[6] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[6] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router12.in[1];
      router1.out[1] <--> VariableBandWidthLink <--> router6.in[3];
      router1.out[2] <--> VariableBandWidthLink <--> router8.in[5];
      router1.out[3] <--> VariableBandWidthLink <--> router12.in[2];
      router1.out[4] <--> VariableBandWidthLink <--> router7.in[2];
      router1.in[5] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[5] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router2.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router2.in[2] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[2] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router8.in[2];
      router3.out[1] <--> VariableBandWidthLink <--> router7.in[4];
      router3.out[2] <--> VariableBandWidthLink <--> router10.in[5];
      router3.in[3] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[3] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router10.in[2];
      router4.out[1] <--> VariableBandWidthLink <--> router0.in[5];
      router4.in[2] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[2] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router8.in[4];
      router5.out[1] <--> VariableBandWidthLink <--> router0.in[3];
      router5.in[2] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[2] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router6.out[1] <--> VariableBandWidthLink <--> router11.in[2];
      router6.out[2] <--> VariableBandWidthLink <--> router8.in[3];
      router6.out[3] <--> VariableBandWidthLink <--> router1.in[1];
      router6.out[4] <--> VariableBandWidthLink <--> router13.in[1];
      router6.in[5] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[5] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router7.out[1] <--> VariableBandWidthLink <--> router14.in[0];
      router7.out[2] <--> VariableBandWidthLink <--> router1.in[4];
      router7.out[3] <--> VariableBandWidthLink <--> router14.in[2];
      router7.out[4] <--> VariableBandWidthLink <--> router3.in[1];
      router7.in[5] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[5] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router8.out[1] <--> VariableBandWidthLink <--> router11.in[1];
      router8.out[2] <--> VariableBandWidthLink <--> router3.in[0];
      router8.out[3] <--> VariableBandWidthLink <--> router6.in[2];
      router8.out[4] <--> VariableBandWidthLink <--> router5.in[0];
      router8.out[5] <--> VariableBandWidthLink <--> router1.in[2];
      router8.out[6] <--> VariableBandWidthLink <--> router0.in[0];
      router8.in[7] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[7] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router14.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router10.out[1] <--> VariableBandWidthLink <--> router6.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router4.in[0];
      router10.out[3] <--> VariableBandWidthLink <--> router0.in[1];
      router10.out[4] <--> VariableBandWidthLink <--> router11.in[3];
      router10.out[5] <--> VariableBandWidthLink <--> router3.in[2];
      router10.in[6] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[6] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router7.in[0];
      router11.out[1] <--> VariableBandWidthLink <--> router8.in[1];
      router11.out[2] <--> VariableBandWidthLink <--> router6.in[1];
      router11.out[3] <--> VariableBandWidthLink <--> router10.in[4];
      router11.in[4] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[4] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router12.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router12.out[2] <--> VariableBandWidthLink <--> router1.in[3];
      router12.in[3] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[3] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router2.in[1];
      router13.out[1] <--> VariableBandWidthLink <--> router6.in[4];
      router13.in[2] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[2] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router7.in[1];
      router14.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router14.out[2] <--> VariableBandWidthLink <--> router7.in[3];
      router14.in[3] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[3] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router15.out[1] <--> VariableBandWidthLink <--> router0.in[4];
      router15.in[2] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[2] <--> VariableBandWidthLink <--> core15.in; 
}
