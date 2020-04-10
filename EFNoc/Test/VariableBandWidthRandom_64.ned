// Copyright Yaniv Fais,Tel Aviv University

package efnoc.random.S_64.SteadyRandom.L_0.Alpha_0.M_0;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthRandom_64
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=6218, 1094");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 7;
        @display("p=6218, 1064");
      gates:
        in[7];
        out[7];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=2311, 1553");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 5;
        @display("p=2311, 1523");
      gates:
        in[5];
        out[5];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=1225, 4357");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 6;
        @display("p=1225, 4327");
      gates:
        in[6];
        out[6];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=1882, 5806");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 6;
        @display("p=1882, 5776");
      gates:
        in[6];
        out[6];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=1392, 3542");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 6;
        @display("p=1392, 3512");
      gates:
        in[6];
        out[6];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=2520, 153");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 5;
        @display("p=2520, 123");
      gates:
        in[5];
        out[5];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=5818, 6422");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 4;
        @display("p=5818, 6392");
      gates:
        in[4];
        out[4];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=771, 3746");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 7;
        @display("p=771, 3716");
      gates:
        in[7];
        out[7];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=72, 5296");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 3;
        @display("p=72, 5266");
      gates:
        in[3];
        out[3];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=1183, 2501");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 7;
        @display("p=1183, 2471");
      gates:
        in[7];
        out[7];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=5428, 5164");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 6;
        @display("p=5428, 5134");
      gates:
        in[6];
        out[6];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=1966, 1873");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 9;
        @display("p=1966, 1843");
      gates:
        in[9];
        out[9];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=1699, 5865");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 4;
        @display("p=1699, 5835");
      gates:
        in[4];
        out[4];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=4767, 5962");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 11;
        @display("p=4767, 5932");
      gates:
        in[11];
        out[11];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=6297, 4262");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=6297, 4232");
      gates:
        in[4];
        out[4];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=5315, 4875");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 10;
        @display("p=5315, 4845");
      gates:
        in[10];
        out[10];
    };

    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=5906, 4167");
    }
    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 6;
        @display("p=5906, 4137");
      gates:
        in[6];
        out[6];
    };

    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=2560, 4143");
    }
    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 6;
        @display("p=2560, 4113");
      gates:
        in[6];
        out[6];
    };

    core18 : <coreType> like NI_Ifc {
      parameters:
        id = 18;
        @display("p=78, 6102");
    }
    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 9;
        @display("p=78, 6072");
      gates:
        in[9];
        out[9];
    };

    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=201, 946");
    }
    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 10;
        @display("p=201, 916");
      gates:
        in[10];
        out[10];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=2412, 1225");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 8;
        @display("p=2412, 1195");
      gates:
        in[8];
        out[8];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=5453, 1876");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 6;
        @display("p=5453, 1846");
      gates:
        in[6];
        out[6];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=5946, 2435");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 9;
        @display("p=5946, 2405");
      gates:
        in[9];
        out[9];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=5103, 5438");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 7;
        @display("p=5103, 5408");
      gates:
        in[7];
        out[7];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=2380, 3101");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 7;
        @display("p=2380, 3071");
      gates:
        in[7];
        out[7];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=5623, 5096");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 4;
        @display("p=5623, 5066");
      gates:
        in[4];
        out[4];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=2635, 869");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 5;
        @display("p=2635, 839");
      gates:
        in[5];
        out[5];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=5767, 58");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 13;
        @display("p=5767, 28");
      gates:
        in[13];
        out[13];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=656, 1319");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 8;
        @display("p=656, 1289");
      gates:
        in[8];
        out[8];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=208, 4082");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 11;
        @display("p=208, 4052");
      gates:
        in[11];
        out[11];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=2033, 5548");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 4;
        @display("p=2033, 5518");
      gates:
        in[4];
        out[4];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=3717, 837");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 11;
        @display("p=3717, 807");
      gates:
        in[11];
        out[11];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=4059, 3201");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 7;
        @display("p=4059, 3171");
      gates:
        in[7];
        out[7];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=1680, 5065");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 6;
        @display("p=1680, 5035");
      gates:
        in[6];
        out[6];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=674, 633");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 6;
        @display("p=674, 603");
      gates:
        in[6];
        out[6];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=2565, 2450");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 4;
        @display("p=2565, 2420");
      gates:
        in[4];
        out[4];
    };

    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=3348, 3061");
    }
    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 6;
        @display("p=3348, 3031");
      gates:
        in[6];
        out[6];
    };

    core37 : <coreType> like NI_Ifc {
      parameters:
        id = 37;
        @display("p=3156, 1691");
    }
    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 6;
        @display("p=3156, 1661");
      gates:
        in[6];
        out[6];
    };

    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=596, 611");
    }
    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 8;
        @display("p=596, 581");
      gates:
        in[8];
        out[8];
    };

    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=4802, 2152");
    }
    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 7;
        @display("p=4802, 2122");
      gates:
        in[7];
        out[7];
    };

    core40 : <coreType> like NI_Ifc {
      parameters:
        id = 40;
        @display("p=230, 5381");
    }
    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 6;
        @display("p=230, 5351");
      gates:
        in[6];
        out[6];
    };

    core41 : <coreType> like NI_Ifc {
      parameters:
        id = 41;
        @display("p=5914, 5098");
    }
    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 6;
        @display("p=5914, 5068");
      gates:
        in[6];
        out[6];
    };

    core42 : <coreType> like NI_Ifc {
      parameters:
        id = 42;
        @display("p=3590, 4596");
    }
    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 9;
        @display("p=3590, 4566");
      gates:
        in[9];
        out[9];
    };

    core43 : <coreType> like NI_Ifc {
      parameters:
        id = 43;
        @display("p=3999, 1955");
    }
    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 6;
        @display("p=3999, 1925");
      gates:
        in[6];
        out[6];
    };

    core44 : <coreType> like NI_Ifc {
      parameters:
        id = 44;
        @display("p=1086, 100");
    }
    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 6;
        @display("p=1086, 70");
      gates:
        in[6];
        out[6];
    };

    core45 : <coreType> like NI_Ifc {
      parameters:
        id = 45;
        @display("p=5702, 4619");
    }
    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 8;
        @display("p=5702, 4589");
      gates:
        in[8];
        out[8];
    };

    core46 : <coreType> like NI_Ifc {
      parameters:
        id = 46;
        @display("p=3383, 1065");
    }
    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 2;
        @display("p=3383, 1035");
      gates:
        in[2];
        out[2];
    };

    core47 : <coreType> like NI_Ifc {
      parameters:
        id = 47;
        @display("p=2338, 4913");
    }
    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 8;
        @display("p=2338, 4883");
      gates:
        in[8];
        out[8];
    };

    core48 : <coreType> like NI_Ifc {
      parameters:
        id = 48;
        @display("p=208, 4731");
    }
    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 10;
        @display("p=208, 4701");
      gates:
        in[10];
        out[10];
    };

    core49 : <coreType> like NI_Ifc {
      parameters:
        id = 49;
        @display("p=288, 2725");
    }
    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 10;
        @display("p=288, 2695");
      gates:
        in[10];
        out[10];
    };

    core50 : <coreType> like NI_Ifc {
      parameters:
        id = 50;
        @display("p=2413, 4854");
    }
    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 4;
        @display("p=2413, 4824");
      gates:
        in[4];
        out[4];
    };

    core51 : <coreType> like NI_Ifc {
      parameters:
        id = 51;
        @display("p=5620, 3734");
    }
    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 7;
        @display("p=5620, 3704");
      gates:
        in[7];
        out[7];
    };

    core52 : <coreType> like NI_Ifc {
      parameters:
        id = 52;
        @display("p=3985, 2788");
    }
    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 9;
        @display("p=3985, 2758");
      gates:
        in[9];
        out[9];
    };

    core53 : <coreType> like NI_Ifc {
      parameters:
        id = 53;
        @display("p=4179, 5432");
    }
    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 9;
        @display("p=4179, 5402");
      gates:
        in[9];
        out[9];
    };

    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=1200, 6079");
    }
    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 7;
        @display("p=1200, 6049");
      gates:
        in[7];
        out[7];
    };

    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=4963, 2920");
    }
    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 5;
        @display("p=4963, 2890");
      gates:
        in[5];
        out[5];
    };

    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=2622, 498");
    }
    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 6;
        @display("p=2622, 468");
      gates:
        in[6];
        out[6];
    };

    core57 : <coreType> like NI_Ifc {
      parameters:
        id = 57;
        @display("p=1136, 1683");
    }
    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 5;
        @display("p=1136, 1653");
      gates:
        in[5];
        out[5];
    };

    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=3852, 3296");
    }
    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 4;
        @display("p=3852, 3266");
      gates:
        in[4];
        out[4];
    };

    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=1504, 1236");
    }
    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 7;
        @display("p=1504, 1206");
      gates:
        in[7];
        out[7];
    };

    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=3796, 3879");
    }
    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 15;
        @display("p=3796, 3849");
      gates:
        in[15];
        out[15];
    };

    core61 : <coreType> like NI_Ifc {
      parameters:
        id = 61;
        @display("p=2921, 4956");
    }
    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 7;
        @display("p=2921, 4926");
      gates:
        in[7];
        out[7];
    };

    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=3091, 2342");
    }
    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 6;
        @display("p=3091, 2312");
      gates:
        in[6];
        out[6];
    };

    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=4481, 5911");
    }
    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 4;
        @display("p=4481, 5881");
      gates:
        in[4];
        out[4];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router40.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router11.in[0];
      router0.out[2] <--> VariableBandWidthLink <--> router53.in[1];
      router0.out[3] <--> VariableBandWidthLink <--> router21.in[1];
      router0.out[4] <--> VariableBandWidthLink <--> router60.in[10];
      router0.out[5] <--> VariableBandWidthLink <--> router7.in[5];
      router0.in[6] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[6] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router60.in[6];
      router1.out[1] <--> VariableBandWidthLink <--> router48.in[5];
      router1.out[2] <--> VariableBandWidthLink <--> router30.in[0];
      router1.out[3] <--> VariableBandWidthLink <--> router43.in[4];
      router1.in[4] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[4] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router13.in[3];
      router2.out[1] <--> VariableBandWidthLink <--> router10.in[4];
      router2.out[2] <--> VariableBandWidthLink <--> router23.in[3];
      router2.out[3] <--> VariableBandWidthLink <--> router4.in[4];
      router2.out[4] <--> VariableBandWidthLink <--> router39.in[5];
      router2.in[5] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[5] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router27.in[4];
      router3.out[1] <--> VariableBandWidthLink <--> router51.in[1];
      router3.out[2] <--> VariableBandWidthLink <--> router32.in[1];
      router3.out[3] <--> VariableBandWidthLink <--> router47.in[3];
      router3.out[4] <--> VariableBandWidthLink <--> router35.in[2];
      router3.in[5] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[5] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router15.in[1];
      router4.out[1] <--> VariableBandWidthLink <--> router23.in[1];
      router4.out[2] <--> VariableBandWidthLink <--> router24.in[5];
      router4.out[3] <--> VariableBandWidthLink <--> router20.in[4];
      router4.out[4] <--> VariableBandWidthLink <--> router2.in[3];
      router4.in[5] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[5] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router5.out[1] <--> VariableBandWidthLink <--> router25.in[2];
      router5.out[2] <--> VariableBandWidthLink <--> router38.in[3];
      router5.out[3] <--> VariableBandWidthLink <--> router34.in[3];
      router5.in[4] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[4] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router19.in[1];
      router6.out[1] <--> VariableBandWidthLink <--> router52.in[2];
      router6.out[2] <--> VariableBandWidthLink <--> router60.in[8];
      router6.in[3] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[3] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router34.in[0];
      router7.out[1] <--> VariableBandWidthLink <--> router61.in[2];
      router7.out[2] <--> VariableBandWidthLink <--> router45.in[4];
      router7.out[3] <--> VariableBandWidthLink <--> router21.in[3];
      router7.out[4] <--> VariableBandWidthLink <--> router42.in[6];
      router7.out[5] <--> VariableBandWidthLink <--> router0.in[5];
      router7.in[6] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[6] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router45.in[5];
      router8.out[1] <--> VariableBandWidthLink <--> router11.in[7];
      router8.in[2] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[2] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router27.in[5];
      router9.out[1] <--> VariableBandWidthLink <--> router54.in[1];
      router9.out[2] <--> VariableBandWidthLink <--> router62.in[0];
      router9.out[3] <--> VariableBandWidthLink <--> router22.in[5];
      router9.out[4] <--> VariableBandWidthLink <--> router27.in[11];
      router9.out[5] <--> VariableBandWidthLink <--> router12.in[2];
      router9.in[6] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[6] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router33.in[2];
      router10.out[1] <--> VariableBandWidthLink <--> router60.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router27.in[9];
      router10.out[3] <--> VariableBandWidthLink <--> router24.in[4];
      router10.out[4] <--> VariableBandWidthLink <--> router2.in[1];
      router10.in[5] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[5] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router0.in[1];
      router11.out[1] <--> VariableBandWidthLink <--> router16.in[0];
      router11.out[2] <--> VariableBandWidthLink <--> router41.in[0];
      router11.out[3] <--> VariableBandWidthLink <--> router43.in[1];
      router11.out[4] <--> VariableBandWidthLink <--> router27.in[1];
      router11.out[5] <--> VariableBandWidthLink <--> router42.in[1];
      router11.out[6] <--> VariableBandWidthLink <--> router26.in[0];
      router11.out[7] <--> VariableBandWidthLink <--> router8.in[1];
      router11.in[8] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[8] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router43.in[0];
      router12.out[1] <--> VariableBandWidthLink <--> router36.in[3];
      router12.out[2] <--> VariableBandWidthLink <--> router9.in[5];
      router12.in[3] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[3] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router61.in[0];
      router13.out[1] <--> VariableBandWidthLink <--> router33.in[0];
      router13.out[2] <--> VariableBandWidthLink <--> router27.in[6];
      router13.out[3] <--> VariableBandWidthLink <--> router2.in[0];
      router13.out[4] <--> VariableBandWidthLink <--> router27.in[7];
      router13.out[5] <--> VariableBandWidthLink <--> router51.in[3];
      router13.out[6] <--> VariableBandWidthLink <--> router60.in[7];
      router13.out[7] <--> VariableBandWidthLink <--> router49.in[7];
      router13.out[8] <--> VariableBandWidthLink <--> router28.in[5];
      router13.out[9] <--> VariableBandWidthLink <--> router50.in[2];
      router13.in[10] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[10] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router15.in[4];
      router14.out[1] <--> VariableBandWidthLink <--> router48.in[7];
      router14.out[2] <--> VariableBandWidthLink <--> router29.in[8];
      router14.in[3] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[3] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router57.in[0];
      router15.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router15.out[2] <--> VariableBandWidthLink <--> router20.in[1];
      router15.out[3] <--> VariableBandWidthLink <--> router22.in[4];
      router15.out[4] <--> VariableBandWidthLink <--> router14.in[0];
      router15.out[5] <--> VariableBandWidthLink <--> router31.in[6];
      router15.out[6] <--> VariableBandWidthLink <--> router54.in[5];
      router15.out[7] <--> VariableBandWidthLink <--> router19.in[8];
      router15.out[8] <--> VariableBandWidthLink <--> router37.in[3];
      router15.in[9] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[9] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router11.in[1];
      router16.out[1] <--> VariableBandWidthLink <--> router45.in[0];
      router16.out[2] <--> VariableBandWidthLink <--> router29.in[3];
      router16.out[3] <--> VariableBandWidthLink <--> router57.in[2];
      router16.out[4] <--> VariableBandWidthLink <--> router22.in[7];
      router16.in[5] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[5] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router33.in[1];
      router17.out[1] <--> VariableBandWidthLink <--> router48.in[2];
      router17.out[2] <--> VariableBandWidthLink <--> router61.in[3];
      router17.out[3] <--> VariableBandWidthLink <--> router43.in[3];
      router17.out[4] <--> VariableBandWidthLink <--> router26.in[2];
      router17.in[5] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[5] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router27.in[3];
      router18.out[1] <--> VariableBandWidthLink <--> router37.in[0];
      router18.out[2] <--> VariableBandWidthLink <--> router42.in[4];
      router18.out[3] <--> VariableBandWidthLink <--> router45.in[3];
      router18.out[4] <--> VariableBandWidthLink <--> router31.in[4];
      router18.out[5] <--> VariableBandWidthLink <--> router32.in[2];
      router18.out[6] <--> VariableBandWidthLink <--> router34.in[2];
      router18.out[7] <--> VariableBandWidthLink <--> router37.in[4];
      router18.in[8] <--> VariableBandWidthLink <--> core18.out; 
      router18.out[8] <--> VariableBandWidthLink <--> core18.in; 
      router19.out[0] <--> VariableBandWidthLink <--> router52.in[0];
      router19.out[1] <--> VariableBandWidthLink <--> router6.in[0];
      router19.out[2] <--> VariableBandWidthLink <--> router5.in[0];
      router19.out[3] <--> VariableBandWidthLink <--> router50.in[0];
      router19.out[4] <--> VariableBandWidthLink <--> router39.in[1];
      router19.out[5] <--> VariableBandWidthLink <--> router55.in[1];
      router19.out[6] <--> VariableBandWidthLink <--> router31.in[3];
      router19.out[7] <--> VariableBandWidthLink <--> router29.in[4];
      router19.out[8] <--> VariableBandWidthLink <--> router15.in[7];
      router19.in[9] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[9] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router49.in[3];
      router20.out[1] <--> VariableBandWidthLink <--> router15.in[2];
      router20.out[2] <--> VariableBandWidthLink <--> router53.in[7];
      router20.out[3] <--> VariableBandWidthLink <--> router29.in[7];
      router20.out[4] <--> VariableBandWidthLink <--> router4.in[3];
      router20.out[5] <--> VariableBandWidthLink <--> router47.in[4];
      router20.out[6] <--> VariableBandWidthLink <--> router34.in[4];
      router20.in[7] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[7] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router27.in[2];
      router21.out[1] <--> VariableBandWidthLink <--> router0.in[3];
      router21.out[2] <--> VariableBandWidthLink <--> router42.in[5];
      router21.out[3] <--> VariableBandWidthLink <--> router7.in[3];
      router21.out[4] <--> VariableBandWidthLink <--> router31.in[9];
      router21.in[5] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[5] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router31.in[0];
      router22.out[1] <--> VariableBandWidthLink <--> router47.in[0];
      router22.out[2] <--> VariableBandWidthLink <--> router44.in[1];
      router22.out[3] <--> VariableBandWidthLink <--> router58.in[1];
      router22.out[4] <--> VariableBandWidthLink <--> router15.in[3];
      router22.out[5] <--> VariableBandWidthLink <--> router9.in[3];
      router22.out[6] <--> VariableBandWidthLink <--> router57.in[3];
      router22.out[7] <--> VariableBandWidthLink <--> router16.in[4];
      router22.in[8] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[8] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router29.in[2];
      router23.out[1] <--> VariableBandWidthLink <--> router4.in[1];
      router23.out[2] <--> VariableBandWidthLink <--> router63.in[0];
      router23.out[3] <--> VariableBandWidthLink <--> router2.in[2];
      router23.out[4] <--> VariableBandWidthLink <--> router55.in[3];
      router23.out[5] <--> VariableBandWidthLink <--> router47.in[5];
      router23.in[6] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[6] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router53.in[0];
      router24.out[1] <--> VariableBandWidthLink <--> router49.in[1];
      router24.out[2] <--> VariableBandWidthLink <--> router61.in[1];
      router24.out[3] <--> VariableBandWidthLink <--> router48.in[0];
      router24.out[4] <--> VariableBandWidthLink <--> router10.in[3];
      router24.out[5] <--> VariableBandWidthLink <--> router4.in[2];
      router24.in[6] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[6] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router31.in[2];
      router25.out[1] <--> VariableBandWidthLink <--> router35.in[0];
      router25.out[2] <--> VariableBandWidthLink <--> router5.in[1];
      router25.in[3] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[3] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router11.in[6];
      router26.out[1] <--> VariableBandWidthLink <--> router41.in[2];
      router26.out[2] <--> VariableBandWidthLink <--> router17.in[4];
      router26.out[3] <--> VariableBandWidthLink <--> router28.in[6];
      router26.in[4] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[4] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router59.in[0];
      router27.out[1] <--> VariableBandWidthLink <--> router11.in[4];
      router27.out[2] <--> VariableBandWidthLink <--> router21.in[0];
      router27.out[3] <--> VariableBandWidthLink <--> router18.in[0];
      router27.out[4] <--> VariableBandWidthLink <--> router3.in[0];
      router27.out[5] <--> VariableBandWidthLink <--> router9.in[0];
      router27.out[6] <--> VariableBandWidthLink <--> router13.in[2];
      router27.out[7] <--> VariableBandWidthLink <--> router13.in[4];
      router27.out[8] <--> VariableBandWidthLink <--> router38.in[2];
      router27.out[9] <--> VariableBandWidthLink <--> router10.in[2];
      router27.out[10] <--> VariableBandWidthLink <--> router50.in[1];
      router27.out[11] <--> VariableBandWidthLink <--> router9.in[4];
      router27.in[12] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[12] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router40.in[2];
      router28.out[1] <--> VariableBandWidthLink <--> router60.in[1];
      router28.out[2] <--> VariableBandWidthLink <--> router41.in[1];
      router28.out[3] <--> VariableBandWidthLink <--> router36.in[2];
      router28.out[4] <--> VariableBandWidthLink <--> router56.in[4];
      router28.out[5] <--> VariableBandWidthLink <--> router13.in[8];
      router28.out[6] <--> VariableBandWidthLink <--> router26.in[3];
      router28.in[7] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[7] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router49.in[2];
      router29.out[1] <--> VariableBandWidthLink <--> router42.in[2];
      router29.out[2] <--> VariableBandWidthLink <--> router23.in[0];
      router29.out[3] <--> VariableBandWidthLink <--> router16.in[2];
      router29.out[4] <--> VariableBandWidthLink <--> router19.in[7];
      router29.out[5] <--> VariableBandWidthLink <--> router48.in[4];
      router29.out[6] <--> VariableBandWidthLink <--> router62.in[3];
      router29.out[7] <--> VariableBandWidthLink <--> router20.in[3];
      router29.out[8] <--> VariableBandWidthLink <--> router14.in[2];
      router29.out[9] <--> VariableBandWidthLink <--> router60.in[13];
      router29.in[10] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[10] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router1.in[2];
      router30.out[1] <--> VariableBandWidthLink <--> router41.in[3];
      router30.out[2] <--> VariableBandWidthLink <--> router38.in[4];
      router30.in[3] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[3] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router22.in[0];
      router31.out[1] <--> VariableBandWidthLink <--> router42.in[0];
      router31.out[2] <--> VariableBandWidthLink <--> router25.in[0];
      router31.out[3] <--> VariableBandWidthLink <--> router19.in[6];
      router31.out[4] <--> VariableBandWidthLink <--> router18.in[4];
      router31.out[5] <--> VariableBandWidthLink <--> router55.in[2];
      router31.out[6] <--> VariableBandWidthLink <--> router15.in[5];
      router31.out[7] <--> VariableBandWidthLink <--> router48.in[6];
      router31.out[8] <--> VariableBandWidthLink <--> router51.in[5];
      router31.out[9] <--> VariableBandWidthLink <--> router21.in[4];
      router31.in[10] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[10] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router56.in[2];
      router32.out[1] <--> VariableBandWidthLink <--> router3.in[2];
      router32.out[2] <--> VariableBandWidthLink <--> router18.in[5];
      router32.out[3] <--> VariableBandWidthLink <--> router60.in[9];
      router32.out[4] <--> VariableBandWidthLink <--> router38.in[5];
      router32.out[5] <--> VariableBandWidthLink <--> router60.in[11];
      router32.in[6] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[6] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router13.in[1];
      router33.out[1] <--> VariableBandWidthLink <--> router17.in[0];
      router33.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router33.out[3] <--> VariableBandWidthLink <--> router47.in[2];
      router33.out[4] <--> VariableBandWidthLink <--> router42.in[7];
      router33.in[5] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[5] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router7.in[0];
      router34.out[1] <--> VariableBandWidthLink <--> router39.in[3];
      router34.out[2] <--> VariableBandWidthLink <--> router18.in[6];
      router34.out[3] <--> VariableBandWidthLink <--> router5.in[3];
      router34.out[4] <--> VariableBandWidthLink <--> router20.in[6];
      router34.in[5] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[5] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router25.in[1];
      router35.out[1] <--> VariableBandWidthLink <--> router48.in[3];
      router35.out[2] <--> VariableBandWidthLink <--> router3.in[4];
      router35.in[3] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[3] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router53.in[4];
      router36.out[1] <--> VariableBandWidthLink <--> router49.in[5];
      router36.out[2] <--> VariableBandWidthLink <--> router28.in[3];
      router36.out[3] <--> VariableBandWidthLink <--> router12.in[1];
      router36.out[4] <--> VariableBandWidthLink <--> router59.in[5];
      router36.in[5] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[5] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router18.in[1];
      router37.out[1] <--> VariableBandWidthLink <--> router59.in[2];
      router37.out[2] <--> VariableBandWidthLink <--> router62.in[4];
      router37.out[3] <--> VariableBandWidthLink <--> router15.in[8];
      router37.out[4] <--> VariableBandWidthLink <--> router18.in[7];
      router37.in[5] <--> VariableBandWidthLink <--> core37.out; 
      router37.out[5] <--> VariableBandWidthLink <--> core37.in; 
      router38.out[0] <--> VariableBandWidthLink <--> router60.in[3];
      router38.out[1] <--> VariableBandWidthLink <--> router54.in[3];
      router38.out[2] <--> VariableBandWidthLink <--> router27.in[8];
      router38.out[3] <--> VariableBandWidthLink <--> router5.in[2];
      router38.out[4] <--> VariableBandWidthLink <--> router30.in[2];
      router38.out[5] <--> VariableBandWidthLink <--> router32.in[4];
      router38.out[6] <--> VariableBandWidthLink <--> router45.in[6];
      router38.in[7] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[7] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router42.in[3];
      router39.out[1] <--> VariableBandWidthLink <--> router19.in[4];
      router39.out[2] <--> VariableBandWidthLink <--> router60.in[4];
      router39.out[3] <--> VariableBandWidthLink <--> router34.in[1];
      router39.out[4] <--> VariableBandWidthLink <--> router59.in[4];
      router39.out[5] <--> VariableBandWidthLink <--> router2.in[4];
      router39.in[6] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[6] <--> VariableBandWidthLink <--> core39.in; 
      router40.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router40.out[1] <--> VariableBandWidthLink <--> router58.in[0];
      router40.out[2] <--> VariableBandWidthLink <--> router28.in[0];
      router40.out[3] <--> VariableBandWidthLink <--> router52.in[1];
      router40.out[4] <--> VariableBandWidthLink <--> router45.in[1];
      router40.in[5] <--> VariableBandWidthLink <--> core40.out; 
      router40.out[5] <--> VariableBandWidthLink <--> core40.in; 
      router41.out[0] <--> VariableBandWidthLink <--> router11.in[2];
      router41.out[1] <--> VariableBandWidthLink <--> router28.in[2];
      router41.out[2] <--> VariableBandWidthLink <--> router26.in[1];
      router41.out[3] <--> VariableBandWidthLink <--> router30.in[1];
      router41.out[4] <--> VariableBandWidthLink <--> router59.in[3];
      router41.in[5] <--> VariableBandWidthLink <--> core41.out; 
      router41.out[5] <--> VariableBandWidthLink <--> core41.in; 
      router42.out[0] <--> VariableBandWidthLink <--> router31.in[1];
      router42.out[1] <--> VariableBandWidthLink <--> router11.in[5];
      router42.out[2] <--> VariableBandWidthLink <--> router29.in[1];
      router42.out[3] <--> VariableBandWidthLink <--> router39.in[0];
      router42.out[4] <--> VariableBandWidthLink <--> router18.in[2];
      router42.out[5] <--> VariableBandWidthLink <--> router21.in[2];
      router42.out[6] <--> VariableBandWidthLink <--> router7.in[4];
      router42.out[7] <--> VariableBandWidthLink <--> router33.in[4];
      router42.in[8] <--> VariableBandWidthLink <--> core42.out; 
      router42.out[8] <--> VariableBandWidthLink <--> core42.in; 
      router43.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router43.out[1] <--> VariableBandWidthLink <--> router11.in[3];
      router43.out[2] <--> VariableBandWidthLink <--> router59.in[1];
      router43.out[3] <--> VariableBandWidthLink <--> router17.in[3];
      router43.out[4] <--> VariableBandWidthLink <--> router1.in[3];
      router43.in[5] <--> VariableBandWidthLink <--> core43.out; 
      router43.out[5] <--> VariableBandWidthLink <--> core43.in; 
      router44.out[0] <--> VariableBandWidthLink <--> router47.in[1];
      router44.out[1] <--> VariableBandWidthLink <--> router22.in[2];
      router44.out[2] <--> VariableBandWidthLink <--> router53.in[2];
      router44.out[3] <--> VariableBandWidthLink <--> router48.in[1];
      router44.out[4] <--> VariableBandWidthLink <--> router47.in[6];
      router44.in[5] <--> VariableBandWidthLink <--> core44.out; 
      router44.out[5] <--> VariableBandWidthLink <--> core44.in; 
      router45.out[0] <--> VariableBandWidthLink <--> router16.in[1];
      router45.out[1] <--> VariableBandWidthLink <--> router40.in[4];
      router45.out[2] <--> VariableBandWidthLink <--> router62.in[2];
      router45.out[3] <--> VariableBandWidthLink <--> router18.in[3];
      router45.out[4] <--> VariableBandWidthLink <--> router7.in[2];
      router45.out[5] <--> VariableBandWidthLink <--> router8.in[0];
      router45.out[6] <--> VariableBandWidthLink <--> router38.in[6];
      router45.in[7] <--> VariableBandWidthLink <--> core45.out; 
      router45.out[7] <--> VariableBandWidthLink <--> core45.in; 
      router46.out[0] <--> VariableBandWidthLink <--> router53.in[6];
      router46.in[1] <--> VariableBandWidthLink <--> core46.out; 
      router46.out[1] <--> VariableBandWidthLink <--> core46.in; 
      router47.out[0] <--> VariableBandWidthLink <--> router22.in[1];
      router47.out[1] <--> VariableBandWidthLink <--> router44.in[0];
      router47.out[2] <--> VariableBandWidthLink <--> router33.in[3];
      router47.out[3] <--> VariableBandWidthLink <--> router3.in[3];
      router47.out[4] <--> VariableBandWidthLink <--> router20.in[5];
      router47.out[5] <--> VariableBandWidthLink <--> router23.in[5];
      router47.out[6] <--> VariableBandWidthLink <--> router44.in[4];
      router47.in[7] <--> VariableBandWidthLink <--> core47.out; 
      router47.out[7] <--> VariableBandWidthLink <--> core47.in; 
      router48.out[0] <--> VariableBandWidthLink <--> router24.in[3];
      router48.out[1] <--> VariableBandWidthLink <--> router44.in[3];
      router48.out[2] <--> VariableBandWidthLink <--> router17.in[1];
      router48.out[3] <--> VariableBandWidthLink <--> router35.in[1];
      router48.out[4] <--> VariableBandWidthLink <--> router29.in[5];
      router48.out[5] <--> VariableBandWidthLink <--> router1.in[1];
      router48.out[6] <--> VariableBandWidthLink <--> router31.in[7];
      router48.out[7] <--> VariableBandWidthLink <--> router14.in[1];
      router48.out[8] <--> VariableBandWidthLink <--> router61.in[4];
      router48.in[9] <--> VariableBandWidthLink <--> core48.out; 
      router48.out[9] <--> VariableBandWidthLink <--> core48.in; 
      router49.out[0] <--> VariableBandWidthLink <--> router54.in[0];
      router49.out[1] <--> VariableBandWidthLink <--> router24.in[1];
      router49.out[2] <--> VariableBandWidthLink <--> router29.in[0];
      router49.out[3] <--> VariableBandWidthLink <--> router20.in[0];
      router49.out[4] <--> VariableBandWidthLink <--> router51.in[0];
      router49.out[5] <--> VariableBandWidthLink <--> router36.in[1];
      router49.out[6] <--> VariableBandWidthLink <--> router63.in[1];
      router49.out[7] <--> VariableBandWidthLink <--> router13.in[7];
      router49.out[8] <--> VariableBandWidthLink <--> router54.in[4];
      router49.in[9] <--> VariableBandWidthLink <--> core49.out; 
      router49.out[9] <--> VariableBandWidthLink <--> core49.in; 
      router50.out[0] <--> VariableBandWidthLink <--> router19.in[3];
      router50.out[1] <--> VariableBandWidthLink <--> router27.in[10];
      router50.out[2] <--> VariableBandWidthLink <--> router13.in[9];
      router50.in[3] <--> VariableBandWidthLink <--> core50.out; 
      router50.out[3] <--> VariableBandWidthLink <--> core50.in; 
      router51.out[0] <--> VariableBandWidthLink <--> router49.in[4];
      router51.out[1] <--> VariableBandWidthLink <--> router3.in[1];
      router51.out[2] <--> VariableBandWidthLink <--> router60.in[5];
      router51.out[3] <--> VariableBandWidthLink <--> router13.in[5];
      router51.out[4] <--> VariableBandWidthLink <--> router53.in[5];
      router51.out[5] <--> VariableBandWidthLink <--> router31.in[8];
      router51.in[6] <--> VariableBandWidthLink <--> core51.out; 
      router51.out[6] <--> VariableBandWidthLink <--> core51.in; 
      router52.out[0] <--> VariableBandWidthLink <--> router19.in[0];
      router52.out[1] <--> VariableBandWidthLink <--> router40.in[3];
      router52.out[2] <--> VariableBandWidthLink <--> router6.in[1];
      router52.out[3] <--> VariableBandWidthLink <--> router53.in[3];
      router52.out[4] <--> VariableBandWidthLink <--> router58.in[2];
      router52.out[5] <--> VariableBandWidthLink <--> router54.in[2];
      router52.out[6] <--> VariableBandWidthLink <--> router56.in[3];
      router52.out[7] <--> VariableBandWidthLink <--> router61.in[5];
      router52.in[8] <--> VariableBandWidthLink <--> core52.out; 
      router52.out[8] <--> VariableBandWidthLink <--> core52.in; 
      router53.out[0] <--> VariableBandWidthLink <--> router24.in[0];
      router53.out[1] <--> VariableBandWidthLink <--> router0.in[2];
      router53.out[2] <--> VariableBandWidthLink <--> router44.in[2];
      router53.out[3] <--> VariableBandWidthLink <--> router52.in[3];
      router53.out[4] <--> VariableBandWidthLink <--> router36.in[0];
      router53.out[5] <--> VariableBandWidthLink <--> router51.in[4];
      router53.out[6] <--> VariableBandWidthLink <--> router46.in[0];
      router53.out[7] <--> VariableBandWidthLink <--> router20.in[2];
      router53.in[8] <--> VariableBandWidthLink <--> core53.out; 
      router53.out[8] <--> VariableBandWidthLink <--> core53.in; 
      router54.out[0] <--> VariableBandWidthLink <--> router49.in[0];
      router54.out[1] <--> VariableBandWidthLink <--> router9.in[1];
      router54.out[2] <--> VariableBandWidthLink <--> router52.in[5];
      router54.out[3] <--> VariableBandWidthLink <--> router38.in[1];
      router54.out[4] <--> VariableBandWidthLink <--> router49.in[8];
      router54.out[5] <--> VariableBandWidthLink <--> router15.in[6];
      router54.in[6] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[6] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router56.in[1];
      router55.out[1] <--> VariableBandWidthLink <--> router19.in[5];
      router55.out[2] <--> VariableBandWidthLink <--> router31.in[5];
      router55.out[3] <--> VariableBandWidthLink <--> router23.in[4];
      router55.in[4] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[4] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router60.in[2];
      router56.out[1] <--> VariableBandWidthLink <--> router55.in[0];
      router56.out[2] <--> VariableBandWidthLink <--> router32.in[0];
      router56.out[3] <--> VariableBandWidthLink <--> router52.in[6];
      router56.out[4] <--> VariableBandWidthLink <--> router28.in[4];
      router56.in[5] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[5] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router15.in[0];
      router57.out[1] <--> VariableBandWidthLink <--> router62.in[1];
      router57.out[2] <--> VariableBandWidthLink <--> router16.in[3];
      router57.out[3] <--> VariableBandWidthLink <--> router22.in[6];
      router57.in[4] <--> VariableBandWidthLink <--> core57.out; 
      router57.out[4] <--> VariableBandWidthLink <--> core57.in; 
      router58.out[0] <--> VariableBandWidthLink <--> router40.in[1];
      router58.out[1] <--> VariableBandWidthLink <--> router22.in[3];
      router58.out[2] <--> VariableBandWidthLink <--> router52.in[4];
      router58.in[3] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[3] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router27.in[0];
      router59.out[1] <--> VariableBandWidthLink <--> router43.in[2];
      router59.out[2] <--> VariableBandWidthLink <--> router37.in[1];
      router59.out[3] <--> VariableBandWidthLink <--> router41.in[4];
      router59.out[4] <--> VariableBandWidthLink <--> router39.in[4];
      router59.out[5] <--> VariableBandWidthLink <--> router36.in[4];
      router59.in[6] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[6] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router60.out[1] <--> VariableBandWidthLink <--> router28.in[1];
      router60.out[2] <--> VariableBandWidthLink <--> router56.in[0];
      router60.out[3] <--> VariableBandWidthLink <--> router38.in[0];
      router60.out[4] <--> VariableBandWidthLink <--> router39.in[2];
      router60.out[5] <--> VariableBandWidthLink <--> router51.in[2];
      router60.out[6] <--> VariableBandWidthLink <--> router1.in[0];
      router60.out[7] <--> VariableBandWidthLink <--> router13.in[6];
      router60.out[8] <--> VariableBandWidthLink <--> router6.in[2];
      router60.out[9] <--> VariableBandWidthLink <--> router32.in[3];
      router60.out[10] <--> VariableBandWidthLink <--> router0.in[4];
      router60.out[11] <--> VariableBandWidthLink <--> router32.in[5];
      router60.out[12] <--> VariableBandWidthLink <--> router63.in[2];
      router60.out[13] <--> VariableBandWidthLink <--> router29.in[9];
      router60.in[14] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[14] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router13.in[0];
      router61.out[1] <--> VariableBandWidthLink <--> router24.in[2];
      router61.out[2] <--> VariableBandWidthLink <--> router7.in[1];
      router61.out[3] <--> VariableBandWidthLink <--> router17.in[2];
      router61.out[4] <--> VariableBandWidthLink <--> router48.in[8];
      router61.out[5] <--> VariableBandWidthLink <--> router52.in[7];
      router61.in[6] <--> VariableBandWidthLink <--> core61.out; 
      router61.out[6] <--> VariableBandWidthLink <--> core61.in; 
      router62.out[0] <--> VariableBandWidthLink <--> router9.in[2];
      router62.out[1] <--> VariableBandWidthLink <--> router57.in[1];
      router62.out[2] <--> VariableBandWidthLink <--> router45.in[2];
      router62.out[3] <--> VariableBandWidthLink <--> router29.in[6];
      router62.out[4] <--> VariableBandWidthLink <--> router37.in[2];
      router62.in[5] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[5] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router23.in[2];
      router63.out[1] <--> VariableBandWidthLink <--> router49.in[6];
      router63.out[2] <--> VariableBandWidthLink <--> router60.in[12];
      router63.in[3] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[3] <--> VariableBandWidthLink <--> core63.in; 
}
