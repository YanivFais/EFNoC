// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network Robot_fattree_16_rtp
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=41, 897");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 11;
        @display("p=41, 867");
      gates:
        in[11];
        out[11];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=1534, 930");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 8;
        @display("p=1534, 900");
      gates:
        in[8];
        out[8];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=1569, 1354");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 11;
        @display("p=1569, 1324");
      gates:
        in[11];
        out[11];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=278, 588");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 15;
        @display("p=278, 558");
      gates:
        in[15];
        out[15];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=1362, 494");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 12;
        @display("p=1362, 464");
      gates:
        in[12];
        out[12];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=905, 975");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 9;
        @display("p=905, 945");
      gates:
        in[9];
        out[9];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=881, 857");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 8;
        @display("p=881, 827");
      gates:
        in[8];
        out[8];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=361, 521");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 8;
        @display("p=361, 491");
      gates:
        in[8];
        out[8];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=1395, 772");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 7;
        @display("p=1395, 742");
      gates:
        in[7];
        out[7];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=27, 666");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 6;
        @display("p=27, 636");
      gates:
        in[6];
        out[6];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=391, 234");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 5;
        @display("p=391, 204");
      gates:
        in[5];
        out[5];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=702, 183");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 9;
        @display("p=702, 153");
      gates:
        in[9];
        out[9];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=292, 1212");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 4;
        @display("p=292, 1182");
      gates:
        in[4];
        out[4];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=1421, 1146");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 3;
        @display("p=1421, 1116");
      gates:
        in[3];
        out[3];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=518, 725");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 1;
        @display("p=518, 695");
      gates:
        in[1];
        out[1];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=647, 956");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 1;
        @display("p=647, 926");
      gates:
        in[1];
        out[1];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router1.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router2.in[0];
      router0.out[2] <--> VariableBandWidthLink <--> router3.in[0];
      router0.out[3] <--> VariableBandWidthLink <--> router1.in[1];
      router0.out[4] <--> VariableBandWidthLink <--> router2.in[1];
      router0.out[5] <--> VariableBandWidthLink <--> router3.in[3];
      router0.out[6] <--> VariableBandWidthLink <--> router5.in[3];
      router0.out[7] <--> VariableBandWidthLink <--> router6.in[2];
      router0.out[8] <--> VariableBandWidthLink <--> router7.in[3];
      router0.out[9] <--> VariableBandWidthLink <--> router10.in[2];
      router0.in[10] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[10] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router1.out[1] <--> VariableBandWidthLink <--> router0.in[3];
      router1.out[2] <--> VariableBandWidthLink <--> router3.in[1];
      router1.out[3] <--> VariableBandWidthLink <--> router5.in[0];
      router1.out[4] <--> VariableBandWidthLink <--> router3.in[4];
      router1.out[5] <--> VariableBandWidthLink <--> router4.in[1];
      router1.out[6] <--> VariableBandWidthLink <--> router5.in[4];
      router1.in[7] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[7] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router0.in[1];
      router2.out[1] <--> VariableBandWidthLink <--> router0.in[4];
      router2.out[2] <--> VariableBandWidthLink <--> router3.in[2];
      router2.out[3] <--> VariableBandWidthLink <--> router4.in[0];
      router2.out[4] <--> VariableBandWidthLink <--> router5.in[1];
      router2.out[5] <--> VariableBandWidthLink <--> router3.in[5];
      router2.out[6] <--> VariableBandWidthLink <--> router4.in[2];
      router2.out[7] <--> VariableBandWidthLink <--> router6.in[3];
      router2.out[8] <--> VariableBandWidthLink <--> router7.in[4];
      router2.out[9] <--> VariableBandWidthLink <--> router9.in[2];
      router2.in[10] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[10] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router3.out[1] <--> VariableBandWidthLink <--> router1.in[2];
      router3.out[2] <--> VariableBandWidthLink <--> router2.in[2];
      router3.out[3] <--> VariableBandWidthLink <--> router0.in[5];
      router3.out[4] <--> VariableBandWidthLink <--> router1.in[4];
      router3.out[5] <--> VariableBandWidthLink <--> router2.in[5];
      router3.out[6] <--> VariableBandWidthLink <--> router6.in[0];
      router3.out[7] <--> VariableBandWidthLink <--> router7.in[0];
      router3.out[8] <--> VariableBandWidthLink <--> router8.in[0];
      router3.out[9] <--> VariableBandWidthLink <--> router9.in[0];
      router3.out[10] <--> VariableBandWidthLink <--> router10.in[0];
      router3.out[11] <--> VariableBandWidthLink <--> router11.in[0];
      router3.out[12] <--> VariableBandWidthLink <--> router12.in[0];
      router3.out[13] <--> VariableBandWidthLink <--> router8.in[2];
      router3.in[14] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[14] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router2.in[3];
      router4.out[1] <--> VariableBandWidthLink <--> router1.in[5];
      router4.out[2] <--> VariableBandWidthLink <--> router2.in[6];
      router4.out[3] <--> VariableBandWidthLink <--> router5.in[2];
      router4.out[4] <--> VariableBandWidthLink <--> router6.in[1];
      router4.out[5] <--> VariableBandWidthLink <--> router7.in[1];
      router4.out[6] <--> VariableBandWidthLink <--> router8.in[1];
      router4.out[7] <--> VariableBandWidthLink <--> router9.in[1];
      router4.out[8] <--> VariableBandWidthLink <--> router7.in[5];
      router4.out[9] <--> VariableBandWidthLink <--> router8.in[3];
      router4.out[10] <--> VariableBandWidthLink <--> router11.in[3];
      router4.in[11] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[11] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router1.in[3];
      router5.out[1] <--> VariableBandWidthLink <--> router2.in[4];
      router5.out[2] <--> VariableBandWidthLink <--> router4.in[3];
      router5.out[3] <--> VariableBandWidthLink <--> router0.in[6];
      router5.out[4] <--> VariableBandWidthLink <--> router1.in[6];
      router5.out[5] <--> VariableBandWidthLink <--> router11.in[1];
      router5.out[6] <--> VariableBandWidthLink <--> router6.in[4];
      router5.out[7] <--> VariableBandWidthLink <--> router7.in[6];
      router5.in[8] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[8] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router3.in[6];
      router6.out[1] <--> VariableBandWidthLink <--> router4.in[4];
      router6.out[2] <--> VariableBandWidthLink <--> router0.in[7];
      router6.out[3] <--> VariableBandWidthLink <--> router2.in[7];
      router6.out[4] <--> VariableBandWidthLink <--> router5.in[6];
      router6.out[5] <--> VariableBandWidthLink <--> router7.in[2];
      router6.out[6] <--> VariableBandWidthLink <--> router11.in[2];
      router6.in[7] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[7] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router3.in[7];
      router7.out[1] <--> VariableBandWidthLink <--> router4.in[5];
      router7.out[2] <--> VariableBandWidthLink <--> router6.in[5];
      router7.out[3] <--> VariableBandWidthLink <--> router0.in[8];
      router7.out[4] <--> VariableBandWidthLink <--> router2.in[8];
      router7.out[5] <--> VariableBandWidthLink <--> router4.in[8];
      router7.out[6] <--> VariableBandWidthLink <--> router5.in[7];
      router7.in[7] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[7] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router3.in[8];
      router8.out[1] <--> VariableBandWidthLink <--> router4.in[6];
      router8.out[2] <--> VariableBandWidthLink <--> router3.in[13];
      router8.out[3] <--> VariableBandWidthLink <--> router4.in[9];
      router8.out[4] <--> VariableBandWidthLink <--> router12.in[1];
      router8.out[5] <--> VariableBandWidthLink <--> router13.in[0];
      router8.in[6] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[6] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router3.in[9];
      router9.out[1] <--> VariableBandWidthLink <--> router4.in[7];
      router9.out[2] <--> VariableBandWidthLink <--> router2.in[9];
      router9.out[3] <--> VariableBandWidthLink <--> router10.in[1];
      router9.out[4] <--> VariableBandWidthLink <--> router11.in[4];
      router9.in[5] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[5] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router3.in[10];
      router10.out[1] <--> VariableBandWidthLink <--> router9.in[3];
      router10.out[2] <--> VariableBandWidthLink <--> router0.in[9];
      router10.out[3] <--> VariableBandWidthLink <--> router11.in[5];
      router10.in[4] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[4] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router3.in[11];
      router11.out[1] <--> VariableBandWidthLink <--> router5.in[5];
      router11.out[2] <--> VariableBandWidthLink <--> router6.in[6];
      router11.out[3] <--> VariableBandWidthLink <--> router4.in[10];
      router11.out[4] <--> VariableBandWidthLink <--> router9.in[4];
      router11.out[5] <--> VariableBandWidthLink <--> router10.in[3];
      router11.out[6] <--> VariableBandWidthLink <--> router12.in[2];
      router11.out[7] <--> VariableBandWidthLink <--> router13.in[1];
      router11.in[8] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[8] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router3.in[12];
      router12.out[1] <--> VariableBandWidthLink <--> router8.in[4];
      router12.out[2] <--> VariableBandWidthLink <--> router11.in[6];
      router12.in[3] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[3] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router8.in[5];
      router13.out[1] <--> VariableBandWidthLink <--> router11.in[7];
      router13.in[2] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[2] <--> VariableBandWidthLink <--> core13.in; 
      router14.in[0] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[0] <--> VariableBandWidthLink <--> core14.in; 
      router15.in[0] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[0] <--> VariableBandWidthLink <--> core15.in; 
}
