// Copyright Yaniv Fais,Tel Aviv University

package efnoc.random.S_256.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthRandom_256
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=24664, 6253");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 6;
        @display("p=24664, 6223");
      gates:
        in[6];
        out[6];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=7814, 23068");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 3;
        @display("p=7814, 23038");
      gates:
        in[3];
        out[3];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=4076, 23855");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=4076, 23825");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=1289, 1653");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 6;
        @display("p=1289, 1623");
      gates:
        in[6];
        out[6];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=17527, 3850");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 4;
        @display("p=17527, 3820");
      gates:
        in[4];
        out[4];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=2111, 192");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 3;
        @display("p=2111, 162");
      gates:
        in[3];
        out[3];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=22291, 6918");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 6;
        @display("p=22291, 6888");
      gates:
        in[6];
        out[6];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=13342, 19432");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 6;
        @display("p=13342, 19402");
      gates:
        in[6];
        out[6];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=648, 3605");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 4;
        @display("p=648, 3575");
      gates:
        in[4];
        out[4];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=6625, 4112");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 6;
        @display("p=6625, 4082");
      gates:
        in[6];
        out[6];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=7944, 6647");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 6;
        @display("p=7944, 6617");
      gates:
        in[6];
        out[6];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=6490, 16012");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 7;
        @display("p=6490, 15982");
      gates:
        in[7];
        out[7];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=16925, 1371");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=16925, 1341");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=10376, 13104");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 6;
        @display("p=10376, 13074");
      gates:
        in[6];
        out[6];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=18143, 6983");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 7;
        @display("p=18143, 6953");
      gates:
        in[7];
        out[7];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=4460, 9934");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 7;
        @display("p=4460, 9904");
      gates:
        in[7];
        out[7];
    };

    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=19050, 7609");
    }
    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=19050, 7579");
      gates:
        in[2];
        out[2];
    };

    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=2585, 20218");
    }
    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=2585, 20188");
      gates:
        in[2];
        out[2];
    };

    core18 : <coreType> like NI_Ifc {
      parameters:
        id = 18;
        @display("p=143, 12175");
    }
    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 5;
        @display("p=143, 12145");
      gates:
        in[5];
        out[5];
    };

    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=20235, 17168");
    }
    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 9;
        @display("p=20235, 17138");
      gates:
        in[9];
        out[9];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=13514, 420");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 6;
        @display("p=13514, 390");
      gates:
        in[6];
        out[6];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=13241, 3705");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 3;
        @display("p=13241, 3675");
      gates:
        in[3];
        out[3];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=15220, 5948");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 6;
        @display("p=15220, 5918");
      gates:
        in[6];
        out[6];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=19821, 14377");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 8;
        @display("p=19821, 14347");
      gates:
        in[8];
        out[8];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=21306, 9634");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 6;
        @display("p=21306, 9604");
      gates:
        in[6];
        out[6];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=84, 25452");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 5;
        @display("p=84, 25422");
      gates:
        in[5];
        out[5];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=24270, 17167");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 7;
        @display("p=24270, 17137");
      gates:
        in[7];
        out[7];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=4817, 2531");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 5;
        @display("p=4817, 2501");
      gates:
        in[5];
        out[5];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=6876, 8398");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 4;
        @display("p=6876, 8368");
      gates:
        in[4];
        out[4];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=19223, 11977");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 2;
        @display("p=19223, 11947");
      gates:
        in[2];
        out[2];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=64, 18590");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 5;
        @display("p=64, 18560");
      gates:
        in[5];
        out[5];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=23287, 15227");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 4;
        @display("p=23287, 15197");
      gates:
        in[4];
        out[4];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=4726, 9560");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=4726, 9530");
      gates:
        in[2];
        out[2];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=25078, 21816");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 9;
        @display("p=25078, 21786");
      gates:
        in[9];
        out[9];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=9810, 6865");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 7;
        @display("p=9810, 6835");
      gates:
        in[7];
        out[7];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=2467, 37");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 3;
        @display("p=2467, 7");
      gates:
        in[3];
        out[3];
    };

    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=4337, 2306");
    }
    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 4;
        @display("p=4337, 2276");
      gates:
        in[4];
        out[4];
    };

    core37 : <coreType> like NI_Ifc {
      parameters:
        id = 37;
        @display("p=12328, 9108");
    }
    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 6;
        @display("p=12328, 9078");
      gates:
        in[6];
        out[6];
    };

    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=5871, 1638");
    }
    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 4;
        @display("p=5871, 1608");
      gates:
        in[4];
        out[4];
    };

    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=1310, 25477");
    }
    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 2;
        @display("p=1310, 25447");
      gates:
        in[2];
        out[2];
    };

    core40 : <coreType> like NI_Ifc {
      parameters:
        id = 40;
        @display("p=13274, 19876");
    }
    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 6;
        @display("p=13274, 19846");
      gates:
        in[6];
        out[6];
    };

    core41 : <coreType> like NI_Ifc {
      parameters:
        id = 41;
        @display("p=14502, 877");
    }
    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 6;
        @display("p=14502, 847");
      gates:
        in[6];
        out[6];
    };

    core42 : <coreType> like NI_Ifc {
      parameters:
        id = 42;
        @display("p=8679, 8814");
    }
    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 5;
        @display("p=8679, 8784");
      gates:
        in[5];
        out[5];
    };

    core43 : <coreType> like NI_Ifc {
      parameters:
        id = 43;
        @display("p=17589, 2615");
    }
    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 4;
        @display("p=17589, 2585");
      gates:
        in[4];
        out[4];
    };

    core44 : <coreType> like NI_Ifc {
      parameters:
        id = 44;
        @display("p=11748, 14761");
    }
    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 5;
        @display("p=11748, 14731");
      gates:
        in[5];
        out[5];
    };

    core45 : <coreType> like NI_Ifc {
      parameters:
        id = 45;
        @display("p=5295, 7049");
    }
    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 3;
        @display("p=5295, 7019");
      gates:
        in[3];
        out[3];
    };

    core46 : <coreType> like NI_Ifc {
      parameters:
        id = 46;
        @display("p=8046, 24782");
    }
    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 3;
        @display("p=8046, 24752");
      gates:
        in[3];
        out[3];
    };

    core47 : <coreType> like NI_Ifc {
      parameters:
        id = 47;
        @display("p=16184, 1608");
    }
    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 5;
        @display("p=16184, 1578");
      gates:
        in[5];
        out[5];
    };

    core48 : <coreType> like NI_Ifc {
      parameters:
        id = 48;
        @display("p=19812, 4240");
    }
    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 6;
        @display("p=19812, 4210");
      gates:
        in[6];
        out[6];
    };

    core49 : <coreType> like NI_Ifc {
      parameters:
        id = 49;
        @display("p=4679, 6238");
    }
    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 6;
        @display("p=4679, 6208");
      gates:
        in[6];
        out[6];
    };

    core50 : <coreType> like NI_Ifc {
      parameters:
        id = 50;
        @display("p=22172, 4799");
    }
    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 6;
        @display("p=22172, 4769");
      gates:
        in[6];
        out[6];
    };

    core51 : <coreType> like NI_Ifc {
      parameters:
        id = 51;
        @display("p=3451, 5051");
    }
    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 4;
        @display("p=3451, 5021");
      gates:
        in[4];
        out[4];
    };

    core52 : <coreType> like NI_Ifc {
      parameters:
        id = 52;
        @display("p=21204, 16236");
    }
    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 7;
        @display("p=21204, 16206");
      gates:
        in[7];
        out[7];
    };

    core53 : <coreType> like NI_Ifc {
      parameters:
        id = 53;
        @display("p=24243, 1177");
    }
    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 6;
        @display("p=24243, 1147");
      gates:
        in[6];
        out[6];
    };

    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=4075, 5454");
    }
    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 3;
        @display("p=4075, 5424");
      gates:
        in[3];
        out[3];
    };

    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=4313, 8453");
    }
    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 5;
        @display("p=4313, 8423");
      gates:
        in[5];
        out[5];
    };

    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=12113, 12644");
    }
    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 6;
        @display("p=12113, 12614");
      gates:
        in[6];
        out[6];
    };

    core57 : <coreType> like NI_Ifc {
      parameters:
        id = 57;
        @display("p=13566, 6555");
    }
    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 2;
        @display("p=13566, 6525");
      gates:
        in[2];
        out[2];
    };

    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=14268, 1500");
    }
    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 2;
        @display("p=14268, 1470");
      gates:
        in[2];
        out[2];
    };

    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=7596, 5009");
    }
    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 4;
        @display("p=7596, 4979");
      gates:
        in[4];
        out[4];
    };

    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=2844, 4148");
    }
    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 7;
        @display("p=2844, 4118");
      gates:
        in[7];
        out[7];
    };

    core61 : <coreType> like NI_Ifc {
      parameters:
        id = 61;
        @display("p=4215, 10231");
    }
    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 4;
        @display("p=4215, 10201");
      gates:
        in[4];
        out[4];
    };

    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=4306, 7839");
    }
    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 3;
        @display("p=4306, 7809");
      gates:
        in[3];
        out[3];
    };

    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=22998, 60");
    }
    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 6;
        @display("p=22998, 30");
      gates:
        in[6];
        out[6];
    };

    core64 : <coreType> like NI_Ifc {
      parameters:
        id = 64;
        @display("p=13340, 21674");
    }
    router64 : <routerType> like Router_Ifc {
      parameters:
        id = 64;
        numPorts = 2;
        @display("p=13340, 21644");
      gates:
        in[2];
        out[2];
    };

    core65 : <coreType> like NI_Ifc {
      parameters:
        id = 65;
        @display("p=1841, 5109");
    }
    router65 : <routerType> like Router_Ifc {
      parameters:
        id = 65;
        numPorts = 5;
        @display("p=1841, 5079");
      gates:
        in[5];
        out[5];
    };

    core66 : <coreType> like NI_Ifc {
      parameters:
        id = 66;
        @display("p=4820, 1823");
    }
    router66 : <routerType> like Router_Ifc {
      parameters:
        id = 66;
        numPorts = 4;
        @display("p=4820, 1793");
      gates:
        in[4];
        out[4];
    };

    core67 : <coreType> like NI_Ifc {
      parameters:
        id = 67;
        @display("p=5947, 3034");
    }
    router67 : <routerType> like Router_Ifc {
      parameters:
        id = 67;
        numPorts = 6;
        @display("p=5947, 3004");
      gates:
        in[6];
        out[6];
    };

    core68 : <coreType> like NI_Ifc {
      parameters:
        id = 68;
        @display("p=16475, 10025");
    }
    router68 : <routerType> like Router_Ifc {
      parameters:
        id = 68;
        numPorts = 6;
        @display("p=16475, 9995");
      gates:
        in[6];
        out[6];
    };

    core69 : <coreType> like NI_Ifc {
      parameters:
        id = 69;
        @display("p=130, 14865");
    }
    router69 : <routerType> like Router_Ifc {
      parameters:
        id = 69;
        numPorts = 4;
        @display("p=130, 14835");
      gates:
        in[4];
        out[4];
    };

    core70 : <coreType> like NI_Ifc {
      parameters:
        id = 70;
        @display("p=12496, 17594");
    }
    router70 : <routerType> like Router_Ifc {
      parameters:
        id = 70;
        numPorts = 11;
        @display("p=12496, 17564");
      gates:
        in[11];
        out[11];
    };

    core71 : <coreType> like NI_Ifc {
      parameters:
        id = 71;
        @display("p=14917, 14256");
    }
    router71 : <routerType> like Router_Ifc {
      parameters:
        id = 71;
        numPorts = 4;
        @display("p=14917, 14226");
      gates:
        in[4];
        out[4];
    };

    core72 : <coreType> like NI_Ifc {
      parameters:
        id = 72;
        @display("p=4229, 4138");
    }
    router72 : <routerType> like Router_Ifc {
      parameters:
        id = 72;
        numPorts = 5;
        @display("p=4229, 4108");
      gates:
        in[5];
        out[5];
    };

    core73 : <coreType> like NI_Ifc {
      parameters:
        id = 73;
        @display("p=15237, 8061");
    }
    router73 : <routerType> like Router_Ifc {
      parameters:
        id = 73;
        numPorts = 4;
        @display("p=15237, 8031");
      gates:
        in[4];
        out[4];
    };

    core74 : <coreType> like NI_Ifc {
      parameters:
        id = 74;
        @display("p=21427, 7969");
    }
    router74 : <routerType> like Router_Ifc {
      parameters:
        id = 74;
        numPorts = 5;
        @display("p=21427, 7939");
      gates:
        in[5];
        out[5];
    };

    core75 : <coreType> like NI_Ifc {
      parameters:
        id = 75;
        @display("p=11358, 6648");
    }
    router75 : <routerType> like Router_Ifc {
      parameters:
        id = 75;
        numPorts = 4;
        @display("p=11358, 6618");
      gates:
        in[4];
        out[4];
    };

    core76 : <coreType> like NI_Ifc {
      parameters:
        id = 76;
        @display("p=1644, 5302");
    }
    router76 : <routerType> like Router_Ifc {
      parameters:
        id = 76;
        numPorts = 2;
        @display("p=1644, 5272");
      gates:
        in[2];
        out[2];
    };

    core77 : <coreType> like NI_Ifc {
      parameters:
        id = 77;
        @display("p=13720, 24219");
    }
    router77 : <routerType> like Router_Ifc {
      parameters:
        id = 77;
        numPorts = 4;
        @display("p=13720, 24189");
      gates:
        in[4];
        out[4];
    };

    core78 : <coreType> like NI_Ifc {
      parameters:
        id = 78;
        @display("p=13522, 11480");
    }
    router78 : <routerType> like Router_Ifc {
      parameters:
        id = 78;
        numPorts = 5;
        @display("p=13522, 11450");
      gates:
        in[5];
        out[5];
    };

    core79 : <coreType> like NI_Ifc {
      parameters:
        id = 79;
        @display("p=19066, 15968");
    }
    router79 : <routerType> like Router_Ifc {
      parameters:
        id = 79;
        numPorts = 8;
        @display("p=19066, 15938");
      gates:
        in[8];
        out[8];
    };

    core80 : <coreType> like NI_Ifc {
      parameters:
        id = 80;
        @display("p=9095, 5869");
    }
    router80 : <routerType> like Router_Ifc {
      parameters:
        id = 80;
        numPorts = 4;
        @display("p=9095, 5839");
      gates:
        in[4];
        out[4];
    };

    core81 : <coreType> like NI_Ifc {
      parameters:
        id = 81;
        @display("p=17630, 1924");
    }
    router81 : <routerType> like Router_Ifc {
      parameters:
        id = 81;
        numPorts = 9;
        @display("p=17630, 1894");
      gates:
        in[9];
        out[9];
    };

    core82 : <coreType> like NI_Ifc {
      parameters:
        id = 82;
        @display("p=2148, 19386");
    }
    router82 : <routerType> like Router_Ifc {
      parameters:
        id = 82;
        numPorts = 5;
        @display("p=2148, 19356");
      gates:
        in[5];
        out[5];
    };

    core83 : <coreType> like NI_Ifc {
      parameters:
        id = 83;
        @display("p=1931, 5770");
    }
    router83 : <routerType> like Router_Ifc {
      parameters:
        id = 83;
        numPorts = 5;
        @display("p=1931, 5740");
      gates:
        in[5];
        out[5];
    };

    core84 : <coreType> like NI_Ifc {
      parameters:
        id = 84;
        @display("p=21358, 643");
    }
    router84 : <routerType> like Router_Ifc {
      parameters:
        id = 84;
        numPorts = 6;
        @display("p=21358, 613");
      gates:
        in[6];
        out[6];
    };

    core85 : <coreType> like NI_Ifc {
      parameters:
        id = 85;
        @display("p=6846, 10372");
    }
    router85 : <routerType> like Router_Ifc {
      parameters:
        id = 85;
        numPorts = 5;
        @display("p=6846, 10342");
      gates:
        in[5];
        out[5];
    };

    core86 : <coreType> like NI_Ifc {
      parameters:
        id = 86;
        @display("p=1029, 1395");
    }
    router86 : <routerType> like Router_Ifc {
      parameters:
        id = 86;
        numPorts = 2;
        @display("p=1029, 1365");
      gates:
        in[2];
        out[2];
    };

    core87 : <coreType> like NI_Ifc {
      parameters:
        id = 87;
        @display("p=4874, 25230");
    }
    router87 : <routerType> like Router_Ifc {
      parameters:
        id = 87;
        numPorts = 3;
        @display("p=4874, 25200");
      gates:
        in[3];
        out[3];
    };

    core88 : <coreType> like NI_Ifc {
      parameters:
        id = 88;
        @display("p=18015, 15678");
    }
    router88 : <routerType> like Router_Ifc {
      parameters:
        id = 88;
        numPorts = 4;
        @display("p=18015, 15648");
      gates:
        in[4];
        out[4];
    };

    core89 : <coreType> like NI_Ifc {
      parameters:
        id = 89;
        @display("p=3682, 17051");
    }
    router89 : <routerType> like Router_Ifc {
      parameters:
        id = 89;
        numPorts = 5;
        @display("p=3682, 17021");
      gates:
        in[5];
        out[5];
    };

    core90 : <coreType> like NI_Ifc {
      parameters:
        id = 90;
        @display("p=3381, 7172");
    }
    router90 : <routerType> like Router_Ifc {
      parameters:
        id = 90;
        numPorts = 2;
        @display("p=3381, 7142");
      gates:
        in[2];
        out[2];
    };

    core91 : <coreType> like NI_Ifc {
      parameters:
        id = 91;
        @display("p=885, 12660");
    }
    router91 : <routerType> like Router_Ifc {
      parameters:
        id = 91;
        numPorts = 4;
        @display("p=885, 12630");
      gates:
        in[4];
        out[4];
    };

    core92 : <coreType> like NI_Ifc {
      parameters:
        id = 92;
        @display("p=23484, 23417");
    }
    router92 : <routerType> like Router_Ifc {
      parameters:
        id = 92;
        numPorts = 4;
        @display("p=23484, 23387");
      gates:
        in[4];
        out[4];
    };

    core93 : <coreType> like NI_Ifc {
      parameters:
        id = 93;
        @display("p=20282, 3581");
    }
    router93 : <routerType> like Router_Ifc {
      parameters:
        id = 93;
        numPorts = 4;
        @display("p=20282, 3551");
      gates:
        in[4];
        out[4];
    };

    core94 : <coreType> like NI_Ifc {
      parameters:
        id = 94;
        @display("p=2007, 2627");
    }
    router94 : <routerType> like Router_Ifc {
      parameters:
        id = 94;
        numPorts = 10;
        @display("p=2007, 2597");
      gates:
        in[10];
        out[10];
    };

    core95 : <coreType> like NI_Ifc {
      parameters:
        id = 95;
        @display("p=13515, 22970");
    }
    router95 : <routerType> like Router_Ifc {
      parameters:
        id = 95;
        numPorts = 4;
        @display("p=13515, 22940");
      gates:
        in[4];
        out[4];
    };

    core96 : <coreType> like NI_Ifc {
      parameters:
        id = 96;
        @display("p=7307, 8355");
    }
    router96 : <routerType> like Router_Ifc {
      parameters:
        id = 96;
        numPorts = 3;
        @display("p=7307, 8325");
      gates:
        in[3];
        out[3];
    };

    core97 : <coreType> like NI_Ifc {
      parameters:
        id = 97;
        @display("p=19318, 3731");
    }
    router97 : <routerType> like Router_Ifc {
      parameters:
        id = 97;
        numPorts = 4;
        @display("p=19318, 3701");
      gates:
        in[4];
        out[4];
    };

    core98 : <coreType> like NI_Ifc {
      parameters:
        id = 98;
        @display("p=179, 9304");
    }
    router98 : <routerType> like Router_Ifc {
      parameters:
        id = 98;
        numPorts = 7;
        @display("p=179, 9274");
      gates:
        in[7];
        out[7];
    };

    core99 : <coreType> like NI_Ifc {
      parameters:
        id = 99;
        @display("p=1809, 468");
    }
    router99 : <routerType> like Router_Ifc {
      parameters:
        id = 99;
        numPorts = 4;
        @display("p=1809, 438");
      gates:
        in[4];
        out[4];
    };

    core100 : <coreType> like NI_Ifc {
      parameters:
        id = 100;
        @display("p=17909, 17344");
    }
    router100 : <routerType> like Router_Ifc {
      parameters:
        id = 100;
        numPorts = 2;
        @display("p=17909, 17314");
      gates:
        in[2];
        out[2];
    };

    core101 : <coreType> like NI_Ifc {
      parameters:
        id = 101;
        @display("p=4751, 5240");
    }
    router101 : <routerType> like Router_Ifc {
      parameters:
        id = 101;
        numPorts = 6;
        @display("p=4751, 5210");
      gates:
        in[6];
        out[6];
    };

    core102 : <coreType> like NI_Ifc {
      parameters:
        id = 102;
        @display("p=2036, 11329");
    }
    router102 : <routerType> like Router_Ifc {
      parameters:
        id = 102;
        numPorts = 6;
        @display("p=2036, 11299");
      gates:
        in[6];
        out[6];
    };

    core103 : <coreType> like NI_Ifc {
      parameters:
        id = 103;
        @display("p=20689, 20647");
    }
    router103 : <routerType> like Router_Ifc {
      parameters:
        id = 103;
        numPorts = 6;
        @display("p=20689, 20617");
      gates:
        in[6];
        out[6];
    };

    core104 : <coreType> like NI_Ifc {
      parameters:
        id = 104;
        @display("p=25543, 8167");
    }
    router104 : <routerType> like Router_Ifc {
      parameters:
        id = 104;
        numPorts = 2;
        @display("p=25543, 8137");
      gates:
        in[2];
        out[2];
    };

    core105 : <coreType> like NI_Ifc {
      parameters:
        id = 105;
        @display("p=17342, 125");
    }
    router105 : <routerType> like Router_Ifc {
      parameters:
        id = 105;
        numPorts = 6;
        @display("p=17342, 95");
      gates:
        in[6];
        out[6];
    };

    core106 : <coreType> like NI_Ifc {
      parameters:
        id = 106;
        @display("p=24491, 3662");
    }
    router106 : <routerType> like Router_Ifc {
      parameters:
        id = 106;
        numPorts = 9;
        @display("p=24491, 3632");
      gates:
        in[9];
        out[9];
    };

    core107 : <coreType> like NI_Ifc {
      parameters:
        id = 107;
        @display("p=14742, 2573");
    }
    router107 : <routerType> like Router_Ifc {
      parameters:
        id = 107;
        numPorts = 5;
        @display("p=14742, 2543");
      gates:
        in[5];
        out[5];
    };

    core108 : <coreType> like NI_Ifc {
      parameters:
        id = 108;
        @display("p=5876, 13507");
    }
    router108 : <routerType> like Router_Ifc {
      parameters:
        id = 108;
        numPorts = 7;
        @display("p=5876, 13477");
      gates:
        in[7];
        out[7];
    };

    core109 : <coreType> like NI_Ifc {
      parameters:
        id = 109;
        @display("p=2179, 21670");
    }
    router109 : <routerType> like Router_Ifc {
      parameters:
        id = 109;
        numPorts = 2;
        @display("p=2179, 21640");
      gates:
        in[2];
        out[2];
    };

    core110 : <coreType> like NI_Ifc {
      parameters:
        id = 110;
        @display("p=5706, 2470");
    }
    router110 : <routerType> like Router_Ifc {
      parameters:
        id = 110;
        numPorts = 5;
        @display("p=5706, 2440");
      gates:
        in[5];
        out[5];
    };

    core111 : <coreType> like NI_Ifc {
      parameters:
        id = 111;
        @display("p=16498, 5973");
    }
    router111 : <routerType> like Router_Ifc {
      parameters:
        id = 111;
        numPorts = 6;
        @display("p=16498, 5943");
      gates:
        in[6];
        out[6];
    };

    core112 : <coreType> like NI_Ifc {
      parameters:
        id = 112;
        @display("p=17425, 4882");
    }
    router112 : <routerType> like Router_Ifc {
      parameters:
        id = 112;
        numPorts = 5;
        @display("p=17425, 4852");
      gates:
        in[5];
        out[5];
    };

    core113 : <coreType> like NI_Ifc {
      parameters:
        id = 113;
        @display("p=2848, 2218");
    }
    router113 : <routerType> like Router_Ifc {
      parameters:
        id = 113;
        numPorts = 4;
        @display("p=2848, 2188");
      gates:
        in[4];
        out[4];
    };

    core114 : <coreType> like NI_Ifc {
      parameters:
        id = 114;
        @display("p=24873, 10433");
    }
    router114 : <routerType> like Router_Ifc {
      parameters:
        id = 114;
        numPorts = 4;
        @display("p=24873, 10403");
      gates:
        in[4];
        out[4];
    };

    core115 : <coreType> like NI_Ifc {
      parameters:
        id = 115;
        @display("p=21112, 14271");
    }
    router115 : <routerType> like Router_Ifc {
      parameters:
        id = 115;
        numPorts = 5;
        @display("p=21112, 14241");
      gates:
        in[5];
        out[5];
    };

    core116 : <coreType> like NI_Ifc {
      parameters:
        id = 116;
        @display("p=4568, 3369");
    }
    router116 : <routerType> like Router_Ifc {
      parameters:
        id = 116;
        numPorts = 7;
        @display("p=4568, 3339");
      gates:
        in[7];
        out[7];
    };

    core117 : <coreType> like NI_Ifc {
      parameters:
        id = 117;
        @display("p=8476, 8823");
    }
    router117 : <routerType> like Router_Ifc {
      parameters:
        id = 117;
        numPorts = 2;
        @display("p=8476, 8793");
      gates:
        in[2];
        out[2];
    };

    core118 : <coreType> like NI_Ifc {
      parameters:
        id = 118;
        @display("p=18180, 2539");
    }
    router118 : <routerType> like Router_Ifc {
      parameters:
        id = 118;
        numPorts = 5;
        @display("p=18180, 2509");
      gates:
        in[5];
        out[5];
    };

    core119 : <coreType> like NI_Ifc {
      parameters:
        id = 119;
        @display("p=3394, 9476");
    }
    router119 : <routerType> like Router_Ifc {
      parameters:
        id = 119;
        numPorts = 5;
        @display("p=3394, 9446");
      gates:
        in[5];
        out[5];
    };

    core120 : <coreType> like NI_Ifc {
      parameters:
        id = 120;
        @display("p=8102, 13166");
    }
    router120 : <routerType> like Router_Ifc {
      parameters:
        id = 120;
        numPorts = 6;
        @display("p=8102, 13136");
      gates:
        in[6];
        out[6];
    };

    core121 : <coreType> like NI_Ifc {
      parameters:
        id = 121;
        @display("p=24001, 6828");
    }
    router121 : <routerType> like Router_Ifc {
      parameters:
        id = 121;
        numPorts = 2;
        @display("p=24001, 6798");
      gates:
        in[2];
        out[2];
    };

    core122 : <coreType> like NI_Ifc {
      parameters:
        id = 122;
        @display("p=10875, 5063");
    }
    router122 : <routerType> like Router_Ifc {
      parameters:
        id = 122;
        numPorts = 3;
        @display("p=10875, 5033");
      gates:
        in[3];
        out[3];
    };

    core123 : <coreType> like NI_Ifc {
      parameters:
        id = 123;
        @display("p=1387, 22476");
    }
    router123 : <routerType> like Router_Ifc {
      parameters:
        id = 123;
        numPorts = 6;
        @display("p=1387, 22446");
      gates:
        in[6];
        out[6];
    };

    core124 : <coreType> like NI_Ifc {
      parameters:
        id = 124;
        @display("p=5117, 5341");
    }
    router124 : <routerType> like Router_Ifc {
      parameters:
        id = 124;
        numPorts = 6;
        @display("p=5117, 5311");
      gates:
        in[6];
        out[6];
    };

    core125 : <coreType> like NI_Ifc {
      parameters:
        id = 125;
        @display("p=20638, 1309");
    }
    router125 : <routerType> like Router_Ifc {
      parameters:
        id = 125;
        numPorts = 5;
        @display("p=20638, 1279");
      gates:
        in[5];
        out[5];
    };

    core126 : <coreType> like NI_Ifc {
      parameters:
        id = 126;
        @display("p=2193, 20938");
    }
    router126 : <routerType> like Router_Ifc {
      parameters:
        id = 126;
        numPorts = 6;
        @display("p=2193, 20908");
      gates:
        in[6];
        out[6];
    };

    core127 : <coreType> like NI_Ifc {
      parameters:
        id = 127;
        @display("p=6422, 16438");
    }
    router127 : <routerType> like Router_Ifc {
      parameters:
        id = 127;
        numPorts = 7;
        @display("p=6422, 16408");
      gates:
        in[7];
        out[7];
    };

    core128 : <coreType> like NI_Ifc {
      parameters:
        id = 128;
        @display("p=25346, 17284");
    }
    router128 : <routerType> like Router_Ifc {
      parameters:
        id = 128;
        numPorts = 4;
        @display("p=25346, 17254");
      gates:
        in[4];
        out[4];
    };

    core129 : <coreType> like NI_Ifc {
      parameters:
        id = 129;
        @display("p=21509, 9554");
    }
    router129 : <routerType> like Router_Ifc {
      parameters:
        id = 129;
        numPorts = 3;
        @display("p=21509, 9524");
      gates:
        in[3];
        out[3];
    };

    core130 : <coreType> like NI_Ifc {
      parameters:
        id = 130;
        @display("p=7982, 17596");
    }
    router130 : <routerType> like Router_Ifc {
      parameters:
        id = 130;
        numPorts = 9;
        @display("p=7982, 17566");
      gates:
        in[9];
        out[9];
    };

    core131 : <coreType> like NI_Ifc {
      parameters:
        id = 131;
        @display("p=18022, 9812");
    }
    router131 : <routerType> like Router_Ifc {
      parameters:
        id = 131;
        numPorts = 6;
        @display("p=18022, 9782");
      gates:
        in[6];
        out[6];
    };

    core132 : <coreType> like NI_Ifc {
      parameters:
        id = 132;
        @display("p=255, 9478");
    }
    router132 : <routerType> like Router_Ifc {
      parameters:
        id = 132;
        numPorts = 4;
        @display("p=255, 9448");
      gates:
        in[4];
        out[4];
    };

    core133 : <coreType> like NI_Ifc {
      parameters:
        id = 133;
        @display("p=1934, 21256");
    }
    router133 : <routerType> like Router_Ifc {
      parameters:
        id = 133;
        numPorts = 6;
        @display("p=1934, 21226");
      gates:
        in[6];
        out[6];
    };

    core134 : <coreType> like NI_Ifc {
      parameters:
        id = 134;
        @display("p=16285, 21307");
    }
    router134 : <routerType> like Router_Ifc {
      parameters:
        id = 134;
        numPorts = 6;
        @display("p=16285, 21277");
      gates:
        in[6];
        out[6];
    };

    core135 : <coreType> like NI_Ifc {
      parameters:
        id = 135;
        @display("p=1540, 4780");
    }
    router135 : <routerType> like Router_Ifc {
      parameters:
        id = 135;
        numPorts = 7;
        @display("p=1540, 4750");
      gates:
        in[7];
        out[7];
    };

    core136 : <coreType> like NI_Ifc {
      parameters:
        id = 136;
        @display("p=21730, 1819");
    }
    router136 : <routerType> like Router_Ifc {
      parameters:
        id = 136;
        numPorts = 4;
        @display("p=21730, 1789");
      gates:
        in[4];
        out[4];
    };

    core137 : <coreType> like NI_Ifc {
      parameters:
        id = 137;
        @display("p=12946, 11951");
    }
    router137 : <routerType> like Router_Ifc {
      parameters:
        id = 137;
        numPorts = 6;
        @display("p=12946, 11921");
      gates:
        in[6];
        out[6];
    };

    core138 : <coreType> like NI_Ifc {
      parameters:
        id = 138;
        @display("p=12559, 11831");
    }
    router138 : <routerType> like Router_Ifc {
      parameters:
        id = 138;
        numPorts = 3;
        @display("p=12559, 11801");
      gates:
        in[3];
        out[3];
    };

    core139 : <coreType> like NI_Ifc {
      parameters:
        id = 139;
        @display("p=12700, 24248");
    }
    router139 : <routerType> like Router_Ifc {
      parameters:
        id = 139;
        numPorts = 6;
        @display("p=12700, 24218");
      gates:
        in[6];
        out[6];
    };

    core140 : <coreType> like NI_Ifc {
      parameters:
        id = 140;
        @display("p=5821, 8207");
    }
    router140 : <routerType> like Router_Ifc {
      parameters:
        id = 140;
        numPorts = 3;
        @display("p=5821, 8177");
      gates:
        in[3];
        out[3];
    };

    core141 : <coreType> like NI_Ifc {
      parameters:
        id = 141;
        @display("p=23217, 9706");
    }
    router141 : <routerType> like Router_Ifc {
      parameters:
        id = 141;
        numPorts = 5;
        @display("p=23217, 9676");
      gates:
        in[5];
        out[5];
    };

    core142 : <coreType> like NI_Ifc {
      parameters:
        id = 142;
        @display("p=8982, 23927");
    }
    router142 : <routerType> like Router_Ifc {
      parameters:
        id = 142;
        numPorts = 10;
        @display("p=8982, 23897");
      gates:
        in[10];
        out[10];
    };

    core143 : <coreType> like NI_Ifc {
      parameters:
        id = 143;
        @display("p=2656, 14695");
    }
    router143 : <routerType> like Router_Ifc {
      parameters:
        id = 143;
        numPorts = 7;
        @display("p=2656, 14665");
      gates:
        in[7];
        out[7];
    };

    core144 : <coreType> like NI_Ifc {
      parameters:
        id = 144;
        @display("p=580, 24383");
    }
    router144 : <routerType> like Router_Ifc {
      parameters:
        id = 144;
        numPorts = 12;
        @display("p=580, 24353");
      gates:
        in[12];
        out[12];
    };

    core145 : <coreType> like NI_Ifc {
      parameters:
        id = 145;
        @display("p=14925, 18450");
    }
    router145 : <routerType> like Router_Ifc {
      parameters:
        id = 145;
        numPorts = 5;
        @display("p=14925, 18420");
      gates:
        in[5];
        out[5];
    };

    core146 : <coreType> like NI_Ifc {
      parameters:
        id = 146;
        @display("p=12330, 14354");
    }
    router146 : <routerType> like Router_Ifc {
      parameters:
        id = 146;
        numPorts = 13;
        @display("p=12330, 14324");
      gates:
        in[13];
        out[13];
    };

    core147 : <coreType> like NI_Ifc {
      parameters:
        id = 147;
        @display("p=17284, 19354");
    }
    router147 : <routerType> like Router_Ifc {
      parameters:
        id = 147;
        numPorts = 7;
        @display("p=17284, 19324");
      gates:
        in[7];
        out[7];
    };

    core148 : <coreType> like NI_Ifc {
      parameters:
        id = 148;
        @display("p=14674, 3487");
    }
    router148 : <routerType> like Router_Ifc {
      parameters:
        id = 148;
        numPorts = 2;
        @display("p=14674, 3457");
      gates:
        in[2];
        out[2];
    };

    core149 : <coreType> like NI_Ifc {
      parameters:
        id = 149;
        @display("p=1804, 1716");
    }
    router149 : <routerType> like Router_Ifc {
      parameters:
        id = 149;
        numPorts = 3;
        @display("p=1804, 1686");
      gates:
        in[3];
        out[3];
    };

    core150 : <coreType> like NI_Ifc {
      parameters:
        id = 150;
        @display("p=3111, 11511");
    }
    router150 : <routerType> like Router_Ifc {
      parameters:
        id = 150;
        numPorts = 6;
        @display("p=3111, 11481");
      gates:
        in[6];
        out[6];
    };

    core151 : <coreType> like NI_Ifc {
      parameters:
        id = 151;
        @display("p=16576, 20647");
    }
    router151 : <routerType> like Router_Ifc {
      parameters:
        id = 151;
        numPorts = 4;
        @display("p=16576, 20617");
      gates:
        in[4];
        out[4];
    };

    core152 : <coreType> like NI_Ifc {
      parameters:
        id = 152;
        @display("p=613, 15926");
    }
    router152 : <routerType> like Router_Ifc {
      parameters:
        id = 152;
        numPorts = 4;
        @display("p=613, 15896");
      gates:
        in[4];
        out[4];
    };

    core153 : <coreType> like NI_Ifc {
      parameters:
        id = 153;
        @display("p=5210, 7694");
    }
    router153 : <routerType> like Router_Ifc {
      parameters:
        id = 153;
        numPorts = 8;
        @display("p=5210, 7664");
      gates:
        in[8];
        out[8];
    };

    core154 : <coreType> like NI_Ifc {
      parameters:
        id = 154;
        @display("p=6861, 23398");
    }
    router154 : <routerType> like Router_Ifc {
      parameters:
        id = 154;
        numPorts = 3;
        @display("p=6861, 23368");
      gates:
        in[3];
        out[3];
    };

    core155 : <coreType> like NI_Ifc {
      parameters:
        id = 155;
        @display("p=13521, 22233");
    }
    router155 : <routerType> like Router_Ifc {
      parameters:
        id = 155;
        numPorts = 7;
        @display("p=13521, 22203");
      gates:
        in[7];
        out[7];
    };

    core156 : <coreType> like NI_Ifc {
      parameters:
        id = 156;
        @display("p=10013, 3744");
    }
    router156 : <routerType> like Router_Ifc {
      parameters:
        id = 156;
        numPorts = 6;
        @display("p=10013, 3714");
      gates:
        in[6];
        out[6];
    };

    core157 : <coreType> like NI_Ifc {
      parameters:
        id = 157;
        @display("p=7653, 3478");
    }
    router157 : <routerType> like Router_Ifc {
      parameters:
        id = 157;
        numPorts = 4;
        @display("p=7653, 3448");
      gates:
        in[4];
        out[4];
    };

    core158 : <coreType> like NI_Ifc {
      parameters:
        id = 158;
        @display("p=14911, 6004");
    }
    router158 : <routerType> like Router_Ifc {
      parameters:
        id = 158;
        numPorts = 4;
        @display("p=14911, 5974");
      gates:
        in[4];
        out[4];
    };

    core159 : <coreType> like NI_Ifc {
      parameters:
        id = 159;
        @display("p=4087, 2031");
    }
    router159 : <routerType> like Router_Ifc {
      parameters:
        id = 159;
        numPorts = 3;
        @display("p=4087, 2001");
      gates:
        in[3];
        out[3];
    };

    core160 : <coreType> like NI_Ifc {
      parameters:
        id = 160;
        @display("p=24257, 14220");
    }
    router160 : <routerType> like Router_Ifc {
      parameters:
        id = 160;
        numPorts = 6;
        @display("p=24257, 14190");
      gates:
        in[6];
        out[6];
    };

    core161 : <coreType> like NI_Ifc {
      parameters:
        id = 161;
        @display("p=5663, 2163");
    }
    router161 : <routerType> like Router_Ifc {
      parameters:
        id = 161;
        numPorts = 4;
        @display("p=5663, 2133");
      gates:
        in[4];
        out[4];
    };

    core162 : <coreType> like NI_Ifc {
      parameters:
        id = 162;
        @display("p=2437, 5771");
    }
    router162 : <routerType> like Router_Ifc {
      parameters:
        id = 162;
        numPorts = 6;
        @display("p=2437, 5741");
      gates:
        in[6];
        out[6];
    };

    core163 : <coreType> like NI_Ifc {
      parameters:
        id = 163;
        @display("p=11897, 6553");
    }
    router163 : <routerType> like Router_Ifc {
      parameters:
        id = 163;
        numPorts = 6;
        @display("p=11897, 6523");
      gates:
        in[6];
        out[6];
    };

    core164 : <coreType> like NI_Ifc {
      parameters:
        id = 164;
        @display("p=15546, 2363");
    }
    router164 : <routerType> like Router_Ifc {
      parameters:
        id = 164;
        numPorts = 11;
        @display("p=15546, 2333");
      gates:
        in[11];
        out[11];
    };

    core165 : <coreType> like NI_Ifc {
      parameters:
        id = 165;
        @display("p=5311, 6657");
    }
    router165 : <routerType> like Router_Ifc {
      parameters:
        id = 165;
        numPorts = 4;
        @display("p=5311, 6627");
      gates:
        in[4];
        out[4];
    };

    core166 : <coreType> like NI_Ifc {
      parameters:
        id = 166;
        @display("p=15114, 4072");
    }
    router166 : <routerType> like Router_Ifc {
      parameters:
        id = 166;
        numPorts = 6;
        @display("p=15114, 4042");
      gates:
        in[6];
        out[6];
    };

    core167 : <coreType> like NI_Ifc {
      parameters:
        id = 167;
        @display("p=22301, 12798");
    }
    router167 : <routerType> like Router_Ifc {
      parameters:
        id = 167;
        numPorts = 3;
        @display("p=22301, 12768");
      gates:
        in[3];
        out[3];
    };

    core168 : <coreType> like NI_Ifc {
      parameters:
        id = 168;
        @display("p=19221, 4103");
    }
    router168 : <routerType> like Router_Ifc {
      parameters:
        id = 168;
        numPorts = 7;
        @display("p=19221, 4073");
      gates:
        in[7];
        out[7];
    };

    core169 : <coreType> like NI_Ifc {
      parameters:
        id = 169;
        @display("p=10560, 6738");
    }
    router169 : <routerType> like Router_Ifc {
      parameters:
        id = 169;
        numPorts = 3;
        @display("p=10560, 6708");
      gates:
        in[3];
        out[3];
    };

    core170 : <coreType> like NI_Ifc {
      parameters:
        id = 170;
        @display("p=3871, 6428");
    }
    router170 : <routerType> like Router_Ifc {
      parameters:
        id = 170;
        numPorts = 5;
        @display("p=3871, 6398");
      gates:
        in[5];
        out[5];
    };

    core171 : <coreType> like NI_Ifc {
      parameters:
        id = 171;
        @display("p=6577, 2104");
    }
    router171 : <routerType> like Router_Ifc {
      parameters:
        id = 171;
        numPorts = 2;
        @display("p=6577, 2074");
      gates:
        in[2];
        out[2];
    };

    core172 : <coreType> like NI_Ifc {
      parameters:
        id = 172;
        @display("p=13573, 11482");
    }
    router172 : <routerType> like Router_Ifc {
      parameters:
        id = 172;
        numPorts = 10;
        @display("p=13573, 11452");
      gates:
        in[10];
        out[10];
    };

    core173 : <coreType> like NI_Ifc {
      parameters:
        id = 173;
        @display("p=21857, 22184");
    }
    router173 : <routerType> like Router_Ifc {
      parameters:
        id = 173;
        numPorts = 3;
        @display("p=21857, 22154");
      gates:
        in[3];
        out[3];
    };

    core174 : <coreType> like NI_Ifc {
      parameters:
        id = 174;
        @display("p=8822, 20107");
    }
    router174 : <routerType> like Router_Ifc {
      parameters:
        id = 174;
        numPorts = 2;
        @display("p=8822, 20077");
      gates:
        in[2];
        out[2];
    };

    core175 : <coreType> like NI_Ifc {
      parameters:
        id = 175;
        @display("p=24965, 20694");
    }
    router175 : <routerType> like Router_Ifc {
      parameters:
        id = 175;
        numPorts = 3;
        @display("p=24965, 20664");
      gates:
        in[3];
        out[3];
    };

    core176 : <coreType> like NI_Ifc {
      parameters:
        id = 176;
        @display("p=351, 19890");
    }
    router176 : <routerType> like Router_Ifc {
      parameters:
        id = 176;
        numPorts = 5;
        @display("p=351, 19860");
      gates:
        in[5];
        out[5];
    };

    core177 : <coreType> like NI_Ifc {
      parameters:
        id = 177;
        @display("p=931, 12796");
    }
    router177 : <routerType> like Router_Ifc {
      parameters:
        id = 177;
        numPorts = 3;
        @display("p=931, 12766");
      gates:
        in[3];
        out[3];
    };

    core178 : <coreType> like NI_Ifc {
      parameters:
        id = 178;
        @display("p=5287, 18415");
    }
    router178 : <routerType> like Router_Ifc {
      parameters:
        id = 178;
        numPorts = 4;
        @display("p=5287, 18385");
      gates:
        in[4];
        out[4];
    };

    core179 : <coreType> like NI_Ifc {
      parameters:
        id = 179;
        @display("p=3053, 4697");
    }
    router179 : <routerType> like Router_Ifc {
      parameters:
        id = 179;
        numPorts = 3;
        @display("p=3053, 4667");
      gates:
        in[3];
        out[3];
    };

    core180 : <coreType> like NI_Ifc {
      parameters:
        id = 180;
        @display("p=23837, 6692");
    }
    router180 : <routerType> like Router_Ifc {
      parameters:
        id = 180;
        numPorts = 6;
        @display("p=23837, 6662");
      gates:
        in[6];
        out[6];
    };

    core181 : <coreType> like NI_Ifc {
      parameters:
        id = 181;
        @display("p=12751, 21881");
    }
    router181 : <routerType> like Router_Ifc {
      parameters:
        id = 181;
        numPorts = 5;
        @display("p=12751, 21851");
      gates:
        in[5];
        out[5];
    };

    core182 : <coreType> like NI_Ifc {
      parameters:
        id = 182;
        @display("p=687, 18646");
    }
    router182 : <routerType> like Router_Ifc {
      parameters:
        id = 182;
        numPorts = 9;
        @display("p=687, 18616");
      gates:
        in[9];
        out[9];
    };

    core183 : <coreType> like NI_Ifc {
      parameters:
        id = 183;
        @display("p=708, 3512");
    }
    router183 : <routerType> like Router_Ifc {
      parameters:
        id = 183;
        numPorts = 9;
        @display("p=708, 3482");
      gates:
        in[9];
        out[9];
    };

    core184 : <coreType> like NI_Ifc {
      parameters:
        id = 184;
        @display("p=4572, 18390");
    }
    router184 : <routerType> like Router_Ifc {
      parameters:
        id = 184;
        numPorts = 4;
        @display("p=4572, 18360");
      gates:
        in[4];
        out[4];
    };

    core185 : <coreType> like NI_Ifc {
      parameters:
        id = 185;
        @display("p=877, 2306");
    }
    router185 : <routerType> like Router_Ifc {
      parameters:
        id = 185;
        numPorts = 4;
        @display("p=877, 2276");
      gates:
        in[4];
        out[4];
    };

    core186 : <coreType> like NI_Ifc {
      parameters:
        id = 186;
        @display("p=10604, 288");
    }
    router186 : <routerType> like Router_Ifc {
      parameters:
        id = 186;
        numPorts = 3;
        @display("p=10604, 258");
      gates:
        in[3];
        out[3];
    };

    core187 : <coreType> like NI_Ifc {
      parameters:
        id = 187;
        @display("p=2788, 16092");
    }
    router187 : <routerType> like Router_Ifc {
      parameters:
        id = 187;
        numPorts = 4;
        @display("p=2788, 16062");
      gates:
        in[4];
        out[4];
    };

    core188 : <coreType> like NI_Ifc {
      parameters:
        id = 188;
        @display("p=94, 23299");
    }
    router188 : <routerType> like Router_Ifc {
      parameters:
        id = 188;
        numPorts = 7;
        @display("p=94, 23269");
      gates:
        in[7];
        out[7];
    };

    core189 : <coreType> like NI_Ifc {
      parameters:
        id = 189;
        @display("p=78, 5032");
    }
    router189 : <routerType> like Router_Ifc {
      parameters:
        id = 189;
        numPorts = 4;
        @display("p=78, 5002");
      gates:
        in[4];
        out[4];
    };

    core190 : <coreType> like NI_Ifc {
      parameters:
        id = 190;
        @display("p=5154, 19842");
    }
    router190 : <routerType> like Router_Ifc {
      parameters:
        id = 190;
        numPorts = 5;
        @display("p=5154, 19812");
      gates:
        in[5];
        out[5];
    };

    core191 : <coreType> like NI_Ifc {
      parameters:
        id = 191;
        @display("p=3759, 21796");
    }
    router191 : <routerType> like Router_Ifc {
      parameters:
        id = 191;
        numPorts = 4;
        @display("p=3759, 21766");
      gates:
        in[4];
        out[4];
    };

    core192 : <coreType> like NI_Ifc {
      parameters:
        id = 192;
        @display("p=9992, 14075");
    }
    router192 : <routerType> like Router_Ifc {
      parameters:
        id = 192;
        numPorts = 8;
        @display("p=9992, 14045");
      gates:
        in[8];
        out[8];
    };

    core193 : <coreType> like NI_Ifc {
      parameters:
        id = 193;
        @display("p=25347, 17461");
    }
    router193 : <routerType> like Router_Ifc {
      parameters:
        id = 193;
        numPorts = 4;
        @display("p=25347, 17431");
      gates:
        in[4];
        out[4];
    };

    core194 : <coreType> like NI_Ifc {
      parameters:
        id = 194;
        @display("p=18169, 2054");
    }
    router194 : <routerType> like Router_Ifc {
      parameters:
        id = 194;
        numPorts = 5;
        @display("p=18169, 2024");
      gates:
        in[5];
        out[5];
    };

    core195 : <coreType> like NI_Ifc {
      parameters:
        id = 195;
        @display("p=4234, 15331");
    }
    router195 : <routerType> like Router_Ifc {
      parameters:
        id = 195;
        numPorts = 8;
        @display("p=4234, 15301");
      gates:
        in[8];
        out[8];
    };

    core196 : <coreType> like NI_Ifc {
      parameters:
        id = 196;
        @display("p=11365, 6816");
    }
    router196 : <routerType> like Router_Ifc {
      parameters:
        id = 196;
        numPorts = 4;
        @display("p=11365, 6786");
      gates:
        in[4];
        out[4];
    };

    core197 : <coreType> like NI_Ifc {
      parameters:
        id = 197;
        @display("p=4963, 2468");
    }
    router197 : <routerType> like Router_Ifc {
      parameters:
        id = 197;
        numPorts = 8;
        @display("p=4963, 2438");
      gates:
        in[8];
        out[8];
    };

    core198 : <coreType> like NI_Ifc {
      parameters:
        id = 198;
        @display("p=7548, 5257");
    }
    router198 : <routerType> like Router_Ifc {
      parameters:
        id = 198;
        numPorts = 3;
        @display("p=7548, 5227");
      gates:
        in[3];
        out[3];
    };

    core199 : <coreType> like NI_Ifc {
      parameters:
        id = 199;
        @display("p=348, 19165");
    }
    router199 : <routerType> like Router_Ifc {
      parameters:
        id = 199;
        numPorts = 5;
        @display("p=348, 19135");
      gates:
        in[5];
        out[5];
    };

    core200 : <coreType> like NI_Ifc {
      parameters:
        id = 200;
        @display("p=2465, 17642");
    }
    router200 : <routerType> like Router_Ifc {
      parameters:
        id = 200;
        numPorts = 6;
        @display("p=2465, 17612");
      gates:
        in[6];
        out[6];
    };

    core201 : <coreType> like NI_Ifc {
      parameters:
        id = 201;
        @display("p=2313, 934");
    }
    router201 : <routerType> like Router_Ifc {
      parameters:
        id = 201;
        numPorts = 3;
        @display("p=2313, 904");
      gates:
        in[3];
        out[3];
    };

    core202 : <coreType> like NI_Ifc {
      parameters:
        id = 202;
        @display("p=4379, 14651");
    }
    router202 : <routerType> like Router_Ifc {
      parameters:
        id = 202;
        numPorts = 4;
        @display("p=4379, 14621");
      gates:
        in[4];
        out[4];
    };

    core203 : <coreType> like NI_Ifc {
      parameters:
        id = 203;
        @display("p=14099, 25294");
    }
    router203 : <routerType> like Router_Ifc {
      parameters:
        id = 203;
        numPorts = 2;
        @display("p=14099, 25264");
      gates:
        in[2];
        out[2];
    };

    core204 : <coreType> like NI_Ifc {
      parameters:
        id = 204;
        @display("p=6414, 3428");
    }
    router204 : <routerType> like Router_Ifc {
      parameters:
        id = 204;
        numPorts = 4;
        @display("p=6414, 3398");
      gates:
        in[4];
        out[4];
    };

    core205 : <coreType> like NI_Ifc {
      parameters:
        id = 205;
        @display("p=25043, 11038");
    }
    router205 : <routerType> like Router_Ifc {
      parameters:
        id = 205;
        numPorts = 3;
        @display("p=25043, 11008");
      gates:
        in[3];
        out[3];
    };

    core206 : <coreType> like NI_Ifc {
      parameters:
        id = 206;
        @display("p=11178, 17186");
    }
    router206 : <routerType> like Router_Ifc {
      parameters:
        id = 206;
        numPorts = 6;
        @display("p=11178, 17156");
      gates:
        in[6];
        out[6];
    };

    core207 : <coreType> like NI_Ifc {
      parameters:
        id = 207;
        @display("p=799, 23010");
    }
    router207 : <routerType> like Router_Ifc {
      parameters:
        id = 207;
        numPorts = 3;
        @display("p=799, 22980");
      gates:
        in[3];
        out[3];
    };

    core208 : <coreType> like NI_Ifc {
      parameters:
        id = 208;
        @display("p=19619, 7341");
    }
    router208 : <routerType> like Router_Ifc {
      parameters:
        id = 208;
        numPorts = 6;
        @display("p=19619, 7311");
      gates:
        in[6];
        out[6];
    };

    core209 : <coreType> like NI_Ifc {
      parameters:
        id = 209;
        @display("p=22628, 3750");
    }
    router209 : <routerType> like Router_Ifc {
      parameters:
        id = 209;
        numPorts = 4;
        @display("p=22628, 3720");
      gates:
        in[4];
        out[4];
    };

    core210 : <coreType> like NI_Ifc {
      parameters:
        id = 210;
        @display("p=2529, 664");
    }
    router210 : <routerType> like Router_Ifc {
      parameters:
        id = 210;
        numPorts = 4;
        @display("p=2529, 634");
      gates:
        in[4];
        out[4];
    };

    core211 : <coreType> like NI_Ifc {
      parameters:
        id = 211;
        @display("p=11509, 14398");
    }
    router211 : <routerType> like Router_Ifc {
      parameters:
        id = 211;
        numPorts = 5;
        @display("p=11509, 14368");
      gates:
        in[5];
        out[5];
    };

    core212 : <coreType> like NI_Ifc {
      parameters:
        id = 212;
        @display("p=24696, 6392");
    }
    router212 : <routerType> like Router_Ifc {
      parameters:
        id = 212;
        numPorts = 8;
        @display("p=24696, 6362");
      gates:
        in[8];
        out[8];
    };

    core213 : <coreType> like NI_Ifc {
      parameters:
        id = 213;
        @display("p=2723, 4873");
    }
    router213 : <routerType> like Router_Ifc {
      parameters:
        id = 213;
        numPorts = 6;
        @display("p=2723, 4843");
      gates:
        in[6];
        out[6];
    };

    core214 : <coreType> like NI_Ifc {
      parameters:
        id = 214;
        @display("p=2522, 5064");
    }
    router214 : <routerType> like Router_Ifc {
      parameters:
        id = 214;
        numPorts = 6;
        @display("p=2522, 5034");
      gates:
        in[6];
        out[6];
    };

    core215 : <coreType> like NI_Ifc {
      parameters:
        id = 215;
        @display("p=5262, 17526");
    }
    router215 : <routerType> like Router_Ifc {
      parameters:
        id = 215;
        numPorts = 3;
        @display("p=5262, 17496");
      gates:
        in[3];
        out[3];
    };

    core216 : <coreType> like NI_Ifc {
      parameters:
        id = 216;
        @display("p=16716, 5772");
    }
    router216 : <routerType> like Router_Ifc {
      parameters:
        id = 216;
        numPorts = 6;
        @display("p=16716, 5742");
      gates:
        in[6];
        out[6];
    };

    core217 : <coreType> like NI_Ifc {
      parameters:
        id = 217;
        @display("p=59, 22470");
    }
    router217 : <routerType> like Router_Ifc {
      parameters:
        id = 217;
        numPorts = 6;
        @display("p=59, 22440");
      gates:
        in[6];
        out[6];
    };

    core218 : <coreType> like NI_Ifc {
      parameters:
        id = 218;
        @display("p=24982, 3893");
    }
    router218 : <routerType> like Router_Ifc {
      parameters:
        id = 218;
        numPorts = 6;
        @display("p=24982, 3863");
      gates:
        in[6];
        out[6];
    };

    core219 : <coreType> like NI_Ifc {
      parameters:
        id = 219;
        @display("p=20710, 24596");
    }
    router219 : <routerType> like Router_Ifc {
      parameters:
        id = 219;
        numPorts = 4;
        @display("p=20710, 24566");
      gates:
        in[4];
        out[4];
    };

    core220 : <coreType> like NI_Ifc {
      parameters:
        id = 220;
        @display("p=23295, 19525");
    }
    router220 : <routerType> like Router_Ifc {
      parameters:
        id = 220;
        numPorts = 6;
        @display("p=23295, 19495");
      gates:
        in[6];
        out[6];
    };

    core221 : <coreType> like NI_Ifc {
      parameters:
        id = 221;
        @display("p=281, 6035");
    }
    router221 : <routerType> like Router_Ifc {
      parameters:
        id = 221;
        numPorts = 4;
        @display("p=281, 6005");
      gates:
        in[4];
        out[4];
    };

    core222 : <coreType> like NI_Ifc {
      parameters:
        id = 222;
        @display("p=1400, 20019");
    }
    router222 : <routerType> like Router_Ifc {
      parameters:
        id = 222;
        numPorts = 4;
        @display("p=1400, 19989");
      gates:
        in[4];
        out[4];
    };

    core223 : <coreType> like NI_Ifc {
      parameters:
        id = 223;
        @display("p=637, 13336");
    }
    router223 : <routerType> like Router_Ifc {
      parameters:
        id = 223;
        numPorts = 9;
        @display("p=637, 13306");
      gates:
        in[9];
        out[9];
    };

    core224 : <coreType> like NI_Ifc {
      parameters:
        id = 224;
        @display("p=4888, 15377");
    }
    router224 : <routerType> like Router_Ifc {
      parameters:
        id = 224;
        numPorts = 7;
        @display("p=4888, 15347");
      gates:
        in[7];
        out[7];
    };

    core225 : <coreType> like NI_Ifc {
      parameters:
        id = 225;
        @display("p=19441, 9432");
    }
    router225 : <routerType> like Router_Ifc {
      parameters:
        id = 225;
        numPorts = 8;
        @display("p=19441, 9402");
      gates:
        in[8];
        out[8];
    };

    core226 : <coreType> like NI_Ifc {
      parameters:
        id = 226;
        @display("p=18120, 18284");
    }
    router226 : <routerType> like Router_Ifc {
      parameters:
        id = 226;
        numPorts = 5;
        @display("p=18120, 18254");
      gates:
        in[5];
        out[5];
    };

    core227 : <coreType> like NI_Ifc {
      parameters:
        id = 227;
        @display("p=3545, 11634");
    }
    router227 : <routerType> like Router_Ifc {
      parameters:
        id = 227;
        numPorts = 6;
        @display("p=3545, 11604");
      gates:
        in[6];
        out[6];
    };

    core228 : <coreType> like NI_Ifc {
      parameters:
        id = 228;
        @display("p=21312, 6004");
    }
    router228 : <routerType> like Router_Ifc {
      parameters:
        id = 228;
        numPorts = 5;
        @display("p=21312, 5974");
      gates:
        in[5];
        out[5];
    };

    core229 : <coreType> like NI_Ifc {
      parameters:
        id = 229;
        @display("p=184, 22064");
    }
    router229 : <routerType> like Router_Ifc {
      parameters:
        id = 229;
        numPorts = 4;
        @display("p=184, 22034");
      gates:
        in[4];
        out[4];
    };

    core230 : <coreType> like NI_Ifc {
      parameters:
        id = 230;
        @display("p=18994, 25436");
    }
    router230 : <routerType> like Router_Ifc {
      parameters:
        id = 230;
        numPorts = 4;
        @display("p=18994, 25406");
      gates:
        in[4];
        out[4];
    };

    core231 : <coreType> like NI_Ifc {
      parameters:
        id = 231;
        @display("p=514, 18825");
    }
    router231 : <routerType> like Router_Ifc {
      parameters:
        id = 231;
        numPorts = 3;
        @display("p=514, 18795");
      gates:
        in[3];
        out[3];
    };

    core232 : <coreType> like NI_Ifc {
      parameters:
        id = 232;
        @display("p=9156, 3076");
    }
    router232 : <routerType> like Router_Ifc {
      parameters:
        id = 232;
        numPorts = 6;
        @display("p=9156, 3046");
      gates:
        in[6];
        out[6];
    };

    core233 : <coreType> like NI_Ifc {
      parameters:
        id = 233;
        @display("p=3883, 1771");
    }
    router233 : <routerType> like Router_Ifc {
      parameters:
        id = 233;
        numPorts = 2;
        @display("p=3883, 1741");
      gates:
        in[2];
        out[2];
    };

    core234 : <coreType> like NI_Ifc {
      parameters:
        id = 234;
        @display("p=13892, 24790");
    }
    router234 : <routerType> like Router_Ifc {
      parameters:
        id = 234;
        numPorts = 2;
        @display("p=13892, 24760");
      gates:
        in[2];
        out[2];
    };

    core235 : <coreType> like NI_Ifc {
      parameters:
        id = 235;
        @display("p=3844, 12984");
    }
    router235 : <routerType> like Router_Ifc {
      parameters:
        id = 235;
        numPorts = 8;
        @display("p=3844, 12954");
      gates:
        in[8];
        out[8];
    };

    core236 : <coreType> like NI_Ifc {
      parameters:
        id = 236;
        @display("p=22039, 13294");
    }
    router236 : <routerType> like Router_Ifc {
      parameters:
        id = 236;
        numPorts = 6;
        @display("p=22039, 13264");
      gates:
        in[6];
        out[6];
    };

    core237 : <coreType> like NI_Ifc {
      parameters:
        id = 237;
        @display("p=10567, 10127");
    }
    router237 : <routerType> like Router_Ifc {
      parameters:
        id = 237;
        numPorts = 6;
        @display("p=10567, 10097");
      gates:
        in[6];
        out[6];
    };

    core238 : <coreType> like NI_Ifc {
      parameters:
        id = 238;
        @display("p=12787, 24957");
    }
    router238 : <routerType> like Router_Ifc {
      parameters:
        id = 238;
        numPorts = 3;
        @display("p=12787, 24927");
      gates:
        in[3];
        out[3];
    };

    core239 : <coreType> like NI_Ifc {
      parameters:
        id = 239;
        @display("p=3184, 11468");
    }
    router239 : <routerType> like Router_Ifc {
      parameters:
        id = 239;
        numPorts = 6;
        @display("p=3184, 11438");
      gates:
        in[6];
        out[6];
    };

    core240 : <coreType> like NI_Ifc {
      parameters:
        id = 240;
        @display("p=16207, 623");
    }
    router240 : <routerType> like Router_Ifc {
      parameters:
        id = 240;
        numPorts = 4;
        @display("p=16207, 593");
      gates:
        in[4];
        out[4];
    };

    core241 : <coreType> like NI_Ifc {
      parameters:
        id = 241;
        @display("p=1487, 4690");
    }
    router241 : <routerType> like Router_Ifc {
      parameters:
        id = 241;
        numPorts = 5;
        @display("p=1487, 4660");
      gates:
        in[5];
        out[5];
    };

    core242 : <coreType> like NI_Ifc {
      parameters:
        id = 242;
        @display("p=19223, 25163");
    }
    router242 : <routerType> like Router_Ifc {
      parameters:
        id = 242;
        numPorts = 3;
        @display("p=19223, 25133");
      gates:
        in[3];
        out[3];
    };

    core243 : <coreType> like NI_Ifc {
      parameters:
        id = 243;
        @display("p=4060, 20872");
    }
    router243 : <routerType> like Router_Ifc {
      parameters:
        id = 243;
        numPorts = 9;
        @display("p=4060, 20842");
      gates:
        in[9];
        out[9];
    };

    core244 : <coreType> like NI_Ifc {
      parameters:
        id = 244;
        @display("p=675, 19547");
    }
    router244 : <routerType> like Router_Ifc {
      parameters:
        id = 244;
        numPorts = 5;
        @display("p=675, 19517");
      gates:
        in[5];
        out[5];
    };

    core245 : <coreType> like NI_Ifc {
      parameters:
        id = 245;
        @display("p=23242, 9121");
    }
    router245 : <routerType> like Router_Ifc {
      parameters:
        id = 245;
        numPorts = 4;
        @display("p=23242, 9091");
      gates:
        in[4];
        out[4];
    };

    core246 : <coreType> like NI_Ifc {
      parameters:
        id = 246;
        @display("p=2282, 1038");
    }
    router246 : <routerType> like Router_Ifc {
      parameters:
        id = 246;
        numPorts = 4;
        @display("p=2282, 1008");
      gates:
        in[4];
        out[4];
    };

    core247 : <coreType> like NI_Ifc {
      parameters:
        id = 247;
        @display("p=4959, 7457");
    }
    router247 : <routerType> like Router_Ifc {
      parameters:
        id = 247;
        numPorts = 4;
        @display("p=4959, 7427");
      gates:
        in[4];
        out[4];
    };

    core248 : <coreType> like NI_Ifc {
      parameters:
        id = 248;
        @display("p=2035, 16538");
    }
    router248 : <routerType> like Router_Ifc {
      parameters:
        id = 248;
        numPorts = 3;
        @display("p=2035, 16508");
      gates:
        in[3];
        out[3];
    };

    core249 : <coreType> like NI_Ifc {
      parameters:
        id = 249;
        @display("p=12290, 18076");
    }
    router249 : <routerType> like Router_Ifc {
      parameters:
        id = 249;
        numPorts = 4;
        @display("p=12290, 18046");
      gates:
        in[4];
        out[4];
    };

    core250 : <coreType> like NI_Ifc {
      parameters:
        id = 250;
        @display("p=3725, 9189");
    }
    router250 : <routerType> like Router_Ifc {
      parameters:
        id = 250;
        numPorts = 5;
        @display("p=3725, 9159");
      gates:
        in[5];
        out[5];
    };

    core251 : <coreType> like NI_Ifc {
      parameters:
        id = 251;
        @display("p=11286, 19137");
    }
    router251 : <routerType> like Router_Ifc {
      parameters:
        id = 251;
        numPorts = 5;
        @display("p=11286, 19107");
      gates:
        in[5];
        out[5];
    };

    core252 : <coreType> like NI_Ifc {
      parameters:
        id = 252;
        @display("p=23104, 4262");
    }
    router252 : <routerType> like Router_Ifc {
      parameters:
        id = 252;
        numPorts = 8;
        @display("p=23104, 4232");
      gates:
        in[8];
        out[8];
    };

    core253 : <coreType> like NI_Ifc {
      parameters:
        id = 253;
        @display("p=1414, 8600");
    }
    router253 : <routerType> like Router_Ifc {
      parameters:
        id = 253;
        numPorts = 4;
        @display("p=1414, 8570");
      gates:
        in[4];
        out[4];
    };

    core254 : <coreType> like NI_Ifc {
      parameters:
        id = 254;
        @display("p=19843, 17351");
    }
    router254 : <routerType> like Router_Ifc {
      parameters:
        id = 254;
        numPorts = 7;
        @display("p=19843, 17321");
      gates:
        in[7];
        out[7];
    };

    core255 : <coreType> like NI_Ifc {
      parameters:
        id = 255;
        @display("p=20641, 264");
    }
    router255 : <routerType> like Router_Ifc {
      parameters:
        id = 255;
        numPorts = 2;
        @display("p=20641, 234");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router199.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router94.in[2];
      router0.out[2] <--> VariableBandWidthLink <--> router65.in[0];
      router0.out[3] <--> VariableBandWidthLink <--> router81.in[1];
      router0.out[4] <--> VariableBandWidthLink <--> router56.in[3];
      router0.in[5] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[5] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router144.in[5];
      router1.out[1] <--> VariableBandWidthLink <--> router106.in[5];
      router1.in[2] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[2] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router101.in[1];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router170.in[0];
      router3.out[1] <--> VariableBandWidthLink <--> router113.in[0];
      router3.out[2] <--> VariableBandWidthLink <--> router42.in[1];
      router3.out[3] <--> VariableBandWidthLink <--> router31.in[2];
      router3.out[4] <--> VariableBandWidthLink <--> router204.in[2];
      router3.in[5] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[5] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router166.in[1];
      router4.out[1] <--> VariableBandWidthLink <--> router172.in[2];
      router4.out[2] <--> VariableBandWidthLink <--> router91.in[1];
      router4.in[3] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[3] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router120.in[4];
      router5.out[1] <--> VariableBandWidthLink <--> router139.in[4];
      router5.in[2] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[2] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router180.in[0];
      router6.out[1] <--> VariableBandWidthLink <--> router93.in[1];
      router6.out[2] <--> VariableBandWidthLink <--> router129.in[0];
      router6.out[3] <--> VariableBandWidthLink <--> router20.in[2];
      router6.out[4] <--> VariableBandWidthLink <--> router50.in[2];
      router6.in[5] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[5] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router92.in[1];
      router7.out[1] <--> VariableBandWidthLink <--> router13.in[2];
      router7.out[2] <--> VariableBandWidthLink <--> router114.in[1];
      router7.out[3] <--> VariableBandWidthLink <--> router178.in[1];
      router7.out[4] <--> VariableBandWidthLink <--> router214.in[4];
      router7.in[5] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[5] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router200.in[3];
      router8.out[1] <--> VariableBandWidthLink <--> router153.in[5];
      router8.out[2] <--> VariableBandWidthLink <--> router40.in[4];
      router8.in[3] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[3] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router52.in[1];
      router9.out[1] <--> VariableBandWidthLink <--> router92.in[2];
      router9.out[2] <--> VariableBandWidthLink <--> router236.in[4];
      router9.out[3] <--> VariableBandWidthLink <--> router255.in[0];
      router9.out[4] <--> VariableBandWidthLink <--> router111.in[4];
      router9.in[5] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[5] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router160.in[1];
      router10.out[1] <--> VariableBandWidthLink <--> router228.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router147.in[2];
      router10.out[3] <--> VariableBandWidthLink <--> router235.in[6];
      router10.out[4] <--> VariableBandWidthLink <--> router250.in[3];
      router10.in[5] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[5] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router34.in[0];
      router11.out[1] <--> VariableBandWidthLink <--> router225.in[3];
      router11.out[2] <--> VariableBandWidthLink <--> router23.in[1];
      router11.out[3] <--> VariableBandWidthLink <--> router79.in[3];
      router11.out[4] <--> VariableBandWidthLink <--> router59.in[2];
      router11.out[5] <--> VariableBandWidthLink <--> router61.in[1];
      router11.in[6] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[6] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router208.in[3];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router106.in[3];
      router13.out[1] <--> VariableBandWidthLink <--> router196.in[2];
      router13.out[2] <--> VariableBandWidthLink <--> router7.in[1];
      router13.out[3] <--> VariableBandWidthLink <--> router176.in[2];
      router13.out[4] <--> VariableBandWidthLink <--> router197.in[4];
      router13.in[5] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[5] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router217.in[1];
      router14.out[1] <--> VariableBandWidthLink <--> router48.in[2];
      router14.out[2] <--> VariableBandWidthLink <--> router251.in[1];
      router14.out[3] <--> VariableBandWidthLink <--> router155.in[2];
      router14.out[4] <--> VariableBandWidthLink <--> router81.in[6];
      router14.out[5] <--> VariableBandWidthLink <--> router64.in[0];
      router14.in[6] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[6] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router208.in[0];
      router15.out[1] <--> VariableBandWidthLink <--> router19.in[3];
      router15.out[2] <--> VariableBandWidthLink <--> router70.in[6];
      router15.out[3] <--> VariableBandWidthLink <--> router25.in[3];
      router15.out[4] <--> VariableBandWidthLink <--> router133.in[2];
      router15.out[5] <--> VariableBandWidthLink <--> router23.in[5];
      router15.in[6] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[6] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router33.in[4];
      router16.in[1] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[1] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router230.in[2];
      router17.in[1] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[1] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router23.in[0];
      router18.out[1] <--> VariableBandWidthLink <--> router120.in[3];
      router18.out[2] <--> VariableBandWidthLink <--> router213.in[1];
      router18.out[3] <--> VariableBandWidthLink <--> router41.in[3];
      router18.in[4] <--> VariableBandWidthLink <--> core18.out; 
      router18.out[4] <--> VariableBandWidthLink <--> core18.in; 
      router19.out[0] <--> VariableBandWidthLink <--> router33.in[1];
      router19.out[1] <--> VariableBandWidthLink <--> router33.in[2];
      router19.out[2] <--> VariableBandWidthLink <--> router118.in[1];
      router19.out[3] <--> VariableBandWidthLink <--> router15.in[1];
      router19.out[4] <--> VariableBandWidthLink <--> router169.in[0];
      router19.out[5] <--> VariableBandWidthLink <--> router186.in[0];
      router19.out[6] <--> VariableBandWidthLink <--> router140.in[0];
      router19.out[7] <--> VariableBandWidthLink <--> router223.in[7];
      router19.in[8] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[8] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router70.in[1];
      router20.out[1] <--> VariableBandWidthLink <--> router139.in[1];
      router20.out[2] <--> VariableBandWidthLink <--> router6.in[3];
      router20.out[3] <--> VariableBandWidthLink <--> router197.in[5];
      router20.out[4] <--> VariableBandWidthLink <--> router60.in[5];
      router20.in[5] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[5] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router144.in[2];
      router21.out[1] <--> VariableBandWidthLink <--> router252.in[4];
      router21.in[2] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[2] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router162.in[1];
      router22.out[1] <--> VariableBandWidthLink <--> router252.in[2];
      router22.out[2] <--> VariableBandWidthLink <--> router138.in[1];
      router22.out[3] <--> VariableBandWidthLink <--> router188.in[3];
      router22.out[4] <--> VariableBandWidthLink <--> router168.in[3];
      router22.in[5] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[5] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router23.out[1] <--> VariableBandWidthLink <--> router11.in[2];
      router23.out[2] <--> VariableBandWidthLink <--> router98.in[2];
      router23.out[3] <--> VariableBandWidthLink <--> router100.in[0];
      router23.out[4] <--> VariableBandWidthLink <--> router243.in[4];
      router23.out[5] <--> VariableBandWidthLink <--> router15.in[5];
      router23.out[6] <--> VariableBandWidthLink <--> router159.in[0];
      router23.in[7] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[7] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router92.in[0];
      router24.out[1] <--> VariableBandWidthLink <--> router50.in[1];
      router24.out[2] <--> VariableBandWidthLink <--> router172.in[3];
      router24.out[3] <--> VariableBandWidthLink <--> router84.in[0];
      router24.out[4] <--> VariableBandWidthLink <--> router166.in[2];
      router24.in[5] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[5] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router53.in[0];
      router25.out[1] <--> VariableBandWidthLink <--> router154.in[0];
      router25.out[2] <--> VariableBandWidthLink <--> router191.in[0];
      router25.out[3] <--> VariableBandWidthLink <--> router15.in[3];
      router25.in[4] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[4] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router195.in[0];
      router26.out[1] <--> VariableBandWidthLink <--> router254.in[0];
      router26.out[2] <--> VariableBandWidthLink <--> router162.in[0];
      router26.out[3] <--> VariableBandWidthLink <--> router95.in[0];
      router26.out[4] <--> VariableBandWidthLink <--> router47.in[2];
      router26.out[5] <--> VariableBandWidthLink <--> router212.in[6];
      router26.in[6] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[6] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router41.in[1];
      router27.out[1] <--> VariableBandWidthLink <--> router189.in[1];
      router27.out[2] <--> VariableBandWidthLink <--> router204.in[1];
      router27.out[3] <--> VariableBandWidthLink <--> router127.in[4];
      router27.in[4] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[4] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router160.in[0];
      router28.out[1] <--> VariableBandWidthLink <--> router197.in[1];
      router28.out[2] <--> VariableBandWidthLink <--> router136.in[2];
      router28.in[3] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[3] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router139.in[3];
      router29.in[1] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[1] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router200.in[0];
      router30.out[1] <--> VariableBandWidthLink <--> router200.in[2];
      router30.out[2] <--> VariableBandWidthLink <--> router132.in[2];
      router30.out[3] <--> VariableBandWidthLink <--> router148.in[0];
      router30.in[4] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[4] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router253.in[1];
      router31.out[1] <--> VariableBandWidthLink <--> router244.in[0];
      router31.out[2] <--> VariableBandWidthLink <--> router3.in[3];
      router31.in[3] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[3] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router217.in[4];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router37.in[1];
      router33.out[1] <--> VariableBandWidthLink <--> router19.in[0];
      router33.out[2] <--> VariableBandWidthLink <--> router19.in[1];
      router33.out[3] <--> VariableBandWidthLink <--> router188.in[0];
      router33.out[4] <--> VariableBandWidthLink <--> router16.in[0];
      router33.out[5] <--> VariableBandWidthLink <--> router138.in[0];
      router33.out[6] <--> VariableBandWidthLink <--> router82.in[2];
      router33.out[7] <--> VariableBandWidthLink <--> router152.in[1];
      router33.in[8] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[8] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router34.out[1] <--> VariableBandWidthLink <--> router150.in[0];
      router34.out[2] <--> VariableBandWidthLink <--> router239.in[0];
      router34.out[3] <--> VariableBandWidthLink <--> router126.in[1];
      router34.out[4] <--> VariableBandWidthLink <--> router102.in[0];
      router34.out[5] <--> VariableBandWidthLink <--> router80.in[2];
      router34.in[6] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[6] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router156.in[2];
      router35.out[1] <--> VariableBandWidthLink <--> router209.in[2];
      router35.in[2] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[2] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router134.in[2];
      router36.out[1] <--> VariableBandWidthLink <--> router51.in[1];
      router36.out[2] <--> VariableBandWidthLink <--> router85.in[2];
      router36.in[3] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[3] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router77.in[0];
      router37.out[1] <--> VariableBandWidthLink <--> router33.in[0];
      router37.out[2] <--> VariableBandWidthLink <--> router220.in[2];
      router37.out[3] <--> VariableBandWidthLink <--> router135.in[4];
      router37.out[4] <--> VariableBandWidthLink <--> router49.in[3];
      router37.in[5] <--> VariableBandWidthLink <--> core37.out; 
      router37.out[5] <--> VariableBandWidthLink <--> core37.in; 
      router38.out[0] <--> VariableBandWidthLink <--> router81.in[2];
      router38.out[1] <--> VariableBandWidthLink <--> router151.in[2];
      router38.out[2] <--> VariableBandWidthLink <--> router216.in[4];
      router38.in[3] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[3] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router68.in[1];
      router39.in[1] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[1] <--> VariableBandWidthLink <--> core39.in; 
      router40.out[0] <--> VariableBandWidthLink <--> router213.in[0];
      router40.out[1] <--> VariableBandWidthLink <--> router87.in[1];
      router40.out[2] <--> VariableBandWidthLink <--> router52.in[2];
      router40.out[3] <--> VariableBandWidthLink <--> router56.in[4];
      router40.out[4] <--> VariableBandWidthLink <--> router8.in[2];
      router40.in[5] <--> VariableBandWidthLink <--> core40.out; 
      router40.out[5] <--> VariableBandWidthLink <--> core40.in; 
      router41.out[0] <--> VariableBandWidthLink <--> router126.in[0];
      router41.out[1] <--> VariableBandWidthLink <--> router27.in[0];
      router41.out[2] <--> VariableBandWidthLink <--> router137.in[3];
      router41.out[3] <--> VariableBandWidthLink <--> router18.in[3];
      router41.out[4] <--> VariableBandWidthLink <--> router254.in[4];
      router41.in[5] <--> VariableBandWidthLink <--> core41.out; 
      router41.out[5] <--> VariableBandWidthLink <--> core41.in; 
      router42.out[0] <--> VariableBandWidthLink <--> router224.in[1];
      router42.out[1] <--> VariableBandWidthLink <--> router3.in[2];
      router42.out[2] <--> VariableBandWidthLink <--> router242.in[0];
      router42.out[3] <--> VariableBandWidthLink <--> router129.in[1];
      router42.in[4] <--> VariableBandWidthLink <--> core42.out; 
      router42.out[4] <--> VariableBandWidthLink <--> core42.in; 
      router43.out[0] <--> VariableBandWidthLink <--> router223.in[2];
      router43.out[1] <--> VariableBandWidthLink <--> router147.in[0];
      router43.out[2] <--> VariableBandWidthLink <--> router189.in[2];
      router43.in[3] <--> VariableBandWidthLink <--> core43.out; 
      router43.out[3] <--> VariableBandWidthLink <--> core43.in; 
      router44.out[0] <--> VariableBandWidthLink <--> router137.in[0];
      router44.out[1] <--> VariableBandWidthLink <--> router127.in[0];
      router44.out[2] <--> VariableBandWidthLink <--> router127.in[1];
      router44.out[3] <--> VariableBandWidthLink <--> router130.in[4];
      router44.in[4] <--> VariableBandWidthLink <--> core44.out; 
      router44.out[4] <--> VariableBandWidthLink <--> core44.in; 
      router45.out[0] <--> VariableBandWidthLink <--> router67.in[0];
      router45.out[1] <--> VariableBandWidthLink <--> router195.in[3];
      router45.in[2] <--> VariableBandWidthLink <--> core45.out; 
      router45.out[2] <--> VariableBandWidthLink <--> core45.in; 
      router46.out[0] <--> VariableBandWidthLink <--> router146.in[5];
      router46.out[1] <--> VariableBandWidthLink <--> router182.in[6];
      router46.in[2] <--> VariableBandWidthLink <--> core46.out; 
      router46.out[2] <--> VariableBandWidthLink <--> core46.in; 
      router47.out[0] <--> VariableBandWidthLink <--> router241.in[0];
      router47.out[1] <--> VariableBandWidthLink <--> router237.in[0];
      router47.out[2] <--> VariableBandWidthLink <--> router26.in[4];
      router47.out[3] <--> VariableBandWidthLink <--> router143.in[5];
      router47.in[4] <--> VariableBandWidthLink <--> core47.out; 
      router47.out[4] <--> VariableBandWidthLink <--> core47.in; 
      router48.out[0] <--> VariableBandWidthLink <--> router197.in[0];
      router48.out[1] <--> VariableBandWidthLink <--> router131.in[3];
      router48.out[2] <--> VariableBandWidthLink <--> router14.in[1];
      router48.out[3] <--> VariableBandWidthLink <--> router212.in[5];
      router48.out[4] <--> VariableBandWidthLink <--> router171.in[0];
      router48.in[5] <--> VariableBandWidthLink <--> core48.out; 
      router48.out[5] <--> VariableBandWidthLink <--> core48.in; 
      router49.out[0] <--> VariableBandWidthLink <--> router188.in[1];
      router49.out[1] <--> VariableBandWidthLink <--> router226.in[0];
      router49.out[2] <--> VariableBandWidthLink <--> router142.in[6];
      router49.out[3] <--> VariableBandWidthLink <--> router37.in[4];
      router49.out[4] <--> VariableBandWidthLink <--> router224.in[4];
      router49.in[5] <--> VariableBandWidthLink <--> core49.out; 
      router49.out[5] <--> VariableBandWidthLink <--> core49.in; 
      router50.out[0] <--> VariableBandWidthLink <--> router66.in[0];
      router50.out[1] <--> VariableBandWidthLink <--> router24.in[1];
      router50.out[2] <--> VariableBandWidthLink <--> router6.in[4];
      router50.out[3] <--> VariableBandWidthLink <--> router141.in[2];
      router50.out[4] <--> VariableBandWidthLink <--> router115.in[3];
      router50.in[5] <--> VariableBandWidthLink <--> core50.out; 
      router50.out[5] <--> VariableBandWidthLink <--> core50.in; 
      router51.out[0] <--> VariableBandWidthLink <--> router243.in[0];
      router51.out[1] <--> VariableBandWidthLink <--> router36.in[1];
      router51.out[2] <--> VariableBandWidthLink <--> router116.in[3];
      router51.in[3] <--> VariableBandWidthLink <--> core51.out; 
      router51.out[3] <--> VariableBandWidthLink <--> core51.in; 
      router52.out[0] <--> VariableBandWidthLink <--> router223.in[0];
      router52.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router52.out[2] <--> VariableBandWidthLink <--> router40.in[2];
      router52.out[3] <--> VariableBandWidthLink <--> router65.in[2];
      router52.out[4] <--> VariableBandWidthLink <--> router143.in[2];
      router52.out[5] <--> VariableBandWidthLink <--> router173.in[1];
      router52.in[6] <--> VariableBandWidthLink <--> core52.out; 
      router52.out[6] <--> VariableBandWidthLink <--> core52.in; 
      router53.out[0] <--> VariableBandWidthLink <--> router25.in[0];
      router53.out[1] <--> VariableBandWidthLink <--> router226.in[1];
      router53.out[2] <--> VariableBandWidthLink <--> router181.in[3];
      router53.out[3] <--> VariableBandWidthLink <--> router137.in[4];
      router53.out[4] <--> VariableBandWidthLink <--> router118.in[3];
      router53.in[5] <--> VariableBandWidthLink <--> core53.out; 
      router53.out[5] <--> VariableBandWidthLink <--> core53.in; 
      router54.out[0] <--> VariableBandWidthLink <--> router160.in[4];
      router54.out[1] <--> VariableBandWidthLink <--> router201.in[1];
      router54.in[2] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[2] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router60.in[0];
      router55.out[1] <--> VariableBandWidthLink <--> router151.in[0];
      router55.out[2] <--> VariableBandWidthLink <--> router237.in[2];
      router55.out[3] <--> VariableBandWidthLink <--> router243.in[5];
      router55.in[4] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[4] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router254.in[2];
      router56.out[1] <--> VariableBandWidthLink <--> router98.in[1];
      router56.out[2] <--> VariableBandWidthLink <--> router110.in[1];
      router56.out[3] <--> VariableBandWidthLink <--> router0.in[4];
      router56.out[4] <--> VariableBandWidthLink <--> router40.in[3];
      router56.in[5] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[5] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router85.in[3];
      router57.in[1] <--> VariableBandWidthLink <--> core57.out; 
      router57.out[1] <--> VariableBandWidthLink <--> core57.in; 
      router58.out[0] <--> VariableBandWidthLink <--> router93.in[0];
      router58.in[1] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[1] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router235.in[3];
      router59.out[1] <--> VariableBandWidthLink <--> router254.in[3];
      router59.out[2] <--> VariableBandWidthLink <--> router11.in[4];
      router59.in[3] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[3] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router55.in[0];
      router60.out[1] <--> VariableBandWidthLink <--> router79.in[0];
      router60.out[2] <--> VariableBandWidthLink <--> router215.in[0];
      router60.out[3] <--> VariableBandWidthLink <--> router81.in[3];
      router60.out[4] <--> VariableBandWidthLink <--> router105.in[4];
      router60.out[5] <--> VariableBandWidthLink <--> router20.in[4];
      router60.in[6] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[6] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router119.in[3];
      router61.out[1] <--> VariableBandWidthLink <--> router11.in[5];
      router61.out[2] <--> VariableBandWidthLink <--> router172.in[8];
      router61.in[3] <--> VariableBandWidthLink <--> core61.out; 
      router61.out[3] <--> VariableBandWidthLink <--> core61.in; 
      router62.out[0] <--> VariableBandWidthLink <--> router95.in[2];
      router62.out[1] <--> VariableBandWidthLink <--> router93.in[2];
      router62.in[2] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[2] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router238.in[0];
      router63.out[1] <--> VariableBandWidthLink <--> router146.in[2];
      router63.out[2] <--> VariableBandWidthLink <--> router251.in[3];
      router63.out[3] <--> VariableBandWidthLink <--> router218.in[3];
      router63.out[4] <--> VariableBandWidthLink <--> router134.in[4];
      router63.in[5] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[5] <--> VariableBandWidthLink <--> core63.in; 
      router64.out[0] <--> VariableBandWidthLink <--> router14.in[5];
      router64.in[1] <--> VariableBandWidthLink <--> core64.out; 
      router64.out[1] <--> VariableBandWidthLink <--> core64.in; 
      router65.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router65.out[1] <--> VariableBandWidthLink <--> router156.in[0];
      router65.out[2] <--> VariableBandWidthLink <--> router52.in[3];
      router65.out[3] <--> VariableBandWidthLink <--> router112.in[3];
      router65.in[4] <--> VariableBandWidthLink <--> core65.out; 
      router65.out[4] <--> VariableBandWidthLink <--> core65.in; 
      router66.out[0] <--> VariableBandWidthLink <--> router50.in[0];
      router66.out[1] <--> VariableBandWidthLink <--> router149.in[1];
      router66.out[2] <--> VariableBandWidthLink <--> router195.in[6];
      router66.in[3] <--> VariableBandWidthLink <--> core66.out; 
      router66.out[3] <--> VariableBandWidthLink <--> core66.in; 
      router67.out[0] <--> VariableBandWidthLink <--> router45.in[0];
      router67.out[1] <--> VariableBandWidthLink <--> router194.in[1];
      router67.out[2] <--> VariableBandWidthLink <--> router134.in[1];
      router67.out[3] <--> VariableBandWidthLink <--> router94.in[5];
      router67.out[4] <--> VariableBandWidthLink <--> router216.in[3];
      router67.in[5] <--> VariableBandWidthLink <--> core67.out; 
      router67.out[5] <--> VariableBandWidthLink <--> core67.in; 
      router68.out[0] <--> VariableBandWidthLink <--> router232.in[0];
      router68.out[1] <--> VariableBandWidthLink <--> router39.in[0];
      router68.out[2] <--> VariableBandWidthLink <--> router77.in[1];
      router68.out[3] <--> VariableBandWidthLink <--> router105.in[3];
      router68.out[4] <--> VariableBandWidthLink <--> router223.in[3];
      router68.in[5] <--> VariableBandWidthLink <--> core68.out; 
      router68.out[5] <--> VariableBandWidthLink <--> core68.in; 
      router69.out[0] <--> VariableBandWidthLink <--> router231.in[0];
      router69.out[1] <--> VariableBandWidthLink <--> router119.in[1];
      router69.out[2] <--> VariableBandWidthLink <--> router136.in[0];
      router69.in[3] <--> VariableBandWidthLink <--> core69.out; 
      router69.out[3] <--> VariableBandWidthLink <--> core69.in; 
      router70.out[0] <--> VariableBandWidthLink <--> router132.in[0];
      router70.out[1] <--> VariableBandWidthLink <--> router20.in[0];
      router70.out[2] <--> VariableBandWidthLink <--> router158.in[0];
      router70.out[3] <--> VariableBandWidthLink <--> router76.in[0];
      router70.out[4] <--> VariableBandWidthLink <--> router151.in[1];
      router70.out[5] <--> VariableBandWidthLink <--> router125.in[2];
      router70.out[6] <--> VariableBandWidthLink <--> router15.in[2];
      router70.out[7] <--> VariableBandWidthLink <--> router98.in[4];
      router70.out[8] <--> VariableBandWidthLink <--> router146.in[10];
      router70.out[9] <--> VariableBandWidthLink <--> router78.in[3];
      router70.in[10] <--> VariableBandWidthLink <--> core70.out; 
      router70.out[10] <--> VariableBandWidthLink <--> core70.in; 
      router71.out[0] <--> VariableBandWidthLink <--> router170.in[2];
      router71.out[1] <--> VariableBandWidthLink <--> router83.in[3];
      router71.out[2] <--> VariableBandWidthLink <--> router125.in[3];
      router71.in[3] <--> VariableBandWidthLink <--> core71.out; 
      router71.out[3] <--> VariableBandWidthLink <--> core71.in; 
      router72.out[0] <--> VariableBandWidthLink <--> router98.in[0];
      router72.out[1] <--> VariableBandWidthLink <--> router207.in[0];
      router72.out[2] <--> VariableBandWidthLink <--> router235.in[2];
      router72.out[3] <--> VariableBandWidthLink <--> router101.in[3];
      router72.in[4] <--> VariableBandWidthLink <--> core72.out; 
      router72.out[4] <--> VariableBandWidthLink <--> core72.in; 
      router73.out[0] <--> VariableBandWidthLink <--> router84.in[2];
      router73.out[1] <--> VariableBandWidthLink <--> router144.in[9];
      router73.out[2] <--> VariableBandWidthLink <--> router209.in[1];
      router73.in[3] <--> VariableBandWidthLink <--> core73.out; 
      router73.out[3] <--> VariableBandWidthLink <--> core73.in; 
      router74.out[0] <--> VariableBandWidthLink <--> router79.in[2];
      router74.out[1] <--> VariableBandWidthLink <--> router124.in[2];
      router74.out[2] <--> VariableBandWidthLink <--> router192.in[5];
      router74.out[3] <--> VariableBandWidthLink <--> router107.in[3];
      router74.in[4] <--> VariableBandWidthLink <--> core74.out; 
      router74.out[4] <--> VariableBandWidthLink <--> core74.in; 
      router75.out[0] <--> VariableBandWidthLink <--> router135.in[0];
      router75.out[1] <--> VariableBandWidthLink <--> router132.in[1];
      router75.out[2] <--> VariableBandWidthLink <--> router239.in[3];
      router75.in[3] <--> VariableBandWidthLink <--> core75.out; 
      router75.out[3] <--> VariableBandWidthLink <--> core75.in; 
      router76.out[0] <--> VariableBandWidthLink <--> router70.in[3];
      router76.in[1] <--> VariableBandWidthLink <--> core76.out; 
      router76.out[1] <--> VariableBandWidthLink <--> core76.in; 
      router77.out[0] <--> VariableBandWidthLink <--> router37.in[0];
      router77.out[1] <--> VariableBandWidthLink <--> router68.in[2];
      router77.out[2] <--> VariableBandWidthLink <--> router152.in[2];
      router77.in[3] <--> VariableBandWidthLink <--> core77.out; 
      router77.out[3] <--> VariableBandWidthLink <--> core77.in; 
      router78.out[0] <--> VariableBandWidthLink <--> router91.in[0];
      router78.out[1] <--> VariableBandWidthLink <--> router94.in[7];
      router78.out[2] <--> VariableBandWidthLink <--> router79.in[4];
      router78.out[3] <--> VariableBandWidthLink <--> router70.in[9];
      router78.in[4] <--> VariableBandWidthLink <--> core78.out; 
      router78.out[4] <--> VariableBandWidthLink <--> core78.in; 
      router79.out[0] <--> VariableBandWidthLink <--> router60.in[1];
      router79.out[1] <--> VariableBandWidthLink <--> router85.in[0];
      router79.out[2] <--> VariableBandWidthLink <--> router74.in[0];
      router79.out[3] <--> VariableBandWidthLink <--> router11.in[3];
      router79.out[4] <--> VariableBandWidthLink <--> router78.in[2];
      router79.out[5] <--> VariableBandWidthLink <--> router232.in[4];
      router79.out[6] <--> VariableBandWidthLink <--> router206.in[4];
      router79.in[7] <--> VariableBandWidthLink <--> core79.out; 
      router79.out[7] <--> VariableBandWidthLink <--> core79.in; 
      router80.out[0] <--> VariableBandWidthLink <--> router241.in[1];
      router80.out[1] <--> VariableBandWidthLink <--> router246.in[1];
      router80.out[2] <--> VariableBandWidthLink <--> router34.in[5];
      router80.in[3] <--> VariableBandWidthLink <--> core80.out; 
      router80.out[3] <--> VariableBandWidthLink <--> core80.in; 
      router81.out[0] <--> VariableBandWidthLink <--> router131.in[4];
      router81.out[1] <--> VariableBandWidthLink <--> router0.in[3];
      router81.out[2] <--> VariableBandWidthLink <--> router38.in[0];
      router81.out[3] <--> VariableBandWidthLink <--> router60.in[3];
      router81.out[4] <--> VariableBandWidthLink <--> router206.in[1];
      router81.out[5] <--> VariableBandWidthLink <--> router226.in[3];
      router81.out[6] <--> VariableBandWidthLink <--> router14.in[4];
      router81.out[7] <--> VariableBandWidthLink <--> router178.in[2];
      router81.in[8] <--> VariableBandWidthLink <--> core81.out; 
      router81.out[8] <--> VariableBandWidthLink <--> core81.in; 
      router82.out[0] <--> VariableBandWidthLink <--> router111.in[2];
      router82.out[1] <--> VariableBandWidthLink <--> router188.in[2];
      router82.out[2] <--> VariableBandWidthLink <--> router33.in[6];
      router82.out[3] <--> VariableBandWidthLink <--> router222.in[2];
      router82.in[4] <--> VariableBandWidthLink <--> core82.out; 
      router82.out[4] <--> VariableBandWidthLink <--> core82.in; 
      router83.out[0] <--> VariableBandWidthLink <--> router144.in[1];
      router83.out[1] <--> VariableBandWidthLink <--> router111.in[1];
      router83.out[2] <--> VariableBandWidthLink <--> router142.in[4];
      router83.out[3] <--> VariableBandWidthLink <--> router71.in[1];
      router83.in[4] <--> VariableBandWidthLink <--> core83.out; 
      router83.out[4] <--> VariableBandWidthLink <--> core83.in; 
      router84.out[0] <--> VariableBandWidthLink <--> router24.in[3];
      router84.out[1] <--> VariableBandWidthLink <--> router249.in[0];
      router84.out[2] <--> VariableBandWidthLink <--> router73.in[0];
      router84.out[3] <--> VariableBandWidthLink <--> router213.in[4];
      router84.out[4] <--> VariableBandWidthLink <--> router210.in[2];
      router84.in[5] <--> VariableBandWidthLink <--> core84.out; 
      router84.out[5] <--> VariableBandWidthLink <--> core84.in; 
      router85.out[0] <--> VariableBandWidthLink <--> router79.in[1];
      router85.out[1] <--> VariableBandWidthLink <--> router102.in[2];
      router85.out[2] <--> VariableBandWidthLink <--> router36.in[2];
      router85.out[3] <--> VariableBandWidthLink <--> router57.in[0];
      router85.in[4] <--> VariableBandWidthLink <--> core85.out; 
      router85.out[4] <--> VariableBandWidthLink <--> core85.in; 
      router86.out[0] <--> VariableBandWidthLink <--> router153.in[0];
      router86.in[1] <--> VariableBandWidthLink <--> core86.out; 
      router86.out[1] <--> VariableBandWidthLink <--> core86.in; 
      router87.out[0] <--> VariableBandWidthLink <--> router108.in[3];
      router87.out[1] <--> VariableBandWidthLink <--> router40.in[1];
      router87.in[2] <--> VariableBandWidthLink <--> core87.out; 
      router87.out[2] <--> VariableBandWidthLink <--> core87.in; 
      router88.out[0] <--> VariableBandWidthLink <--> router232.in[3];
      router88.out[1] <--> VariableBandWidthLink <--> router155.in[4];
      router88.out[2] <--> VariableBandWidthLink <--> router173.in[0];
      router88.in[3] <--> VariableBandWidthLink <--> core88.out; 
      router88.out[3] <--> VariableBandWidthLink <--> core88.in; 
      router89.out[0] <--> VariableBandWidthLink <--> router224.in[0];
      router89.out[1] <--> VariableBandWidthLink <--> router236.in[2];
      router89.out[2] <--> VariableBandWidthLink <--> router195.in[4];
      router89.out[3] <--> VariableBandWidthLink <--> router91.in[2];
      router89.in[4] <--> VariableBandWidthLink <--> core89.out; 
      router89.out[4] <--> VariableBandWidthLink <--> core89.in; 
      router90.out[0] <--> VariableBandWidthLink <--> router122.in[0];
      router90.in[1] <--> VariableBandWidthLink <--> core90.out; 
      router90.out[1] <--> VariableBandWidthLink <--> core90.in; 
      router91.out[0] <--> VariableBandWidthLink <--> router78.in[0];
      router91.out[1] <--> VariableBandWidthLink <--> router4.in[2];
      router91.out[2] <--> VariableBandWidthLink <--> router89.in[3];
      router91.in[3] <--> VariableBandWidthLink <--> core91.out; 
      router91.out[3] <--> VariableBandWidthLink <--> core91.in; 
      router92.out[0] <--> VariableBandWidthLink <--> router24.in[0];
      router92.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router92.out[2] <--> VariableBandWidthLink <--> router9.in[1];
      router92.in[3] <--> VariableBandWidthLink <--> core92.out; 
      router92.out[3] <--> VariableBandWidthLink <--> core92.in; 
      router93.out[0] <--> VariableBandWidthLink <--> router58.in[0];
      router93.out[1] <--> VariableBandWidthLink <--> router6.in[1];
      router93.out[2] <--> VariableBandWidthLink <--> router62.in[1];
      router93.in[3] <--> VariableBandWidthLink <--> core93.out; 
      router93.out[3] <--> VariableBandWidthLink <--> core93.in; 
      router94.out[0] <--> VariableBandWidthLink <--> router194.in[0];
      router94.out[1] <--> VariableBandWidthLink <--> router128.in[1];
      router94.out[2] <--> VariableBandWidthLink <--> router0.in[1];
      router94.out[3] <--> VariableBandWidthLink <--> router208.in[1];
      router94.out[4] <--> VariableBandWidthLink <--> router125.in[1];
      router94.out[5] <--> VariableBandWidthLink <--> router67.in[3];
      router94.out[6] <--> VariableBandWidthLink <--> router164.in[6];
      router94.out[7] <--> VariableBandWidthLink <--> router78.in[1];
      router94.out[8] <--> VariableBandWidthLink <--> router250.in[2];
      router94.in[9] <--> VariableBandWidthLink <--> core94.out; 
      router94.out[9] <--> VariableBandWidthLink <--> core94.in; 
      router95.out[0] <--> VariableBandWidthLink <--> router26.in[3];
      router95.out[1] <--> VariableBandWidthLink <--> router237.in[3];
      router95.out[2] <--> VariableBandWidthLink <--> router62.in[0];
      router95.in[3] <--> VariableBandWidthLink <--> core95.out; 
      router95.out[3] <--> VariableBandWidthLink <--> core95.in; 
      router96.out[0] <--> VariableBandWidthLink <--> router186.in[1];
      router96.out[1] <--> VariableBandWidthLink <--> router118.in[2];
      router96.in[2] <--> VariableBandWidthLink <--> core96.out; 
      router96.out[2] <--> VariableBandWidthLink <--> core96.in; 
      router97.out[0] <--> VariableBandWidthLink <--> router152.in[0];
      router97.out[1] <--> VariableBandWidthLink <--> router130.in[0];
      router97.out[2] <--> VariableBandWidthLink <--> router161.in[1];
      router97.in[3] <--> VariableBandWidthLink <--> core97.out; 
      router97.out[3] <--> VariableBandWidthLink <--> core97.in; 
      router98.out[0] <--> VariableBandWidthLink <--> router72.in[0];
      router98.out[1] <--> VariableBandWidthLink <--> router56.in[1];
      router98.out[2] <--> VariableBandWidthLink <--> router23.in[2];
      router98.out[3] <--> VariableBandWidthLink <--> router133.in[1];
      router98.out[4] <--> VariableBandWidthLink <--> router70.in[7];
      router98.out[5] <--> VariableBandWidthLink <--> router133.in[3];
      router98.in[6] <--> VariableBandWidthLink <--> core98.out; 
      router98.out[6] <--> VariableBandWidthLink <--> core98.in; 
      router99.out[0] <--> VariableBandWidthLink <--> router115.in[0];
      router99.out[1] <--> VariableBandWidthLink <--> router153.in[1];
      router99.out[2] <--> VariableBandWidthLink <--> router155.in[1];
      router99.in[3] <--> VariableBandWidthLink <--> core99.out; 
      router99.out[3] <--> VariableBandWidthLink <--> core99.in; 
      router100.out[0] <--> VariableBandWidthLink <--> router23.in[3];
      router100.in[1] <--> VariableBandWidthLink <--> core100.out; 
      router100.out[1] <--> VariableBandWidthLink <--> core100.in; 
      router101.out[0] <--> VariableBandWidthLink <--> router131.in[0];
      router101.out[1] <--> VariableBandWidthLink <--> router2.in[0];
      router101.out[2] <--> VariableBandWidthLink <--> router168.in[2];
      router101.out[3] <--> VariableBandWidthLink <--> router72.in[3];
      router101.out[4] <--> VariableBandWidthLink <--> router143.in[4];
      router101.in[5] <--> VariableBandWidthLink <--> core101.out; 
      router101.out[5] <--> VariableBandWidthLink <--> core101.in; 
      router102.out[0] <--> VariableBandWidthLink <--> router34.in[4];
      router102.out[1] <--> VariableBandWidthLink <--> router168.in[1];
      router102.out[2] <--> VariableBandWidthLink <--> router85.in[1];
      router102.out[3] <--> VariableBandWidthLink <--> router135.in[5];
      router102.out[4] <--> VariableBandWidthLink <--> router225.in[6];
      router102.in[5] <--> VariableBandWidthLink <--> core102.out; 
      router102.out[5] <--> VariableBandWidthLink <--> core102.in; 
      router103.out[0] <--> VariableBandWidthLink <--> router172.in[0];
      router103.out[1] <--> VariableBandWidthLink <--> router144.in[6];
      router103.out[2] <--> VariableBandWidthLink <--> router106.in[4];
      router103.out[3] <--> VariableBandWidthLink <--> router176.in[0];
      router103.out[4] <--> VariableBandWidthLink <--> router206.in[2];
      router103.in[5] <--> VariableBandWidthLink <--> core103.out; 
      router103.out[5] <--> VariableBandWidthLink <--> core103.in; 
      router104.out[0] <--> VariableBandWidthLink <--> router182.in[2];
      router104.in[1] <--> VariableBandWidthLink <--> core104.out; 
      router104.out[1] <--> VariableBandWidthLink <--> core104.in; 
      router105.out[0] <--> VariableBandWidthLink <--> router166.in[0];
      router105.out[1] <--> VariableBandWidthLink <--> router235.in[5];
      router105.out[2] <--> VariableBandWidthLink <--> router179.in[1];
      router105.out[3] <--> VariableBandWidthLink <--> router68.in[3];
      router105.out[4] <--> VariableBandWidthLink <--> router60.in[4];
      router105.in[5] <--> VariableBandWidthLink <--> core105.out; 
      router105.out[5] <--> VariableBandWidthLink <--> core105.in; 
      router106.out[0] <--> VariableBandWidthLink <--> router128.in[0];
      router106.out[1] <--> VariableBandWidthLink <--> router178.in[0];
      router106.out[2] <--> VariableBandWidthLink <--> router225.in[1];
      router106.out[3] <--> VariableBandWidthLink <--> router13.in[0];
      router106.out[4] <--> VariableBandWidthLink <--> router103.in[2];
      router106.out[5] <--> VariableBandWidthLink <--> router1.in[1];
      router106.out[6] <--> VariableBandWidthLink <--> router163.in[3];
      router106.out[7] <--> VariableBandWidthLink <--> router110.in[2];
      router106.in[8] <--> VariableBandWidthLink <--> core106.out; 
      router106.out[8] <--> VariableBandWidthLink <--> core106.in; 
      router107.out[0] <--> VariableBandWidthLink <--> router120.in[2];
      router107.out[1] <--> VariableBandWidthLink <--> router123.in[3];
      router107.out[2] <--> VariableBandWidthLink <--> router212.in[4];
      router107.out[3] <--> VariableBandWidthLink <--> router74.in[3];
      router107.in[4] <--> VariableBandWidthLink <--> core107.out; 
      router107.out[4] <--> VariableBandWidthLink <--> core107.in; 
      router108.out[0] <--> VariableBandWidthLink <--> router134.in[0];
      router108.out[1] <--> VariableBandWidthLink <--> router109.in[0];
      router108.out[2] <--> VariableBandWidthLink <--> router200.in[1];
      router108.out[3] <--> VariableBandWidthLink <--> router87.in[0];
      router108.out[4] <--> VariableBandWidthLink <--> router218.in[1];
      router108.out[5] <--> VariableBandWidthLink <--> router124.in[3];
      router108.in[6] <--> VariableBandWidthLink <--> core108.out; 
      router108.out[6] <--> VariableBandWidthLink <--> core108.in; 
      router109.out[0] <--> VariableBandWidthLink <--> router108.in[1];
      router109.in[1] <--> VariableBandWidthLink <--> core109.out; 
      router109.out[1] <--> VariableBandWidthLink <--> core109.in; 
      router110.out[0] <--> VariableBandWidthLink <--> router252.in[1];
      router110.out[1] <--> VariableBandWidthLink <--> router56.in[2];
      router110.out[2] <--> VariableBandWidthLink <--> router106.in[7];
      router110.out[3] <--> VariableBandWidthLink <--> router233.in[0];
      router110.in[4] <--> VariableBandWidthLink <--> core110.out; 
      router110.out[4] <--> VariableBandWidthLink <--> core110.in; 
      router111.out[0] <--> VariableBandWidthLink <--> router144.in[3];
      router111.out[1] <--> VariableBandWidthLink <--> router83.in[1];
      router111.out[2] <--> VariableBandWidthLink <--> router82.in[0];
      router111.out[3] <--> VariableBandWidthLink <--> router248.in[0];
      router111.out[4] <--> VariableBandWidthLink <--> router9.in[4];
      router111.in[5] <--> VariableBandWidthLink <--> core111.out; 
      router111.out[5] <--> VariableBandWidthLink <--> core111.in; 
      router112.out[0] <--> VariableBandWidthLink <--> router223.in[1];
      router112.out[1] <--> VariableBandWidthLink <--> router156.in[1];
      router112.out[2] <--> VariableBandWidthLink <--> router126.in[3];
      router112.out[3] <--> VariableBandWidthLink <--> router65.in[3];
      router112.in[4] <--> VariableBandWidthLink <--> core112.out; 
      router112.out[4] <--> VariableBandWidthLink <--> core112.in; 
      router113.out[0] <--> VariableBandWidthLink <--> router3.in[1];
      router113.out[1] <--> VariableBandWidthLink <--> router172.in[6];
      router113.out[2] <--> VariableBandWidthLink <--> router130.in[7];
      router113.in[3] <--> VariableBandWidthLink <--> core113.out; 
      router113.out[3] <--> VariableBandWidthLink <--> core113.in; 
      router114.out[0] <--> VariableBandWidthLink <--> router236.in[1];
      router114.out[1] <--> VariableBandWidthLink <--> router7.in[2];
      router114.out[2] <--> VariableBandWidthLink <--> router158.in[2];
      router114.in[3] <--> VariableBandWidthLink <--> core114.out; 
      router114.out[3] <--> VariableBandWidthLink <--> core114.in; 
      router115.out[0] <--> VariableBandWidthLink <--> router99.in[0];
      router115.out[1] <--> VariableBandWidthLink <--> router125.in[0];
      router115.out[2] <--> VariableBandWidthLink <--> router216.in[2];
      router115.out[3] <--> VariableBandWidthLink <--> router50.in[4];
      router115.in[4] <--> VariableBandWidthLink <--> core115.out; 
      router115.out[4] <--> VariableBandWidthLink <--> core115.in; 
      router116.out[0] <--> VariableBandWidthLink <--> router183.in[0];
      router116.out[1] <--> VariableBandWidthLink <--> router246.in[0];
      router116.out[2] <--> VariableBandWidthLink <--> router218.in[0];
      router116.out[3] <--> VariableBandWidthLink <--> router51.in[2];
      router116.out[4] <--> VariableBandWidthLink <--> router251.in[2];
      router116.out[5] <--> VariableBandWidthLink <--> router166.in[3];
      router116.in[6] <--> VariableBandWidthLink <--> core116.out; 
      router116.out[6] <--> VariableBandWidthLink <--> core116.in; 
      router117.out[0] <--> VariableBandWidthLink <--> router164.in[9];
      router117.in[1] <--> VariableBandWidthLink <--> core117.out; 
      router117.out[1] <--> VariableBandWidthLink <--> core117.in; 
      router118.out[0] <--> VariableBandWidthLink <--> router219.in[0];
      router118.out[1] <--> VariableBandWidthLink <--> router19.in[2];
      router118.out[2] <--> VariableBandWidthLink <--> router96.in[1];
      router118.out[3] <--> VariableBandWidthLink <--> router53.in[4];
      router118.in[4] <--> VariableBandWidthLink <--> core118.out; 
      router118.out[4] <--> VariableBandWidthLink <--> core118.in; 
      router119.out[0] <--> VariableBandWidthLink <--> router182.in[0];
      router119.out[1] <--> VariableBandWidthLink <--> router69.in[1];
      router119.out[2] <--> VariableBandWidthLink <--> router130.in[2];
      router119.out[3] <--> VariableBandWidthLink <--> router61.in[0];
      router119.in[4] <--> VariableBandWidthLink <--> core119.out; 
      router119.out[4] <--> VariableBandWidthLink <--> core119.in; 
      router120.out[0] <--> VariableBandWidthLink <--> router192.in[0];
      router120.out[1] <--> VariableBandWidthLink <--> router161.in[0];
      router120.out[2] <--> VariableBandWidthLink <--> router107.in[0];
      router120.out[3] <--> VariableBandWidthLink <--> router18.in[1];
      router120.out[4] <--> VariableBandWidthLink <--> router5.in[0];
      router120.in[5] <--> VariableBandWidthLink <--> core120.out; 
      router120.out[5] <--> VariableBandWidthLink <--> core120.in; 
      router121.out[0] <--> VariableBandWidthLink <--> router172.in[5];
      router121.in[1] <--> VariableBandWidthLink <--> core121.out; 
      router121.out[1] <--> VariableBandWidthLink <--> core121.in; 
      router122.out[0] <--> VariableBandWidthLink <--> router90.in[0];
      router122.out[1] <--> VariableBandWidthLink <--> router183.in[7];
      router122.in[2] <--> VariableBandWidthLink <--> core122.out; 
      router122.out[2] <--> VariableBandWidthLink <--> core122.in; 
      router123.out[0] <--> VariableBandWidthLink <--> router229.in[0];
      router123.out[1] <--> VariableBandWidthLink <--> router164.in[3];
      router123.out[2] <--> VariableBandWidthLink <--> router198.in[0];
      router123.out[3] <--> VariableBandWidthLink <--> router107.in[1];
      router123.out[4] <--> VariableBandWidthLink <--> router188.in[4];
      router123.in[5] <--> VariableBandWidthLink <--> core123.out; 
      router123.out[5] <--> VariableBandWidthLink <--> core123.in; 
      router124.out[0] <--> VariableBandWidthLink <--> router220.in[0];
      router124.out[1] <--> VariableBandWidthLink <--> router182.in[1];
      router124.out[2] <--> VariableBandWidthLink <--> router74.in[1];
      router124.out[3] <--> VariableBandWidthLink <--> router108.in[5];
      router124.out[4] <--> VariableBandWidthLink <--> router248.in[1];
      router124.in[5] <--> VariableBandWidthLink <--> core124.out; 
      router124.out[5] <--> VariableBandWidthLink <--> core124.in; 
      router125.out[0] <--> VariableBandWidthLink <--> router115.in[1];
      router125.out[1] <--> VariableBandWidthLink <--> router94.in[4];
      router125.out[2] <--> VariableBandWidthLink <--> router70.in[5];
      router125.out[3] <--> VariableBandWidthLink <--> router71.in[2];
      router125.in[4] <--> VariableBandWidthLink <--> core125.out; 
      router125.out[4] <--> VariableBandWidthLink <--> core125.in; 
      router126.out[0] <--> VariableBandWidthLink <--> router41.in[0];
      router126.out[1] <--> VariableBandWidthLink <--> router34.in[3];
      router126.out[2] <--> VariableBandWidthLink <--> router141.in[1];
      router126.out[3] <--> VariableBandWidthLink <--> router112.in[2];
      router126.out[4] <--> VariableBandWidthLink <--> router156.in[4];
      router126.in[5] <--> VariableBandWidthLink <--> core126.out; 
      router126.out[5] <--> VariableBandWidthLink <--> core126.in; 
      router127.out[0] <--> VariableBandWidthLink <--> router44.in[1];
      router127.out[1] <--> VariableBandWidthLink <--> router44.in[2];
      router127.out[2] <--> VariableBandWidthLink <--> router247.in[0];
      router127.out[3] <--> VariableBandWidthLink <--> router230.in[1];
      router127.out[4] <--> VariableBandWidthLink <--> router27.in[3];
      router127.out[5] <--> VariableBandWidthLink <--> router244.in[2];
      router127.in[6] <--> VariableBandWidthLink <--> core127.out; 
      router127.out[6] <--> VariableBandWidthLink <--> core127.in; 
      router128.out[0] <--> VariableBandWidthLink <--> router106.in[0];
      router128.out[1] <--> VariableBandWidthLink <--> router94.in[1];
      router128.out[2] <--> VariableBandWidthLink <--> router209.in[0];
      router128.in[3] <--> VariableBandWidthLink <--> core128.out; 
      router128.out[3] <--> VariableBandWidthLink <--> core128.in; 
      router129.out[0] <--> VariableBandWidthLink <--> router6.in[2];
      router129.out[1] <--> VariableBandWidthLink <--> router42.in[3];
      router129.in[2] <--> VariableBandWidthLink <--> core129.out; 
      router129.out[2] <--> VariableBandWidthLink <--> core129.in; 
      router130.out[0] <--> VariableBandWidthLink <--> router97.in[1];
      router130.out[1] <--> VariableBandWidthLink <--> router199.in[1];
      router130.out[2] <--> VariableBandWidthLink <--> router119.in[2];
      router130.out[3] <--> VariableBandWidthLink <--> router208.in[2];
      router130.out[4] <--> VariableBandWidthLink <--> router44.in[3];
      router130.out[5] <--> VariableBandWidthLink <--> router202.in[2];
      router130.out[6] <--> VariableBandWidthLink <--> router227.in[2];
      router130.out[7] <--> VariableBandWidthLink <--> router113.in[2];
      router130.in[8] <--> VariableBandWidthLink <--> core130.out; 
      router130.out[8] <--> VariableBandWidthLink <--> core130.in; 
      router131.out[0] <--> VariableBandWidthLink <--> router101.in[0];
      router131.out[1] <--> VariableBandWidthLink <--> router225.in[0];
      router131.out[2] <--> VariableBandWidthLink <--> router231.in[1];
      router131.out[3] <--> VariableBandWidthLink <--> router48.in[1];
      router131.out[4] <--> VariableBandWidthLink <--> router81.in[0];
      router131.in[5] <--> VariableBandWidthLink <--> core131.out; 
      router131.out[5] <--> VariableBandWidthLink <--> core131.in; 
      router132.out[0] <--> VariableBandWidthLink <--> router70.in[0];
      router132.out[1] <--> VariableBandWidthLink <--> router75.in[1];
      router132.out[2] <--> VariableBandWidthLink <--> router30.in[2];
      router132.in[3] <--> VariableBandWidthLink <--> core132.out; 
      router132.out[3] <--> VariableBandWidthLink <--> core132.in; 
      router133.out[0] <--> VariableBandWidthLink <--> router135.in[1];
      router133.out[1] <--> VariableBandWidthLink <--> router98.in[3];
      router133.out[2] <--> VariableBandWidthLink <--> router15.in[4];
      router133.out[3] <--> VariableBandWidthLink <--> router98.in[5];
      router133.out[4] <--> VariableBandWidthLink <--> router191.in[2];
      router133.in[5] <--> VariableBandWidthLink <--> core133.out; 
      router133.out[5] <--> VariableBandWidthLink <--> core133.in; 
      router134.out[0] <--> VariableBandWidthLink <--> router108.in[0];
      router134.out[1] <--> VariableBandWidthLink <--> router67.in[2];
      router134.out[2] <--> VariableBandWidthLink <--> router36.in[0];
      router134.out[3] <--> VariableBandWidthLink <--> router169.in[1];
      router134.out[4] <--> VariableBandWidthLink <--> router63.in[4];
      router134.in[5] <--> VariableBandWidthLink <--> core134.out; 
      router134.out[5] <--> VariableBandWidthLink <--> core134.in; 
      router135.out[0] <--> VariableBandWidthLink <--> router75.in[0];
      router135.out[1] <--> VariableBandWidthLink <--> router133.in[0];
      router135.out[2] <--> VariableBandWidthLink <--> router146.in[1];
      router135.out[3] <--> VariableBandWidthLink <--> router227.in[1];
      router135.out[4] <--> VariableBandWidthLink <--> router37.in[3];
      router135.out[5] <--> VariableBandWidthLink <--> router102.in[3];
      router135.in[6] <--> VariableBandWidthLink <--> core135.out; 
      router135.out[6] <--> VariableBandWidthLink <--> core135.in; 
      router136.out[0] <--> VariableBandWidthLink <--> router69.in[2];
      router136.out[1] <--> VariableBandWidthLink <--> router245.in[0];
      router136.out[2] <--> VariableBandWidthLink <--> router28.in[2];
      router136.in[3] <--> VariableBandWidthLink <--> core136.out; 
      router136.out[3] <--> VariableBandWidthLink <--> core136.in; 
      router137.out[0] <--> VariableBandWidthLink <--> router44.in[0];
      router137.out[1] <--> VariableBandWidthLink <--> router146.in[0];
      router137.out[2] <--> VariableBandWidthLink <--> router146.in[6];
      router137.out[3] <--> VariableBandWidthLink <--> router41.in[2];
      router137.out[4] <--> VariableBandWidthLink <--> router53.in[3];
      router137.in[5] <--> VariableBandWidthLink <--> core137.out; 
      router137.out[5] <--> VariableBandWidthLink <--> core137.in; 
      router138.out[0] <--> VariableBandWidthLink <--> router33.in[5];
      router138.out[1] <--> VariableBandWidthLink <--> router22.in[2];
      router138.in[2] <--> VariableBandWidthLink <--> core138.out; 
      router138.out[2] <--> VariableBandWidthLink <--> core138.in; 
      router139.out[0] <--> VariableBandWidthLink <--> router217.in[0];
      router139.out[1] <--> VariableBandWidthLink <--> router20.in[1];
      router139.out[2] <--> VariableBandWidthLink <--> router236.in[3];
      router139.out[3] <--> VariableBandWidthLink <--> router29.in[0];
      router139.out[4] <--> VariableBandWidthLink <--> router5.in[1];
      router139.in[5] <--> VariableBandWidthLink <--> core139.out; 
      router139.out[5] <--> VariableBandWidthLink <--> core139.in; 
      router140.out[0] <--> VariableBandWidthLink <--> router19.in[6];
      router140.out[1] <--> VariableBandWidthLink <--> router170.in[3];
      router140.in[2] <--> VariableBandWidthLink <--> core140.out; 
      router140.out[2] <--> VariableBandWidthLink <--> core140.in; 
      router141.out[0] <--> VariableBandWidthLink <--> router210.in[1];
      router141.out[1] <--> VariableBandWidthLink <--> router126.in[2];
      router141.out[2] <--> VariableBandWidthLink <--> router50.in[3];
      router141.out[3] <--> VariableBandWidthLink <--> router249.in[2];
      router141.in[4] <--> VariableBandWidthLink <--> core141.out; 
      router141.out[4] <--> VariableBandWidthLink <--> core141.in; 
      router142.out[0] <--> VariableBandWidthLink <--> router190.in[0];
      router142.out[1] <--> VariableBandWidthLink <--> router253.in[0];
      router142.out[2] <--> VariableBandWidthLink <--> router179.in[0];
      router142.out[3] <--> VariableBandWidthLink <--> router199.in[2];
      router142.out[4] <--> VariableBandWidthLink <--> router83.in[2];
      router142.out[5] <--> VariableBandWidthLink <--> router252.in[3];
      router142.out[6] <--> VariableBandWidthLink <--> router49.in[2];
      router142.out[7] <--> VariableBandWidthLink <--> router176.in[1];
      router142.out[8] <--> VariableBandWidthLink <--> router163.in[4];
      router142.in[9] <--> VariableBandWidthLink <--> core142.out; 
      router142.out[9] <--> VariableBandWidthLink <--> core142.in; 
      router143.out[0] <--> VariableBandWidthLink <--> router164.in[1];
      router143.out[1] <--> VariableBandWidthLink <--> router172.in[4];
      router143.out[2] <--> VariableBandWidthLink <--> router52.in[4];
      router143.out[3] <--> VariableBandWidthLink <--> router146.in[8];
      router143.out[4] <--> VariableBandWidthLink <--> router101.in[4];
      router143.out[5] <--> VariableBandWidthLink <--> router47.in[3];
      router143.in[6] <--> VariableBandWidthLink <--> core143.out; 
      router143.out[6] <--> VariableBandWidthLink <--> core143.in; 
      router144.out[0] <--> VariableBandWidthLink <--> router189.in[0];
      router144.out[1] <--> VariableBandWidthLink <--> router83.in[0];
      router144.out[2] <--> VariableBandWidthLink <--> router21.in[0];
      router144.out[3] <--> VariableBandWidthLink <--> router111.in[0];
      router144.out[4] <--> VariableBandWidthLink <--> router145.in[0];
      router144.out[5] <--> VariableBandWidthLink <--> router1.in[0];
      router144.out[6] <--> VariableBandWidthLink <--> router103.in[1];
      router144.out[7] <--> VariableBandWidthLink <--> router155.in[0];
      router144.out[8] <--> VariableBandWidthLink <--> router146.in[7];
      router144.out[9] <--> VariableBandWidthLink <--> router73.in[1];
      router144.out[10] <--> VariableBandWidthLink <--> router205.in[1];
      router144.in[11] <--> VariableBandWidthLink <--> core144.out; 
      router144.out[11] <--> VariableBandWidthLink <--> core144.in; 
      router145.out[0] <--> VariableBandWidthLink <--> router144.in[4];
      router145.out[1] <--> VariableBandWidthLink <--> router251.in[0];
      router145.out[2] <--> VariableBandWidthLink <--> router210.in[0];
      router145.out[3] <--> VariableBandWidthLink <--> router208.in[4];
      router145.in[4] <--> VariableBandWidthLink <--> core145.out; 
      router145.out[4] <--> VariableBandWidthLink <--> core145.in; 
      router146.out[0] <--> VariableBandWidthLink <--> router137.in[1];
      router146.out[1] <--> VariableBandWidthLink <--> router135.in[2];
      router146.out[2] <--> VariableBandWidthLink <--> router63.in[1];
      router146.out[3] <--> VariableBandWidthLink <--> router147.in[1];
      router146.out[4] <--> VariableBandWidthLink <--> router183.in[3];
      router146.out[5] <--> VariableBandWidthLink <--> router46.in[0];
      router146.out[6] <--> VariableBandWidthLink <--> router137.in[2];
      router146.out[7] <--> VariableBandWidthLink <--> router144.in[8];
      router146.out[8] <--> VariableBandWidthLink <--> router143.in[3];
      router146.out[9] <--> VariableBandWidthLink <--> router182.in[5];
      router146.out[10] <--> VariableBandWidthLink <--> router70.in[8];
      router146.out[11] <--> VariableBandWidthLink <--> router192.in[6];
      router146.in[12] <--> VariableBandWidthLink <--> core146.out; 
      router146.out[12] <--> VariableBandWidthLink <--> core146.in; 
      router147.out[0] <--> VariableBandWidthLink <--> router43.in[1];
      router147.out[1] <--> VariableBandWidthLink <--> router146.in[3];
      router147.out[2] <--> VariableBandWidthLink <--> router10.in[2];
      router147.out[3] <--> VariableBandWidthLink <--> router183.in[5];
      router147.out[4] <--> VariableBandWidthLink <--> router165.in[0];
      router147.out[5] <--> VariableBandWidthLink <--> router172.in[7];
      router147.in[6] <--> VariableBandWidthLink <--> core147.out; 
      router147.out[6] <--> VariableBandWidthLink <--> core147.in; 
      router148.out[0] <--> VariableBandWidthLink <--> router30.in[3];
      router148.in[1] <--> VariableBandWidthLink <--> core148.out; 
      router148.out[1] <--> VariableBandWidthLink <--> core148.in; 
      router149.out[0] <--> VariableBandWidthLink <--> router164.in[5];
      router149.out[1] <--> VariableBandWidthLink <--> router66.in[1];
      router149.in[2] <--> VariableBandWidthLink <--> core149.out; 
      router149.out[2] <--> VariableBandWidthLink <--> core149.in; 
      router150.out[0] <--> VariableBandWidthLink <--> router34.in[1];
      router150.out[1] <--> VariableBandWidthLink <--> router183.in[2];
      router150.out[2] <--> VariableBandWidthLink <--> router175.in[0];
      router150.out[3] <--> VariableBandWidthLink <--> router197.in[3];
      router150.out[4] <--> VariableBandWidthLink <--> router254.in[5];
      router150.in[5] <--> VariableBandWidthLink <--> core150.out; 
      router150.out[5] <--> VariableBandWidthLink <--> core150.in; 
      router151.out[0] <--> VariableBandWidthLink <--> router55.in[1];
      router151.out[1] <--> VariableBandWidthLink <--> router70.in[4];
      router151.out[2] <--> VariableBandWidthLink <--> router38.in[1];
      router151.in[3] <--> VariableBandWidthLink <--> core151.out; 
      router151.out[3] <--> VariableBandWidthLink <--> core151.in; 
      router152.out[0] <--> VariableBandWidthLink <--> router97.in[0];
      router152.out[1] <--> VariableBandWidthLink <--> router33.in[7];
      router152.out[2] <--> VariableBandWidthLink <--> router77.in[2];
      router152.in[3] <--> VariableBandWidthLink <--> core152.out; 
      router152.out[3] <--> VariableBandWidthLink <--> core152.in; 
      router153.out[0] <--> VariableBandWidthLink <--> router86.in[0];
      router153.out[1] <--> VariableBandWidthLink <--> router99.in[1];
      router153.out[2] <--> VariableBandWidthLink <--> router160.in[2];
      router153.out[3] <--> VariableBandWidthLink <--> router225.in[4];
      router153.out[4] <--> VariableBandWidthLink <--> router229.in[1];
      router153.out[5] <--> VariableBandWidthLink <--> router8.in[1];
      router153.out[6] <--> VariableBandWidthLink <--> router243.in[6];
      router153.in[7] <--> VariableBandWidthLink <--> core153.out; 
      router153.out[7] <--> VariableBandWidthLink <--> core153.in; 
      router154.out[0] <--> VariableBandWidthLink <--> router25.in[1];
      router154.out[1] <--> VariableBandWidthLink <--> router157.in[1];
      router154.in[2] <--> VariableBandWidthLink <--> core154.out; 
      router154.out[2] <--> VariableBandWidthLink <--> core154.in; 
      router155.out[0] <--> VariableBandWidthLink <--> router144.in[7];
      router155.out[1] <--> VariableBandWidthLink <--> router99.in[2];
      router155.out[2] <--> VariableBandWidthLink <--> router14.in[3];
      router155.out[3] <--> VariableBandWidthLink <--> router163.in[2];
      router155.out[4] <--> VariableBandWidthLink <--> router88.in[1];
      router155.out[5] <--> VariableBandWidthLink <--> router206.in[3];
      router155.in[6] <--> VariableBandWidthLink <--> core155.out; 
      router155.out[6] <--> VariableBandWidthLink <--> core155.in; 
      router156.out[0] <--> VariableBandWidthLink <--> router65.in[1];
      router156.out[1] <--> VariableBandWidthLink <--> router112.in[1];
      router156.out[2] <--> VariableBandWidthLink <--> router35.in[0];
      router156.out[3] <--> VariableBandWidthLink <--> router245.in[2];
      router156.out[4] <--> VariableBandWidthLink <--> router126.in[4];
      router156.in[5] <--> VariableBandWidthLink <--> core156.out; 
      router156.out[5] <--> VariableBandWidthLink <--> core156.in; 
      router157.out[0] <--> VariableBandWidthLink <--> router235.in[1];
      router157.out[1] <--> VariableBandWidthLink <--> router154.in[1];
      router157.out[2] <--> VariableBandWidthLink <--> router252.in[5];
      router157.in[3] <--> VariableBandWidthLink <--> core157.out; 
      router157.out[3] <--> VariableBandWidthLink <--> core157.in; 
      router158.out[0] <--> VariableBandWidthLink <--> router70.in[2];
      router158.out[1] <--> VariableBandWidthLink <--> router200.in[4];
      router158.out[2] <--> VariableBandWidthLink <--> router114.in[2];
      router158.in[3] <--> VariableBandWidthLink <--> core158.out; 
      router158.out[3] <--> VariableBandWidthLink <--> core158.in; 
      router159.out[0] <--> VariableBandWidthLink <--> router23.in[6];
      router159.out[1] <--> VariableBandWidthLink <--> router199.in[3];
      router159.in[2] <--> VariableBandWidthLink <--> core159.out; 
      router159.out[2] <--> VariableBandWidthLink <--> core159.in; 
      router160.out[0] <--> VariableBandWidthLink <--> router28.in[0];
      router160.out[1] <--> VariableBandWidthLink <--> router10.in[0];
      router160.out[2] <--> VariableBandWidthLink <--> router153.in[2];
      router160.out[3] <--> VariableBandWidthLink <--> router195.in[5];
      router160.out[4] <--> VariableBandWidthLink <--> router54.in[0];
      router160.in[5] <--> VariableBandWidthLink <--> core160.out; 
      router160.out[5] <--> VariableBandWidthLink <--> core160.in; 
      router161.out[0] <--> VariableBandWidthLink <--> router120.in[1];
      router161.out[1] <--> VariableBandWidthLink <--> router97.in[2];
      router161.out[2] <--> VariableBandWidthLink <--> router164.in[4];
      router161.in[3] <--> VariableBandWidthLink <--> core161.out; 
      router161.out[3] <--> VariableBandWidthLink <--> core161.in; 
      router162.out[0] <--> VariableBandWidthLink <--> router26.in[2];
      router162.out[1] <--> VariableBandWidthLink <--> router22.in[0];
      router162.out[2] <--> VariableBandWidthLink <--> router243.in[1];
      router162.out[3] <--> VariableBandWidthLink <--> router180.in[3];
      router162.out[4] <--> VariableBandWidthLink <--> router188.in[5];
      router162.in[5] <--> VariableBandWidthLink <--> core162.out; 
      router162.out[5] <--> VariableBandWidthLink <--> core162.in; 
      router163.out[0] <--> VariableBandWidthLink <--> router168.in[0];
      router163.out[1] <--> VariableBandWidthLink <--> router194.in[2];
      router163.out[2] <--> VariableBandWidthLink <--> router155.in[3];
      router163.out[3] <--> VariableBandWidthLink <--> router106.in[6];
      router163.out[4] <--> VariableBandWidthLink <--> router142.in[8];
      router163.in[5] <--> VariableBandWidthLink <--> core163.out; 
      router163.out[5] <--> VariableBandWidthLink <--> core163.in; 
      router164.out[0] <--> VariableBandWidthLink <--> router235.in[0];
      router164.out[1] <--> VariableBandWidthLink <--> router143.in[0];
      router164.out[2] <--> VariableBandWidthLink <--> router237.in[1];
      router164.out[3] <--> VariableBandWidthLink <--> router123.in[1];
      router164.out[4] <--> VariableBandWidthLink <--> router161.in[2];
      router164.out[5] <--> VariableBandWidthLink <--> router149.in[0];
      router164.out[6] <--> VariableBandWidthLink <--> router94.in[6];
      router164.out[7] <--> VariableBandWidthLink <--> router237.in[4];
      router164.out[8] <--> VariableBandWidthLink <--> router167.in[0];
      router164.out[9] <--> VariableBandWidthLink <--> router117.in[0];
      router164.in[10] <--> VariableBandWidthLink <--> core164.out; 
      router164.out[10] <--> VariableBandWidthLink <--> core164.in; 
      router165.out[0] <--> VariableBandWidthLink <--> router147.in[4];
      router165.out[1] <--> VariableBandWidthLink <--> router187.in[1];
      router165.out[2] <--> VariableBandWidthLink <--> router223.in[6];
      router165.in[3] <--> VariableBandWidthLink <--> core165.out; 
      router165.out[3] <--> VariableBandWidthLink <--> core165.in; 
      router166.out[0] <--> VariableBandWidthLink <--> router105.in[0];
      router166.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router166.out[2] <--> VariableBandWidthLink <--> router24.in[4];
      router166.out[3] <--> VariableBandWidthLink <--> router116.in[5];
      router166.out[4] <--> VariableBandWidthLink <--> router193.in[2];
      router166.in[5] <--> VariableBandWidthLink <--> core166.out; 
      router166.out[5] <--> VariableBandWidthLink <--> core166.in; 
      router167.out[0] <--> VariableBandWidthLink <--> router164.in[8];
      router167.out[1] <--> VariableBandWidthLink <--> router197.in[6];
      router167.in[2] <--> VariableBandWidthLink <--> core167.out; 
      router167.out[2] <--> VariableBandWidthLink <--> core167.in; 
      router168.out[0] <--> VariableBandWidthLink <--> router163.in[0];
      router168.out[1] <--> VariableBandWidthLink <--> router102.in[1];
      router168.out[2] <--> VariableBandWidthLink <--> router101.in[2];
      router168.out[3] <--> VariableBandWidthLink <--> router22.in[4];
      router168.out[4] <--> VariableBandWidthLink <--> router223.in[5];
      router168.out[5] <--> VariableBandWidthLink <--> router244.in[3];
      router168.in[6] <--> VariableBandWidthLink <--> core168.out; 
      router168.out[6] <--> VariableBandWidthLink <--> core168.in; 
      router169.out[0] <--> VariableBandWidthLink <--> router19.in[4];
      router169.out[1] <--> VariableBandWidthLink <--> router134.in[3];
      router169.in[2] <--> VariableBandWidthLink <--> core169.out; 
      router169.out[2] <--> VariableBandWidthLink <--> core169.in; 
      router170.out[0] <--> VariableBandWidthLink <--> router3.in[0];
      router170.out[1] <--> VariableBandWidthLink <--> router221.in[1];
      router170.out[2] <--> VariableBandWidthLink <--> router71.in[0];
      router170.out[3] <--> VariableBandWidthLink <--> router140.in[1];
      router170.in[4] <--> VariableBandWidthLink <--> core170.out; 
      router170.out[4] <--> VariableBandWidthLink <--> core170.in; 
      router171.out[0] <--> VariableBandWidthLink <--> router48.in[4];
      router171.in[1] <--> VariableBandWidthLink <--> core171.out; 
      router171.out[1] <--> VariableBandWidthLink <--> core171.in; 
      router172.out[0] <--> VariableBandWidthLink <--> router103.in[0];
      router172.out[1] <--> VariableBandWidthLink <--> router217.in[2];
      router172.out[2] <--> VariableBandWidthLink <--> router4.in[1];
      router172.out[3] <--> VariableBandWidthLink <--> router24.in[2];
      router172.out[4] <--> VariableBandWidthLink <--> router143.in[1];
      router172.out[5] <--> VariableBandWidthLink <--> router121.in[0];
      router172.out[6] <--> VariableBandWidthLink <--> router113.in[1];
      router172.out[7] <--> VariableBandWidthLink <--> router147.in[5];
      router172.out[8] <--> VariableBandWidthLink <--> router61.in[2];
      router172.in[9] <--> VariableBandWidthLink <--> core172.out; 
      router172.out[9] <--> VariableBandWidthLink <--> core172.in; 
      router173.out[0] <--> VariableBandWidthLink <--> router88.in[2];
      router173.out[1] <--> VariableBandWidthLink <--> router52.in[5];
      router173.in[2] <--> VariableBandWidthLink <--> core173.out; 
      router173.out[2] <--> VariableBandWidthLink <--> core173.in; 
      router174.out[0] <--> VariableBandWidthLink <--> router214.in[3];
      router174.in[1] <--> VariableBandWidthLink <--> core174.out; 
      router174.out[1] <--> VariableBandWidthLink <--> core174.in; 
      router175.out[0] <--> VariableBandWidthLink <--> router150.in[2];
      router175.out[1] <--> VariableBandWidthLink <--> router241.in[2];
      router175.in[2] <--> VariableBandWidthLink <--> core175.out; 
      router175.out[2] <--> VariableBandWidthLink <--> core175.in; 
      router176.out[0] <--> VariableBandWidthLink <--> router103.in[3];
      router176.out[1] <--> VariableBandWidthLink <--> router142.in[7];
      router176.out[2] <--> VariableBandWidthLink <--> router13.in[3];
      router176.out[3] <--> VariableBandWidthLink <--> router222.in[1];
      router176.in[4] <--> VariableBandWidthLink <--> core176.out; 
      router176.out[4] <--> VariableBandWidthLink <--> core176.in; 
      router177.out[0] <--> VariableBandWidthLink <--> router217.in[3];
      router177.out[1] <--> VariableBandWidthLink <--> router247.in[2];
      router177.in[2] <--> VariableBandWidthLink <--> core177.out; 
      router177.out[2] <--> VariableBandWidthLink <--> core177.in; 
      router178.out[0] <--> VariableBandWidthLink <--> router106.in[1];
      router178.out[1] <--> VariableBandWidthLink <--> router7.in[3];
      router178.out[2] <--> VariableBandWidthLink <--> router81.in[7];
      router178.in[3] <--> VariableBandWidthLink <--> core178.out; 
      router178.out[3] <--> VariableBandWidthLink <--> core178.in; 
      router179.out[0] <--> VariableBandWidthLink <--> router142.in[2];
      router179.out[1] <--> VariableBandWidthLink <--> router105.in[2];
      router179.in[2] <--> VariableBandWidthLink <--> core179.out; 
      router179.out[2] <--> VariableBandWidthLink <--> core179.in; 
      router180.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router180.out[1] <--> VariableBandWidthLink <--> router232.in[1];
      router180.out[2] <--> VariableBandWidthLink <--> router196.in[0];
      router180.out[3] <--> VariableBandWidthLink <--> router162.in[3];
      router180.out[4] <--> VariableBandWidthLink <--> router228.in[2];
      router180.in[5] <--> VariableBandWidthLink <--> core180.out; 
      router180.out[5] <--> VariableBandWidthLink <--> core180.in; 
      router181.out[0] <--> VariableBandWidthLink <--> router184.in[0];
      router181.out[1] <--> VariableBandWidthLink <--> router196.in[1];
      router181.out[2] <--> VariableBandWidthLink <--> router221.in[2];
      router181.out[3] <--> VariableBandWidthLink <--> router53.in[2];
      router181.in[4] <--> VariableBandWidthLink <--> core181.out; 
      router181.out[4] <--> VariableBandWidthLink <--> core181.in; 
      router182.out[0] <--> VariableBandWidthLink <--> router119.in[0];
      router182.out[1] <--> VariableBandWidthLink <--> router124.in[1];
      router182.out[2] <--> VariableBandWidthLink <--> router104.in[0];
      router182.out[3] <--> VariableBandWidthLink <--> router192.in[3];
      router182.out[4] <--> VariableBandWidthLink <--> router220.in[3];
      router182.out[5] <--> VariableBandWidthLink <--> router146.in[9];
      router182.out[6] <--> VariableBandWidthLink <--> router46.in[1];
      router182.out[7] <--> VariableBandWidthLink <--> router207.in[1];
      router182.in[8] <--> VariableBandWidthLink <--> core182.out; 
      router182.out[8] <--> VariableBandWidthLink <--> core182.in; 
      router183.out[0] <--> VariableBandWidthLink <--> router116.in[0];
      router183.out[1] <--> VariableBandWidthLink <--> router232.in[2];
      router183.out[2] <--> VariableBandWidthLink <--> router150.in[1];
      router183.out[3] <--> VariableBandWidthLink <--> router146.in[4];
      router183.out[4] <--> VariableBandWidthLink <--> router212.in[3];
      router183.out[5] <--> VariableBandWidthLink <--> router147.in[3];
      router183.out[6] <--> VariableBandWidthLink <--> router244.in[1];
      router183.out[7] <--> VariableBandWidthLink <--> router122.in[1];
      router183.in[8] <--> VariableBandWidthLink <--> core183.out; 
      router183.out[8] <--> VariableBandWidthLink <--> core183.in; 
      router184.out[0] <--> VariableBandWidthLink <--> router181.in[0];
      router184.out[1] <--> VariableBandWidthLink <--> router197.in[2];
      router184.out[2] <--> VariableBandWidthLink <--> router198.in[1];
      router184.in[3] <--> VariableBandWidthLink <--> core184.out; 
      router184.out[3] <--> VariableBandWidthLink <--> core184.in; 
      router185.out[0] <--> VariableBandWidthLink <--> router219.in[1];
      router185.out[1] <--> VariableBandWidthLink <--> router193.in[0];
      router185.out[2] <--> VariableBandWidthLink <--> router228.in[1];
      router185.in[3] <--> VariableBandWidthLink <--> core185.out; 
      router185.out[3] <--> VariableBandWidthLink <--> core185.in; 
      router186.out[0] <--> VariableBandWidthLink <--> router19.in[5];
      router186.out[1] <--> VariableBandWidthLink <--> router96.in[0];
      router186.in[2] <--> VariableBandWidthLink <--> core186.out; 
      router186.out[2] <--> VariableBandWidthLink <--> core186.in; 
      router187.out[0] <--> VariableBandWidthLink <--> router252.in[0];
      router187.out[1] <--> VariableBandWidthLink <--> router165.in[1];
      router187.out[2] <--> VariableBandWidthLink <--> router190.in[3];
      router187.in[3] <--> VariableBandWidthLink <--> core187.out; 
      router187.out[3] <--> VariableBandWidthLink <--> core187.in; 
      router188.out[0] <--> VariableBandWidthLink <--> router33.in[3];
      router188.out[1] <--> VariableBandWidthLink <--> router49.in[0];
      router188.out[2] <--> VariableBandWidthLink <--> router82.in[1];
      router188.out[3] <--> VariableBandWidthLink <--> router22.in[3];
      router188.out[4] <--> VariableBandWidthLink <--> router123.in[4];
      router188.out[5] <--> VariableBandWidthLink <--> router162.in[4];
      router188.in[6] <--> VariableBandWidthLink <--> core188.out; 
      router188.out[6] <--> VariableBandWidthLink <--> core188.in; 
      router189.out[0] <--> VariableBandWidthLink <--> router144.in[0];
      router189.out[1] <--> VariableBandWidthLink <--> router27.in[1];
      router189.out[2] <--> VariableBandWidthLink <--> router43.in[2];
      router189.in[3] <--> VariableBandWidthLink <--> core189.out; 
      router189.out[3] <--> VariableBandWidthLink <--> core189.in; 
      router190.out[0] <--> VariableBandWidthLink <--> router142.in[0];
      router190.out[1] <--> VariableBandWidthLink <--> router213.in[3];
      router190.out[2] <--> VariableBandWidthLink <--> router220.in[4];
      router190.out[3] <--> VariableBandWidthLink <--> router187.in[2];
      router190.in[4] <--> VariableBandWidthLink <--> core190.out; 
      router190.out[4] <--> VariableBandWidthLink <--> core190.in; 
      router191.out[0] <--> VariableBandWidthLink <--> router25.in[2];
      router191.out[1] <--> VariableBandWidthLink <--> router221.in[0];
      router191.out[2] <--> VariableBandWidthLink <--> router133.in[4];
      router191.in[3] <--> VariableBandWidthLink <--> core191.out; 
      router191.out[3] <--> VariableBandWidthLink <--> core191.in; 
      router192.out[0] <--> VariableBandWidthLink <--> router120.in[0];
      router192.out[1] <--> VariableBandWidthLink <--> router212.in[0];
      router192.out[2] <--> VariableBandWidthLink <--> router216.in[1];
      router192.out[3] <--> VariableBandWidthLink <--> router182.in[3];
      router192.out[4] <--> VariableBandWidthLink <--> router249.in[1];
      router192.out[5] <--> VariableBandWidthLink <--> router74.in[2];
      router192.out[6] <--> VariableBandWidthLink <--> router146.in[11];
      router192.in[7] <--> VariableBandWidthLink <--> core192.out; 
      router192.out[7] <--> VariableBandWidthLink <--> core192.in; 
      router193.out[0] <--> VariableBandWidthLink <--> router185.in[1];
      router193.out[1] <--> VariableBandWidthLink <--> router213.in[2];
      router193.out[2] <--> VariableBandWidthLink <--> router166.in[4];
      router193.in[3] <--> VariableBandWidthLink <--> core193.out; 
      router193.out[3] <--> VariableBandWidthLink <--> core193.in; 
      router194.out[0] <--> VariableBandWidthLink <--> router94.in[0];
      router194.out[1] <--> VariableBandWidthLink <--> router67.in[1];
      router194.out[2] <--> VariableBandWidthLink <--> router163.in[1];
      router194.out[3] <--> VariableBandWidthLink <--> router227.in[3];
      router194.in[4] <--> VariableBandWidthLink <--> core194.out; 
      router194.out[4] <--> VariableBandWidthLink <--> core194.in; 
      router195.out[0] <--> VariableBandWidthLink <--> router26.in[0];
      router195.out[1] <--> VariableBandWidthLink <--> router236.in[0];
      router195.out[2] <--> VariableBandWidthLink <--> router227.in[0];
      router195.out[3] <--> VariableBandWidthLink <--> router45.in[1];
      router195.out[4] <--> VariableBandWidthLink <--> router89.in[2];
      router195.out[5] <--> VariableBandWidthLink <--> router160.in[3];
      router195.out[6] <--> VariableBandWidthLink <--> router66.in[2];
      router195.in[7] <--> VariableBandWidthLink <--> core195.out; 
      router195.out[7] <--> VariableBandWidthLink <--> core195.in; 
      router196.out[0] <--> VariableBandWidthLink <--> router180.in[2];
      router196.out[1] <--> VariableBandWidthLink <--> router181.in[1];
      router196.out[2] <--> VariableBandWidthLink <--> router13.in[1];
      router196.in[3] <--> VariableBandWidthLink <--> core196.out; 
      router196.out[3] <--> VariableBandWidthLink <--> core196.in; 
      router197.out[0] <--> VariableBandWidthLink <--> router48.in[0];
      router197.out[1] <--> VariableBandWidthLink <--> router28.in[1];
      router197.out[2] <--> VariableBandWidthLink <--> router184.in[1];
      router197.out[3] <--> VariableBandWidthLink <--> router150.in[3];
      router197.out[4] <--> VariableBandWidthLink <--> router13.in[4];
      router197.out[5] <--> VariableBandWidthLink <--> router20.in[3];
      router197.out[6] <--> VariableBandWidthLink <--> router167.in[1];
      router197.in[7] <--> VariableBandWidthLink <--> core197.out; 
      router197.out[7] <--> VariableBandWidthLink <--> core197.in; 
      router198.out[0] <--> VariableBandWidthLink <--> router123.in[2];
      router198.out[1] <--> VariableBandWidthLink <--> router184.in[2];
      router198.in[2] <--> VariableBandWidthLink <--> core198.out; 
      router198.out[2] <--> VariableBandWidthLink <--> core198.in; 
      router199.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router199.out[1] <--> VariableBandWidthLink <--> router130.in[1];
      router199.out[2] <--> VariableBandWidthLink <--> router142.in[3];
      router199.out[3] <--> VariableBandWidthLink <--> router159.in[1];
      router199.in[4] <--> VariableBandWidthLink <--> core199.out; 
      router199.out[4] <--> VariableBandWidthLink <--> core199.in; 
      router200.out[0] <--> VariableBandWidthLink <--> router30.in[0];
      router200.out[1] <--> VariableBandWidthLink <--> router108.in[2];
      router200.out[2] <--> VariableBandWidthLink <--> router30.in[1];
      router200.out[3] <--> VariableBandWidthLink <--> router8.in[0];
      router200.out[4] <--> VariableBandWidthLink <--> router158.in[1];
      router200.in[5] <--> VariableBandWidthLink <--> core200.out; 
      router200.out[5] <--> VariableBandWidthLink <--> core200.in; 
      router201.out[0] <--> VariableBandWidthLink <--> router240.in[2];
      router201.out[1] <--> VariableBandWidthLink <--> router54.in[1];
      router201.in[2] <--> VariableBandWidthLink <--> core201.out; 
      router201.out[2] <--> VariableBandWidthLink <--> core201.in; 
      router202.out[0] <--> VariableBandWidthLink <--> router211.in[2];
      router202.out[1] <--> VariableBandWidthLink <--> router222.in[0];
      router202.out[2] <--> VariableBandWidthLink <--> router130.in[5];
      router202.in[3] <--> VariableBandWidthLink <--> core202.out; 
      router202.out[3] <--> VariableBandWidthLink <--> core202.in; 
      router203.out[0] <--> VariableBandWidthLink <--> router239.in[2];
      router203.in[1] <--> VariableBandWidthLink <--> core203.out; 
      router203.out[1] <--> VariableBandWidthLink <--> core203.in; 
      router204.out[0] <--> VariableBandWidthLink <--> router235.in[4];
      router204.out[1] <--> VariableBandWidthLink <--> router27.in[2];
      router204.out[2] <--> VariableBandWidthLink <--> router3.in[4];
      router204.in[3] <--> VariableBandWidthLink <--> core204.out; 
      router204.out[3] <--> VariableBandWidthLink <--> core204.in; 
      router205.out[0] <--> VariableBandWidthLink <--> router215.in[1];
      router205.out[1] <--> VariableBandWidthLink <--> router144.in[10];
      router205.in[2] <--> VariableBandWidthLink <--> core205.out; 
      router205.out[2] <--> VariableBandWidthLink <--> core205.in; 
      router206.out[0] <--> VariableBandWidthLink <--> router238.in[1];
      router206.out[1] <--> VariableBandWidthLink <--> router81.in[4];
      router206.out[2] <--> VariableBandWidthLink <--> router103.in[4];
      router206.out[3] <--> VariableBandWidthLink <--> router155.in[5];
      router206.out[4] <--> VariableBandWidthLink <--> router79.in[6];
      router206.in[5] <--> VariableBandWidthLink <--> core206.out; 
      router206.out[5] <--> VariableBandWidthLink <--> core206.in; 
      router207.out[0] <--> VariableBandWidthLink <--> router72.in[1];
      router207.out[1] <--> VariableBandWidthLink <--> router182.in[7];
      router207.in[2] <--> VariableBandWidthLink <--> core207.out; 
      router207.out[2] <--> VariableBandWidthLink <--> core207.in; 
      router208.out[0] <--> VariableBandWidthLink <--> router15.in[0];
      router208.out[1] <--> VariableBandWidthLink <--> router94.in[3];
      router208.out[2] <--> VariableBandWidthLink <--> router130.in[3];
      router208.out[3] <--> VariableBandWidthLink <--> router12.in[0];
      router208.out[4] <--> VariableBandWidthLink <--> router145.in[3];
      router208.in[5] <--> VariableBandWidthLink <--> core208.out; 
      router208.out[5] <--> VariableBandWidthLink <--> core208.in; 
      router209.out[0] <--> VariableBandWidthLink <--> router128.in[2];
      router209.out[1] <--> VariableBandWidthLink <--> router73.in[2];
      router209.out[2] <--> VariableBandWidthLink <--> router35.in[1];
      router209.in[3] <--> VariableBandWidthLink <--> core209.out; 
      router209.out[3] <--> VariableBandWidthLink <--> core209.in; 
      router210.out[0] <--> VariableBandWidthLink <--> router145.in[2];
      router210.out[1] <--> VariableBandWidthLink <--> router141.in[0];
      router210.out[2] <--> VariableBandWidthLink <--> router84.in[4];
      router210.in[3] <--> VariableBandWidthLink <--> core210.out; 
      router210.out[3] <--> VariableBandWidthLink <--> core210.in; 
      router211.out[0] <--> VariableBandWidthLink <--> router250.in[1];
      router211.out[1] <--> VariableBandWidthLink <--> router247.in[1];
      router211.out[2] <--> VariableBandWidthLink <--> router202.in[0];
      router211.out[3] <--> VariableBandWidthLink <--> router246.in[2];
      router211.in[4] <--> VariableBandWidthLink <--> core211.out; 
      router211.out[4] <--> VariableBandWidthLink <--> core211.in; 
      router212.out[0] <--> VariableBandWidthLink <--> router192.in[1];
      router212.out[1] <--> VariableBandWidthLink <--> router254.in[1];
      router212.out[2] <--> VariableBandWidthLink <--> router243.in[3];
      router212.out[3] <--> VariableBandWidthLink <--> router183.in[4];
      router212.out[4] <--> VariableBandWidthLink <--> router107.in[2];
      router212.out[5] <--> VariableBandWidthLink <--> router48.in[3];
      router212.out[6] <--> VariableBandWidthLink <--> router26.in[5];
      router212.in[7] <--> VariableBandWidthLink <--> core212.out; 
      router212.out[7] <--> VariableBandWidthLink <--> core212.in; 
      router213.out[0] <--> VariableBandWidthLink <--> router40.in[0];
      router213.out[1] <--> VariableBandWidthLink <--> router18.in[2];
      router213.out[2] <--> VariableBandWidthLink <--> router193.in[1];
      router213.out[3] <--> VariableBandWidthLink <--> router190.in[1];
      router213.out[4] <--> VariableBandWidthLink <--> router84.in[3];
      router213.in[5] <--> VariableBandWidthLink <--> core213.out; 
      router213.out[5] <--> VariableBandWidthLink <--> core213.in; 
      router214.out[0] <--> VariableBandWidthLink <--> router216.in[0];
      router214.out[1] <--> VariableBandWidthLink <--> router253.in[2];
      router214.out[2] <--> VariableBandWidthLink <--> router245.in[1];
      router214.out[3] <--> VariableBandWidthLink <--> router174.in[0];
      router214.out[4] <--> VariableBandWidthLink <--> router7.in[4];
      router214.in[5] <--> VariableBandWidthLink <--> core214.out; 
      router214.out[5] <--> VariableBandWidthLink <--> core214.in; 
      router215.out[0] <--> VariableBandWidthLink <--> router60.in[2];
      router215.out[1] <--> VariableBandWidthLink <--> router205.in[0];
      router215.in[2] <--> VariableBandWidthLink <--> core215.out; 
      router215.out[2] <--> VariableBandWidthLink <--> core215.in; 
      router216.out[0] <--> VariableBandWidthLink <--> router214.in[0];
      router216.out[1] <--> VariableBandWidthLink <--> router192.in[2];
      router216.out[2] <--> VariableBandWidthLink <--> router115.in[2];
      router216.out[3] <--> VariableBandWidthLink <--> router67.in[4];
      router216.out[4] <--> VariableBandWidthLink <--> router38.in[2];
      router216.in[5] <--> VariableBandWidthLink <--> core216.out; 
      router216.out[5] <--> VariableBandWidthLink <--> core216.in; 
      router217.out[0] <--> VariableBandWidthLink <--> router139.in[0];
      router217.out[1] <--> VariableBandWidthLink <--> router14.in[0];
      router217.out[2] <--> VariableBandWidthLink <--> router172.in[1];
      router217.out[3] <--> VariableBandWidthLink <--> router177.in[0];
      router217.out[4] <--> VariableBandWidthLink <--> router32.in[0];
      router217.in[5] <--> VariableBandWidthLink <--> core217.out; 
      router217.out[5] <--> VariableBandWidthLink <--> core217.in; 
      router218.out[0] <--> VariableBandWidthLink <--> router116.in[2];
      router218.out[1] <--> VariableBandWidthLink <--> router108.in[4];
      router218.out[2] <--> VariableBandWidthLink <--> router242.in[1];
      router218.out[3] <--> VariableBandWidthLink <--> router63.in[3];
      router218.out[4] <--> VariableBandWidthLink <--> router228.in[3];
      router218.in[5] <--> VariableBandWidthLink <--> core218.out; 
      router218.out[5] <--> VariableBandWidthLink <--> core218.in; 
      router219.out[0] <--> VariableBandWidthLink <--> router118.in[0];
      router219.out[1] <--> VariableBandWidthLink <--> router185.in[0];
      router219.out[2] <--> VariableBandWidthLink <--> router223.in[4];
      router219.in[3] <--> VariableBandWidthLink <--> core219.out; 
      router219.out[3] <--> VariableBandWidthLink <--> core219.in; 
      router220.out[0] <--> VariableBandWidthLink <--> router124.in[0];
      router220.out[1] <--> VariableBandWidthLink <--> router240.in[0];
      router220.out[2] <--> VariableBandWidthLink <--> router37.in[2];
      router220.out[3] <--> VariableBandWidthLink <--> router182.in[4];
      router220.out[4] <--> VariableBandWidthLink <--> router190.in[2];
      router220.in[5] <--> VariableBandWidthLink <--> core220.out; 
      router220.out[5] <--> VariableBandWidthLink <--> core220.in; 
      router221.out[0] <--> VariableBandWidthLink <--> router191.in[1];
      router221.out[1] <--> VariableBandWidthLink <--> router170.in[1];
      router221.out[2] <--> VariableBandWidthLink <--> router181.in[2];
      router221.in[3] <--> VariableBandWidthLink <--> core221.out; 
      router221.out[3] <--> VariableBandWidthLink <--> core221.in; 
      router222.out[0] <--> VariableBandWidthLink <--> router202.in[1];
      router222.out[1] <--> VariableBandWidthLink <--> router176.in[3];
      router222.out[2] <--> VariableBandWidthLink <--> router82.in[3];
      router222.in[3] <--> VariableBandWidthLink <--> core222.out; 
      router222.out[3] <--> VariableBandWidthLink <--> core222.in; 
      router223.out[0] <--> VariableBandWidthLink <--> router52.in[0];
      router223.out[1] <--> VariableBandWidthLink <--> router112.in[0];
      router223.out[2] <--> VariableBandWidthLink <--> router43.in[0];
      router223.out[3] <--> VariableBandWidthLink <--> router68.in[4];
      router223.out[4] <--> VariableBandWidthLink <--> router219.in[2];
      router223.out[5] <--> VariableBandWidthLink <--> router168.in[4];
      router223.out[6] <--> VariableBandWidthLink <--> router165.in[2];
      router223.out[7] <--> VariableBandWidthLink <--> router19.in[7];
      router223.in[8] <--> VariableBandWidthLink <--> core223.out; 
      router223.out[8] <--> VariableBandWidthLink <--> core223.in; 
      router224.out[0] <--> VariableBandWidthLink <--> router89.in[0];
      router224.out[1] <--> VariableBandWidthLink <--> router42.in[0];
      router224.out[2] <--> VariableBandWidthLink <--> router250.in[0];
      router224.out[3] <--> VariableBandWidthLink <--> router243.in[2];
      router224.out[4] <--> VariableBandWidthLink <--> router49.in[4];
      router224.out[5] <--> VariableBandWidthLink <--> router227.in[4];
      router224.in[6] <--> VariableBandWidthLink <--> core224.out; 
      router224.out[6] <--> VariableBandWidthLink <--> core224.in; 
      router225.out[0] <--> VariableBandWidthLink <--> router131.in[1];
      router225.out[1] <--> VariableBandWidthLink <--> router106.in[2];
      router225.out[2] <--> VariableBandWidthLink <--> router239.in[1];
      router225.out[3] <--> VariableBandWidthLink <--> router11.in[1];
      router225.out[4] <--> VariableBandWidthLink <--> router153.in[3];
      router225.out[5] <--> VariableBandWidthLink <--> router229.in[2];
      router225.out[6] <--> VariableBandWidthLink <--> router102.in[4];
      router225.in[7] <--> VariableBandWidthLink <--> core225.out; 
      router225.out[7] <--> VariableBandWidthLink <--> core225.in; 
      router226.out[0] <--> VariableBandWidthLink <--> router49.in[1];
      router226.out[1] <--> VariableBandWidthLink <--> router53.in[1];
      router226.out[2] <--> VariableBandWidthLink <--> router241.in[3];
      router226.out[3] <--> VariableBandWidthLink <--> router81.in[5];
      router226.in[4] <--> VariableBandWidthLink <--> core226.out; 
      router226.out[4] <--> VariableBandWidthLink <--> core226.in; 
      router227.out[0] <--> VariableBandWidthLink <--> router195.in[2];
      router227.out[1] <--> VariableBandWidthLink <--> router135.in[3];
      router227.out[2] <--> VariableBandWidthLink <--> router130.in[6];
      router227.out[3] <--> VariableBandWidthLink <--> router194.in[3];
      router227.out[4] <--> VariableBandWidthLink <--> router224.in[5];
      router227.in[5] <--> VariableBandWidthLink <--> core227.out; 
      router227.out[5] <--> VariableBandWidthLink <--> core227.in; 
      router228.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router228.out[1] <--> VariableBandWidthLink <--> router185.in[2];
      router228.out[2] <--> VariableBandWidthLink <--> router180.in[4];
      router228.out[3] <--> VariableBandWidthLink <--> router218.in[4];
      router228.in[4] <--> VariableBandWidthLink <--> core228.out; 
      router228.out[4] <--> VariableBandWidthLink <--> core228.in; 
      router229.out[0] <--> VariableBandWidthLink <--> router123.in[0];
      router229.out[1] <--> VariableBandWidthLink <--> router153.in[4];
      router229.out[2] <--> VariableBandWidthLink <--> router225.in[5];
      router229.in[3] <--> VariableBandWidthLink <--> core229.out; 
      router229.out[3] <--> VariableBandWidthLink <--> core229.in; 
      router230.out[0] <--> VariableBandWidthLink <--> router240.in[1];
      router230.out[1] <--> VariableBandWidthLink <--> router127.in[3];
      router230.out[2] <--> VariableBandWidthLink <--> router17.in[0];
      router230.in[3] <--> VariableBandWidthLink <--> core230.out; 
      router230.out[3] <--> VariableBandWidthLink <--> core230.in; 
      router231.out[0] <--> VariableBandWidthLink <--> router69.in[0];
      router231.out[1] <--> VariableBandWidthLink <--> router131.in[2];
      router231.in[2] <--> VariableBandWidthLink <--> core231.out; 
      router231.out[2] <--> VariableBandWidthLink <--> core231.in; 
      router232.out[0] <--> VariableBandWidthLink <--> router68.in[0];
      router232.out[1] <--> VariableBandWidthLink <--> router180.in[1];
      router232.out[2] <--> VariableBandWidthLink <--> router183.in[1];
      router232.out[3] <--> VariableBandWidthLink <--> router88.in[0];
      router232.out[4] <--> VariableBandWidthLink <--> router79.in[5];
      router232.in[5] <--> VariableBandWidthLink <--> core232.out; 
      router232.out[5] <--> VariableBandWidthLink <--> core232.in; 
      router233.out[0] <--> VariableBandWidthLink <--> router110.in[3];
      router233.in[1] <--> VariableBandWidthLink <--> core233.out; 
      router233.out[1] <--> VariableBandWidthLink <--> core233.in; 
      router234.out[0] <--> VariableBandWidthLink <--> router243.in[7];
      router234.in[1] <--> VariableBandWidthLink <--> core234.out; 
      router234.out[1] <--> VariableBandWidthLink <--> core234.in; 
      router235.out[0] <--> VariableBandWidthLink <--> router164.in[0];
      router235.out[1] <--> VariableBandWidthLink <--> router157.in[0];
      router235.out[2] <--> VariableBandWidthLink <--> router72.in[2];
      router235.out[3] <--> VariableBandWidthLink <--> router59.in[0];
      router235.out[4] <--> VariableBandWidthLink <--> router204.in[0];
      router235.out[5] <--> VariableBandWidthLink <--> router105.in[1];
      router235.out[6] <--> VariableBandWidthLink <--> router10.in[3];
      router235.in[7] <--> VariableBandWidthLink <--> core235.out; 
      router235.out[7] <--> VariableBandWidthLink <--> core235.in; 
      router236.out[0] <--> VariableBandWidthLink <--> router195.in[1];
      router236.out[1] <--> VariableBandWidthLink <--> router114.in[0];
      router236.out[2] <--> VariableBandWidthLink <--> router89.in[1];
      router236.out[3] <--> VariableBandWidthLink <--> router139.in[2];
      router236.out[4] <--> VariableBandWidthLink <--> router9.in[2];
      router236.in[5] <--> VariableBandWidthLink <--> core236.out; 
      router236.out[5] <--> VariableBandWidthLink <--> core236.in; 
      router237.out[0] <--> VariableBandWidthLink <--> router47.in[1];
      router237.out[1] <--> VariableBandWidthLink <--> router164.in[2];
      router237.out[2] <--> VariableBandWidthLink <--> router55.in[2];
      router237.out[3] <--> VariableBandWidthLink <--> router95.in[1];
      router237.out[4] <--> VariableBandWidthLink <--> router164.in[7];
      router237.in[5] <--> VariableBandWidthLink <--> core237.out; 
      router237.out[5] <--> VariableBandWidthLink <--> core237.in; 
      router238.out[0] <--> VariableBandWidthLink <--> router63.in[0];
      router238.out[1] <--> VariableBandWidthLink <--> router206.in[0];
      router238.in[2] <--> VariableBandWidthLink <--> core238.out; 
      router238.out[2] <--> VariableBandWidthLink <--> core238.in; 
      router239.out[0] <--> VariableBandWidthLink <--> router34.in[2];
      router239.out[1] <--> VariableBandWidthLink <--> router225.in[2];
      router239.out[2] <--> VariableBandWidthLink <--> router203.in[0];
      router239.out[3] <--> VariableBandWidthLink <--> router75.in[2];
      router239.out[4] <--> VariableBandWidthLink <--> router252.in[6];
      router239.in[5] <--> VariableBandWidthLink <--> core239.out; 
      router239.out[5] <--> VariableBandWidthLink <--> core239.in; 
      router240.out[0] <--> VariableBandWidthLink <--> router220.in[1];
      router240.out[1] <--> VariableBandWidthLink <--> router230.in[0];
      router240.out[2] <--> VariableBandWidthLink <--> router201.in[0];
      router240.in[3] <--> VariableBandWidthLink <--> core240.out; 
      router240.out[3] <--> VariableBandWidthLink <--> core240.in; 
      router241.out[0] <--> VariableBandWidthLink <--> router47.in[0];
      router241.out[1] <--> VariableBandWidthLink <--> router80.in[0];
      router241.out[2] <--> VariableBandWidthLink <--> router175.in[1];
      router241.out[3] <--> VariableBandWidthLink <--> router226.in[2];
      router241.in[4] <--> VariableBandWidthLink <--> core241.out; 
      router241.out[4] <--> VariableBandWidthLink <--> core241.in; 
      router242.out[0] <--> VariableBandWidthLink <--> router42.in[2];
      router242.out[1] <--> VariableBandWidthLink <--> router218.in[2];
      router242.in[2] <--> VariableBandWidthLink <--> core242.out; 
      router242.out[2] <--> VariableBandWidthLink <--> core242.in; 
      router243.out[0] <--> VariableBandWidthLink <--> router51.in[0];
      router243.out[1] <--> VariableBandWidthLink <--> router162.in[2];
      router243.out[2] <--> VariableBandWidthLink <--> router224.in[3];
      router243.out[3] <--> VariableBandWidthLink <--> router212.in[2];
      router243.out[4] <--> VariableBandWidthLink <--> router23.in[4];
      router243.out[5] <--> VariableBandWidthLink <--> router55.in[3];
      router243.out[6] <--> VariableBandWidthLink <--> router153.in[6];
      router243.out[7] <--> VariableBandWidthLink <--> router234.in[0];
      router243.in[8] <--> VariableBandWidthLink <--> core243.out; 
      router243.out[8] <--> VariableBandWidthLink <--> core243.in; 
      router244.out[0] <--> VariableBandWidthLink <--> router31.in[1];
      router244.out[1] <--> VariableBandWidthLink <--> router183.in[6];
      router244.out[2] <--> VariableBandWidthLink <--> router127.in[5];
      router244.out[3] <--> VariableBandWidthLink <--> router168.in[5];
      router244.in[4] <--> VariableBandWidthLink <--> core244.out; 
      router244.out[4] <--> VariableBandWidthLink <--> core244.in; 
      router245.out[0] <--> VariableBandWidthLink <--> router136.in[1];
      router245.out[1] <--> VariableBandWidthLink <--> router214.in[2];
      router245.out[2] <--> VariableBandWidthLink <--> router156.in[3];
      router245.in[3] <--> VariableBandWidthLink <--> core245.out; 
      router245.out[3] <--> VariableBandWidthLink <--> core245.in; 
      router246.out[0] <--> VariableBandWidthLink <--> router116.in[1];
      router246.out[1] <--> VariableBandWidthLink <--> router80.in[1];
      router246.out[2] <--> VariableBandWidthLink <--> router211.in[3];
      router246.in[3] <--> VariableBandWidthLink <--> core246.out; 
      router246.out[3] <--> VariableBandWidthLink <--> core246.in; 
      router247.out[0] <--> VariableBandWidthLink <--> router127.in[2];
      router247.out[1] <--> VariableBandWidthLink <--> router211.in[1];
      router247.out[2] <--> VariableBandWidthLink <--> router177.in[1];
      router247.in[3] <--> VariableBandWidthLink <--> core247.out; 
      router247.out[3] <--> VariableBandWidthLink <--> core247.in; 
      router248.out[0] <--> VariableBandWidthLink <--> router111.in[3];
      router248.out[1] <--> VariableBandWidthLink <--> router124.in[4];
      router248.in[2] <--> VariableBandWidthLink <--> core248.out; 
      router248.out[2] <--> VariableBandWidthLink <--> core248.in; 
      router249.out[0] <--> VariableBandWidthLink <--> router84.in[1];
      router249.out[1] <--> VariableBandWidthLink <--> router192.in[4];
      router249.out[2] <--> VariableBandWidthLink <--> router141.in[3];
      router249.in[3] <--> VariableBandWidthLink <--> core249.out; 
      router249.out[3] <--> VariableBandWidthLink <--> core249.in; 
      router250.out[0] <--> VariableBandWidthLink <--> router224.in[2];
      router250.out[1] <--> VariableBandWidthLink <--> router211.in[0];
      router250.out[2] <--> VariableBandWidthLink <--> router94.in[8];
      router250.out[3] <--> VariableBandWidthLink <--> router10.in[4];
      router250.in[4] <--> VariableBandWidthLink <--> core250.out; 
      router250.out[4] <--> VariableBandWidthLink <--> core250.in; 
      router251.out[0] <--> VariableBandWidthLink <--> router145.in[1];
      router251.out[1] <--> VariableBandWidthLink <--> router14.in[2];
      router251.out[2] <--> VariableBandWidthLink <--> router116.in[4];
      router251.out[3] <--> VariableBandWidthLink <--> router63.in[2];
      router251.in[4] <--> VariableBandWidthLink <--> core251.out; 
      router251.out[4] <--> VariableBandWidthLink <--> core251.in; 
      router252.out[0] <--> VariableBandWidthLink <--> router187.in[0];
      router252.out[1] <--> VariableBandWidthLink <--> router110.in[0];
      router252.out[2] <--> VariableBandWidthLink <--> router22.in[1];
      router252.out[3] <--> VariableBandWidthLink <--> router142.in[5];
      router252.out[4] <--> VariableBandWidthLink <--> router21.in[1];
      router252.out[5] <--> VariableBandWidthLink <--> router157.in[2];
      router252.out[6] <--> VariableBandWidthLink <--> router239.in[4];
      router252.in[7] <--> VariableBandWidthLink <--> core252.out; 
      router252.out[7] <--> VariableBandWidthLink <--> core252.in; 
      router253.out[0] <--> VariableBandWidthLink <--> router142.in[1];
      router253.out[1] <--> VariableBandWidthLink <--> router31.in[0];
      router253.out[2] <--> VariableBandWidthLink <--> router214.in[1];
      router253.in[3] <--> VariableBandWidthLink <--> core253.out; 
      router253.out[3] <--> VariableBandWidthLink <--> core253.in; 
      router254.out[0] <--> VariableBandWidthLink <--> router26.in[1];
      router254.out[1] <--> VariableBandWidthLink <--> router212.in[1];
      router254.out[2] <--> VariableBandWidthLink <--> router56.in[0];
      router254.out[3] <--> VariableBandWidthLink <--> router59.in[1];
      router254.out[4] <--> VariableBandWidthLink <--> router41.in[4];
      router254.out[5] <--> VariableBandWidthLink <--> router150.in[4];
      router254.in[6] <--> VariableBandWidthLink <--> core254.out; 
      router254.out[6] <--> VariableBandWidthLink <--> core254.in; 
      router255.out[0] <--> VariableBandWidthLink <--> router9.in[3];
      router255.in[1] <--> VariableBandWidthLink <--> core255.out; 
      router255.out[1] <--> VariableBandWidthLink <--> core255.in; 
}
