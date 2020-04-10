// Copyright Yaniv Fais,Tel Aviv University

package efnoc.fattree.S_32.Robot;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network mcsl_rtp
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
        @display("p=200, 130");
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

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=400, 130");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=400, 100");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=500, 130");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=500, 100");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=900, 130");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=900, 100");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=1000, 130");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=1000, 100");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=1200, 130");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=1200, 100");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=1300, 130");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=1300, 100");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=2100, 130");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=2100, 100");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=2200, 130");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=2200, 100");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=2400, 130");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=2400, 100");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=2500, 130");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=2500, 100");
      gates:
        in[2];
        out[2];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=2900, 130");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=2900, 100");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=3000, 130");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=3000, 100");
      gates:
        in[2];
        out[2];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=3200, 130");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 2;
        @display("p=3200, 100");
      gates:
        in[2];
        out[2];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=3300, 130");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=3300, 100");
      gates:
        in[2];
        out[2];
    };

    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=4900, 130");
    }
    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=4900, 100");
      gates:
        in[2];
        out[2];
    };

    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=5000, 130");
    }
    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=5000, 100");
      gates:
        in[2];
        out[2];
    };

    core18 : <coreType> like NI_Ifc {
      parameters:
        id = 18;
        @display("p=5200, 130");
    }
    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 2;
        @display("p=5200, 100");
      gates:
        in[2];
        out[2];
    };

    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=5300, 130");
    }
    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 2;
        @display("p=5300, 100");
      gates:
        in[2];
        out[2];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=5700, 130");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=5700, 100");
      gates:
        in[2];
        out[2];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=5800, 130");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=5800, 100");
      gates:
        in[2];
        out[2];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=6000, 130");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 2;
        @display("p=6000, 100");
      gates:
        in[2];
        out[2];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=6100, 130");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=6100, 100");
      gates:
        in[2];
        out[2];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=6900, 130");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=6900, 100");
      gates:
        in[2];
        out[2];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=7000, 130");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=7000, 100");
      gates:
        in[2];
        out[2];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=7200, 130");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 2;
        @display("p=7200, 100");
      gates:
        in[2];
        out[2];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=7300, 130");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 2;
        @display("p=7300, 100");
      gates:
        in[2];
        out[2];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=7700, 130");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 2;
        @display("p=7700, 100");
      gates:
        in[2];
        out[2];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=7800, 130");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 2;
        @display("p=7800, 100");
      gates:
        in[2];
        out[2];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=8000, 130");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 2;
        @display("p=8000, 100");
      gates:
        in[2];
        out[2];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=8100, 130");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 2;
        @display("p=8100, 100");
      gates:
        in[2];
        out[2];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=11300, 130");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=11300, 100");
      gates:
        in[2];
        out[2];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=11400, 130");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 2;
        @display("p=11400, 100");
      gates:
        in[2];
        out[2];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=11600, 130");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 2;
        @display("p=11600, 100");
      gates:
        in[2];
        out[2];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=11700, 130");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 2;
        @display("p=11700, 100");
      gates:
        in[2];
        out[2];
    };

    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=12100, 130");
    }
    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 2;
        @display("p=12100, 100");
      gates:
        in[2];
        out[2];
    };

    core37 : <coreType> like NI_Ifc {
      parameters:
        id = 37;
        @display("p=12200, 130");
    }
    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 2;
        @display("p=12200, 100");
      gates:
        in[2];
        out[2];
    };

    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=12400, 130");
    }
    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 2;
        @display("p=12400, 100");
      gates:
        in[2];
        out[2];
    };

    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=12500, 130");
    }
    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 2;
        @display("p=12500, 100");
      gates:
        in[2];
        out[2];
    };

    core40 : <coreType> like NI_Ifc {
      parameters:
        id = 40;
        @display("p=13300, 130");
    }
    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 2;
        @display("p=13300, 100");
      gates:
        in[2];
        out[2];
    };

    core41 : <coreType> like NI_Ifc {
      parameters:
        id = 41;
        @display("p=13400, 130");
    }
    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 2;
        @display("p=13400, 100");
      gates:
        in[2];
        out[2];
    };

    core42 : <coreType> like NI_Ifc {
      parameters:
        id = 42;
        @display("p=13600, 130");
    }
    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 2;
        @display("p=13600, 100");
      gates:
        in[2];
        out[2];
    };

    core43 : <coreType> like NI_Ifc {
      parameters:
        id = 43;
        @display("p=13700, 130");
    }
    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 2;
        @display("p=13700, 100");
      gates:
        in[2];
        out[2];
    };

    core44 : <coreType> like NI_Ifc {
      parameters:
        id = 44;
        @display("p=14100, 130");
    }
    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 2;
        @display("p=14100, 100");
      gates:
        in[2];
        out[2];
    };

    core45 : <coreType> like NI_Ifc {
      parameters:
        id = 45;
        @display("p=14200, 130");
    }
    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 2;
        @display("p=14200, 100");
      gates:
        in[2];
        out[2];
    };

    core46 : <coreType> like NI_Ifc {
      parameters:
        id = 46;
        @display("p=14400, 130");
    }
    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 2;
        @display("p=14400, 100");
      gates:
        in[2];
        out[2];
    };

    core47 : <coreType> like NI_Ifc {
      parameters:
        id = 47;
        @display("p=14500, 130");
    }
    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 2;
        @display("p=14500, 100");
      gates:
        in[2];
        out[2];
    };

    core48 : <coreType> like NI_Ifc {
      parameters:
        id = 48;
        @display("p=16100, 130");
    }
    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 2;
        @display("p=16100, 100");
      gates:
        in[2];
        out[2];
    };

    core49 : <coreType> like NI_Ifc {
      parameters:
        id = 49;
        @display("p=16200, 130");
    }
    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 2;
        @display("p=16200, 100");
      gates:
        in[2];
        out[2];
    };

    core50 : <coreType> like NI_Ifc {
      parameters:
        id = 50;
        @display("p=16400, 130");
    }
    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 2;
        @display("p=16400, 100");
      gates:
        in[2];
        out[2];
    };

    core51 : <coreType> like NI_Ifc {
      parameters:
        id = 51;
        @display("p=16500, 130");
    }
    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 2;
        @display("p=16500, 100");
      gates:
        in[2];
        out[2];
    };

    core52 : <coreType> like NI_Ifc {
      parameters:
        id = 52;
        @display("p=16900, 130");
    }
    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 2;
        @display("p=16900, 100");
      gates:
        in[2];
        out[2];
    };

    core53 : <coreType> like NI_Ifc {
      parameters:
        id = 53;
        @display("p=17000, 130");
    }
    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 2;
        @display("p=17000, 100");
      gates:
        in[2];
        out[2];
    };

    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=17200, 130");
    }
    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 2;
        @display("p=17200, 100");
      gates:
        in[2];
        out[2];
    };

    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=17300, 130");
    }
    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 2;
        @display("p=17300, 100");
      gates:
        in[2];
        out[2];
    };

    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=18100, 130");
    }
    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 2;
        @display("p=18100, 100");
      gates:
        in[2];
        out[2];
    };

    core57 : <coreType> like NI_Ifc {
      parameters:
        id = 57;
        @display("p=18200, 130");
    }
    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 2;
        @display("p=18200, 100");
      gates:
        in[2];
        out[2];
    };

    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=18400, 130");
    }
    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 2;
        @display("p=18400, 100");
      gates:
        in[2];
        out[2];
    };

    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=18500, 130");
    }
    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 2;
        @display("p=18500, 100");
      gates:
        in[2];
        out[2];
    };

    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=18900, 130");
    }
    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 2;
        @display("p=18900, 100");
      gates:
        in[2];
        out[2];
    };

    core61 : <coreType> like NI_Ifc {
      parameters:
        id = 61;
        @display("p=19000, 130");
    }
    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 2;
        @display("p=19000, 100");
      gates:
        in[2];
        out[2];
    };

    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=19200, 130");
    }
    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 2;
        @display("p=19200, 100");
      gates:
        in[2];
        out[2];
    };

    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=19300, 130");
    }
    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 2;
        @display("p=19300, 100");
      gates:
        in[2];
        out[2];
    };

    router64 : <routerType> like Router_Ifc {
      parameters:
        id = 64;
        numPorts = 4;
        @display("p=4900, 1200");
      gates:
        in[5];
        out[5];
    };

    router65 : <routerType> like Router_Ifc {
      parameters:
        id = 65;
        numPorts = 4;
        @display("p=5200, 1200");
      gates:
        in[5];
        out[5];
    };

    router66 : <routerType> like Router_Ifc {
      parameters:
        id = 66;
        numPorts = 4;
        @display("p=5700, 1200");
      gates:
        in[5];
        out[5];
    };

    router67 : <routerType> like Router_Ifc {
      parameters:
        id = 67;
        numPorts = 4;
        @display("p=6000, 1200");
      gates:
        in[5];
        out[5];
    };

    router68 : <routerType> like Router_Ifc {
      parameters:
        id = 68;
        numPorts = 4;
        @display("p=100, 900");
      gates:
        in[5];
        out[5];
    };

    router69 : <routerType> like Router_Ifc {
      parameters:
        id = 69;
        numPorts = 4;
        @display("p=2400, 200");
      gates:
        in[5];
        out[5];
    };

    router70 : <routerType> like Router_Ifc {
      parameters:
        id = 70;
        numPorts = 4;
        @display("p=6900, 200");
      gates:
        in[5];
        out[5];
    };

    router71 : <routerType> like Router_Ifc {
      parameters:
        id = 71;
        numPorts = 4;
        @display("p=2100, 900");
      gates:
        in[5];
        out[5];
    };

    router72 : <routerType> like Router_Ifc {
      parameters:
        id = 72;
        numPorts = 4;
        @display("p=2400, 900");
      gates:
        in[5];
        out[5];
    };

    router73 : <routerType> like Router_Ifc {
      parameters:
        id = 73;
        numPorts = 4;
        @display("p=7200, 200");
      gates:
        in[5];
        out[5];
    };

    router74 : <routerType> like Router_Ifc {
      parameters:
        id = 74;
        numPorts = 4;
        @display("p=6900, 900");
      gates:
        in[5];
        out[5];
    };

    router75 : <routerType> like Router_Ifc {
      parameters:
        id = 75;
        numPorts = 4;
        @display("p=7200, 900");
      gates:
        in[5];
        out[5];
    };

    router76 : <routerType> like Router_Ifc {
      parameters:
        id = 76;
        numPorts = 4;
        @display("p=400, 900");
      gates:
        in[5];
        out[5];
    };

    router77 : <routerType> like Router_Ifc {
      parameters:
        id = 77;
        numPorts = 4;
        @display("p=1200, 200");
      gates:
        in[5];
        out[5];
    };

    router78 : <routerType> like Router_Ifc {
      parameters:
        id = 78;
        numPorts = 4;
        @display("p=7700, 200");
      gates:
        in[5];
        out[5];
    };

    router79 : <routerType> like Router_Ifc {
      parameters:
        id = 79;
        numPorts = 4;
        @display("p=2900, 200");
      gates:
        in[5];
        out[5];
    };

    router80 : <routerType> like Router_Ifc {
      parameters:
        id = 80;
        numPorts = 4;
        @display("p=900, 900");
      gates:
        in[5];
        out[5];
    };

    router81 : <routerType> like Router_Ifc {
      parameters:
        id = 81;
        numPorts = 4;
        @display("p=8000, 200");
      gates:
        in[5];
        out[5];
    };

    router82 : <routerType> like Router_Ifc {
      parameters:
        id = 82;
        numPorts = 4;
        @display("p=7700, 900");
      gates:
        in[5];
        out[5];
    };

    router83 : <routerType> like Router_Ifc {
      parameters:
        id = 83;
        numPorts = 4;
        @display("p=8000, 900");
      gates:
        in[5];
        out[5];
    };

    router84 : <routerType> like Router_Ifc {
      parameters:
        id = 84;
        numPorts = 4;
        @display("p=6900, 1200");
      gates:
        in[5];
        out[5];
    };

    router85 : <routerType> like Router_Ifc {
      parameters:
        id = 85;
        numPorts = 4;
        @display("p=7200, 1200");
      gates:
        in[5];
        out[5];
    };

    router86 : <routerType> like Router_Ifc {
      parameters:
        id = 86;
        numPorts = 4;
        @display("p=7700, 1200");
      gates:
        in[5];
        out[5];
    };

    router87 : <routerType> like Router_Ifc {
      parameters:
        id = 87;
        numPorts = 4;
        @display("p=8000, 1200");
      gates:
        in[5];
        out[5];
    };

    router88 : <routerType> like Router_Ifc {
      parameters:
        id = 88;
        numPorts = 4;
        @display("p=4900, 1500");
      gates:
        in[5];
        out[5];
    };

    router89 : <routerType> like Router_Ifc {
      parameters:
        id = 89;
        numPorts = 4;
        @display("p=5200, 1500");
      gates:
        in[5];
        out[5];
    };

    router90 : <routerType> like Router_Ifc {
      parameters:
        id = 90;
        numPorts = 4;
        @display("p=5700, 1500");
      gates:
        in[5];
        out[5];
    };

    router91 : <routerType> like Router_Ifc {
      parameters:
        id = 91;
        numPorts = 4;
        @display("p=6000, 1500");
      gates:
        in[5];
        out[5];
    };

    router92 : <routerType> like Router_Ifc {
      parameters:
        id = 92;
        numPorts = 4;
        @display("p=6900, 1500");
      gates:
        in[5];
        out[5];
    };

    router93 : <routerType> like Router_Ifc {
      parameters:
        id = 93;
        numPorts = 4;
        @display("p=7200, 1500");
      gates:
        in[5];
        out[5];
    };

    router94 : <routerType> like Router_Ifc {
      parameters:
        id = 94;
        numPorts = 4;
        @display("p=7700, 1500");
      gates:
        in[5];
        out[5];
    };

    router95 : <routerType> like Router_Ifc {
      parameters:
        id = 95;
        numPorts = 4;
        @display("p=8000, 1500");
      gates:
        in[5];
        out[5];
    };

    router96 : <routerType> like Router_Ifc {
      parameters:
        id = 96;
        numPorts = 4;
        @display("p=100, 1800");
      gates:
        in[5];
        out[5];
    };

    router97 : <routerType> like Router_Ifc {
      parameters:
        id = 97;
        numPorts = 4;
        @display("p=400, 1800");
      gates:
        in[5];
        out[5];
    };

    router98 : <routerType> like Router_Ifc {
      parameters:
        id = 98;
        numPorts = 4;
        @display("p=900, 1800");
      gates:
        in[5];
        out[5];
    };

    router99 : <routerType> like Router_Ifc {
      parameters:
        id = 99;
        numPorts = 4;
        @display("p=1200, 1800");
      gates:
        in[5];
        out[5];
    };

    router100 : <routerType> like Router_Ifc {
      parameters:
        id = 100;
        numPorts = 4;
        @display("p=2100, 1800");
      gates:
        in[5];
        out[5];
    };

    router101 : <routerType> like Router_Ifc {
      parameters:
        id = 101;
        numPorts = 4;
        @display("p=2400, 1800");
      gates:
        in[5];
        out[5];
    };

    router102 : <routerType> like Router_Ifc {
      parameters:
        id = 102;
        numPorts = 4;
        @display("p=2900, 1800");
      gates:
        in[5];
        out[5];
    };

    router103 : <routerType> like Router_Ifc {
      parameters:
        id = 103;
        numPorts = 4;
        @display("p=3200, 1800");
      gates:
        in[5];
        out[5];
    };

    router104 : <routerType> like Router_Ifc {
      parameters:
        id = 104;
        numPorts = 4;
        @display("p=4900, 1800");
      gates:
        in[5];
        out[5];
    };

    router105 : <routerType> like Router_Ifc {
      parameters:
        id = 105;
        numPorts = 4;
        @display("p=5200, 1800");
      gates:
        in[5];
        out[5];
    };

    router106 : <routerType> like Router_Ifc {
      parameters:
        id = 106;
        numPorts = 4;
        @display("p=5700, 1800");
      gates:
        in[5];
        out[5];
    };

    router107 : <routerType> like Router_Ifc {
      parameters:
        id = 107;
        numPorts = 4;
        @display("p=6000, 1800");
      gates:
        in[5];
        out[5];
    };

    router108 : <routerType> like Router_Ifc {
      parameters:
        id = 108;
        numPorts = 4;
        @display("p=6900, 1800");
      gates:
        in[5];
        out[5];
    };

    router109 : <routerType> like Router_Ifc {
      parameters:
        id = 109;
        numPorts = 4;
        @display("p=7200, 1800");
      gates:
        in[5];
        out[5];
    };

    router110 : <routerType> like Router_Ifc {
      parameters:
        id = 110;
        numPorts = 4;
        @display("p=7700, 1800");
      gates:
        in[5];
        out[5];
    };

    router111 : <routerType> like Router_Ifc {
      parameters:
        id = 111;
        numPorts = 4;
        @display("p=8000, 1800");
      gates:
        in[5];
        out[5];
    };

    router112 : <routerType> like Router_Ifc {
      parameters:
        id = 112;
        numPorts = 4;
        @display("p=1200, 900");
      gates:
        in[5];
        out[5];
    };

    router113 : <routerType> like Router_Ifc {
      parameters:
        id = 113;
        numPorts = 4;
        @display("p=3200, 200");
      gates:
        in[5];
        out[5];
    };

    router114 : <routerType> like Router_Ifc {
      parameters:
        id = 114;
        numPorts = 4;
        @display("p=11300, 200");
      gates:
        in[5];
        out[5];
    };

    router115 : <routerType> like Router_Ifc {
      parameters:
        id = 115;
        numPorts = 4;
        @display("p=2900, 900");
      gates:
        in[5];
        out[5];
    };

    router116 : <routerType> like Router_Ifc {
      parameters:
        id = 116;
        numPorts = 4;
        @display("p=3200, 900");
      gates:
        in[5];
        out[5];
    };

    router117 : <routerType> like Router_Ifc {
      parameters:
        id = 117;
        numPorts = 4;
        @display("p=11600, 200");
      gates:
        in[5];
        out[5];
    };

    router118 : <routerType> like Router_Ifc {
      parameters:
        id = 118;
        numPorts = 4;
        @display("p=11300, 900");
      gates:
        in[5];
        out[5];
    };

    router119 : <routerType> like Router_Ifc {
      parameters:
        id = 119;
        numPorts = 4;
        @display("p=11600, 900");
      gates:
        in[5];
        out[5];
    };

    router120 : <routerType> like Router_Ifc {
      parameters:
        id = 120;
        numPorts = 4;
        @display("p=2100, 1200");
      gates:
        in[5];
        out[5];
    };

    router121 : <routerType> like Router_Ifc {
      parameters:
        id = 121;
        numPorts = 4;
        @display("p=2400, 1200");
      gates:
        in[5];
        out[5];
    };

    router122 : <routerType> like Router_Ifc {
      parameters:
        id = 122;
        numPorts = 4;
        @display("p=12100, 200");
      gates:
        in[5];
        out[5];
    };

    router123 : <routerType> like Router_Ifc {
      parameters:
        id = 123;
        numPorts = 4;
        @display("p=2900, 1200");
      gates:
        in[5];
        out[5];
    };

    router124 : <routerType> like Router_Ifc {
      parameters:
        id = 124;
        numPorts = 4;
        @display("p=3200, 1200");
      gates:
        in[5];
        out[5];
    };

    router125 : <routerType> like Router_Ifc {
      parameters:
        id = 125;
        numPorts = 4;
        @display("p=12400, 200");
      gates:
        in[5];
        out[5];
    };

    router126 : <routerType> like Router_Ifc {
      parameters:
        id = 126;
        numPorts = 4;
        @display("p=12100, 900");
      gates:
        in[5];
        out[5];
    };

    router127 : <routerType> like Router_Ifc {
      parameters:
        id = 127;
        numPorts = 4;
        @display("p=12400, 900");
      gates:
        in[5];
        out[5];
    };

    router128 : <routerType> like Router_Ifc {
      parameters:
        id = 128;
        numPorts = 4;
        @display("p=11300, 1200");
      gates:
        in[5];
        out[5];
    };

    router129 : <routerType> like Router_Ifc {
      parameters:
        id = 129;
        numPorts = 4;
        @display("p=11600, 1200");
      gates:
        in[5];
        out[5];
    };

    router130 : <routerType> like Router_Ifc {
      parameters:
        id = 130;
        numPorts = 4;
        @display("p=12100, 1200");
      gates:
        in[5];
        out[5];
    };

    router131 : <routerType> like Router_Ifc {
      parameters:
        id = 131;
        numPorts = 4;
        @display("p=12400, 1200");
      gates:
        in[5];
        out[5];
    };

    router132 : <routerType> like Router_Ifc {
      parameters:
        id = 132;
        numPorts = 4;
        @display("p=100, 1500");
      gates:
        in[5];
        out[5];
    };

    router133 : <routerType> like Router_Ifc {
      parameters:
        id = 133;
        numPorts = 4;
        @display("p=400, 1500");
      gates:
        in[5];
        out[5];
    };

    router134 : <routerType> like Router_Ifc {
      parameters:
        id = 134;
        numPorts = 4;
        @display("p=13300, 200");
      gates:
        in[5];
        out[5];
    };

    router135 : <routerType> like Router_Ifc {
      parameters:
        id = 135;
        numPorts = 4;
        @display("p=900, 1500");
      gates:
        in[5];
        out[5];
    };

    router136 : <routerType> like Router_Ifc {
      parameters:
        id = 136;
        numPorts = 4;
        @display("p=1200, 1500");
      gates:
        in[5];
        out[5];
    };

    router137 : <routerType> like Router_Ifc {
      parameters:
        id = 137;
        numPorts = 4;
        @display("p=13600, 200");
      gates:
        in[5];
        out[5];
    };

    router138 : <routerType> like Router_Ifc {
      parameters:
        id = 138;
        numPorts = 4;
        @display("p=13300, 900");
      gates:
        in[5];
        out[5];
    };

    router139 : <routerType> like Router_Ifc {
      parameters:
        id = 139;
        numPorts = 4;
        @display("p=13600, 900");
      gates:
        in[5];
        out[5];
    };

    router140 : <routerType> like Router_Ifc {
      parameters:
        id = 140;
        numPorts = 4;
        @display("p=2100, 1500");
      gates:
        in[5];
        out[5];
    };

    router141 : <routerType> like Router_Ifc {
      parameters:
        id = 141;
        numPorts = 4;
        @display("p=2400, 1500");
      gates:
        in[5];
        out[5];
    };

    router142 : <routerType> like Router_Ifc {
      parameters:
        id = 142;
        numPorts = 4;
        @display("p=14100, 200");
      gates:
        in[5];
        out[5];
    };

    router143 : <routerType> like Router_Ifc {
      parameters:
        id = 143;
        numPorts = 4;
        @display("p=2900, 1500");
      gates:
        in[5];
        out[5];
    };

    router144 : <routerType> like Router_Ifc {
      parameters:
        id = 144;
        numPorts = 4;
        @display("p=3200, 1500");
      gates:
        in[5];
        out[5];
    };

    router145 : <routerType> like Router_Ifc {
      parameters:
        id = 145;
        numPorts = 4;
        @display("p=14400, 200");
      gates:
        in[5];
        out[5];
    };

    router146 : <routerType> like Router_Ifc {
      parameters:
        id = 146;
        numPorts = 4;
        @display("p=14100, 900");
      gates:
        in[5];
        out[5];
    };

    router147 : <routerType> like Router_Ifc {
      parameters:
        id = 147;
        numPorts = 4;
        @display("p=14400, 900");
      gates:
        in[5];
        out[5];
    };

    router148 : <routerType> like Router_Ifc {
      parameters:
        id = 148;
        numPorts = 4;
        @display("p=13300, 1200");
      gates:
        in[5];
        out[5];
    };

    router149 : <routerType> like Router_Ifc {
      parameters:
        id = 149;
        numPorts = 4;
        @display("p=13600, 1200");
      gates:
        in[5];
        out[5];
    };

    router150 : <routerType> like Router_Ifc {
      parameters:
        id = 150;
        numPorts = 4;
        @display("p=14100, 1200");
      gates:
        in[5];
        out[5];
    };

    router151 : <routerType> like Router_Ifc {
      parameters:
        id = 151;
        numPorts = 4;
        @display("p=14400, 1200");
      gates:
        in[5];
        out[5];
    };

    router152 : <routerType> like Router_Ifc {
      parameters:
        id = 152;
        numPorts = 4;
        @display("p=11300, 1500");
      gates:
        in[5];
        out[5];
    };

    router153 : <routerType> like Router_Ifc {
      parameters:
        id = 153;
        numPorts = 4;
        @display("p=11600, 1500");
      gates:
        in[5];
        out[5];
    };

    router154 : <routerType> like Router_Ifc {
      parameters:
        id = 154;
        numPorts = 4;
        @display("p=12100, 1500");
      gates:
        in[5];
        out[5];
    };

    router155 : <routerType> like Router_Ifc {
      parameters:
        id = 155;
        numPorts = 4;
        @display("p=12400, 1500");
      gates:
        in[5];
        out[5];
    };

    router156 : <routerType> like Router_Ifc {
      parameters:
        id = 156;
        numPorts = 4;
        @display("p=13300, 1500");
      gates:
        in[5];
        out[5];
    };

    router157 : <routerType> like Router_Ifc {
      parameters:
        id = 157;
        numPorts = 4;
        @display("p=13600, 1500");
      gates:
        in[5];
        out[5];
    };

    router158 : <routerType> like Router_Ifc {
      parameters:
        id = 158;
        numPorts = 4;
        @display("p=14100, 1500");
      gates:
        in[5];
        out[5];
    };

    router159 : <routerType> like Router_Ifc {
      parameters:
        id = 159;
        numPorts = 4;
        @display("p=14400, 1500");
      gates:
        in[5];
        out[5];
    };

    router160 : <routerType> like Router_Ifc {
      parameters:
        id = 160;
        numPorts = 4;
        @display("p=100, 1200");
      gates:
        in[5];
        out[5];
    };

    router161 : <routerType> like Router_Ifc {
      parameters:
        id = 161;
        numPorts = 4;
        @display("p=400, 1200");
      gates:
        in[5];
        out[5];
    };

    router162 : <routerType> like Router_Ifc {
      parameters:
        id = 162;
        numPorts = 4;
        @display("p=16100, 200");
      gates:
        in[5];
        out[5];
    };

    router163 : <routerType> like Router_Ifc {
      parameters:
        id = 163;
        numPorts = 4;
        @display("p=4900, 200");
      gates:
        in[5];
        out[5];
    };

    router164 : <routerType> like Router_Ifc {
      parameters:
        id = 164;
        numPorts = 4;
        @display("p=900, 1200");
      gates:
        in[5];
        out[5];
    };

    router165 : <routerType> like Router_Ifc {
      parameters:
        id = 165;
        numPorts = 4;
        @display("p=16400, 200");
      gates:
        in[5];
        out[5];
    };

    router166 : <routerType> like Router_Ifc {
      parameters:
        id = 166;
        numPorts = 4;
        @display("p=16100, 900");
      gates:
        in[5];
        out[5];
    };

    router167 : <routerType> like Router_Ifc {
      parameters:
        id = 167;
        numPorts = 4;
        @display("p=16400, 900");
      gates:
        in[5];
        out[5];
    };

    router168 : <routerType> like Router_Ifc {
      parameters:
        id = 168;
        numPorts = 4;
        @display("p=1200, 1200");
      gates:
        in[5];
        out[5];
    };

    router169 : <routerType> like Router_Ifc {
      parameters:
        id = 169;
        numPorts = 4;
        @display("p=5200, 200");
      gates:
        in[5];
        out[5];
    };

    router170 : <routerType> like Router_Ifc {
      parameters:
        id = 170;
        numPorts = 4;
        @display("p=16900, 200");
      gates:
        in[5];
        out[5];
    };

    router171 : <routerType> like Router_Ifc {
      parameters:
        id = 171;
        numPorts = 4;
        @display("p=4900, 900");
      gates:
        in[5];
        out[5];
    };

    router172 : <routerType> like Router_Ifc {
      parameters:
        id = 172;
        numPorts = 4;
        @display("p=5200, 900");
      gates:
        in[5];
        out[5];
    };

    router173 : <routerType> like Router_Ifc {
      parameters:
        id = 173;
        numPorts = 4;
        @display("p=17200, 200");
      gates:
        in[5];
        out[5];
    };

    router174 : <routerType> like Router_Ifc {
      parameters:
        id = 174;
        numPorts = 4;
        @display("p=16900, 900");
      gates:
        in[5];
        out[5];
    };

    router175 : <routerType> like Router_Ifc {
      parameters:
        id = 175;
        numPorts = 4;
        @display("p=17200, 900");
      gates:
        in[5];
        out[5];
    };

    router176 : <routerType> like Router_Ifc {
      parameters:
        id = 176;
        numPorts = 4;
        @display("p=16100, 1200");
      gates:
        in[5];
        out[5];
    };

    router177 : <routerType> like Router_Ifc {
      parameters:
        id = 177;
        numPorts = 4;
        @display("p=16400, 1200");
      gates:
        in[5];
        out[5];
    };

    router178 : <routerType> like Router_Ifc {
      parameters:
        id = 178;
        numPorts = 4;
        @display("p=16900, 1200");
      gates:
        in[5];
        out[5];
    };

    router179 : <routerType> like Router_Ifc {
      parameters:
        id = 179;
        numPorts = 4;
        @display("p=17200, 1200");
      gates:
        in[5];
        out[5];
    };

    router180 : <routerType> like Router_Ifc {
      parameters:
        id = 180;
        numPorts = 4;
        @display("p=100, 200");
      gates:
        in[5];
        out[5];
    };

    router181 : <routerType> like Router_Ifc {
      parameters:
        id = 181;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router182 : <routerType> like Router_Ifc {
      parameters:
        id = 182;
        numPorts = 4;
        @display("p=18100, 200");
      gates:
        in[5];
        out[5];
    };

    router183 : <routerType> like Router_Ifc {
      parameters:
        id = 183;
        numPorts = 4;
        @display("p=5700, 200");
      gates:
        in[5];
        out[5];
    };

    router184 : <routerType> like Router_Ifc {
      parameters:
        id = 184;
        numPorts = 4;
        @display("p=2100, 200");
      gates:
        in[5];
        out[5];
    };

    router185 : <routerType> like Router_Ifc {
      parameters:
        id = 185;
        numPorts = 4;
        @display("p=18400, 200");
      gates:
        in[5];
        out[5];
    };

    router186 : <routerType> like Router_Ifc {
      parameters:
        id = 186;
        numPorts = 4;
        @display("p=18100, 900");
      gates:
        in[5];
        out[5];
    };

    router187 : <routerType> like Router_Ifc {
      parameters:
        id = 187;
        numPorts = 4;
        @display("p=18400, 900");
      gates:
        in[5];
        out[5];
    };

    router188 : <routerType> like Router_Ifc {
      parameters:
        id = 188;
        numPorts = 4;
        @display("p=900, 200");
      gates:
        in[5];
        out[5];
    };

    router189 : <routerType> like Router_Ifc {
      parameters:
        id = 189;
        numPorts = 4;
        @display("p=6000, 200");
      gates:
        in[5];
        out[5];
    };

    router190 : <routerType> like Router_Ifc {
      parameters:
        id = 190;
        numPorts = 4;
        @display("p=18900, 200");
      gates:
        in[5];
        out[5];
    };

    router191 : <routerType> like Router_Ifc {
      parameters:
        id = 191;
        numPorts = 4;
        @display("p=5700, 900");
      gates:
        in[5];
        out[5];
    };

    router192 : <routerType> like Router_Ifc {
      parameters:
        id = 192;
        numPorts = 4;
        @display("p=6000, 900");
      gates:
        in[5];
        out[5];
    };

    router193 : <routerType> like Router_Ifc {
      parameters:
        id = 193;
        numPorts = 4;
        @display("p=19200, 200");
      gates:
        in[5];
        out[5];
    };

    router194 : <routerType> like Router_Ifc {
      parameters:
        id = 194;
        numPorts = 4;
        @display("p=18900, 900");
      gates:
        in[5];
        out[5];
    };

    router195 : <routerType> like Router_Ifc {
      parameters:
        id = 195;
        numPorts = 4;
        @display("p=19200, 900");
      gates:
        in[5];
        out[5];
    };

    router196 : <routerType> like Router_Ifc {
      parameters:
        id = 196;
        numPorts = 4;
        @display("p=18100, 1200");
      gates:
        in[5];
        out[5];
    };

    router197 : <routerType> like Router_Ifc {
      parameters:
        id = 197;
        numPorts = 4;
        @display("p=18400, 1200");
      gates:
        in[5];
        out[5];
    };

    router198 : <routerType> like Router_Ifc {
      parameters:
        id = 198;
        numPorts = 4;
        @display("p=18900, 1200");
      gates:
        in[5];
        out[5];
    };

    router199 : <routerType> like Router_Ifc {
      parameters:
        id = 199;
        numPorts = 4;
        @display("p=19200, 1200");
      gates:
        in[5];
        out[5];
    };

    router200 : <routerType> like Router_Ifc {
      parameters:
        id = 200;
        numPorts = 4;
        @display("p=16100, 1500");
      gates:
        in[5];
        out[5];
    };

    router201 : <routerType> like Router_Ifc {
      parameters:
        id = 201;
        numPorts = 4;
        @display("p=16400, 1500");
      gates:
        in[5];
        out[5];
    };

    router202 : <routerType> like Router_Ifc {
      parameters:
        id = 202;
        numPorts = 4;
        @display("p=16900, 1500");
      gates:
        in[5];
        out[5];
    };

    router203 : <routerType> like Router_Ifc {
      parameters:
        id = 203;
        numPorts = 4;
        @display("p=17200, 1500");
      gates:
        in[5];
        out[5];
    };

    router204 : <routerType> like Router_Ifc {
      parameters:
        id = 204;
        numPorts = 4;
        @display("p=18100, 1500");
      gates:
        in[5];
        out[5];
    };

    router205 : <routerType> like Router_Ifc {
      parameters:
        id = 205;
        numPorts = 4;
        @display("p=18400, 1500");
      gates:
        in[5];
        out[5];
    };

    router206 : <routerType> like Router_Ifc {
      parameters:
        id = 206;
        numPorts = 4;
        @display("p=18900, 1500");
      gates:
        in[5];
        out[5];
    };

    router207 : <routerType> like Router_Ifc {
      parameters:
        id = 207;
        numPorts = 4;
        @display("p=19200, 1500");
      gates:
        in[5];
        out[5];
    };

    router208 : <routerType> like Router_Ifc {
      parameters:
        id = 208;
        numPorts = 4;
        @display("p=11300, 1800");
      gates:
        in[5];
        out[5];
    };

    router209 : <routerType> like Router_Ifc {
      parameters:
        id = 209;
        numPorts = 4;
        @display("p=11600, 1800");
      gates:
        in[5];
        out[5];
    };

    router210 : <routerType> like Router_Ifc {
      parameters:
        id = 210;
        numPorts = 4;
        @display("p=12100, 1800");
      gates:
        in[5];
        out[5];
    };

    router211 : <routerType> like Router_Ifc {
      parameters:
        id = 211;
        numPorts = 4;
        @display("p=12400, 1800");
      gates:
        in[5];
        out[5];
    };

    router212 : <routerType> like Router_Ifc {
      parameters:
        id = 212;
        numPorts = 4;
        @display("p=13300, 1800");
      gates:
        in[5];
        out[5];
    };

    router213 : <routerType> like Router_Ifc {
      parameters:
        id = 213;
        numPorts = 4;
        @display("p=13600, 1800");
      gates:
        in[5];
        out[5];
    };

    router214 : <routerType> like Router_Ifc {
      parameters:
        id = 214;
        numPorts = 4;
        @display("p=14100, 1800");
      gates:
        in[5];
        out[5];
    };

    router215 : <routerType> like Router_Ifc {
      parameters:
        id = 215;
        numPorts = 4;
        @display("p=14400, 1800");
      gates:
        in[5];
        out[5];
    };

    router216 : <routerType> like Router_Ifc {
      parameters:
        id = 216;
        numPorts = 4;
        @display("p=16100, 1800");
      gates:
        in[5];
        out[5];
    };

    router217 : <routerType> like Router_Ifc {
      parameters:
        id = 217;
        numPorts = 4;
        @display("p=16400, 1800");
      gates:
        in[5];
        out[5];
    };

    router218 : <routerType> like Router_Ifc {
      parameters:
        id = 218;
        numPorts = 4;
        @display("p=16900, 1800");
      gates:
        in[5];
        out[5];
    };

    router219 : <routerType> like Router_Ifc {
      parameters:
        id = 219;
        numPorts = 4;
        @display("p=17200, 1800");
      gates:
        in[5];
        out[5];
    };

    router220 : <routerType> like Router_Ifc {
      parameters:
        id = 220;
        numPorts = 4;
        @display("p=18100, 1800");
      gates:
        in[5];
        out[5];
    };

    router221 : <routerType> like Router_Ifc {
      parameters:
        id = 221;
        numPorts = 4;
        @display("p=18400, 1800");
      gates:
        in[5];
        out[5];
    };

    router222 : <routerType> like Router_Ifc {
      parameters:
        id = 222;
        numPorts = 4;
        @display("p=18900, 1800");
      gates:
        in[5];
        out[5];
    };

    router223 : <routerType> like Router_Ifc {
      parameters:
        id = 223;
        numPorts = 4;
        @display("p=19200, 1800");
      gates:
        in[5];
        out[5];
    };

    router224 : <routerType> like Router_Ifc {
      parameters:
        id = 224;
        numPorts = 2;
        @display("p=100, 2100");
      gates:
        in[3];
        out[3];
    };

    router225 : <routerType> like Router_Ifc {
      parameters:
        id = 225;
        numPorts = 2;
        @display("p=400, 2100");
      gates:
        in[3];
        out[3];
    };

    router226 : <routerType> like Router_Ifc {
      parameters:
        id = 226;
        numPorts = 2;
        @display("p=900, 2100");
      gates:
        in[3];
        out[3];
    };

    router227 : <routerType> like Router_Ifc {
      parameters:
        id = 227;
        numPorts = 2;
        @display("p=1200, 2100");
      gates:
        in[3];
        out[3];
    };

    router228 : <routerType> like Router_Ifc {
      parameters:
        id = 228;
        numPorts = 2;
        @display("p=2100, 2100");
      gates:
        in[3];
        out[3];
    };

    router229 : <routerType> like Router_Ifc {
      parameters:
        id = 229;
        numPorts = 2;
        @display("p=2400, 2100");
      gates:
        in[3];
        out[3];
    };

    router230 : <routerType> like Router_Ifc {
      parameters:
        id = 230;
        numPorts = 2;
        @display("p=2900, 2100");
      gates:
        in[3];
        out[3];
    };

    router231 : <routerType> like Router_Ifc {
      parameters:
        id = 231;
        numPorts = 2;
        @display("p=3200, 2100");
      gates:
        in[3];
        out[3];
    };

    router232 : <routerType> like Router_Ifc {
      parameters:
        id = 232;
        numPorts = 2;
        @display("p=4900, 2100");
      gates:
        in[3];
        out[3];
    };

    router233 : <routerType> like Router_Ifc {
      parameters:
        id = 233;
        numPorts = 2;
        @display("p=5200, 2100");
      gates:
        in[3];
        out[3];
    };

    router234 : <routerType> like Router_Ifc {
      parameters:
        id = 234;
        numPorts = 2;
        @display("p=5700, 2100");
      gates:
        in[3];
        out[3];
    };

    router235 : <routerType> like Router_Ifc {
      parameters:
        id = 235;
        numPorts = 2;
        @display("p=6000, 2100");
      gates:
        in[3];
        out[3];
    };

    router236 : <routerType> like Router_Ifc {
      parameters:
        id = 236;
        numPorts = 2;
        @display("p=6900, 2100");
      gates:
        in[3];
        out[3];
    };

    router237 : <routerType> like Router_Ifc {
      parameters:
        id = 237;
        numPorts = 2;
        @display("p=7200, 2100");
      gates:
        in[3];
        out[3];
    };

    router238 : <routerType> like Router_Ifc {
      parameters:
        id = 238;
        numPorts = 2;
        @display("p=7700, 2100");
      gates:
        in[3];
        out[3];
    };

    router239 : <routerType> like Router_Ifc {
      parameters:
        id = 239;
        numPorts = 2;
        @display("p=8000, 2100");
      gates:
        in[3];
        out[3];
    };

    router240 : <routerType> like Router_Ifc {
      parameters:
        id = 240;
        numPorts = 2;
        @display("p=11300, 2100");
      gates:
        in[3];
        out[3];
    };

    router241 : <routerType> like Router_Ifc {
      parameters:
        id = 241;
        numPorts = 2;
        @display("p=11600, 2100");
      gates:
        in[3];
        out[3];
    };

    router242 : <routerType> like Router_Ifc {
      parameters:
        id = 242;
        numPorts = 2;
        @display("p=12100, 2100");
      gates:
        in[3];
        out[3];
    };

    router243 : <routerType> like Router_Ifc {
      parameters:
        id = 243;
        numPorts = 2;
        @display("p=12400, 2100");
      gates:
        in[3];
        out[3];
    };

    router244 : <routerType> like Router_Ifc {
      parameters:
        id = 244;
        numPorts = 2;
        @display("p=13300, 2100");
      gates:
        in[3];
        out[3];
    };

    router245 : <routerType> like Router_Ifc {
      parameters:
        id = 245;
        numPorts = 2;
        @display("p=13600, 2100");
      gates:
        in[3];
        out[3];
    };

    router246 : <routerType> like Router_Ifc {
      parameters:
        id = 246;
        numPorts = 2;
        @display("p=14100, 2100");
      gates:
        in[3];
        out[3];
    };

    router247 : <routerType> like Router_Ifc {
      parameters:
        id = 247;
        numPorts = 2;
        @display("p=14400, 2100");
      gates:
        in[3];
        out[3];
    };

    router248 : <routerType> like Router_Ifc {
      parameters:
        id = 248;
        numPorts = 2;
        @display("p=16100, 2100");
      gates:
        in[3];
        out[3];
    };

    router249 : <routerType> like Router_Ifc {
      parameters:
        id = 249;
        numPorts = 2;
        @display("p=16400, 2100");
      gates:
        in[3];
        out[3];
    };

    router250 : <routerType> like Router_Ifc {
      parameters:
        id = 250;
        numPorts = 2;
        @display("p=16900, 2100");
      gates:
        in[3];
        out[3];
    };

    router251 : <routerType> like Router_Ifc {
      parameters:
        id = 251;
        numPorts = 2;
        @display("p=17200, 2100");
      gates:
        in[3];
        out[3];
    };

    router252 : <routerType> like Router_Ifc {
      parameters:
        id = 252;
        numPorts = 2;
        @display("p=18100, 2100");
      gates:
        in[3];
        out[3];
    };

    router253 : <routerType> like Router_Ifc {
      parameters:
        id = 253;
        numPorts = 2;
        @display("p=18400, 2100");
      gates:
        in[3];
        out[3];
    };

    router254 : <routerType> like Router_Ifc {
      parameters:
        id = 254;
        numPorts = 2;
        @display("p=18900, 2100");
      gates:
        in[3];
        out[3];
    };

    router255 : <routerType> like Router_Ifc {
      parameters:
        id = 255;
        numPorts = 2;
        @display("p=19200, 2100");
      gates:
        in[3];
        out[3];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router180.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router180.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router181.in[0];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router181.in[1];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router188.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router188.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router77.in[0];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router77.in[1];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router184.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router184.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router69.in[0];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router69.in[1];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router79.in[0];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router79.in[1];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router113.in[0];
      router14.in[1] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[1] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router113.in[1];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router163.in[0];
      router16.in[1] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[1] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router163.in[1];
      router17.in[1] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[1] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router169.in[0];
      router18.in[1] <--> VariableBandWidthLink <--> core18.out; 
      router18.out[1] <--> VariableBandWidthLink <--> core18.in; 
      router19.out[0] <--> VariableBandWidthLink <--> router169.in[1];
      router19.in[1] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[1] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router183.in[0];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router183.in[1];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router189.in[0];
      router22.in[1] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[1] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router189.in[1];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router70.in[0];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router70.in[1];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router73.in[0];
      router26.in[1] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[1] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router73.in[1];
      router27.in[1] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[1] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router78.in[0];
      router28.in[1] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[1] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router78.in[1];
      router29.in[1] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[1] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router81.in[0];
      router30.in[1] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[1] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router81.in[1];
      router31.in[1] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[1] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router114.in[0];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router114.in[1];
      router33.in[1] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[1] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router117.in[0];
      router34.in[1] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[1] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router117.in[1];
      router35.in[1] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[1] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router122.in[0];
      router36.in[1] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[1] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router122.in[1];
      router37.in[1] <--> VariableBandWidthLink <--> core37.out; 
      router37.out[1] <--> VariableBandWidthLink <--> core37.in; 
      router38.out[0] <--> VariableBandWidthLink <--> router125.in[0];
      router38.in[1] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[1] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router125.in[1];
      router39.in[1] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[1] <--> VariableBandWidthLink <--> core39.in; 
      router40.out[0] <--> VariableBandWidthLink <--> router134.in[0];
      router40.in[1] <--> VariableBandWidthLink <--> core40.out; 
      router40.out[1] <--> VariableBandWidthLink <--> core40.in; 
      router41.out[0] <--> VariableBandWidthLink <--> router134.in[1];
      router41.in[1] <--> VariableBandWidthLink <--> core41.out; 
      router41.out[1] <--> VariableBandWidthLink <--> core41.in; 
      router42.out[0] <--> VariableBandWidthLink <--> router137.in[0];
      router42.in[1] <--> VariableBandWidthLink <--> core42.out; 
      router42.out[1] <--> VariableBandWidthLink <--> core42.in; 
      router43.out[0] <--> VariableBandWidthLink <--> router137.in[1];
      router43.in[1] <--> VariableBandWidthLink <--> core43.out; 
      router43.out[1] <--> VariableBandWidthLink <--> core43.in; 
      router44.out[0] <--> VariableBandWidthLink <--> router142.in[0];
      router44.in[1] <--> VariableBandWidthLink <--> core44.out; 
      router44.out[1] <--> VariableBandWidthLink <--> core44.in; 
      router45.out[0] <--> VariableBandWidthLink <--> router142.in[1];
      router45.in[1] <--> VariableBandWidthLink <--> core45.out; 
      router45.out[1] <--> VariableBandWidthLink <--> core45.in; 
      router46.out[0] <--> VariableBandWidthLink <--> router145.in[0];
      router46.in[1] <--> VariableBandWidthLink <--> core46.out; 
      router46.out[1] <--> VariableBandWidthLink <--> core46.in; 
      router47.out[0] <--> VariableBandWidthLink <--> router145.in[1];
      router47.in[1] <--> VariableBandWidthLink <--> core47.out; 
      router47.out[1] <--> VariableBandWidthLink <--> core47.in; 
      router48.out[0] <--> VariableBandWidthLink <--> router162.in[0];
      router48.in[1] <--> VariableBandWidthLink <--> core48.out; 
      router48.out[1] <--> VariableBandWidthLink <--> core48.in; 
      router49.out[0] <--> VariableBandWidthLink <--> router162.in[1];
      router49.in[1] <--> VariableBandWidthLink <--> core49.out; 
      router49.out[1] <--> VariableBandWidthLink <--> core49.in; 
      router50.out[0] <--> VariableBandWidthLink <--> router165.in[0];
      router50.in[1] <--> VariableBandWidthLink <--> core50.out; 
      router50.out[1] <--> VariableBandWidthLink <--> core50.in; 
      router51.out[0] <--> VariableBandWidthLink <--> router165.in[1];
      router51.in[1] <--> VariableBandWidthLink <--> core51.out; 
      router51.out[1] <--> VariableBandWidthLink <--> core51.in; 
      router52.out[0] <--> VariableBandWidthLink <--> router170.in[0];
      router52.in[1] <--> VariableBandWidthLink <--> core52.out; 
      router52.out[1] <--> VariableBandWidthLink <--> core52.in; 
      router53.out[0] <--> VariableBandWidthLink <--> router170.in[1];
      router53.in[1] <--> VariableBandWidthLink <--> core53.out; 
      router53.out[1] <--> VariableBandWidthLink <--> core53.in; 
      router54.out[0] <--> VariableBandWidthLink <--> router173.in[0];
      router54.in[1] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[1] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router173.in[1];
      router55.in[1] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[1] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router182.in[0];
      router56.in[1] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[1] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router182.in[1];
      router57.in[1] <--> VariableBandWidthLink <--> core57.out; 
      router57.out[1] <--> VariableBandWidthLink <--> core57.in; 
      router58.out[0] <--> VariableBandWidthLink <--> router185.in[0];
      router58.in[1] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[1] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router185.in[1];
      router59.in[1] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[1] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router190.in[0];
      router60.in[1] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[1] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router190.in[1];
      router61.in[1] <--> VariableBandWidthLink <--> core61.out; 
      router61.out[1] <--> VariableBandWidthLink <--> core61.in; 
      router62.out[0] <--> VariableBandWidthLink <--> router193.in[0];
      router62.in[1] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[1] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router193.in[1];
      router63.in[1] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[1] <--> VariableBandWidthLink <--> core63.in; 
      router64.out[0] <--> VariableBandWidthLink <--> router171.in[2];
      router64.out[1] <--> VariableBandWidthLink <--> router191.in[2];
      router64.out[2] <--> VariableBandWidthLink <--> router88.in[0];
      router64.out[3] <--> VariableBandWidthLink <--> router89.in[0];
      router65.out[0] <--> VariableBandWidthLink <--> router171.in[3];
      router65.out[1] <--> VariableBandWidthLink <--> router191.in[3];
      router65.out[2] <--> VariableBandWidthLink <--> router90.in[0];
      router65.out[3] <--> VariableBandWidthLink <--> router91.in[0];
      router66.out[0] <--> VariableBandWidthLink <--> router172.in[2];
      router66.out[1] <--> VariableBandWidthLink <--> router192.in[2];
      router66.out[2] <--> VariableBandWidthLink <--> router92.in[0];
      router66.out[3] <--> VariableBandWidthLink <--> router93.in[0];
      router67.out[0] <--> VariableBandWidthLink <--> router172.in[3];
      router67.out[1] <--> VariableBandWidthLink <--> router192.in[3];
      router67.out[2] <--> VariableBandWidthLink <--> router94.in[0];
      router67.out[3] <--> VariableBandWidthLink <--> router95.in[0];
      router68.out[0] <--> VariableBandWidthLink <--> router180.in[2];
      router68.out[1] <--> VariableBandWidthLink <--> router181.in[2];
      router68.out[2] <--> VariableBandWidthLink <--> router160.in[0];
      router68.out[3] <--> VariableBandWidthLink <--> router161.in[0];
      router69.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router69.out[1] <--> VariableBandWidthLink <--> router11.in[0];
      router69.out[2] <--> VariableBandWidthLink <--> router71.in[1];
      router69.out[3] <--> VariableBandWidthLink <--> router72.in[1];
      router70.out[0] <--> VariableBandWidthLink <--> router24.in[0];
      router70.out[1] <--> VariableBandWidthLink <--> router25.in[0];
      router70.out[2] <--> VariableBandWidthLink <--> router74.in[0];
      router70.out[3] <--> VariableBandWidthLink <--> router75.in[0];
      router71.out[0] <--> VariableBandWidthLink <--> router184.in[2];
      router71.out[1] <--> VariableBandWidthLink <--> router69.in[2];
      router71.out[2] <--> VariableBandWidthLink <--> router120.in[0];
      router71.out[3] <--> VariableBandWidthLink <--> router121.in[0];
      router72.out[0] <--> VariableBandWidthLink <--> router184.in[3];
      router72.out[1] <--> VariableBandWidthLink <--> router69.in[3];
      router72.out[2] <--> VariableBandWidthLink <--> router123.in[0];
      router72.out[3] <--> VariableBandWidthLink <--> router124.in[0];
      router73.out[0] <--> VariableBandWidthLink <--> router26.in[0];
      router73.out[1] <--> VariableBandWidthLink <--> router27.in[0];
      router73.out[2] <--> VariableBandWidthLink <--> router74.in[1];
      router73.out[3] <--> VariableBandWidthLink <--> router75.in[1];
      router74.out[0] <--> VariableBandWidthLink <--> router70.in[2];
      router74.out[1] <--> VariableBandWidthLink <--> router73.in[2];
      router74.out[2] <--> VariableBandWidthLink <--> router84.in[0];
      router74.out[3] <--> VariableBandWidthLink <--> router85.in[0];
      router75.out[0] <--> VariableBandWidthLink <--> router70.in[3];
      router75.out[1] <--> VariableBandWidthLink <--> router73.in[3];
      router75.out[2] <--> VariableBandWidthLink <--> router86.in[0];
      router75.out[3] <--> VariableBandWidthLink <--> router87.in[0];
      router76.out[0] <--> VariableBandWidthLink <--> router180.in[3];
      router76.out[1] <--> VariableBandWidthLink <--> router181.in[3];
      router76.out[2] <--> VariableBandWidthLink <--> router164.in[0];
      router76.out[3] <--> VariableBandWidthLink <--> router168.in[0];
      router77.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router77.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router77.out[2] <--> VariableBandWidthLink <--> router80.in[1];
      router77.out[3] <--> VariableBandWidthLink <--> router112.in[1];
      router78.out[0] <--> VariableBandWidthLink <--> router28.in[0];
      router78.out[1] <--> VariableBandWidthLink <--> router29.in[0];
      router78.out[2] <--> VariableBandWidthLink <--> router82.in[0];
      router78.out[3] <--> VariableBandWidthLink <--> router83.in[0];
      router79.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router79.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router79.out[2] <--> VariableBandWidthLink <--> router115.in[0];
      router79.out[3] <--> VariableBandWidthLink <--> router116.in[0];
      router80.out[0] <--> VariableBandWidthLink <--> router188.in[2];
      router80.out[1] <--> VariableBandWidthLink <--> router77.in[2];
      router80.out[2] <--> VariableBandWidthLink <--> router160.in[1];
      router80.out[3] <--> VariableBandWidthLink <--> router161.in[1];
      router81.out[0] <--> VariableBandWidthLink <--> router30.in[0];
      router81.out[1] <--> VariableBandWidthLink <--> router31.in[0];
      router81.out[2] <--> VariableBandWidthLink <--> router82.in[1];
      router81.out[3] <--> VariableBandWidthLink <--> router83.in[1];
      router82.out[0] <--> VariableBandWidthLink <--> router78.in[2];
      router82.out[1] <--> VariableBandWidthLink <--> router81.in[2];
      router82.out[2] <--> VariableBandWidthLink <--> router84.in[1];
      router82.out[3] <--> VariableBandWidthLink <--> router85.in[1];
      router83.out[0] <--> VariableBandWidthLink <--> router78.in[3];
      router83.out[1] <--> VariableBandWidthLink <--> router81.in[3];
      router83.out[2] <--> VariableBandWidthLink <--> router86.in[1];
      router83.out[3] <--> VariableBandWidthLink <--> router87.in[1];
      router84.out[0] <--> VariableBandWidthLink <--> router74.in[2];
      router84.out[1] <--> VariableBandWidthLink <--> router82.in[2];
      router84.out[2] <--> VariableBandWidthLink <--> router88.in[1];
      router84.out[3] <--> VariableBandWidthLink <--> router89.in[1];
      router85.out[0] <--> VariableBandWidthLink <--> router74.in[3];
      router85.out[1] <--> VariableBandWidthLink <--> router82.in[3];
      router85.out[2] <--> VariableBandWidthLink <--> router90.in[1];
      router85.out[3] <--> VariableBandWidthLink <--> router91.in[1];
      router86.out[0] <--> VariableBandWidthLink <--> router75.in[2];
      router86.out[1] <--> VariableBandWidthLink <--> router83.in[2];
      router86.out[2] <--> VariableBandWidthLink <--> router92.in[1];
      router86.out[3] <--> VariableBandWidthLink <--> router93.in[1];
      router87.out[0] <--> VariableBandWidthLink <--> router75.in[3];
      router87.out[1] <--> VariableBandWidthLink <--> router83.in[3];
      router87.out[2] <--> VariableBandWidthLink <--> router94.in[1];
      router87.out[3] <--> VariableBandWidthLink <--> router95.in[1];
      router88.out[0] <--> VariableBandWidthLink <--> router64.in[2];
      router88.out[1] <--> VariableBandWidthLink <--> router84.in[2];
      router88.out[2] <--> VariableBandWidthLink <--> router96.in[1];
      router88.out[3] <--> VariableBandWidthLink <--> router97.in[1];
      router89.out[0] <--> VariableBandWidthLink <--> router64.in[3];
      router89.out[1] <--> VariableBandWidthLink <--> router84.in[3];
      router89.out[2] <--> VariableBandWidthLink <--> router98.in[1];
      router89.out[3] <--> VariableBandWidthLink <--> router99.in[1];
      router90.out[0] <--> VariableBandWidthLink <--> router65.in[2];
      router90.out[1] <--> VariableBandWidthLink <--> router85.in[2];
      router90.out[2] <--> VariableBandWidthLink <--> router100.in[1];
      router90.out[3] <--> VariableBandWidthLink <--> router101.in[1];
      router91.out[0] <--> VariableBandWidthLink <--> router65.in[3];
      router91.out[1] <--> VariableBandWidthLink <--> router85.in[3];
      router91.out[2] <--> VariableBandWidthLink <--> router102.in[1];
      router91.out[3] <--> VariableBandWidthLink <--> router103.in[1];
      router92.out[0] <--> VariableBandWidthLink <--> router66.in[2];
      router92.out[1] <--> VariableBandWidthLink <--> router86.in[2];
      router92.out[2] <--> VariableBandWidthLink <--> router104.in[1];
      router92.out[3] <--> VariableBandWidthLink <--> router105.in[1];
      router93.out[0] <--> VariableBandWidthLink <--> router66.in[3];
      router93.out[1] <--> VariableBandWidthLink <--> router86.in[3];
      router93.out[2] <--> VariableBandWidthLink <--> router106.in[1];
      router93.out[3] <--> VariableBandWidthLink <--> router107.in[1];
      router94.out[0] <--> VariableBandWidthLink <--> router67.in[2];
      router94.out[1] <--> VariableBandWidthLink <--> router87.in[2];
      router94.out[2] <--> VariableBandWidthLink <--> router108.in[1];
      router94.out[3] <--> VariableBandWidthLink <--> router109.in[1];
      router95.out[0] <--> VariableBandWidthLink <--> router67.in[3];
      router95.out[1] <--> VariableBandWidthLink <--> router87.in[3];
      router95.out[2] <--> VariableBandWidthLink <--> router110.in[1];
      router95.out[3] <--> VariableBandWidthLink <--> router111.in[1];
      router96.out[0] <--> VariableBandWidthLink <--> router132.in[2];
      router96.out[1] <--> VariableBandWidthLink <--> router88.in[2];
      router96.out[2] <--> VariableBandWidthLink <--> router224.in[0];
      router96.out[3] <--> VariableBandWidthLink <--> router225.in[0];
      router97.out[0] <--> VariableBandWidthLink <--> router132.in[3];
      router97.out[1] <--> VariableBandWidthLink <--> router88.in[3];
      router97.out[2] <--> VariableBandWidthLink <--> router226.in[0];
      router97.out[3] <--> VariableBandWidthLink <--> router227.in[0];
      router98.out[0] <--> VariableBandWidthLink <--> router133.in[2];
      router98.out[1] <--> VariableBandWidthLink <--> router89.in[2];
      router98.out[2] <--> VariableBandWidthLink <--> router228.in[0];
      router98.out[3] <--> VariableBandWidthLink <--> router229.in[0];
      router99.out[0] <--> VariableBandWidthLink <--> router133.in[3];
      router99.out[1] <--> VariableBandWidthLink <--> router89.in[3];
      router99.out[2] <--> VariableBandWidthLink <--> router230.in[0];
      router99.out[3] <--> VariableBandWidthLink <--> router231.in[0];
      router100.out[0] <--> VariableBandWidthLink <--> router135.in[2];
      router100.out[1] <--> VariableBandWidthLink <--> router90.in[2];
      router100.out[2] <--> VariableBandWidthLink <--> router232.in[0];
      router100.out[3] <--> VariableBandWidthLink <--> router233.in[0];
      router101.out[0] <--> VariableBandWidthLink <--> router135.in[3];
      router101.out[1] <--> VariableBandWidthLink <--> router90.in[3];
      router101.out[2] <--> VariableBandWidthLink <--> router234.in[0];
      router101.out[3] <--> VariableBandWidthLink <--> router235.in[0];
      router102.out[0] <--> VariableBandWidthLink <--> router136.in[2];
      router102.out[1] <--> VariableBandWidthLink <--> router91.in[2];
      router102.out[2] <--> VariableBandWidthLink <--> router236.in[0];
      router102.out[3] <--> VariableBandWidthLink <--> router237.in[0];
      router103.out[0] <--> VariableBandWidthLink <--> router136.in[3];
      router103.out[1] <--> VariableBandWidthLink <--> router91.in[3];
      router103.out[2] <--> VariableBandWidthLink <--> router238.in[0];
      router103.out[3] <--> VariableBandWidthLink <--> router239.in[0];
      router104.out[0] <--> VariableBandWidthLink <--> router140.in[2];
      router104.out[1] <--> VariableBandWidthLink <--> router92.in[2];
      router104.out[2] <--> VariableBandWidthLink <--> router240.in[0];
      router104.out[3] <--> VariableBandWidthLink <--> router241.in[0];
      router105.out[0] <--> VariableBandWidthLink <--> router140.in[3];
      router105.out[1] <--> VariableBandWidthLink <--> router92.in[3];
      router105.out[2] <--> VariableBandWidthLink <--> router242.in[0];
      router105.out[3] <--> VariableBandWidthLink <--> router243.in[0];
      router106.out[0] <--> VariableBandWidthLink <--> router141.in[2];
      router106.out[1] <--> VariableBandWidthLink <--> router93.in[2];
      router106.out[2] <--> VariableBandWidthLink <--> router244.in[0];
      router106.out[3] <--> VariableBandWidthLink <--> router245.in[0];
      router107.out[0] <--> VariableBandWidthLink <--> router141.in[3];
      router107.out[1] <--> VariableBandWidthLink <--> router93.in[3];
      router107.out[2] <--> VariableBandWidthLink <--> router246.in[0];
      router107.out[3] <--> VariableBandWidthLink <--> router247.in[0];
      router108.out[0] <--> VariableBandWidthLink <--> router143.in[2];
      router108.out[1] <--> VariableBandWidthLink <--> router94.in[2];
      router108.out[2] <--> VariableBandWidthLink <--> router248.in[0];
      router108.out[3] <--> VariableBandWidthLink <--> router249.in[0];
      router109.out[0] <--> VariableBandWidthLink <--> router143.in[3];
      router109.out[1] <--> VariableBandWidthLink <--> router94.in[3];
      router109.out[2] <--> VariableBandWidthLink <--> router250.in[0];
      router109.out[3] <--> VariableBandWidthLink <--> router251.in[0];
      router110.out[0] <--> VariableBandWidthLink <--> router144.in[2];
      router110.out[1] <--> VariableBandWidthLink <--> router95.in[2];
      router110.out[2] <--> VariableBandWidthLink <--> router252.in[0];
      router110.out[3] <--> VariableBandWidthLink <--> router253.in[0];
      router111.out[0] <--> VariableBandWidthLink <--> router144.in[3];
      router111.out[1] <--> VariableBandWidthLink <--> router95.in[3];
      router111.out[2] <--> VariableBandWidthLink <--> router254.in[0];
      router111.out[3] <--> VariableBandWidthLink <--> router255.in[0];
      router112.out[0] <--> VariableBandWidthLink <--> router188.in[3];
      router112.out[1] <--> VariableBandWidthLink <--> router77.in[3];
      router112.out[2] <--> VariableBandWidthLink <--> router164.in[1];
      router112.out[3] <--> VariableBandWidthLink <--> router168.in[1];
      router113.out[0] <--> VariableBandWidthLink <--> router14.in[0];
      router113.out[1] <--> VariableBandWidthLink <--> router15.in[0];
      router113.out[2] <--> VariableBandWidthLink <--> router115.in[1];
      router113.out[3] <--> VariableBandWidthLink <--> router116.in[1];
      router114.out[0] <--> VariableBandWidthLink <--> router32.in[0];
      router114.out[1] <--> VariableBandWidthLink <--> router33.in[0];
      router114.out[2] <--> VariableBandWidthLink <--> router118.in[0];
      router114.out[3] <--> VariableBandWidthLink <--> router119.in[0];
      router115.out[0] <--> VariableBandWidthLink <--> router79.in[2];
      router115.out[1] <--> VariableBandWidthLink <--> router113.in[2];
      router115.out[2] <--> VariableBandWidthLink <--> router120.in[1];
      router115.out[3] <--> VariableBandWidthLink <--> router121.in[1];
      router116.out[0] <--> VariableBandWidthLink <--> router79.in[3];
      router116.out[1] <--> VariableBandWidthLink <--> router113.in[3];
      router116.out[2] <--> VariableBandWidthLink <--> router123.in[1];
      router116.out[3] <--> VariableBandWidthLink <--> router124.in[1];
      router117.out[0] <--> VariableBandWidthLink <--> router34.in[0];
      router117.out[1] <--> VariableBandWidthLink <--> router35.in[0];
      router117.out[2] <--> VariableBandWidthLink <--> router118.in[1];
      router117.out[3] <--> VariableBandWidthLink <--> router119.in[1];
      router118.out[0] <--> VariableBandWidthLink <--> router114.in[2];
      router118.out[1] <--> VariableBandWidthLink <--> router117.in[2];
      router118.out[2] <--> VariableBandWidthLink <--> router128.in[0];
      router118.out[3] <--> VariableBandWidthLink <--> router129.in[0];
      router119.out[0] <--> VariableBandWidthLink <--> router114.in[3];
      router119.out[1] <--> VariableBandWidthLink <--> router117.in[3];
      router119.out[2] <--> VariableBandWidthLink <--> router130.in[0];
      router119.out[3] <--> VariableBandWidthLink <--> router131.in[0];
      router120.out[0] <--> VariableBandWidthLink <--> router71.in[2];
      router120.out[1] <--> VariableBandWidthLink <--> router115.in[2];
      router120.out[2] <--> VariableBandWidthLink <--> router132.in[1];
      router120.out[3] <--> VariableBandWidthLink <--> router133.in[1];
      router121.out[0] <--> VariableBandWidthLink <--> router71.in[3];
      router121.out[1] <--> VariableBandWidthLink <--> router115.in[3];
      router121.out[2] <--> VariableBandWidthLink <--> router135.in[1];
      router121.out[3] <--> VariableBandWidthLink <--> router136.in[1];
      router122.out[0] <--> VariableBandWidthLink <--> router36.in[0];
      router122.out[1] <--> VariableBandWidthLink <--> router37.in[0];
      router122.out[2] <--> VariableBandWidthLink <--> router126.in[0];
      router122.out[3] <--> VariableBandWidthLink <--> router127.in[0];
      router123.out[0] <--> VariableBandWidthLink <--> router72.in[2];
      router123.out[1] <--> VariableBandWidthLink <--> router116.in[2];
      router123.out[2] <--> VariableBandWidthLink <--> router140.in[1];
      router123.out[3] <--> VariableBandWidthLink <--> router141.in[1];
      router124.out[0] <--> VariableBandWidthLink <--> router72.in[3];
      router124.out[1] <--> VariableBandWidthLink <--> router116.in[3];
      router124.out[2] <--> VariableBandWidthLink <--> router143.in[1];
      router124.out[3] <--> VariableBandWidthLink <--> router144.in[1];
      router125.out[0] <--> VariableBandWidthLink <--> router38.in[0];
      router125.out[1] <--> VariableBandWidthLink <--> router39.in[0];
      router125.out[2] <--> VariableBandWidthLink <--> router126.in[1];
      router125.out[3] <--> VariableBandWidthLink <--> router127.in[1];
      router126.out[0] <--> VariableBandWidthLink <--> router122.in[2];
      router126.out[1] <--> VariableBandWidthLink <--> router125.in[2];
      router126.out[2] <--> VariableBandWidthLink <--> router128.in[1];
      router126.out[3] <--> VariableBandWidthLink <--> router129.in[1];
      router127.out[0] <--> VariableBandWidthLink <--> router122.in[3];
      router127.out[1] <--> VariableBandWidthLink <--> router125.in[3];
      router127.out[2] <--> VariableBandWidthLink <--> router130.in[1];
      router127.out[3] <--> VariableBandWidthLink <--> router131.in[1];
      router128.out[0] <--> VariableBandWidthLink <--> router118.in[2];
      router128.out[1] <--> VariableBandWidthLink <--> router126.in[2];
      router128.out[2] <--> VariableBandWidthLink <--> router152.in[0];
      router128.out[3] <--> VariableBandWidthLink <--> router153.in[0];
      router129.out[0] <--> VariableBandWidthLink <--> router118.in[3];
      router129.out[1] <--> VariableBandWidthLink <--> router126.in[3];
      router129.out[2] <--> VariableBandWidthLink <--> router154.in[0];
      router129.out[3] <--> VariableBandWidthLink <--> router155.in[0];
      router130.out[0] <--> VariableBandWidthLink <--> router119.in[2];
      router130.out[1] <--> VariableBandWidthLink <--> router127.in[2];
      router130.out[2] <--> VariableBandWidthLink <--> router156.in[0];
      router130.out[3] <--> VariableBandWidthLink <--> router157.in[0];
      router131.out[0] <--> VariableBandWidthLink <--> router119.in[3];
      router131.out[1] <--> VariableBandWidthLink <--> router127.in[3];
      router131.out[2] <--> VariableBandWidthLink <--> router158.in[0];
      router131.out[3] <--> VariableBandWidthLink <--> router159.in[0];
      router132.out[0] <--> VariableBandWidthLink <--> router160.in[2];
      router132.out[1] <--> VariableBandWidthLink <--> router120.in[2];
      router132.out[2] <--> VariableBandWidthLink <--> router96.in[0];
      router132.out[3] <--> VariableBandWidthLink <--> router97.in[0];
      router133.out[0] <--> VariableBandWidthLink <--> router160.in[3];
      router133.out[1] <--> VariableBandWidthLink <--> router120.in[3];
      router133.out[2] <--> VariableBandWidthLink <--> router98.in[0];
      router133.out[3] <--> VariableBandWidthLink <--> router99.in[0];
      router134.out[0] <--> VariableBandWidthLink <--> router40.in[0];
      router134.out[1] <--> VariableBandWidthLink <--> router41.in[0];
      router134.out[2] <--> VariableBandWidthLink <--> router138.in[0];
      router134.out[3] <--> VariableBandWidthLink <--> router139.in[0];
      router135.out[0] <--> VariableBandWidthLink <--> router161.in[2];
      router135.out[1] <--> VariableBandWidthLink <--> router121.in[2];
      router135.out[2] <--> VariableBandWidthLink <--> router100.in[0];
      router135.out[3] <--> VariableBandWidthLink <--> router101.in[0];
      router136.out[0] <--> VariableBandWidthLink <--> router161.in[3];
      router136.out[1] <--> VariableBandWidthLink <--> router121.in[3];
      router136.out[2] <--> VariableBandWidthLink <--> router102.in[0];
      router136.out[3] <--> VariableBandWidthLink <--> router103.in[0];
      router137.out[0] <--> VariableBandWidthLink <--> router42.in[0];
      router137.out[1] <--> VariableBandWidthLink <--> router43.in[0];
      router137.out[2] <--> VariableBandWidthLink <--> router138.in[1];
      router137.out[3] <--> VariableBandWidthLink <--> router139.in[1];
      router138.out[0] <--> VariableBandWidthLink <--> router134.in[2];
      router138.out[1] <--> VariableBandWidthLink <--> router137.in[2];
      router138.out[2] <--> VariableBandWidthLink <--> router148.in[0];
      router138.out[3] <--> VariableBandWidthLink <--> router149.in[0];
      router139.out[0] <--> VariableBandWidthLink <--> router134.in[3];
      router139.out[1] <--> VariableBandWidthLink <--> router137.in[3];
      router139.out[2] <--> VariableBandWidthLink <--> router150.in[0];
      router139.out[3] <--> VariableBandWidthLink <--> router151.in[0];
      router140.out[0] <--> VariableBandWidthLink <--> router164.in[2];
      router140.out[1] <--> VariableBandWidthLink <--> router123.in[2];
      router140.out[2] <--> VariableBandWidthLink <--> router104.in[0];
      router140.out[3] <--> VariableBandWidthLink <--> router105.in[0];
      router141.out[0] <--> VariableBandWidthLink <--> router164.in[3];
      router141.out[1] <--> VariableBandWidthLink <--> router123.in[3];
      router141.out[2] <--> VariableBandWidthLink <--> router106.in[0];
      router141.out[3] <--> VariableBandWidthLink <--> router107.in[0];
      router142.out[0] <--> VariableBandWidthLink <--> router44.in[0];
      router142.out[1] <--> VariableBandWidthLink <--> router45.in[0];
      router142.out[2] <--> VariableBandWidthLink <--> router146.in[0];
      router142.out[3] <--> VariableBandWidthLink <--> router147.in[0];
      router143.out[0] <--> VariableBandWidthLink <--> router168.in[2];
      router143.out[1] <--> VariableBandWidthLink <--> router124.in[2];
      router143.out[2] <--> VariableBandWidthLink <--> router108.in[0];
      router143.out[3] <--> VariableBandWidthLink <--> router109.in[0];
      router144.out[0] <--> VariableBandWidthLink <--> router168.in[3];
      router144.out[1] <--> VariableBandWidthLink <--> router124.in[3];
      router144.out[2] <--> VariableBandWidthLink <--> router110.in[0];
      router144.out[3] <--> VariableBandWidthLink <--> router111.in[0];
      router145.out[0] <--> VariableBandWidthLink <--> router46.in[0];
      router145.out[1] <--> VariableBandWidthLink <--> router47.in[0];
      router145.out[2] <--> VariableBandWidthLink <--> router146.in[1];
      router145.out[3] <--> VariableBandWidthLink <--> router147.in[1];
      router146.out[0] <--> VariableBandWidthLink <--> router142.in[2];
      router146.out[1] <--> VariableBandWidthLink <--> router145.in[2];
      router146.out[2] <--> VariableBandWidthLink <--> router148.in[1];
      router146.out[3] <--> VariableBandWidthLink <--> router149.in[1];
      router147.out[0] <--> VariableBandWidthLink <--> router142.in[3];
      router147.out[1] <--> VariableBandWidthLink <--> router145.in[3];
      router147.out[2] <--> VariableBandWidthLink <--> router150.in[1];
      router147.out[3] <--> VariableBandWidthLink <--> router151.in[1];
      router148.out[0] <--> VariableBandWidthLink <--> router138.in[2];
      router148.out[1] <--> VariableBandWidthLink <--> router146.in[2];
      router148.out[2] <--> VariableBandWidthLink <--> router152.in[1];
      router148.out[3] <--> VariableBandWidthLink <--> router153.in[1];
      router149.out[0] <--> VariableBandWidthLink <--> router138.in[3];
      router149.out[1] <--> VariableBandWidthLink <--> router146.in[3];
      router149.out[2] <--> VariableBandWidthLink <--> router154.in[1];
      router149.out[3] <--> VariableBandWidthLink <--> router155.in[1];
      router150.out[0] <--> VariableBandWidthLink <--> router139.in[2];
      router150.out[1] <--> VariableBandWidthLink <--> router147.in[2];
      router150.out[2] <--> VariableBandWidthLink <--> router156.in[1];
      router150.out[3] <--> VariableBandWidthLink <--> router157.in[1];
      router151.out[0] <--> VariableBandWidthLink <--> router139.in[3];
      router151.out[1] <--> VariableBandWidthLink <--> router147.in[3];
      router151.out[2] <--> VariableBandWidthLink <--> router158.in[1];
      router151.out[3] <--> VariableBandWidthLink <--> router159.in[1];
      router152.out[0] <--> VariableBandWidthLink <--> router128.in[2];
      router152.out[1] <--> VariableBandWidthLink <--> router148.in[2];
      router152.out[2] <--> VariableBandWidthLink <--> router208.in[0];
      router152.out[3] <--> VariableBandWidthLink <--> router209.in[0];
      router153.out[0] <--> VariableBandWidthLink <--> router128.in[3];
      router153.out[1] <--> VariableBandWidthLink <--> router148.in[3];
      router153.out[2] <--> VariableBandWidthLink <--> router210.in[0];
      router153.out[3] <--> VariableBandWidthLink <--> router211.in[0];
      router154.out[0] <--> VariableBandWidthLink <--> router129.in[2];
      router154.out[1] <--> VariableBandWidthLink <--> router149.in[2];
      router154.out[2] <--> VariableBandWidthLink <--> router212.in[0];
      router154.out[3] <--> VariableBandWidthLink <--> router213.in[0];
      router155.out[0] <--> VariableBandWidthLink <--> router129.in[3];
      router155.out[1] <--> VariableBandWidthLink <--> router149.in[3];
      router155.out[2] <--> VariableBandWidthLink <--> router214.in[0];
      router155.out[3] <--> VariableBandWidthLink <--> router215.in[0];
      router156.out[0] <--> VariableBandWidthLink <--> router130.in[2];
      router156.out[1] <--> VariableBandWidthLink <--> router150.in[2];
      router156.out[2] <--> VariableBandWidthLink <--> router216.in[0];
      router156.out[3] <--> VariableBandWidthLink <--> router217.in[0];
      router157.out[0] <--> VariableBandWidthLink <--> router130.in[3];
      router157.out[1] <--> VariableBandWidthLink <--> router150.in[3];
      router157.out[2] <--> VariableBandWidthLink <--> router218.in[0];
      router157.out[3] <--> VariableBandWidthLink <--> router219.in[0];
      router158.out[0] <--> VariableBandWidthLink <--> router131.in[2];
      router158.out[1] <--> VariableBandWidthLink <--> router151.in[2];
      router158.out[2] <--> VariableBandWidthLink <--> router220.in[0];
      router158.out[3] <--> VariableBandWidthLink <--> router221.in[0];
      router159.out[0] <--> VariableBandWidthLink <--> router131.in[3];
      router159.out[1] <--> VariableBandWidthLink <--> router151.in[3];
      router159.out[2] <--> VariableBandWidthLink <--> router222.in[0];
      router159.out[3] <--> VariableBandWidthLink <--> router223.in[0];
      router160.out[0] <--> VariableBandWidthLink <--> router68.in[2];
      router160.out[1] <--> VariableBandWidthLink <--> router80.in[2];
      router160.out[2] <--> VariableBandWidthLink <--> router132.in[0];
      router160.out[3] <--> VariableBandWidthLink <--> router133.in[0];
      router161.out[0] <--> VariableBandWidthLink <--> router68.in[3];
      router161.out[1] <--> VariableBandWidthLink <--> router80.in[3];
      router161.out[2] <--> VariableBandWidthLink <--> router135.in[0];
      router161.out[3] <--> VariableBandWidthLink <--> router136.in[0];
      router162.out[0] <--> VariableBandWidthLink <--> router48.in[0];
      router162.out[1] <--> VariableBandWidthLink <--> router49.in[0];
      router162.out[2] <--> VariableBandWidthLink <--> router166.in[0];
      router162.out[3] <--> VariableBandWidthLink <--> router167.in[0];
      router163.out[0] <--> VariableBandWidthLink <--> router16.in[0];
      router163.out[1] <--> VariableBandWidthLink <--> router17.in[0];
      router163.out[2] <--> VariableBandWidthLink <--> router171.in[0];
      router163.out[3] <--> VariableBandWidthLink <--> router172.in[0];
      router164.out[0] <--> VariableBandWidthLink <--> router76.in[2];
      router164.out[1] <--> VariableBandWidthLink <--> router112.in[2];
      router164.out[2] <--> VariableBandWidthLink <--> router140.in[0];
      router164.out[3] <--> VariableBandWidthLink <--> router141.in[0];
      router165.out[0] <--> VariableBandWidthLink <--> router50.in[0];
      router165.out[1] <--> VariableBandWidthLink <--> router51.in[0];
      router165.out[2] <--> VariableBandWidthLink <--> router166.in[1];
      router165.out[3] <--> VariableBandWidthLink <--> router167.in[1];
      router166.out[0] <--> VariableBandWidthLink <--> router162.in[2];
      router166.out[1] <--> VariableBandWidthLink <--> router165.in[2];
      router166.out[2] <--> VariableBandWidthLink <--> router176.in[0];
      router166.out[3] <--> VariableBandWidthLink <--> router177.in[0];
      router167.out[0] <--> VariableBandWidthLink <--> router162.in[3];
      router167.out[1] <--> VariableBandWidthLink <--> router165.in[3];
      router167.out[2] <--> VariableBandWidthLink <--> router178.in[0];
      router167.out[3] <--> VariableBandWidthLink <--> router179.in[0];
      router168.out[0] <--> VariableBandWidthLink <--> router76.in[3];
      router168.out[1] <--> VariableBandWidthLink <--> router112.in[3];
      router168.out[2] <--> VariableBandWidthLink <--> router143.in[0];
      router168.out[3] <--> VariableBandWidthLink <--> router144.in[0];
      router169.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router169.out[1] <--> VariableBandWidthLink <--> router19.in[0];
      router169.out[2] <--> VariableBandWidthLink <--> router171.in[1];
      router169.out[3] <--> VariableBandWidthLink <--> router172.in[1];
      router170.out[0] <--> VariableBandWidthLink <--> router52.in[0];
      router170.out[1] <--> VariableBandWidthLink <--> router53.in[0];
      router170.out[2] <--> VariableBandWidthLink <--> router174.in[0];
      router170.out[3] <--> VariableBandWidthLink <--> router175.in[0];
      router171.out[0] <--> VariableBandWidthLink <--> router163.in[2];
      router171.out[1] <--> VariableBandWidthLink <--> router169.in[2];
      router171.out[2] <--> VariableBandWidthLink <--> router64.in[0];
      router171.out[3] <--> VariableBandWidthLink <--> router65.in[0];
      router172.out[0] <--> VariableBandWidthLink <--> router163.in[3];
      router172.out[1] <--> VariableBandWidthLink <--> router169.in[3];
      router172.out[2] <--> VariableBandWidthLink <--> router66.in[0];
      router172.out[3] <--> VariableBandWidthLink <--> router67.in[0];
      router173.out[0] <--> VariableBandWidthLink <--> router54.in[0];
      router173.out[1] <--> VariableBandWidthLink <--> router55.in[0];
      router173.out[2] <--> VariableBandWidthLink <--> router174.in[1];
      router173.out[3] <--> VariableBandWidthLink <--> router175.in[1];
      router174.out[0] <--> VariableBandWidthLink <--> router170.in[2];
      router174.out[1] <--> VariableBandWidthLink <--> router173.in[2];
      router174.out[2] <--> VariableBandWidthLink <--> router176.in[1];
      router174.out[3] <--> VariableBandWidthLink <--> router177.in[1];
      router175.out[0] <--> VariableBandWidthLink <--> router170.in[3];
      router175.out[1] <--> VariableBandWidthLink <--> router173.in[3];
      router175.out[2] <--> VariableBandWidthLink <--> router178.in[1];
      router175.out[3] <--> VariableBandWidthLink <--> router179.in[1];
      router176.out[0] <--> VariableBandWidthLink <--> router166.in[2];
      router176.out[1] <--> VariableBandWidthLink <--> router174.in[2];
      router176.out[2] <--> VariableBandWidthLink <--> router200.in[0];
      router176.out[3] <--> VariableBandWidthLink <--> router201.in[0];
      router177.out[0] <--> VariableBandWidthLink <--> router166.in[3];
      router177.out[1] <--> VariableBandWidthLink <--> router174.in[3];
      router177.out[2] <--> VariableBandWidthLink <--> router202.in[0];
      router177.out[3] <--> VariableBandWidthLink <--> router203.in[0];
      router178.out[0] <--> VariableBandWidthLink <--> router167.in[2];
      router178.out[1] <--> VariableBandWidthLink <--> router175.in[2];
      router178.out[2] <--> VariableBandWidthLink <--> router204.in[0];
      router178.out[3] <--> VariableBandWidthLink <--> router205.in[0];
      router179.out[0] <--> VariableBandWidthLink <--> router167.in[3];
      router179.out[1] <--> VariableBandWidthLink <--> router175.in[3];
      router179.out[2] <--> VariableBandWidthLink <--> router206.in[0];
      router179.out[3] <--> VariableBandWidthLink <--> router207.in[0];
      router180.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router180.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router180.out[2] <--> VariableBandWidthLink <--> router68.in[0];
      router180.out[3] <--> VariableBandWidthLink <--> router76.in[0];
      router181.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router181.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router181.out[2] <--> VariableBandWidthLink <--> router68.in[1];
      router181.out[3] <--> VariableBandWidthLink <--> router76.in[1];
      router182.out[0] <--> VariableBandWidthLink <--> router56.in[0];
      router182.out[1] <--> VariableBandWidthLink <--> router57.in[0];
      router182.out[2] <--> VariableBandWidthLink <--> router186.in[0];
      router182.out[3] <--> VariableBandWidthLink <--> router187.in[0];
      router183.out[0] <--> VariableBandWidthLink <--> router20.in[0];
      router183.out[1] <--> VariableBandWidthLink <--> router21.in[0];
      router183.out[2] <--> VariableBandWidthLink <--> router191.in[0];
      router183.out[3] <--> VariableBandWidthLink <--> router192.in[0];
      router184.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router184.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router184.out[2] <--> VariableBandWidthLink <--> router71.in[0];
      router184.out[3] <--> VariableBandWidthLink <--> router72.in[0];
      router185.out[0] <--> VariableBandWidthLink <--> router58.in[0];
      router185.out[1] <--> VariableBandWidthLink <--> router59.in[0];
      router185.out[2] <--> VariableBandWidthLink <--> router186.in[1];
      router185.out[3] <--> VariableBandWidthLink <--> router187.in[1];
      router186.out[0] <--> VariableBandWidthLink <--> router182.in[2];
      router186.out[1] <--> VariableBandWidthLink <--> router185.in[2];
      router186.out[2] <--> VariableBandWidthLink <--> router196.in[0];
      router186.out[3] <--> VariableBandWidthLink <--> router197.in[0];
      router187.out[0] <--> VariableBandWidthLink <--> router182.in[3];
      router187.out[1] <--> VariableBandWidthLink <--> router185.in[3];
      router187.out[2] <--> VariableBandWidthLink <--> router198.in[0];
      router187.out[3] <--> VariableBandWidthLink <--> router199.in[0];
      router188.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router188.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router188.out[2] <--> VariableBandWidthLink <--> router80.in[0];
      router188.out[3] <--> VariableBandWidthLink <--> router112.in[0];
      router189.out[0] <--> VariableBandWidthLink <--> router22.in[0];
      router189.out[1] <--> VariableBandWidthLink <--> router23.in[0];
      router189.out[2] <--> VariableBandWidthLink <--> router191.in[1];
      router189.out[3] <--> VariableBandWidthLink <--> router192.in[1];
      router190.out[0] <--> VariableBandWidthLink <--> router60.in[0];
      router190.out[1] <--> VariableBandWidthLink <--> router61.in[0];
      router190.out[2] <--> VariableBandWidthLink <--> router194.in[0];
      router190.out[3] <--> VariableBandWidthLink <--> router195.in[0];
      router191.out[0] <--> VariableBandWidthLink <--> router183.in[2];
      router191.out[1] <--> VariableBandWidthLink <--> router189.in[2];
      router191.out[2] <--> VariableBandWidthLink <--> router64.in[1];
      router191.out[3] <--> VariableBandWidthLink <--> router65.in[1];
      router192.out[0] <--> VariableBandWidthLink <--> router183.in[3];
      router192.out[1] <--> VariableBandWidthLink <--> router189.in[3];
      router192.out[2] <--> VariableBandWidthLink <--> router66.in[1];
      router192.out[3] <--> VariableBandWidthLink <--> router67.in[1];
      router193.out[0] <--> VariableBandWidthLink <--> router62.in[0];
      router193.out[1] <--> VariableBandWidthLink <--> router63.in[0];
      router193.out[2] <--> VariableBandWidthLink <--> router194.in[1];
      router193.out[3] <--> VariableBandWidthLink <--> router195.in[1];
      router194.out[0] <--> VariableBandWidthLink <--> router190.in[2];
      router194.out[1] <--> VariableBandWidthLink <--> router193.in[2];
      router194.out[2] <--> VariableBandWidthLink <--> router196.in[1];
      router194.out[3] <--> VariableBandWidthLink <--> router197.in[1];
      router195.out[0] <--> VariableBandWidthLink <--> router190.in[3];
      router195.out[1] <--> VariableBandWidthLink <--> router193.in[3];
      router195.out[2] <--> VariableBandWidthLink <--> router198.in[1];
      router195.out[3] <--> VariableBandWidthLink <--> router199.in[1];
      router196.out[0] <--> VariableBandWidthLink <--> router186.in[2];
      router196.out[1] <--> VariableBandWidthLink <--> router194.in[2];
      router196.out[2] <--> VariableBandWidthLink <--> router200.in[1];
      router196.out[3] <--> VariableBandWidthLink <--> router201.in[1];
      router197.out[0] <--> VariableBandWidthLink <--> router186.in[3];
      router197.out[1] <--> VariableBandWidthLink <--> router194.in[3];
      router197.out[2] <--> VariableBandWidthLink <--> router202.in[1];
      router197.out[3] <--> VariableBandWidthLink <--> router203.in[1];
      router198.out[0] <--> VariableBandWidthLink <--> router187.in[2];
      router198.out[1] <--> VariableBandWidthLink <--> router195.in[2];
      router198.out[2] <--> VariableBandWidthLink <--> router204.in[1];
      router198.out[3] <--> VariableBandWidthLink <--> router205.in[1];
      router199.out[0] <--> VariableBandWidthLink <--> router187.in[3];
      router199.out[1] <--> VariableBandWidthLink <--> router195.in[3];
      router199.out[2] <--> VariableBandWidthLink <--> router206.in[1];
      router199.out[3] <--> VariableBandWidthLink <--> router207.in[1];
      router200.out[0] <--> VariableBandWidthLink <--> router176.in[2];
      router200.out[1] <--> VariableBandWidthLink <--> router196.in[2];
      router200.out[2] <--> VariableBandWidthLink <--> router208.in[1];
      router200.out[3] <--> VariableBandWidthLink <--> router209.in[1];
      router201.out[0] <--> VariableBandWidthLink <--> router176.in[3];
      router201.out[1] <--> VariableBandWidthLink <--> router196.in[3];
      router201.out[2] <--> VariableBandWidthLink <--> router210.in[1];
      router201.out[3] <--> VariableBandWidthLink <--> router211.in[1];
      router202.out[0] <--> VariableBandWidthLink <--> router177.in[2];
      router202.out[1] <--> VariableBandWidthLink <--> router197.in[2];
      router202.out[2] <--> VariableBandWidthLink <--> router212.in[1];
      router202.out[3] <--> VariableBandWidthLink <--> router213.in[1];
      router203.out[0] <--> VariableBandWidthLink <--> router177.in[3];
      router203.out[1] <--> VariableBandWidthLink <--> router197.in[3];
      router203.out[2] <--> VariableBandWidthLink <--> router214.in[1];
      router203.out[3] <--> VariableBandWidthLink <--> router215.in[1];
      router204.out[0] <--> VariableBandWidthLink <--> router178.in[2];
      router204.out[1] <--> VariableBandWidthLink <--> router198.in[2];
      router204.out[2] <--> VariableBandWidthLink <--> router216.in[1];
      router204.out[3] <--> VariableBandWidthLink <--> router217.in[1];
      router205.out[0] <--> VariableBandWidthLink <--> router178.in[3];
      router205.out[1] <--> VariableBandWidthLink <--> router198.in[3];
      router205.out[2] <--> VariableBandWidthLink <--> router218.in[1];
      router205.out[3] <--> VariableBandWidthLink <--> router219.in[1];
      router206.out[0] <--> VariableBandWidthLink <--> router179.in[2];
      router206.out[1] <--> VariableBandWidthLink <--> router199.in[2];
      router206.out[2] <--> VariableBandWidthLink <--> router220.in[1];
      router206.out[3] <--> VariableBandWidthLink <--> router221.in[1];
      router207.out[0] <--> VariableBandWidthLink <--> router179.in[3];
      router207.out[1] <--> VariableBandWidthLink <--> router199.in[3];
      router207.out[2] <--> VariableBandWidthLink <--> router222.in[1];
      router207.out[3] <--> VariableBandWidthLink <--> router223.in[1];
      router208.out[0] <--> VariableBandWidthLink <--> router152.in[2];
      router208.out[1] <--> VariableBandWidthLink <--> router200.in[2];
      router208.out[2] <--> VariableBandWidthLink <--> router224.in[1];
      router208.out[3] <--> VariableBandWidthLink <--> router225.in[1];
      router209.out[0] <--> VariableBandWidthLink <--> router152.in[3];
      router209.out[1] <--> VariableBandWidthLink <--> router200.in[3];
      router209.out[2] <--> VariableBandWidthLink <--> router226.in[1];
      router209.out[3] <--> VariableBandWidthLink <--> router227.in[1];
      router210.out[0] <--> VariableBandWidthLink <--> router153.in[2];
      router210.out[1] <--> VariableBandWidthLink <--> router201.in[2];
      router210.out[2] <--> VariableBandWidthLink <--> router228.in[1];
      router210.out[3] <--> VariableBandWidthLink <--> router229.in[1];
      router211.out[0] <--> VariableBandWidthLink <--> router153.in[3];
      router211.out[1] <--> VariableBandWidthLink <--> router201.in[3];
      router211.out[2] <--> VariableBandWidthLink <--> router230.in[1];
      router211.out[3] <--> VariableBandWidthLink <--> router231.in[1];
      router212.out[0] <--> VariableBandWidthLink <--> router154.in[2];
      router212.out[1] <--> VariableBandWidthLink <--> router202.in[2];
      router212.out[2] <--> VariableBandWidthLink <--> router232.in[1];
      router212.out[3] <--> VariableBandWidthLink <--> router233.in[1];
      router213.out[0] <--> VariableBandWidthLink <--> router154.in[3];
      router213.out[1] <--> VariableBandWidthLink <--> router202.in[3];
      router213.out[2] <--> VariableBandWidthLink <--> router234.in[1];
      router213.out[3] <--> VariableBandWidthLink <--> router235.in[1];
      router214.out[0] <--> VariableBandWidthLink <--> router155.in[2];
      router214.out[1] <--> VariableBandWidthLink <--> router203.in[2];
      router214.out[2] <--> VariableBandWidthLink <--> router236.in[1];
      router214.out[3] <--> VariableBandWidthLink <--> router237.in[1];
      router215.out[0] <--> VariableBandWidthLink <--> router155.in[3];
      router215.out[1] <--> VariableBandWidthLink <--> router203.in[3];
      router215.out[2] <--> VariableBandWidthLink <--> router238.in[1];
      router215.out[3] <--> VariableBandWidthLink <--> router239.in[1];
      router216.out[0] <--> VariableBandWidthLink <--> router156.in[2];
      router216.out[1] <--> VariableBandWidthLink <--> router204.in[2];
      router216.out[2] <--> VariableBandWidthLink <--> router240.in[1];
      router216.out[3] <--> VariableBandWidthLink <--> router241.in[1];
      router217.out[0] <--> VariableBandWidthLink <--> router156.in[3];
      router217.out[1] <--> VariableBandWidthLink <--> router204.in[3];
      router217.out[2] <--> VariableBandWidthLink <--> router242.in[1];
      router217.out[3] <--> VariableBandWidthLink <--> router243.in[1];
      router218.out[0] <--> VariableBandWidthLink <--> router157.in[2];
      router218.out[1] <--> VariableBandWidthLink <--> router205.in[2];
      router218.out[2] <--> VariableBandWidthLink <--> router244.in[1];
      router218.out[3] <--> VariableBandWidthLink <--> router245.in[1];
      router219.out[0] <--> VariableBandWidthLink <--> router157.in[3];
      router219.out[1] <--> VariableBandWidthLink <--> router205.in[3];
      router219.out[2] <--> VariableBandWidthLink <--> router246.in[1];
      router219.out[3] <--> VariableBandWidthLink <--> router247.in[1];
      router220.out[0] <--> VariableBandWidthLink <--> router158.in[2];
      router220.out[1] <--> VariableBandWidthLink <--> router206.in[2];
      router220.out[2] <--> VariableBandWidthLink <--> router248.in[1];
      router220.out[3] <--> VariableBandWidthLink <--> router249.in[1];
      router221.out[0] <--> VariableBandWidthLink <--> router158.in[3];
      router221.out[1] <--> VariableBandWidthLink <--> router206.in[3];
      router221.out[2] <--> VariableBandWidthLink <--> router250.in[1];
      router221.out[3] <--> VariableBandWidthLink <--> router251.in[1];
      router222.out[0] <--> VariableBandWidthLink <--> router159.in[2];
      router222.out[1] <--> VariableBandWidthLink <--> router207.in[2];
      router222.out[2] <--> VariableBandWidthLink <--> router252.in[1];
      router222.out[3] <--> VariableBandWidthLink <--> router253.in[1];
      router223.out[0] <--> VariableBandWidthLink <--> router159.in[3];
      router223.out[1] <--> VariableBandWidthLink <--> router207.in[3];
      router223.out[2] <--> VariableBandWidthLink <--> router254.in[1];
      router223.out[3] <--> VariableBandWidthLink <--> router255.in[1];
      router224.out[0] <--> VariableBandWidthLink <--> router96.in[2];
      router224.out[1] <--> VariableBandWidthLink <--> router208.in[2];
      router225.out[0] <--> VariableBandWidthLink <--> router96.in[3];
      router225.out[1] <--> VariableBandWidthLink <--> router208.in[3];
      router226.out[0] <--> VariableBandWidthLink <--> router97.in[2];
      router226.out[1] <--> VariableBandWidthLink <--> router209.in[2];
      router227.out[0] <--> VariableBandWidthLink <--> router97.in[3];
      router227.out[1] <--> VariableBandWidthLink <--> router209.in[3];
      router228.out[0] <--> VariableBandWidthLink <--> router98.in[2];
      router228.out[1] <--> VariableBandWidthLink <--> router210.in[2];
      router229.out[0] <--> VariableBandWidthLink <--> router98.in[3];
      router229.out[1] <--> VariableBandWidthLink <--> router210.in[3];
      router230.out[0] <--> VariableBandWidthLink <--> router99.in[2];
      router230.out[1] <--> VariableBandWidthLink <--> router211.in[2];
      router231.out[0] <--> VariableBandWidthLink <--> router99.in[3];
      router231.out[1] <--> VariableBandWidthLink <--> router211.in[3];
      router232.out[0] <--> VariableBandWidthLink <--> router100.in[2];
      router232.out[1] <--> VariableBandWidthLink <--> router212.in[2];
      router233.out[0] <--> VariableBandWidthLink <--> router100.in[3];
      router233.out[1] <--> VariableBandWidthLink <--> router212.in[3];
      router234.out[0] <--> VariableBandWidthLink <--> router101.in[2];
      router234.out[1] <--> VariableBandWidthLink <--> router213.in[2];
      router235.out[0] <--> VariableBandWidthLink <--> router101.in[3];
      router235.out[1] <--> VariableBandWidthLink <--> router213.in[3];
      router236.out[0] <--> VariableBandWidthLink <--> router102.in[2];
      router236.out[1] <--> VariableBandWidthLink <--> router214.in[2];
      router237.out[0] <--> VariableBandWidthLink <--> router102.in[3];
      router237.out[1] <--> VariableBandWidthLink <--> router214.in[3];
      router238.out[0] <--> VariableBandWidthLink <--> router103.in[2];
      router238.out[1] <--> VariableBandWidthLink <--> router215.in[2];
      router239.out[0] <--> VariableBandWidthLink <--> router103.in[3];
      router239.out[1] <--> VariableBandWidthLink <--> router215.in[3];
      router240.out[0] <--> VariableBandWidthLink <--> router104.in[2];
      router240.out[1] <--> VariableBandWidthLink <--> router216.in[2];
      router241.out[0] <--> VariableBandWidthLink <--> router104.in[3];
      router241.out[1] <--> VariableBandWidthLink <--> router216.in[3];
      router242.out[0] <--> VariableBandWidthLink <--> router105.in[2];
      router242.out[1] <--> VariableBandWidthLink <--> router217.in[2];
      router243.out[0] <--> VariableBandWidthLink <--> router105.in[3];
      router243.out[1] <--> VariableBandWidthLink <--> router217.in[3];
      router244.out[0] <--> VariableBandWidthLink <--> router106.in[2];
      router244.out[1] <--> VariableBandWidthLink <--> router218.in[2];
      router245.out[0] <--> VariableBandWidthLink <--> router106.in[3];
      router245.out[1] <--> VariableBandWidthLink <--> router218.in[3];
      router246.out[0] <--> VariableBandWidthLink <--> router107.in[2];
      router246.out[1] <--> VariableBandWidthLink <--> router219.in[2];
      router247.out[0] <--> VariableBandWidthLink <--> router107.in[3];
      router247.out[1] <--> VariableBandWidthLink <--> router219.in[3];
      router248.out[0] <--> VariableBandWidthLink <--> router108.in[2];
      router248.out[1] <--> VariableBandWidthLink <--> router220.in[2];
      router249.out[0] <--> VariableBandWidthLink <--> router108.in[3];
      router249.out[1] <--> VariableBandWidthLink <--> router220.in[3];
      router250.out[0] <--> VariableBandWidthLink <--> router109.in[2];
      router250.out[1] <--> VariableBandWidthLink <--> router221.in[2];
      router251.out[0] <--> VariableBandWidthLink <--> router109.in[3];
      router251.out[1] <--> VariableBandWidthLink <--> router221.in[3];
      router252.out[0] <--> VariableBandWidthLink <--> router110.in[2];
      router252.out[1] <--> VariableBandWidthLink <--> router222.in[2];
      router253.out[0] <--> VariableBandWidthLink <--> router110.in[3];
      router253.out[1] <--> VariableBandWidthLink <--> router222.in[3];
      router254.out[0] <--> VariableBandWidthLink <--> router111.in[2];
      router254.out[1] <--> VariableBandWidthLink <--> router223.in[2];
      router255.out[0] <--> VariableBandWidthLink <--> router111.in[3];
      router255.out[1] <--> VariableBandWidthLink <--> router223.in[3];
}
