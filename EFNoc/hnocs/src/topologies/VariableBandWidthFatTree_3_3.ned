// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidthFatTree_3_3
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
        numPorts = 2;
        @display("p=300, 100");
      gates:
        in[2];
        out[2];
    };
    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=350, 50");
    }

    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 6;
        @display("p=100, 200");
      gates:
        in[7];
        out[7];
    };

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
        numPorts = 2;
        @display("p=600, 100");
      gates:
        in[2];
        out[2];
    };
    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=650, 50");
    }

    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=700, 100");
      gates:
        in[2];
        out[2];
    };
    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=750, 50");
    }

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 6;
        @display("p=500, 200");
      gates:
        in[7];
        out[7];
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
        numPorts = 2;
        @display("p=1100, 100");
      gates:
        in[2];
        out[2];
    };
    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=1150, 50");
    }

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 6;
        @display("p=900, 200");
      gates:
        in[7];
        out[7];
    };

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 6;
        @display("p=100, 900");
      gates:
        in[7];
        out[7];
    };

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 6;
        @display("p=500, 900");
      gates:
        in[7];
        out[7];
    };

    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 6;
        @display("p=900, 900");
      gates:
        in[7];
        out[7];
    };

    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=1600, 100");
      gates:
        in[2];
        out[2];
    };
    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=1650, 50");
    }

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=1700, 100");
      gates:
        in[2];
        out[2];
    };
    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=1750, 50");
    }

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=1800, 100");
      gates:
        in[2];
        out[2];
    };
    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=1850, 50");
    }

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 6;
        @display("p=1600, 200");
      gates:
        in[7];
        out[7];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 2;
        @display("p=2000, 100");
      gates:
        in[2];
        out[2];
    };
    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=2050, 50");
    }

    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=2100, 100");
      gates:
        in[2];
        out[2];
    };
    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=2150, 50");
    }

    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=2200, 100");
      gates:
        in[2];
        out[2];
    };
    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=2250, 50");
    }

    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 6;
        @display("p=2000, 200");
      gates:
        in[7];
        out[7];
    };

    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=2400, 100");
      gates:
        in[2];
        out[2];
    };
    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=2450, 50");
    }

    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=2500, 100");
      gates:
        in[2];
        out[2];
    };
    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=2550, 50");
    }

    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=2600, 100");
      gates:
        in[2];
        out[2];
    };
    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=2650, 50");
    }

    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 6;
        @display("p=2400, 200");
      gates:
        in[7];
        out[7];
    };

    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 6;
        @display("p=1600, 900");
      gates:
        in[7];
        out[7];
    };

    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 6;
        @display("p=2000, 900");
      gates:
        in[7];
        out[7];
    };

    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 6;
        @display("p=2400, 900");
      gates:
        in[7];
        out[7];
    };

    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 2;
        @display("p=3100, 100");
      gates:
        in[2];
        out[2];
    };
    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=3150, 50");
    }

    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 2;
        @display("p=3200, 100");
      gates:
        in[2];
        out[2];
    };
    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=3250, 50");
    }

    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=3300, 100");
      gates:
        in[2];
        out[2];
    };
    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=3350, 50");
    }

    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 6;
        @display("p=3100, 200");
      gates:
        in[7];
        out[7];
    };

    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 2;
        @display("p=3500, 100");
      gates:
        in[2];
        out[2];
    };
    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=3550, 50");
    }

    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 2;
        @display("p=3600, 100");
      gates:
        in[2];
        out[2];
    };
    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=3650, 50");
    }

    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 2;
        @display("p=3700, 100");
      gates:
        in[2];
        out[2];
    };
    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=3750, 50");
    }

    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 6;
        @display("p=3500, 200");
      gates:
        in[7];
        out[7];
    };

    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 2;
        @display("p=3900, 100");
      gates:
        in[2];
        out[2];
    };
    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=3950, 50");
    }

    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 2;
        @display("p=4000, 100");
      gates:
        in[2];
        out[2];
    };
    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=4050, 50");
    }

    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 2;
        @display("p=4100, 100");
      gates:
        in[2];
        out[2];
    };
    core40 : <coreType> like NI_Ifc {
      parameters:
        id = 40;
        @display("p=4150, 50");
    }

    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 6;
        @display("p=3900, 200");
      gates:
        in[7];
        out[7];
    };

    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 6;
        @display("p=3100, 900");
      gates:
        in[7];
        out[7];
    };

    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 6;
        @display("p=3500, 900");
      gates:
        in[7];
        out[7];
    };

    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 6;
        @display("p=3900, 900");
      gates:
        in[7];
        out[7];
    };

    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 6;
        @display("p=100, 1200");
      gates:
        in[7];
        out[7];
    };

    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 6;
        @display("p=500, 1200");
      gates:
        in[7];
        out[7];
    };

    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 6;
        @display("p=900, 1200");
      gates:
        in[7];
        out[7];
    };

    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 6;
        @display("p=1600, 1200");
      gates:
        in[7];
        out[7];
    };

    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 6;
        @display("p=2000, 1200");
      gates:
        in[7];
        out[7];
    };

    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 6;
        @display("p=2400, 1200");
      gates:
        in[7];
        out[7];
    };

    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 6;
        @display("p=3100, 1200");
      gates:
        in[7];
        out[7];
    };

    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 6;
        @display("p=3500, 1200");
      gates:
        in[7];
        out[7];
    };

    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 6;
        @display("p=3900, 1200");
      gates:
        in[7];
        out[7];
    };

    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 2;
        @display("p=5500, 100");
      gates:
        in[2];
        out[2];
    };
    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=5550, 50");
    }

    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 2;
        @display("p=5600, 100");
      gates:
        in[2];
        out[2];
    };
    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=5650, 50");
    }

    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 2;
        @display("p=5700, 100");
      gates:
        in[2];
        out[2];
    };
    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=5750, 50");
    }

    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 6;
        @display("p=5500, 200");
      gates:
        in[7];
        out[7];
    };

    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 2;
        @display("p=5900, 100");
      gates:
        in[2];
        out[2];
    };
    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=5950, 50");
    }

    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 2;
        @display("p=6000, 100");
      gates:
        in[2];
        out[2];
    };
    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=6050, 50");
    }

    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 2;
        @display("p=6100, 100");
      gates:
        in[2];
        out[2];
    };
    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=6150, 50");
    }

    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 6;
        @display("p=5900, 200");
      gates:
        in[7];
        out[7];
    };

    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 2;
        @display("p=6300, 100");
      gates:
        in[2];
        out[2];
    };
    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=6350, 50");
    }

    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 2;
        @display("p=6400, 100");
      gates:
        in[2];
        out[2];
    };
    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=6450, 50");
    }

    router64 : <routerType> like Router_Ifc {
      parameters:
        id = 64;
        numPorts = 2;
        @display("p=6500, 100");
      gates:
        in[2];
        out[2];
    };
    core64 : <coreType> like NI_Ifc {
      parameters:
        id = 64;
        @display("p=6550, 50");
    }

    router65 : <routerType> like Router_Ifc {
      parameters:
        id = 65;
        numPorts = 6;
        @display("p=6300, 200");
      gates:
        in[7];
        out[7];
    };

    router66 : <routerType> like Router_Ifc {
      parameters:
        id = 66;
        numPorts = 6;
        @display("p=5500, 900");
      gates:
        in[7];
        out[7];
    };

    router67 : <routerType> like Router_Ifc {
      parameters:
        id = 67;
        numPorts = 6;
        @display("p=5900, 900");
      gates:
        in[7];
        out[7];
    };

    router68 : <routerType> like Router_Ifc {
      parameters:
        id = 68;
        numPorts = 6;
        @display("p=6300, 900");
      gates:
        in[7];
        out[7];
    };

    router69 : <routerType> like Router_Ifc {
      parameters:
        id = 69;
        numPorts = 2;
        @display("p=7000, 100");
      gates:
        in[2];
        out[2];
    };
    core69 : <coreType> like NI_Ifc {
      parameters:
        id = 69;
        @display("p=7050, 50");
    }

    router70 : <routerType> like Router_Ifc {
      parameters:
        id = 70;
        numPorts = 2;
        @display("p=7100, 100");
      gates:
        in[2];
        out[2];
    };
    core70 : <coreType> like NI_Ifc {
      parameters:
        id = 70;
        @display("p=7150, 50");
    }

    router71 : <routerType> like Router_Ifc {
      parameters:
        id = 71;
        numPorts = 2;
        @display("p=7200, 100");
      gates:
        in[2];
        out[2];
    };
    core71 : <coreType> like NI_Ifc {
      parameters:
        id = 71;
        @display("p=7250, 50");
    }

    router72 : <routerType> like Router_Ifc {
      parameters:
        id = 72;
        numPorts = 6;
        @display("p=7000, 200");
      gates:
        in[7];
        out[7];
    };

    router73 : <routerType> like Router_Ifc {
      parameters:
        id = 73;
        numPorts = 2;
        @display("p=7400, 100");
      gates:
        in[2];
        out[2];
    };
    core73 : <coreType> like NI_Ifc {
      parameters:
        id = 73;
        @display("p=7450, 50");
    }

    router74 : <routerType> like Router_Ifc {
      parameters:
        id = 74;
        numPorts = 2;
        @display("p=7500, 100");
      gates:
        in[2];
        out[2];
    };
    core74 : <coreType> like NI_Ifc {
      parameters:
        id = 74;
        @display("p=7550, 50");
    }

    router75 : <routerType> like Router_Ifc {
      parameters:
        id = 75;
        numPorts = 2;
        @display("p=7600, 100");
      gates:
        in[2];
        out[2];
    };
    core75 : <coreType> like NI_Ifc {
      parameters:
        id = 75;
        @display("p=7650, 50");
    }

    router76 : <routerType> like Router_Ifc {
      parameters:
        id = 76;
        numPorts = 6;
        @display("p=7400, 200");
      gates:
        in[7];
        out[7];
    };

    router77 : <routerType> like Router_Ifc {
      parameters:
        id = 77;
        numPorts = 2;
        @display("p=7800, 100");
      gates:
        in[2];
        out[2];
    };
    core77 : <coreType> like NI_Ifc {
      parameters:
        id = 77;
        @display("p=7850, 50");
    }

    router78 : <routerType> like Router_Ifc {
      parameters:
        id = 78;
        numPorts = 2;
        @display("p=7900, 100");
      gates:
        in[2];
        out[2];
    };
    core78 : <coreType> like NI_Ifc {
      parameters:
        id = 78;
        @display("p=7950, 50");
    }

    router79 : <routerType> like Router_Ifc {
      parameters:
        id = 79;
        numPorts = 2;
        @display("p=8000, 100");
      gates:
        in[2];
        out[2];
    };
    core79 : <coreType> like NI_Ifc {
      parameters:
        id = 79;
        @display("p=8050, 50");
    }

    router80 : <routerType> like Router_Ifc {
      parameters:
        id = 80;
        numPorts = 6;
        @display("p=7800, 200");
      gates:
        in[7];
        out[7];
    };

    router81 : <routerType> like Router_Ifc {
      parameters:
        id = 81;
        numPorts = 6;
        @display("p=7000, 900");
      gates:
        in[7];
        out[7];
    };

    router82 : <routerType> like Router_Ifc {
      parameters:
        id = 82;
        numPorts = 6;
        @display("p=7400, 900");
      gates:
        in[7];
        out[7];
    };

    router83 : <routerType> like Router_Ifc {
      parameters:
        id = 83;
        numPorts = 6;
        @display("p=7800, 900");
      gates:
        in[7];
        out[7];
    };

    router84 : <routerType> like Router_Ifc {
      parameters:
        id = 84;
        numPorts = 2;
        @display("p=8500, 100");
      gates:
        in[2];
        out[2];
    };
    core84 : <coreType> like NI_Ifc {
      parameters:
        id = 84;
        @display("p=8550, 50");
    }

    router85 : <routerType> like Router_Ifc {
      parameters:
        id = 85;
        numPorts = 2;
        @display("p=8600, 100");
      gates:
        in[2];
        out[2];
    };
    core85 : <coreType> like NI_Ifc {
      parameters:
        id = 85;
        @display("p=8650, 50");
    }

    router86 : <routerType> like Router_Ifc {
      parameters:
        id = 86;
        numPorts = 2;
        @display("p=8700, 100");
      gates:
        in[2];
        out[2];
    };
    core86 : <coreType> like NI_Ifc {
      parameters:
        id = 86;
        @display("p=8750, 50");
    }

    router87 : <routerType> like Router_Ifc {
      parameters:
        id = 87;
        numPorts = 6;
        @display("p=8500, 200");
      gates:
        in[7];
        out[7];
    };

    router88 : <routerType> like Router_Ifc {
      parameters:
        id = 88;
        numPorts = 2;
        @display("p=8900, 100");
      gates:
        in[2];
        out[2];
    };
    core88 : <coreType> like NI_Ifc {
      parameters:
        id = 88;
        @display("p=8950, 50");
    }

    router89 : <routerType> like Router_Ifc {
      parameters:
        id = 89;
        numPorts = 2;
        @display("p=9000, 100");
      gates:
        in[2];
        out[2];
    };
    core89 : <coreType> like NI_Ifc {
      parameters:
        id = 89;
        @display("p=9050, 50");
    }

    router90 : <routerType> like Router_Ifc {
      parameters:
        id = 90;
        numPorts = 2;
        @display("p=9100, 100");
      gates:
        in[2];
        out[2];
    };
    core90 : <coreType> like NI_Ifc {
      parameters:
        id = 90;
        @display("p=9150, 50");
    }

    router91 : <routerType> like Router_Ifc {
      parameters:
        id = 91;
        numPorts = 6;
        @display("p=8900, 200");
      gates:
        in[7];
        out[7];
    };

    router92 : <routerType> like Router_Ifc {
      parameters:
        id = 92;
        numPorts = 2;
        @display("p=9300, 100");
      gates:
        in[2];
        out[2];
    };
    core92 : <coreType> like NI_Ifc {
      parameters:
        id = 92;
        @display("p=9350, 50");
    }

    router93 : <routerType> like Router_Ifc {
      parameters:
        id = 93;
        numPorts = 2;
        @display("p=9400, 100");
      gates:
        in[2];
        out[2];
    };
    core93 : <coreType> like NI_Ifc {
      parameters:
        id = 93;
        @display("p=9450, 50");
    }

    router94 : <routerType> like Router_Ifc {
      parameters:
        id = 94;
        numPorts = 2;
        @display("p=9500, 100");
      gates:
        in[2];
        out[2];
    };
    core94 : <coreType> like NI_Ifc {
      parameters:
        id = 94;
        @display("p=9550, 50");
    }

    router95 : <routerType> like Router_Ifc {
      parameters:
        id = 95;
        numPorts = 6;
        @display("p=9300, 200");
      gates:
        in[7];
        out[7];
    };

    router96 : <routerType> like Router_Ifc {
      parameters:
        id = 96;
        numPorts = 6;
        @display("p=8500, 900");
      gates:
        in[7];
        out[7];
    };

    router97 : <routerType> like Router_Ifc {
      parameters:
        id = 97;
        numPorts = 6;
        @display("p=8900, 900");
      gates:
        in[7];
        out[7];
    };

    router98 : <routerType> like Router_Ifc {
      parameters:
        id = 98;
        numPorts = 6;
        @display("p=9300, 900");
      gates:
        in[7];
        out[7];
    };

    router99 : <routerType> like Router_Ifc {
      parameters:
        id = 99;
        numPorts = 6;
        @display("p=5500, 1200");
      gates:
        in[7];
        out[7];
    };

    router100 : <routerType> like Router_Ifc {
      parameters:
        id = 100;
        numPorts = 6;
        @display("p=5900, 1200");
      gates:
        in[7];
        out[7];
    };

    router101 : <routerType> like Router_Ifc {
      parameters:
        id = 101;
        numPorts = 6;
        @display("p=6300, 1200");
      gates:
        in[7];
        out[7];
    };

    router102 : <routerType> like Router_Ifc {
      parameters:
        id = 102;
        numPorts = 6;
        @display("p=7000, 1200");
      gates:
        in[7];
        out[7];
    };

    router103 : <routerType> like Router_Ifc {
      parameters:
        id = 103;
        numPorts = 6;
        @display("p=7400, 1200");
      gates:
        in[7];
        out[7];
    };

    router104 : <routerType> like Router_Ifc {
      parameters:
        id = 104;
        numPorts = 6;
        @display("p=7800, 1200");
      gates:
        in[7];
        out[7];
    };

    router105 : <routerType> like Router_Ifc {
      parameters:
        id = 105;
        numPorts = 6;
        @display("p=8500, 1200");
      gates:
        in[7];
        out[7];
    };

    router106 : <routerType> like Router_Ifc {
      parameters:
        id = 106;
        numPorts = 6;
        @display("p=8900, 1200");
      gates:
        in[7];
        out[7];
    };

    router107 : <routerType> like Router_Ifc {
      parameters:
        id = 107;
        numPorts = 6;
        @display("p=9300, 1200");
      gates:
        in[7];
        out[7];
    };

    router108 : <routerType> like Router_Ifc {
      parameters:
        id = 108;
        numPorts = 2;
        @display("p=10900, 100");
      gates:
        in[2];
        out[2];
    };
    core108 : <coreType> like NI_Ifc {
      parameters:
        id = 108;
        @display("p=10950, 50");
    }

    router109 : <routerType> like Router_Ifc {
      parameters:
        id = 109;
        numPorts = 2;
        @display("p=11000, 100");
      gates:
        in[2];
        out[2];
    };
    core109 : <coreType> like NI_Ifc {
      parameters:
        id = 109;
        @display("p=11050, 50");
    }

    router110 : <routerType> like Router_Ifc {
      parameters:
        id = 110;
        numPorts = 2;
        @display("p=11100, 100");
      gates:
        in[2];
        out[2];
    };
    core110 : <coreType> like NI_Ifc {
      parameters:
        id = 110;
        @display("p=11150, 50");
    }

    router111 : <routerType> like Router_Ifc {
      parameters:
        id = 111;
        numPorts = 6;
        @display("p=10900, 200");
      gates:
        in[7];
        out[7];
    };

    router112 : <routerType> like Router_Ifc {
      parameters:
        id = 112;
        numPorts = 2;
        @display("p=11300, 100");
      gates:
        in[2];
        out[2];
    };
    core112 : <coreType> like NI_Ifc {
      parameters:
        id = 112;
        @display("p=11350, 50");
    }

    router113 : <routerType> like Router_Ifc {
      parameters:
        id = 113;
        numPorts = 2;
        @display("p=11400, 100");
      gates:
        in[2];
        out[2];
    };
    core113 : <coreType> like NI_Ifc {
      parameters:
        id = 113;
        @display("p=11450, 50");
    }

    router114 : <routerType> like Router_Ifc {
      parameters:
        id = 114;
        numPorts = 2;
        @display("p=11500, 100");
      gates:
        in[2];
        out[2];
    };
    core114 : <coreType> like NI_Ifc {
      parameters:
        id = 114;
        @display("p=11550, 50");
    }

    router115 : <routerType> like Router_Ifc {
      parameters:
        id = 115;
        numPorts = 6;
        @display("p=11300, 200");
      gates:
        in[7];
        out[7];
    };

    router116 : <routerType> like Router_Ifc {
      parameters:
        id = 116;
        numPorts = 2;
        @display("p=11700, 100");
      gates:
        in[2];
        out[2];
    };
    core116 : <coreType> like NI_Ifc {
      parameters:
        id = 116;
        @display("p=11750, 50");
    }

    router117 : <routerType> like Router_Ifc {
      parameters:
        id = 117;
        numPorts = 2;
        @display("p=11800, 100");
      gates:
        in[2];
        out[2];
    };
    core117 : <coreType> like NI_Ifc {
      parameters:
        id = 117;
        @display("p=11850, 50");
    }

    router118 : <routerType> like Router_Ifc {
      parameters:
        id = 118;
        numPorts = 2;
        @display("p=11900, 100");
      gates:
        in[2];
        out[2];
    };
    core118 : <coreType> like NI_Ifc {
      parameters:
        id = 118;
        @display("p=11950, 50");
    }

    router119 : <routerType> like Router_Ifc {
      parameters:
        id = 119;
        numPorts = 6;
        @display("p=11700, 200");
      gates:
        in[7];
        out[7];
    };

    router120 : <routerType> like Router_Ifc {
      parameters:
        id = 120;
        numPorts = 6;
        @display("p=10900, 900");
      gates:
        in[7];
        out[7];
    };

    router121 : <routerType> like Router_Ifc {
      parameters:
        id = 121;
        numPorts = 6;
        @display("p=11300, 900");
      gates:
        in[7];
        out[7];
    };

    router122 : <routerType> like Router_Ifc {
      parameters:
        id = 122;
        numPorts = 6;
        @display("p=11700, 900");
      gates:
        in[7];
        out[7];
    };

    router123 : <routerType> like Router_Ifc {
      parameters:
        id = 123;
        numPorts = 2;
        @display("p=12400, 100");
      gates:
        in[2];
        out[2];
    };
    core123 : <coreType> like NI_Ifc {
      parameters:
        id = 123;
        @display("p=12450, 50");
    }

    router124 : <routerType> like Router_Ifc {
      parameters:
        id = 124;
        numPorts = 2;
        @display("p=12500, 100");
      gates:
        in[2];
        out[2];
    };
    core124 : <coreType> like NI_Ifc {
      parameters:
        id = 124;
        @display("p=12550, 50");
    }

    router125 : <routerType> like Router_Ifc {
      parameters:
        id = 125;
        numPorts = 2;
        @display("p=12600, 100");
      gates:
        in[2];
        out[2];
    };
    core125 : <coreType> like NI_Ifc {
      parameters:
        id = 125;
        @display("p=12650, 50");
    }

    router126 : <routerType> like Router_Ifc {
      parameters:
        id = 126;
        numPorts = 6;
        @display("p=12400, 200");
      gates:
        in[7];
        out[7];
    };

    router127 : <routerType> like Router_Ifc {
      parameters:
        id = 127;
        numPorts = 2;
        @display("p=12800, 100");
      gates:
        in[2];
        out[2];
    };
    core127 : <coreType> like NI_Ifc {
      parameters:
        id = 127;
        @display("p=12850, 50");
    }

    router128 : <routerType> like Router_Ifc {
      parameters:
        id = 128;
        numPorts = 2;
        @display("p=12900, 100");
      gates:
        in[2];
        out[2];
    };
    core128 : <coreType> like NI_Ifc {
      parameters:
        id = 128;
        @display("p=12950, 50");
    }

    router129 : <routerType> like Router_Ifc {
      parameters:
        id = 129;
        numPorts = 2;
        @display("p=13000, 100");
      gates:
        in[2];
        out[2];
    };
    core129 : <coreType> like NI_Ifc {
      parameters:
        id = 129;
        @display("p=13050, 50");
    }

    router130 : <routerType> like Router_Ifc {
      parameters:
        id = 130;
        numPorts = 6;
        @display("p=12800, 200");
      gates:
        in[7];
        out[7];
    };

    router131 : <routerType> like Router_Ifc {
      parameters:
        id = 131;
        numPorts = 2;
        @display("p=13200, 100");
      gates:
        in[2];
        out[2];
    };
    core131 : <coreType> like NI_Ifc {
      parameters:
        id = 131;
        @display("p=13250, 50");
    }

    router132 : <routerType> like Router_Ifc {
      parameters:
        id = 132;
        numPorts = 2;
        @display("p=13300, 100");
      gates:
        in[2];
        out[2];
    };
    core132 : <coreType> like NI_Ifc {
      parameters:
        id = 132;
        @display("p=13350, 50");
    }

    router133 : <routerType> like Router_Ifc {
      parameters:
        id = 133;
        numPorts = 2;
        @display("p=13400, 100");
      gates:
        in[2];
        out[2];
    };
    core133 : <coreType> like NI_Ifc {
      parameters:
        id = 133;
        @display("p=13450, 50");
    }

    router134 : <routerType> like Router_Ifc {
      parameters:
        id = 134;
        numPorts = 6;
        @display("p=13200, 200");
      gates:
        in[7];
        out[7];
    };

    router135 : <routerType> like Router_Ifc {
      parameters:
        id = 135;
        numPorts = 6;
        @display("p=12400, 900");
      gates:
        in[7];
        out[7];
    };

    router136 : <routerType> like Router_Ifc {
      parameters:
        id = 136;
        numPorts = 6;
        @display("p=12800, 900");
      gates:
        in[7];
        out[7];
    };

    router137 : <routerType> like Router_Ifc {
      parameters:
        id = 137;
        numPorts = 6;
        @display("p=13200, 900");
      gates:
        in[7];
        out[7];
    };

    router138 : <routerType> like Router_Ifc {
      parameters:
        id = 138;
        numPorts = 2;
        @display("p=13900, 100");
      gates:
        in[2];
        out[2];
    };
    core138 : <coreType> like NI_Ifc {
      parameters:
        id = 138;
        @display("p=13950, 50");
    }

    router139 : <routerType> like Router_Ifc {
      parameters:
        id = 139;
        numPorts = 2;
        @display("p=14000, 100");
      gates:
        in[2];
        out[2];
    };
    core139 : <coreType> like NI_Ifc {
      parameters:
        id = 139;
        @display("p=14050, 50");
    }

    router140 : <routerType> like Router_Ifc {
      parameters:
        id = 140;
        numPorts = 2;
        @display("p=14100, 100");
      gates:
        in[2];
        out[2];
    };
    core140 : <coreType> like NI_Ifc {
      parameters:
        id = 140;
        @display("p=14150, 50");
    }

    router141 : <routerType> like Router_Ifc {
      parameters:
        id = 141;
        numPorts = 6;
        @display("p=13900, 200");
      gates:
        in[7];
        out[7];
    };

    router142 : <routerType> like Router_Ifc {
      parameters:
        id = 142;
        numPorts = 2;
        @display("p=14300, 100");
      gates:
        in[2];
        out[2];
    };
    core142 : <coreType> like NI_Ifc {
      parameters:
        id = 142;
        @display("p=14350, 50");
    }

    router143 : <routerType> like Router_Ifc {
      parameters:
        id = 143;
        numPorts = 2;
        @display("p=14400, 100");
      gates:
        in[2];
        out[2];
    };
    core143 : <coreType> like NI_Ifc {
      parameters:
        id = 143;
        @display("p=14450, 50");
    }

    router144 : <routerType> like Router_Ifc {
      parameters:
        id = 144;
        numPorts = 2;
        @display("p=14500, 100");
      gates:
        in[2];
        out[2];
    };
    core144 : <coreType> like NI_Ifc {
      parameters:
        id = 144;
        @display("p=14550, 50");
    }

    router145 : <routerType> like Router_Ifc {
      parameters:
        id = 145;
        numPorts = 6;
        @display("p=14300, 200");
      gates:
        in[7];
        out[7];
    };

    router146 : <routerType> like Router_Ifc {
      parameters:
        id = 146;
        numPorts = 2;
        @display("p=14700, 100");
      gates:
        in[2];
        out[2];
    };
    core146 : <coreType> like NI_Ifc {
      parameters:
        id = 146;
        @display("p=14750, 50");
    }

    router147 : <routerType> like Router_Ifc {
      parameters:
        id = 147;
        numPorts = 2;
        @display("p=14800, 100");
      gates:
        in[2];
        out[2];
    };
    core147 : <coreType> like NI_Ifc {
      parameters:
        id = 147;
        @display("p=14850, 50");
    }

    router148 : <routerType> like Router_Ifc {
      parameters:
        id = 148;
        numPorts = 2;
        @display("p=14900, 100");
      gates:
        in[2];
        out[2];
    };
    core148 : <coreType> like NI_Ifc {
      parameters:
        id = 148;
        @display("p=14950, 50");
    }

    router149 : <routerType> like Router_Ifc {
      parameters:
        id = 149;
        numPorts = 6;
        @display("p=14700, 200");
      gates:
        in[7];
        out[7];
    };

    router150 : <routerType> like Router_Ifc {
      parameters:
        id = 150;
        numPorts = 6;
        @display("p=13900, 900");
      gates:
        in[7];
        out[7];
    };

    router151 : <routerType> like Router_Ifc {
      parameters:
        id = 151;
        numPorts = 6;
        @display("p=14300, 900");
      gates:
        in[7];
        out[7];
    };

    router152 : <routerType> like Router_Ifc {
      parameters:
        id = 152;
        numPorts = 6;
        @display("p=14700, 900");
      gates:
        in[7];
        out[7];
    };

    router153 : <routerType> like Router_Ifc {
      parameters:
        id = 153;
        numPorts = 6;
        @display("p=10900, 1200");
      gates:
        in[7];
        out[7];
    };

    router154 : <routerType> like Router_Ifc {
      parameters:
        id = 154;
        numPorts = 6;
        @display("p=11300, 1200");
      gates:
        in[7];
        out[7];
    };

    router155 : <routerType> like Router_Ifc {
      parameters:
        id = 155;
        numPorts = 6;
        @display("p=11700, 1200");
      gates:
        in[7];
        out[7];
    };

    router156 : <routerType> like Router_Ifc {
      parameters:
        id = 156;
        numPorts = 6;
        @display("p=12400, 1200");
      gates:
        in[7];
        out[7];
    };

    router157 : <routerType> like Router_Ifc {
      parameters:
        id = 157;
        numPorts = 6;
        @display("p=12800, 1200");
      gates:
        in[7];
        out[7];
    };

    router158 : <routerType> like Router_Ifc {
      parameters:
        id = 158;
        numPorts = 6;
        @display("p=13200, 1200");
      gates:
        in[7];
        out[7];
    };

    router159 : <routerType> like Router_Ifc {
      parameters:
        id = 159;
        numPorts = 6;
        @display("p=13900, 1200");
      gates:
        in[7];
        out[7];
    };

    router160 : <routerType> like Router_Ifc {
      parameters:
        id = 160;
        numPorts = 6;
        @display("p=14300, 1200");
      gates:
        in[7];
        out[7];
    };

    router161 : <routerType> like Router_Ifc {
      parameters:
        id = 161;
        numPorts = 6;
        @display("p=14700, 1200");
      gates:
        in[7];
        out[7];
    };

    router162 : <routerType> like Router_Ifc {
      parameters:
        id = 162;
        numPorts = 3;
        @display("p=100, 1500");
      gates:
        in[4];
        out[4];
    };

    router163 : <routerType> like Router_Ifc {
      parameters:
        id = 163;
        numPorts = 3;
        @display("p=500, 1500");
      gates:
        in[4];
        out[4];
    };

    router164 : <routerType> like Router_Ifc {
      parameters:
        id = 164;
        numPorts = 3;
        @display("p=900, 1500");
      gates:
        in[4];
        out[4];
    };

    router165 : <routerType> like Router_Ifc {
      parameters:
        id = 165;
        numPorts = 3;
        @display("p=1600, 1500");
      gates:
        in[4];
        out[4];
    };

    router166 : <routerType> like Router_Ifc {
      parameters:
        id = 166;
        numPorts = 3;
        @display("p=2000, 1500");
      gates:
        in[4];
        out[4];
    };

    router167 : <routerType> like Router_Ifc {
      parameters:
        id = 167;
        numPorts = 3;
        @display("p=2400, 1500");
      gates:
        in[4];
        out[4];
    };

    router168 : <routerType> like Router_Ifc {
      parameters:
        id = 168;
        numPorts = 3;
        @display("p=3100, 1500");
      gates:
        in[4];
        out[4];
    };

    router169 : <routerType> like Router_Ifc {
      parameters:
        id = 169;
        numPorts = 3;
        @display("p=3500, 1500");
      gates:
        in[4];
        out[4];
    };

    router170 : <routerType> like Router_Ifc {
      parameters:
        id = 170;
        numPorts = 3;
        @display("p=3900, 1500");
      gates:
        in[4];
        out[4];
    };

    router171 : <routerType> like Router_Ifc {
      parameters:
        id = 171;
        numPorts = 3;
        @display("p=5500, 1500");
      gates:
        in[4];
        out[4];
    };

    router172 : <routerType> like Router_Ifc {
      parameters:
        id = 172;
        numPorts = 3;
        @display("p=5900, 1500");
      gates:
        in[4];
        out[4];
    };

    router173 : <routerType> like Router_Ifc {
      parameters:
        id = 173;
        numPorts = 3;
        @display("p=6300, 1500");
      gates:
        in[4];
        out[4];
    };

    router174 : <routerType> like Router_Ifc {
      parameters:
        id = 174;
        numPorts = 3;
        @display("p=7000, 1500");
      gates:
        in[4];
        out[4];
    };

    router175 : <routerType> like Router_Ifc {
      parameters:
        id = 175;
        numPorts = 3;
        @display("p=7400, 1500");
      gates:
        in[4];
        out[4];
    };

    router176 : <routerType> like Router_Ifc {
      parameters:
        id = 176;
        numPorts = 3;
        @display("p=7800, 1500");
      gates:
        in[4];
        out[4];
    };

    router177 : <routerType> like Router_Ifc {
      parameters:
        id = 177;
        numPorts = 3;
        @display("p=8500, 1500");
      gates:
        in[4];
        out[4];
    };

    router178 : <routerType> like Router_Ifc {
      parameters:
        id = 178;
        numPorts = 3;
        @display("p=8900, 1500");
      gates:
        in[4];
        out[4];
    };

    router179 : <routerType> like Router_Ifc {
      parameters:
        id = 179;
        numPorts = 3;
        @display("p=9300, 1500");
      gates:
        in[4];
        out[4];
    };

    router180 : <routerType> like Router_Ifc {
      parameters:
        id = 180;
        numPorts = 3;
        @display("p=10900, 1500");
      gates:
        in[4];
        out[4];
    };

    router181 : <routerType> like Router_Ifc {
      parameters:
        id = 181;
        numPorts = 3;
        @display("p=11300, 1500");
      gates:
        in[4];
        out[4];
    };

    router182 : <routerType> like Router_Ifc {
      parameters:
        id = 182;
        numPorts = 3;
        @display("p=11700, 1500");
      gates:
        in[4];
        out[4];
    };

    router183 : <routerType> like Router_Ifc {
      parameters:
        id = 183;
        numPorts = 3;
        @display("p=12400, 1500");
      gates:
        in[4];
        out[4];
    };

    router184 : <routerType> like Router_Ifc {
      parameters:
        id = 184;
        numPorts = 3;
        @display("p=12800, 1500");
      gates:
        in[4];
        out[4];
    };

    router185 : <routerType> like Router_Ifc {
      parameters:
        id = 185;
        numPorts = 3;
        @display("p=13200, 1500");
      gates:
        in[4];
        out[4];
    };

    router186 : <routerType> like Router_Ifc {
      parameters:
        id = 186;
        numPorts = 3;
        @display("p=13900, 1500");
      gates:
        in[4];
        out[4];
    };

    router187 : <routerType> like Router_Ifc {
      parameters:
        id = 187;
        numPorts = 3;
        @display("p=14300, 1500");
      gates:
        in[4];
        out[4];
    };

    router188 : <routerType> like Router_Ifc {
      parameters:
        id = 188;
        numPorts = 3;
        @display("p=14700, 1500");
      gates:
        in[4];
        out[4];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router3.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router3.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router3.in[2];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router3.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router3.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router3.out[3] <--> VariableBandWidthLink <--> router12.in[0];
      router3.out[4] <--> VariableBandWidthLink <--> router13.in[0];
      router3.out[5] <--> VariableBandWidthLink <--> router14.in[0];
      router4.out[0] <--> VariableBandWidthLink <--> router7.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router7.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router7.in[2];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router7.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router7.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router7.out[3] <--> VariableBandWidthLink <--> router12.in[1];
      router7.out[4] <--> VariableBandWidthLink <--> router13.in[1];
      router7.out[5] <--> VariableBandWidthLink <--> router14.in[1];
      router8.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router11.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router11.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router11.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router11.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router11.out[3] <--> VariableBandWidthLink <--> router12.in[2];
      router11.out[4] <--> VariableBandWidthLink <--> router13.in[2];
      router11.out[5] <--> VariableBandWidthLink <--> router14.in[2];
      router12.out[0] <--> VariableBandWidthLink <--> router3.in[3];
      router12.out[1] <--> VariableBandWidthLink <--> router7.in[3];
      router12.out[2] <--> VariableBandWidthLink <--> router11.in[3];
      router12.out[3] <--> VariableBandWidthLink <--> router45.in[0];
      router12.out[4] <--> VariableBandWidthLink <--> router46.in[0];
      router12.out[5] <--> VariableBandWidthLink <--> router47.in[0];
      router13.out[0] <--> VariableBandWidthLink <--> router3.in[4];
      router13.out[1] <--> VariableBandWidthLink <--> router7.in[4];
      router13.out[2] <--> VariableBandWidthLink <--> router11.in[4];
      router13.out[3] <--> VariableBandWidthLink <--> router48.in[0];
      router13.out[4] <--> VariableBandWidthLink <--> router49.in[0];
      router13.out[5] <--> VariableBandWidthLink <--> router50.in[0];
      router14.out[0] <--> VariableBandWidthLink <--> router3.in[5];
      router14.out[1] <--> VariableBandWidthLink <--> router7.in[5];
      router14.out[2] <--> VariableBandWidthLink <--> router11.in[5];
      router14.out[3] <--> VariableBandWidthLink <--> router51.in[0];
      router14.out[4] <--> VariableBandWidthLink <--> router52.in[0];
      router14.out[5] <--> VariableBandWidthLink <--> router53.in[0];
      router15.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router18.in[1];
      router16.in[1] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[1] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router17.in[1] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[1] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router15.in[0];
      router18.out[1] <--> VariableBandWidthLink <--> router16.in[0];
      router18.out[2] <--> VariableBandWidthLink <--> router17.in[0];
      router18.out[3] <--> VariableBandWidthLink <--> router27.in[0];
      router18.out[4] <--> VariableBandWidthLink <--> router28.in[0];
      router18.out[5] <--> VariableBandWidthLink <--> router29.in[0];
      router19.out[0] <--> VariableBandWidthLink <--> router22.in[0];
      router19.in[1] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[1] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router22.in[1];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router22.in[2];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router19.in[0];
      router22.out[1] <--> VariableBandWidthLink <--> router20.in[0];
      router22.out[2] <--> VariableBandWidthLink <--> router21.in[0];
      router22.out[3] <--> VariableBandWidthLink <--> router27.in[1];
      router22.out[4] <--> VariableBandWidthLink <--> router28.in[1];
      router22.out[5] <--> VariableBandWidthLink <--> router29.in[1];
      router23.out[0] <--> VariableBandWidthLink <--> router26.in[0];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router26.in[1];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router26.in[2];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router23.in[0];
      router26.out[1] <--> VariableBandWidthLink <--> router24.in[0];
      router26.out[2] <--> VariableBandWidthLink <--> router25.in[0];
      router26.out[3] <--> VariableBandWidthLink <--> router27.in[2];
      router26.out[4] <--> VariableBandWidthLink <--> router28.in[2];
      router26.out[5] <--> VariableBandWidthLink <--> router29.in[2];
      router27.out[0] <--> VariableBandWidthLink <--> router18.in[3];
      router27.out[1] <--> VariableBandWidthLink <--> router22.in[3];
      router27.out[2] <--> VariableBandWidthLink <--> router26.in[3];
      router27.out[3] <--> VariableBandWidthLink <--> router45.in[1];
      router27.out[4] <--> VariableBandWidthLink <--> router46.in[1];
      router27.out[5] <--> VariableBandWidthLink <--> router47.in[1];
      router28.out[0] <--> VariableBandWidthLink <--> router18.in[4];
      router28.out[1] <--> VariableBandWidthLink <--> router22.in[4];
      router28.out[2] <--> VariableBandWidthLink <--> router26.in[4];
      router28.out[3] <--> VariableBandWidthLink <--> router48.in[1];
      router28.out[4] <--> VariableBandWidthLink <--> router49.in[1];
      router28.out[5] <--> VariableBandWidthLink <--> router50.in[1];
      router29.out[0] <--> VariableBandWidthLink <--> router18.in[5];
      router29.out[1] <--> VariableBandWidthLink <--> router22.in[5];
      router29.out[2] <--> VariableBandWidthLink <--> router26.in[5];
      router29.out[3] <--> VariableBandWidthLink <--> router51.in[1];
      router29.out[4] <--> VariableBandWidthLink <--> router52.in[1];
      router29.out[5] <--> VariableBandWidthLink <--> router53.in[1];
      router30.out[0] <--> VariableBandWidthLink <--> router33.in[0];
      router30.in[1] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[1] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router33.in[1];
      router31.in[1] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[1] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router33.in[2];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router30.in[0];
      router33.out[1] <--> VariableBandWidthLink <--> router31.in[0];
      router33.out[2] <--> VariableBandWidthLink <--> router32.in[0];
      router33.out[3] <--> VariableBandWidthLink <--> router42.in[0];
      router33.out[4] <--> VariableBandWidthLink <--> router43.in[0];
      router33.out[5] <--> VariableBandWidthLink <--> router44.in[0];
      router34.out[0] <--> VariableBandWidthLink <--> router37.in[0];
      router34.in[1] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[1] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router37.in[1];
      router35.in[1] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[1] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router37.in[2];
      router36.in[1] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[1] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router34.in[0];
      router37.out[1] <--> VariableBandWidthLink <--> router35.in[0];
      router37.out[2] <--> VariableBandWidthLink <--> router36.in[0];
      router37.out[3] <--> VariableBandWidthLink <--> router42.in[1];
      router37.out[4] <--> VariableBandWidthLink <--> router43.in[1];
      router37.out[5] <--> VariableBandWidthLink <--> router44.in[1];
      router38.out[0] <--> VariableBandWidthLink <--> router41.in[0];
      router38.in[1] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[1] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router41.in[1];
      router39.in[1] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[1] <--> VariableBandWidthLink <--> core39.in; 
      router40.out[0] <--> VariableBandWidthLink <--> router41.in[2];
      router40.in[1] <--> VariableBandWidthLink <--> core40.out; 
      router40.out[1] <--> VariableBandWidthLink <--> core40.in; 
      router41.out[0] <--> VariableBandWidthLink <--> router38.in[0];
      router41.out[1] <--> VariableBandWidthLink <--> router39.in[0];
      router41.out[2] <--> VariableBandWidthLink <--> router40.in[0];
      router41.out[3] <--> VariableBandWidthLink <--> router42.in[2];
      router41.out[4] <--> VariableBandWidthLink <--> router43.in[2];
      router41.out[5] <--> VariableBandWidthLink <--> router44.in[2];
      router42.out[0] <--> VariableBandWidthLink <--> router33.in[3];
      router42.out[1] <--> VariableBandWidthLink <--> router37.in[3];
      router42.out[2] <--> VariableBandWidthLink <--> router41.in[3];
      router42.out[3] <--> VariableBandWidthLink <--> router45.in[2];
      router42.out[4] <--> VariableBandWidthLink <--> router46.in[2];
      router42.out[5] <--> VariableBandWidthLink <--> router47.in[2];
      router43.out[0] <--> VariableBandWidthLink <--> router33.in[4];
      router43.out[1] <--> VariableBandWidthLink <--> router37.in[4];
      router43.out[2] <--> VariableBandWidthLink <--> router41.in[4];
      router43.out[3] <--> VariableBandWidthLink <--> router48.in[2];
      router43.out[4] <--> VariableBandWidthLink <--> router49.in[2];
      router43.out[5] <--> VariableBandWidthLink <--> router50.in[2];
      router44.out[0] <--> VariableBandWidthLink <--> router33.in[5];
      router44.out[1] <--> VariableBandWidthLink <--> router37.in[5];
      router44.out[2] <--> VariableBandWidthLink <--> router41.in[5];
      router44.out[3] <--> VariableBandWidthLink <--> router51.in[2];
      router44.out[4] <--> VariableBandWidthLink <--> router52.in[2];
      router44.out[5] <--> VariableBandWidthLink <--> router53.in[2];
      router45.out[0] <--> VariableBandWidthLink <--> router12.in[3];
      router45.out[1] <--> VariableBandWidthLink <--> router27.in[3];
      router45.out[2] <--> VariableBandWidthLink <--> router42.in[3];
      router45.out[3] <--> VariableBandWidthLink <--> router162.in[0];
      router45.out[4] <--> VariableBandWidthLink <--> router163.in[0];
      router45.out[5] <--> VariableBandWidthLink <--> router164.in[0];
      router46.out[0] <--> VariableBandWidthLink <--> router12.in[4];
      router46.out[1] <--> VariableBandWidthLink <--> router27.in[4];
      router46.out[2] <--> VariableBandWidthLink <--> router42.in[4];
      router46.out[3] <--> VariableBandWidthLink <--> router165.in[0];
      router46.out[4] <--> VariableBandWidthLink <--> router166.in[0];
      router46.out[5] <--> VariableBandWidthLink <--> router167.in[0];
      router47.out[0] <--> VariableBandWidthLink <--> router12.in[5];
      router47.out[1] <--> VariableBandWidthLink <--> router27.in[5];
      router47.out[2] <--> VariableBandWidthLink <--> router42.in[5];
      router47.out[3] <--> VariableBandWidthLink <--> router168.in[0];
      router47.out[4] <--> VariableBandWidthLink <--> router169.in[0];
      router47.out[5] <--> VariableBandWidthLink <--> router170.in[0];
      router48.out[0] <--> VariableBandWidthLink <--> router13.in[3];
      router48.out[1] <--> VariableBandWidthLink <--> router28.in[3];
      router48.out[2] <--> VariableBandWidthLink <--> router43.in[3];
      router48.out[3] <--> VariableBandWidthLink <--> router171.in[0];
      router48.out[4] <--> VariableBandWidthLink <--> router172.in[0];
      router48.out[5] <--> VariableBandWidthLink <--> router173.in[0];
      router49.out[0] <--> VariableBandWidthLink <--> router13.in[4];
      router49.out[1] <--> VariableBandWidthLink <--> router28.in[4];
      router49.out[2] <--> VariableBandWidthLink <--> router43.in[4];
      router49.out[3] <--> VariableBandWidthLink <--> router174.in[0];
      router49.out[4] <--> VariableBandWidthLink <--> router175.in[0];
      router49.out[5] <--> VariableBandWidthLink <--> router176.in[0];
      router50.out[0] <--> VariableBandWidthLink <--> router13.in[5];
      router50.out[1] <--> VariableBandWidthLink <--> router28.in[5];
      router50.out[2] <--> VariableBandWidthLink <--> router43.in[5];
      router50.out[3] <--> VariableBandWidthLink <--> router177.in[0];
      router50.out[4] <--> VariableBandWidthLink <--> router178.in[0];
      router50.out[5] <--> VariableBandWidthLink <--> router179.in[0];
      router51.out[0] <--> VariableBandWidthLink <--> router14.in[3];
      router51.out[1] <--> VariableBandWidthLink <--> router29.in[3];
      router51.out[2] <--> VariableBandWidthLink <--> router44.in[3];
      router51.out[3] <--> VariableBandWidthLink <--> router180.in[0];
      router51.out[4] <--> VariableBandWidthLink <--> router181.in[0];
      router51.out[5] <--> VariableBandWidthLink <--> router182.in[0];
      router52.out[0] <--> VariableBandWidthLink <--> router14.in[4];
      router52.out[1] <--> VariableBandWidthLink <--> router29.in[4];
      router52.out[2] <--> VariableBandWidthLink <--> router44.in[4];
      router52.out[3] <--> VariableBandWidthLink <--> router183.in[0];
      router52.out[4] <--> VariableBandWidthLink <--> router184.in[0];
      router52.out[5] <--> VariableBandWidthLink <--> router185.in[0];
      router53.out[0] <--> VariableBandWidthLink <--> router14.in[5];
      router53.out[1] <--> VariableBandWidthLink <--> router29.in[5];
      router53.out[2] <--> VariableBandWidthLink <--> router44.in[5];
      router53.out[3] <--> VariableBandWidthLink <--> router186.in[0];
      router53.out[4] <--> VariableBandWidthLink <--> router187.in[0];
      router53.out[5] <--> VariableBandWidthLink <--> router188.in[0];
      router54.out[0] <--> VariableBandWidthLink <--> router57.in[0];
      router54.in[1] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[1] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router57.in[1];
      router55.in[1] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[1] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router57.in[2];
      router56.in[1] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[1] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router54.in[0];
      router57.out[1] <--> VariableBandWidthLink <--> router55.in[0];
      router57.out[2] <--> VariableBandWidthLink <--> router56.in[0];
      router57.out[3] <--> VariableBandWidthLink <--> router66.in[0];
      router57.out[4] <--> VariableBandWidthLink <--> router67.in[0];
      router57.out[5] <--> VariableBandWidthLink <--> router68.in[0];
      router58.out[0] <--> VariableBandWidthLink <--> router61.in[0];
      router58.in[1] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[1] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router61.in[1];
      router59.in[1] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[1] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router61.in[2];
      router60.in[1] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[1] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router58.in[0];
      router61.out[1] <--> VariableBandWidthLink <--> router59.in[0];
      router61.out[2] <--> VariableBandWidthLink <--> router60.in[0];
      router61.out[3] <--> VariableBandWidthLink <--> router66.in[1];
      router61.out[4] <--> VariableBandWidthLink <--> router67.in[1];
      router61.out[5] <--> VariableBandWidthLink <--> router68.in[1];
      router62.out[0] <--> VariableBandWidthLink <--> router65.in[0];
      router62.in[1] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[1] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router65.in[1];
      router63.in[1] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[1] <--> VariableBandWidthLink <--> core63.in; 
      router64.out[0] <--> VariableBandWidthLink <--> router65.in[2];
      router64.in[1] <--> VariableBandWidthLink <--> core64.out; 
      router64.out[1] <--> VariableBandWidthLink <--> core64.in; 
      router65.out[0] <--> VariableBandWidthLink <--> router62.in[0];
      router65.out[1] <--> VariableBandWidthLink <--> router63.in[0];
      router65.out[2] <--> VariableBandWidthLink <--> router64.in[0];
      router65.out[3] <--> VariableBandWidthLink <--> router66.in[2];
      router65.out[4] <--> VariableBandWidthLink <--> router67.in[2];
      router65.out[5] <--> VariableBandWidthLink <--> router68.in[2];
      router66.out[0] <--> VariableBandWidthLink <--> router57.in[3];
      router66.out[1] <--> VariableBandWidthLink <--> router61.in[3];
      router66.out[2] <--> VariableBandWidthLink <--> router65.in[3];
      router66.out[3] <--> VariableBandWidthLink <--> router99.in[0];
      router66.out[4] <--> VariableBandWidthLink <--> router100.in[0];
      router66.out[5] <--> VariableBandWidthLink <--> router101.in[0];
      router67.out[0] <--> VariableBandWidthLink <--> router57.in[4];
      router67.out[1] <--> VariableBandWidthLink <--> router61.in[4];
      router67.out[2] <--> VariableBandWidthLink <--> router65.in[4];
      router67.out[3] <--> VariableBandWidthLink <--> router102.in[0];
      router67.out[4] <--> VariableBandWidthLink <--> router103.in[0];
      router67.out[5] <--> VariableBandWidthLink <--> router104.in[0];
      router68.out[0] <--> VariableBandWidthLink <--> router57.in[5];
      router68.out[1] <--> VariableBandWidthLink <--> router61.in[5];
      router68.out[2] <--> VariableBandWidthLink <--> router65.in[5];
      router68.out[3] <--> VariableBandWidthLink <--> router105.in[0];
      router68.out[4] <--> VariableBandWidthLink <--> router106.in[0];
      router68.out[5] <--> VariableBandWidthLink <--> router107.in[0];
      router69.out[0] <--> VariableBandWidthLink <--> router72.in[0];
      router69.in[1] <--> VariableBandWidthLink <--> core69.out; 
      router69.out[1] <--> VariableBandWidthLink <--> core69.in; 
      router70.out[0] <--> VariableBandWidthLink <--> router72.in[1];
      router70.in[1] <--> VariableBandWidthLink <--> core70.out; 
      router70.out[1] <--> VariableBandWidthLink <--> core70.in; 
      router71.out[0] <--> VariableBandWidthLink <--> router72.in[2];
      router71.in[1] <--> VariableBandWidthLink <--> core71.out; 
      router71.out[1] <--> VariableBandWidthLink <--> core71.in; 
      router72.out[0] <--> VariableBandWidthLink <--> router69.in[0];
      router72.out[1] <--> VariableBandWidthLink <--> router70.in[0];
      router72.out[2] <--> VariableBandWidthLink <--> router71.in[0];
      router72.out[3] <--> VariableBandWidthLink <--> router81.in[0];
      router72.out[4] <--> VariableBandWidthLink <--> router82.in[0];
      router72.out[5] <--> VariableBandWidthLink <--> router83.in[0];
      router73.out[0] <--> VariableBandWidthLink <--> router76.in[0];
      router73.in[1] <--> VariableBandWidthLink <--> core73.out; 
      router73.out[1] <--> VariableBandWidthLink <--> core73.in; 
      router74.out[0] <--> VariableBandWidthLink <--> router76.in[1];
      router74.in[1] <--> VariableBandWidthLink <--> core74.out; 
      router74.out[1] <--> VariableBandWidthLink <--> core74.in; 
      router75.out[0] <--> VariableBandWidthLink <--> router76.in[2];
      router75.in[1] <--> VariableBandWidthLink <--> core75.out; 
      router75.out[1] <--> VariableBandWidthLink <--> core75.in; 
      router76.out[0] <--> VariableBandWidthLink <--> router73.in[0];
      router76.out[1] <--> VariableBandWidthLink <--> router74.in[0];
      router76.out[2] <--> VariableBandWidthLink <--> router75.in[0];
      router76.out[3] <--> VariableBandWidthLink <--> router81.in[1];
      router76.out[4] <--> VariableBandWidthLink <--> router82.in[1];
      router76.out[5] <--> VariableBandWidthLink <--> router83.in[1];
      router77.out[0] <--> VariableBandWidthLink <--> router80.in[0];
      router77.in[1] <--> VariableBandWidthLink <--> core77.out; 
      router77.out[1] <--> VariableBandWidthLink <--> core77.in; 
      router78.out[0] <--> VariableBandWidthLink <--> router80.in[1];
      router78.in[1] <--> VariableBandWidthLink <--> core78.out; 
      router78.out[1] <--> VariableBandWidthLink <--> core78.in; 
      router79.out[0] <--> VariableBandWidthLink <--> router80.in[2];
      router79.in[1] <--> VariableBandWidthLink <--> core79.out; 
      router79.out[1] <--> VariableBandWidthLink <--> core79.in; 
      router80.out[0] <--> VariableBandWidthLink <--> router77.in[0];
      router80.out[1] <--> VariableBandWidthLink <--> router78.in[0];
      router80.out[2] <--> VariableBandWidthLink <--> router79.in[0];
      router80.out[3] <--> VariableBandWidthLink <--> router81.in[2];
      router80.out[4] <--> VariableBandWidthLink <--> router82.in[2];
      router80.out[5] <--> VariableBandWidthLink <--> router83.in[2];
      router81.out[0] <--> VariableBandWidthLink <--> router72.in[3];
      router81.out[1] <--> VariableBandWidthLink <--> router76.in[3];
      router81.out[2] <--> VariableBandWidthLink <--> router80.in[3];
      router81.out[3] <--> VariableBandWidthLink <--> router99.in[1];
      router81.out[4] <--> VariableBandWidthLink <--> router100.in[1];
      router81.out[5] <--> VariableBandWidthLink <--> router101.in[1];
      router82.out[0] <--> VariableBandWidthLink <--> router72.in[4];
      router82.out[1] <--> VariableBandWidthLink <--> router76.in[4];
      router82.out[2] <--> VariableBandWidthLink <--> router80.in[4];
      router82.out[3] <--> VariableBandWidthLink <--> router102.in[1];
      router82.out[4] <--> VariableBandWidthLink <--> router103.in[1];
      router82.out[5] <--> VariableBandWidthLink <--> router104.in[1];
      router83.out[0] <--> VariableBandWidthLink <--> router72.in[5];
      router83.out[1] <--> VariableBandWidthLink <--> router76.in[5];
      router83.out[2] <--> VariableBandWidthLink <--> router80.in[5];
      router83.out[3] <--> VariableBandWidthLink <--> router105.in[1];
      router83.out[4] <--> VariableBandWidthLink <--> router106.in[1];
      router83.out[5] <--> VariableBandWidthLink <--> router107.in[1];
      router84.out[0] <--> VariableBandWidthLink <--> router87.in[0];
      router84.in[1] <--> VariableBandWidthLink <--> core84.out; 
      router84.out[1] <--> VariableBandWidthLink <--> core84.in; 
      router85.out[0] <--> VariableBandWidthLink <--> router87.in[1];
      router85.in[1] <--> VariableBandWidthLink <--> core85.out; 
      router85.out[1] <--> VariableBandWidthLink <--> core85.in; 
      router86.out[0] <--> VariableBandWidthLink <--> router87.in[2];
      router86.in[1] <--> VariableBandWidthLink <--> core86.out; 
      router86.out[1] <--> VariableBandWidthLink <--> core86.in; 
      router87.out[0] <--> VariableBandWidthLink <--> router84.in[0];
      router87.out[1] <--> VariableBandWidthLink <--> router85.in[0];
      router87.out[2] <--> VariableBandWidthLink <--> router86.in[0];
      router87.out[3] <--> VariableBandWidthLink <--> router96.in[0];
      router87.out[4] <--> VariableBandWidthLink <--> router97.in[0];
      router87.out[5] <--> VariableBandWidthLink <--> router98.in[0];
      router88.out[0] <--> VariableBandWidthLink <--> router91.in[0];
      router88.in[1] <--> VariableBandWidthLink <--> core88.out; 
      router88.out[1] <--> VariableBandWidthLink <--> core88.in; 
      router89.out[0] <--> VariableBandWidthLink <--> router91.in[1];
      router89.in[1] <--> VariableBandWidthLink <--> core89.out; 
      router89.out[1] <--> VariableBandWidthLink <--> core89.in; 
      router90.out[0] <--> VariableBandWidthLink <--> router91.in[2];
      router90.in[1] <--> VariableBandWidthLink <--> core90.out; 
      router90.out[1] <--> VariableBandWidthLink <--> core90.in; 
      router91.out[0] <--> VariableBandWidthLink <--> router88.in[0];
      router91.out[1] <--> VariableBandWidthLink <--> router89.in[0];
      router91.out[2] <--> VariableBandWidthLink <--> router90.in[0];
      router91.out[3] <--> VariableBandWidthLink <--> router96.in[1];
      router91.out[4] <--> VariableBandWidthLink <--> router97.in[1];
      router91.out[5] <--> VariableBandWidthLink <--> router98.in[1];
      router92.out[0] <--> VariableBandWidthLink <--> router95.in[0];
      router92.in[1] <--> VariableBandWidthLink <--> core92.out; 
      router92.out[1] <--> VariableBandWidthLink <--> core92.in; 
      router93.out[0] <--> VariableBandWidthLink <--> router95.in[1];
      router93.in[1] <--> VariableBandWidthLink <--> core93.out; 
      router93.out[1] <--> VariableBandWidthLink <--> core93.in; 
      router94.out[0] <--> VariableBandWidthLink <--> router95.in[2];
      router94.in[1] <--> VariableBandWidthLink <--> core94.out; 
      router94.out[1] <--> VariableBandWidthLink <--> core94.in; 
      router95.out[0] <--> VariableBandWidthLink <--> router92.in[0];
      router95.out[1] <--> VariableBandWidthLink <--> router93.in[0];
      router95.out[2] <--> VariableBandWidthLink <--> router94.in[0];
      router95.out[3] <--> VariableBandWidthLink <--> router96.in[2];
      router95.out[4] <--> VariableBandWidthLink <--> router97.in[2];
      router95.out[5] <--> VariableBandWidthLink <--> router98.in[2];
      router96.out[0] <--> VariableBandWidthLink <--> router87.in[3];
      router96.out[1] <--> VariableBandWidthLink <--> router91.in[3];
      router96.out[2] <--> VariableBandWidthLink <--> router95.in[3];
      router96.out[3] <--> VariableBandWidthLink <--> router99.in[2];
      router96.out[4] <--> VariableBandWidthLink <--> router100.in[2];
      router96.out[5] <--> VariableBandWidthLink <--> router101.in[2];
      router97.out[0] <--> VariableBandWidthLink <--> router87.in[4];
      router97.out[1] <--> VariableBandWidthLink <--> router91.in[4];
      router97.out[2] <--> VariableBandWidthLink <--> router95.in[4];
      router97.out[3] <--> VariableBandWidthLink <--> router102.in[2];
      router97.out[4] <--> VariableBandWidthLink <--> router103.in[2];
      router97.out[5] <--> VariableBandWidthLink <--> router104.in[2];
      router98.out[0] <--> VariableBandWidthLink <--> router87.in[5];
      router98.out[1] <--> VariableBandWidthLink <--> router91.in[5];
      router98.out[2] <--> VariableBandWidthLink <--> router95.in[5];
      router98.out[3] <--> VariableBandWidthLink <--> router105.in[2];
      router98.out[4] <--> VariableBandWidthLink <--> router106.in[2];
      router98.out[5] <--> VariableBandWidthLink <--> router107.in[2];
      router99.out[0] <--> VariableBandWidthLink <--> router66.in[3];
      router99.out[1] <--> VariableBandWidthLink <--> router81.in[3];
      router99.out[2] <--> VariableBandWidthLink <--> router96.in[3];
      router99.out[3] <--> VariableBandWidthLink <--> router162.in[1];
      router99.out[4] <--> VariableBandWidthLink <--> router163.in[1];
      router99.out[5] <--> VariableBandWidthLink <--> router164.in[1];
      router100.out[0] <--> VariableBandWidthLink <--> router66.in[4];
      router100.out[1] <--> VariableBandWidthLink <--> router81.in[4];
      router100.out[2] <--> VariableBandWidthLink <--> router96.in[4];
      router100.out[3] <--> VariableBandWidthLink <--> router165.in[1];
      router100.out[4] <--> VariableBandWidthLink <--> router166.in[1];
      router100.out[5] <--> VariableBandWidthLink <--> router167.in[1];
      router101.out[0] <--> VariableBandWidthLink <--> router66.in[5];
      router101.out[1] <--> VariableBandWidthLink <--> router81.in[5];
      router101.out[2] <--> VariableBandWidthLink <--> router96.in[5];
      router101.out[3] <--> VariableBandWidthLink <--> router168.in[1];
      router101.out[4] <--> VariableBandWidthLink <--> router169.in[1];
      router101.out[5] <--> VariableBandWidthLink <--> router170.in[1];
      router102.out[0] <--> VariableBandWidthLink <--> router67.in[3];
      router102.out[1] <--> VariableBandWidthLink <--> router82.in[3];
      router102.out[2] <--> VariableBandWidthLink <--> router97.in[3];
      router102.out[3] <--> VariableBandWidthLink <--> router171.in[1];
      router102.out[4] <--> VariableBandWidthLink <--> router172.in[1];
      router102.out[5] <--> VariableBandWidthLink <--> router173.in[1];
      router103.out[0] <--> VariableBandWidthLink <--> router67.in[4];
      router103.out[1] <--> VariableBandWidthLink <--> router82.in[4];
      router103.out[2] <--> VariableBandWidthLink <--> router97.in[4];
      router103.out[3] <--> VariableBandWidthLink <--> router174.in[1];
      router103.out[4] <--> VariableBandWidthLink <--> router175.in[1];
      router103.out[5] <--> VariableBandWidthLink <--> router176.in[1];
      router104.out[0] <--> VariableBandWidthLink <--> router67.in[5];
      router104.out[1] <--> VariableBandWidthLink <--> router82.in[5];
      router104.out[2] <--> VariableBandWidthLink <--> router97.in[5];
      router104.out[3] <--> VariableBandWidthLink <--> router177.in[1];
      router104.out[4] <--> VariableBandWidthLink <--> router178.in[1];
      router104.out[5] <--> VariableBandWidthLink <--> router179.in[1];
      router105.out[0] <--> VariableBandWidthLink <--> router68.in[3];
      router105.out[1] <--> VariableBandWidthLink <--> router83.in[3];
      router105.out[2] <--> VariableBandWidthLink <--> router98.in[3];
      router105.out[3] <--> VariableBandWidthLink <--> router180.in[1];
      router105.out[4] <--> VariableBandWidthLink <--> router181.in[1];
      router105.out[5] <--> VariableBandWidthLink <--> router182.in[1];
      router106.out[0] <--> VariableBandWidthLink <--> router68.in[4];
      router106.out[1] <--> VariableBandWidthLink <--> router83.in[4];
      router106.out[2] <--> VariableBandWidthLink <--> router98.in[4];
      router106.out[3] <--> VariableBandWidthLink <--> router183.in[1];
      router106.out[4] <--> VariableBandWidthLink <--> router184.in[1];
      router106.out[5] <--> VariableBandWidthLink <--> router185.in[1];
      router107.out[0] <--> VariableBandWidthLink <--> router68.in[5];
      router107.out[1] <--> VariableBandWidthLink <--> router83.in[5];
      router107.out[2] <--> VariableBandWidthLink <--> router98.in[5];
      router107.out[3] <--> VariableBandWidthLink <--> router186.in[1];
      router107.out[4] <--> VariableBandWidthLink <--> router187.in[1];
      router107.out[5] <--> VariableBandWidthLink <--> router188.in[1];
      router108.out[0] <--> VariableBandWidthLink <--> router111.in[0];
      router108.in[1] <--> VariableBandWidthLink <--> core108.out; 
      router108.out[1] <--> VariableBandWidthLink <--> core108.in; 
      router109.out[0] <--> VariableBandWidthLink <--> router111.in[1];
      router109.in[1] <--> VariableBandWidthLink <--> core109.out; 
      router109.out[1] <--> VariableBandWidthLink <--> core109.in; 
      router110.out[0] <--> VariableBandWidthLink <--> router111.in[2];
      router110.in[1] <--> VariableBandWidthLink <--> core110.out; 
      router110.out[1] <--> VariableBandWidthLink <--> core110.in; 
      router111.out[0] <--> VariableBandWidthLink <--> router108.in[0];
      router111.out[1] <--> VariableBandWidthLink <--> router109.in[0];
      router111.out[2] <--> VariableBandWidthLink <--> router110.in[0];
      router111.out[3] <--> VariableBandWidthLink <--> router120.in[0];
      router111.out[4] <--> VariableBandWidthLink <--> router121.in[0];
      router111.out[5] <--> VariableBandWidthLink <--> router122.in[0];
      router112.out[0] <--> VariableBandWidthLink <--> router115.in[0];
      router112.in[1] <--> VariableBandWidthLink <--> core112.out; 
      router112.out[1] <--> VariableBandWidthLink <--> core112.in; 
      router113.out[0] <--> VariableBandWidthLink <--> router115.in[1];
      router113.in[1] <--> VariableBandWidthLink <--> core113.out; 
      router113.out[1] <--> VariableBandWidthLink <--> core113.in; 
      router114.out[0] <--> VariableBandWidthLink <--> router115.in[2];
      router114.in[1] <--> VariableBandWidthLink <--> core114.out; 
      router114.out[1] <--> VariableBandWidthLink <--> core114.in; 
      router115.out[0] <--> VariableBandWidthLink <--> router112.in[0];
      router115.out[1] <--> VariableBandWidthLink <--> router113.in[0];
      router115.out[2] <--> VariableBandWidthLink <--> router114.in[0];
      router115.out[3] <--> VariableBandWidthLink <--> router120.in[1];
      router115.out[4] <--> VariableBandWidthLink <--> router121.in[1];
      router115.out[5] <--> VariableBandWidthLink <--> router122.in[1];
      router116.out[0] <--> VariableBandWidthLink <--> router119.in[0];
      router116.in[1] <--> VariableBandWidthLink <--> core116.out; 
      router116.out[1] <--> VariableBandWidthLink <--> core116.in; 
      router117.out[0] <--> VariableBandWidthLink <--> router119.in[1];
      router117.in[1] <--> VariableBandWidthLink <--> core117.out; 
      router117.out[1] <--> VariableBandWidthLink <--> core117.in; 
      router118.out[0] <--> VariableBandWidthLink <--> router119.in[2];
      router118.in[1] <--> VariableBandWidthLink <--> core118.out; 
      router118.out[1] <--> VariableBandWidthLink <--> core118.in; 
      router119.out[0] <--> VariableBandWidthLink <--> router116.in[0];
      router119.out[1] <--> VariableBandWidthLink <--> router117.in[0];
      router119.out[2] <--> VariableBandWidthLink <--> router118.in[0];
      router119.out[3] <--> VariableBandWidthLink <--> router120.in[2];
      router119.out[4] <--> VariableBandWidthLink <--> router121.in[2];
      router119.out[5] <--> VariableBandWidthLink <--> router122.in[2];
      router120.out[0] <--> VariableBandWidthLink <--> router111.in[3];
      router120.out[1] <--> VariableBandWidthLink <--> router115.in[3];
      router120.out[2] <--> VariableBandWidthLink <--> router119.in[3];
      router120.out[3] <--> VariableBandWidthLink <--> router153.in[0];
      router120.out[4] <--> VariableBandWidthLink <--> router154.in[0];
      router120.out[5] <--> VariableBandWidthLink <--> router155.in[0];
      router121.out[0] <--> VariableBandWidthLink <--> router111.in[4];
      router121.out[1] <--> VariableBandWidthLink <--> router115.in[4];
      router121.out[2] <--> VariableBandWidthLink <--> router119.in[4];
      router121.out[3] <--> VariableBandWidthLink <--> router156.in[0];
      router121.out[4] <--> VariableBandWidthLink <--> router157.in[0];
      router121.out[5] <--> VariableBandWidthLink <--> router158.in[0];
      router122.out[0] <--> VariableBandWidthLink <--> router111.in[5];
      router122.out[1] <--> VariableBandWidthLink <--> router115.in[5];
      router122.out[2] <--> VariableBandWidthLink <--> router119.in[5];
      router122.out[3] <--> VariableBandWidthLink <--> router159.in[0];
      router122.out[4] <--> VariableBandWidthLink <--> router160.in[0];
      router122.out[5] <--> VariableBandWidthLink <--> router161.in[0];
      router123.out[0] <--> VariableBandWidthLink <--> router126.in[0];
      router123.in[1] <--> VariableBandWidthLink <--> core123.out; 
      router123.out[1] <--> VariableBandWidthLink <--> core123.in; 
      router124.out[0] <--> VariableBandWidthLink <--> router126.in[1];
      router124.in[1] <--> VariableBandWidthLink <--> core124.out; 
      router124.out[1] <--> VariableBandWidthLink <--> core124.in; 
      router125.out[0] <--> VariableBandWidthLink <--> router126.in[2];
      router125.in[1] <--> VariableBandWidthLink <--> core125.out; 
      router125.out[1] <--> VariableBandWidthLink <--> core125.in; 
      router126.out[0] <--> VariableBandWidthLink <--> router123.in[0];
      router126.out[1] <--> VariableBandWidthLink <--> router124.in[0];
      router126.out[2] <--> VariableBandWidthLink <--> router125.in[0];
      router126.out[3] <--> VariableBandWidthLink <--> router135.in[0];
      router126.out[4] <--> VariableBandWidthLink <--> router136.in[0];
      router126.out[5] <--> VariableBandWidthLink <--> router137.in[0];
      router127.out[0] <--> VariableBandWidthLink <--> router130.in[0];
      router127.in[1] <--> VariableBandWidthLink <--> core127.out; 
      router127.out[1] <--> VariableBandWidthLink <--> core127.in; 
      router128.out[0] <--> VariableBandWidthLink <--> router130.in[1];
      router128.in[1] <--> VariableBandWidthLink <--> core128.out; 
      router128.out[1] <--> VariableBandWidthLink <--> core128.in; 
      router129.out[0] <--> VariableBandWidthLink <--> router130.in[2];
      router129.in[1] <--> VariableBandWidthLink <--> core129.out; 
      router129.out[1] <--> VariableBandWidthLink <--> core129.in; 
      router130.out[0] <--> VariableBandWidthLink <--> router127.in[0];
      router130.out[1] <--> VariableBandWidthLink <--> router128.in[0];
      router130.out[2] <--> VariableBandWidthLink <--> router129.in[0];
      router130.out[3] <--> VariableBandWidthLink <--> router135.in[1];
      router130.out[4] <--> VariableBandWidthLink <--> router136.in[1];
      router130.out[5] <--> VariableBandWidthLink <--> router137.in[1];
      router131.out[0] <--> VariableBandWidthLink <--> router134.in[0];
      router131.in[1] <--> VariableBandWidthLink <--> core131.out; 
      router131.out[1] <--> VariableBandWidthLink <--> core131.in; 
      router132.out[0] <--> VariableBandWidthLink <--> router134.in[1];
      router132.in[1] <--> VariableBandWidthLink <--> core132.out; 
      router132.out[1] <--> VariableBandWidthLink <--> core132.in; 
      router133.out[0] <--> VariableBandWidthLink <--> router134.in[2];
      router133.in[1] <--> VariableBandWidthLink <--> core133.out; 
      router133.out[1] <--> VariableBandWidthLink <--> core133.in; 
      router134.out[0] <--> VariableBandWidthLink <--> router131.in[0];
      router134.out[1] <--> VariableBandWidthLink <--> router132.in[0];
      router134.out[2] <--> VariableBandWidthLink <--> router133.in[0];
      router134.out[3] <--> VariableBandWidthLink <--> router135.in[2];
      router134.out[4] <--> VariableBandWidthLink <--> router136.in[2];
      router134.out[5] <--> VariableBandWidthLink <--> router137.in[2];
      router135.out[0] <--> VariableBandWidthLink <--> router126.in[3];
      router135.out[1] <--> VariableBandWidthLink <--> router130.in[3];
      router135.out[2] <--> VariableBandWidthLink <--> router134.in[3];
      router135.out[3] <--> VariableBandWidthLink <--> router153.in[1];
      router135.out[4] <--> VariableBandWidthLink <--> router154.in[1];
      router135.out[5] <--> VariableBandWidthLink <--> router155.in[1];
      router136.out[0] <--> VariableBandWidthLink <--> router126.in[4];
      router136.out[1] <--> VariableBandWidthLink <--> router130.in[4];
      router136.out[2] <--> VariableBandWidthLink <--> router134.in[4];
      router136.out[3] <--> VariableBandWidthLink <--> router156.in[1];
      router136.out[4] <--> VariableBandWidthLink <--> router157.in[1];
      router136.out[5] <--> VariableBandWidthLink <--> router158.in[1];
      router137.out[0] <--> VariableBandWidthLink <--> router126.in[5];
      router137.out[1] <--> VariableBandWidthLink <--> router130.in[5];
      router137.out[2] <--> VariableBandWidthLink <--> router134.in[5];
      router137.out[3] <--> VariableBandWidthLink <--> router159.in[1];
      router137.out[4] <--> VariableBandWidthLink <--> router160.in[1];
      router137.out[5] <--> VariableBandWidthLink <--> router161.in[1];
      router138.out[0] <--> VariableBandWidthLink <--> router141.in[0];
      router138.in[1] <--> VariableBandWidthLink <--> core138.out; 
      router138.out[1] <--> VariableBandWidthLink <--> core138.in; 
      router139.out[0] <--> VariableBandWidthLink <--> router141.in[1];
      router139.in[1] <--> VariableBandWidthLink <--> core139.out; 
      router139.out[1] <--> VariableBandWidthLink <--> core139.in; 
      router140.out[0] <--> VariableBandWidthLink <--> router141.in[2];
      router140.in[1] <--> VariableBandWidthLink <--> core140.out; 
      router140.out[1] <--> VariableBandWidthLink <--> core140.in; 
      router141.out[0] <--> VariableBandWidthLink <--> router138.in[0];
      router141.out[1] <--> VariableBandWidthLink <--> router139.in[0];
      router141.out[2] <--> VariableBandWidthLink <--> router140.in[0];
      router141.out[3] <--> VariableBandWidthLink <--> router150.in[0];
      router141.out[4] <--> VariableBandWidthLink <--> router151.in[0];
      router141.out[5] <--> VariableBandWidthLink <--> router152.in[0];
      router142.out[0] <--> VariableBandWidthLink <--> router145.in[0];
      router142.in[1] <--> VariableBandWidthLink <--> core142.out; 
      router142.out[1] <--> VariableBandWidthLink <--> core142.in; 
      router143.out[0] <--> VariableBandWidthLink <--> router145.in[1];
      router143.in[1] <--> VariableBandWidthLink <--> core143.out; 
      router143.out[1] <--> VariableBandWidthLink <--> core143.in; 
      router144.out[0] <--> VariableBandWidthLink <--> router145.in[2];
      router144.in[1] <--> VariableBandWidthLink <--> core144.out; 
      router144.out[1] <--> VariableBandWidthLink <--> core144.in; 
      router145.out[0] <--> VariableBandWidthLink <--> router142.in[0];
      router145.out[1] <--> VariableBandWidthLink <--> router143.in[0];
      router145.out[2] <--> VariableBandWidthLink <--> router144.in[0];
      router145.out[3] <--> VariableBandWidthLink <--> router150.in[1];
      router145.out[4] <--> VariableBandWidthLink <--> router151.in[1];
      router145.out[5] <--> VariableBandWidthLink <--> router152.in[1];
      router146.out[0] <--> VariableBandWidthLink <--> router149.in[0];
      router146.in[1] <--> VariableBandWidthLink <--> core146.out; 
      router146.out[1] <--> VariableBandWidthLink <--> core146.in; 
      router147.out[0] <--> VariableBandWidthLink <--> router149.in[1];
      router147.in[1] <--> VariableBandWidthLink <--> core147.out; 
      router147.out[1] <--> VariableBandWidthLink <--> core147.in; 
      router148.out[0] <--> VariableBandWidthLink <--> router149.in[2];
      router148.in[1] <--> VariableBandWidthLink <--> core148.out; 
      router148.out[1] <--> VariableBandWidthLink <--> core148.in; 
      router149.out[0] <--> VariableBandWidthLink <--> router146.in[0];
      router149.out[1] <--> VariableBandWidthLink <--> router147.in[0];
      router149.out[2] <--> VariableBandWidthLink <--> router148.in[0];
      router149.out[3] <--> VariableBandWidthLink <--> router150.in[2];
      router149.out[4] <--> VariableBandWidthLink <--> router151.in[2];
      router149.out[5] <--> VariableBandWidthLink <--> router152.in[2];
      router150.out[0] <--> VariableBandWidthLink <--> router141.in[3];
      router150.out[1] <--> VariableBandWidthLink <--> router145.in[3];
      router150.out[2] <--> VariableBandWidthLink <--> router149.in[3];
      router150.out[3] <--> VariableBandWidthLink <--> router153.in[2];
      router150.out[4] <--> VariableBandWidthLink <--> router154.in[2];
      router150.out[5] <--> VariableBandWidthLink <--> router155.in[2];
      router151.out[0] <--> VariableBandWidthLink <--> router141.in[4];
      router151.out[1] <--> VariableBandWidthLink <--> router145.in[4];
      router151.out[2] <--> VariableBandWidthLink <--> router149.in[4];
      router151.out[3] <--> VariableBandWidthLink <--> router156.in[2];
      router151.out[4] <--> VariableBandWidthLink <--> router157.in[2];
      router151.out[5] <--> VariableBandWidthLink <--> router158.in[2];
      router152.out[0] <--> VariableBandWidthLink <--> router141.in[5];
      router152.out[1] <--> VariableBandWidthLink <--> router145.in[5];
      router152.out[2] <--> VariableBandWidthLink <--> router149.in[5];
      router152.out[3] <--> VariableBandWidthLink <--> router159.in[2];
      router152.out[4] <--> VariableBandWidthLink <--> router160.in[2];
      router152.out[5] <--> VariableBandWidthLink <--> router161.in[2];
      router153.out[0] <--> VariableBandWidthLink <--> router120.in[3];
      router153.out[1] <--> VariableBandWidthLink <--> router135.in[3];
      router153.out[2] <--> VariableBandWidthLink <--> router150.in[3];
      router153.out[3] <--> VariableBandWidthLink <--> router162.in[2];
      router153.out[4] <--> VariableBandWidthLink <--> router163.in[2];
      router153.out[5] <--> VariableBandWidthLink <--> router164.in[2];
      router154.out[0] <--> VariableBandWidthLink <--> router120.in[4];
      router154.out[1] <--> VariableBandWidthLink <--> router135.in[4];
      router154.out[2] <--> VariableBandWidthLink <--> router150.in[4];
      router154.out[3] <--> VariableBandWidthLink <--> router165.in[2];
      router154.out[4] <--> VariableBandWidthLink <--> router166.in[2];
      router154.out[5] <--> VariableBandWidthLink <--> router167.in[2];
      router155.out[0] <--> VariableBandWidthLink <--> router120.in[5];
      router155.out[1] <--> VariableBandWidthLink <--> router135.in[5];
      router155.out[2] <--> VariableBandWidthLink <--> router150.in[5];
      router155.out[3] <--> VariableBandWidthLink <--> router168.in[2];
      router155.out[4] <--> VariableBandWidthLink <--> router169.in[2];
      router155.out[5] <--> VariableBandWidthLink <--> router170.in[2];
      router156.out[0] <--> VariableBandWidthLink <--> router121.in[3];
      router156.out[1] <--> VariableBandWidthLink <--> router136.in[3];
      router156.out[2] <--> VariableBandWidthLink <--> router151.in[3];
      router156.out[3] <--> VariableBandWidthLink <--> router171.in[2];
      router156.out[4] <--> VariableBandWidthLink <--> router172.in[2];
      router156.out[5] <--> VariableBandWidthLink <--> router173.in[2];
      router157.out[0] <--> VariableBandWidthLink <--> router121.in[4];
      router157.out[1] <--> VariableBandWidthLink <--> router136.in[4];
      router157.out[2] <--> VariableBandWidthLink <--> router151.in[4];
      router157.out[3] <--> VariableBandWidthLink <--> router174.in[2];
      router157.out[4] <--> VariableBandWidthLink <--> router175.in[2];
      router157.out[5] <--> VariableBandWidthLink <--> router176.in[2];
      router158.out[0] <--> VariableBandWidthLink <--> router121.in[5];
      router158.out[1] <--> VariableBandWidthLink <--> router136.in[5];
      router158.out[2] <--> VariableBandWidthLink <--> router151.in[5];
      router158.out[3] <--> VariableBandWidthLink <--> router177.in[2];
      router158.out[4] <--> VariableBandWidthLink <--> router178.in[2];
      router158.out[5] <--> VariableBandWidthLink <--> router179.in[2];
      router159.out[0] <--> VariableBandWidthLink <--> router122.in[3];
      router159.out[1] <--> VariableBandWidthLink <--> router137.in[3];
      router159.out[2] <--> VariableBandWidthLink <--> router152.in[3];
      router159.out[3] <--> VariableBandWidthLink <--> router180.in[2];
      router159.out[4] <--> VariableBandWidthLink <--> router181.in[2];
      router159.out[5] <--> VariableBandWidthLink <--> router182.in[2];
      router160.out[0] <--> VariableBandWidthLink <--> router122.in[4];
      router160.out[1] <--> VariableBandWidthLink <--> router137.in[4];
      router160.out[2] <--> VariableBandWidthLink <--> router152.in[4];
      router160.out[3] <--> VariableBandWidthLink <--> router183.in[2];
      router160.out[4] <--> VariableBandWidthLink <--> router184.in[2];
      router160.out[5] <--> VariableBandWidthLink <--> router185.in[2];
      router161.out[0] <--> VariableBandWidthLink <--> router122.in[5];
      router161.out[1] <--> VariableBandWidthLink <--> router137.in[5];
      router161.out[2] <--> VariableBandWidthLink <--> router152.in[5];
      router161.out[3] <--> VariableBandWidthLink <--> router186.in[2];
      router161.out[4] <--> VariableBandWidthLink <--> router187.in[2];
      router161.out[5] <--> VariableBandWidthLink <--> router188.in[2];
      router162.out[0] <--> VariableBandWidthLink <--> router45.in[3];
      router162.out[1] <--> VariableBandWidthLink <--> router99.in[3];
      router162.out[2] <--> VariableBandWidthLink <--> router153.in[3];
      router163.out[0] <--> VariableBandWidthLink <--> router45.in[4];
      router163.out[1] <--> VariableBandWidthLink <--> router99.in[4];
      router163.out[2] <--> VariableBandWidthLink <--> router153.in[4];
      router164.out[0] <--> VariableBandWidthLink <--> router45.in[5];
      router164.out[1] <--> VariableBandWidthLink <--> router99.in[5];
      router164.out[2] <--> VariableBandWidthLink <--> router153.in[5];
      router165.out[0] <--> VariableBandWidthLink <--> router46.in[3];
      router165.out[1] <--> VariableBandWidthLink <--> router100.in[3];
      router165.out[2] <--> VariableBandWidthLink <--> router154.in[3];
      router166.out[0] <--> VariableBandWidthLink <--> router46.in[4];
      router166.out[1] <--> VariableBandWidthLink <--> router100.in[4];
      router166.out[2] <--> VariableBandWidthLink <--> router154.in[4];
      router167.out[0] <--> VariableBandWidthLink <--> router46.in[5];
      router167.out[1] <--> VariableBandWidthLink <--> router100.in[5];
      router167.out[2] <--> VariableBandWidthLink <--> router154.in[5];
      router168.out[0] <--> VariableBandWidthLink <--> router47.in[3];
      router168.out[1] <--> VariableBandWidthLink <--> router101.in[3];
      router168.out[2] <--> VariableBandWidthLink <--> router155.in[3];
      router169.out[0] <--> VariableBandWidthLink <--> router47.in[4];
      router169.out[1] <--> VariableBandWidthLink <--> router101.in[4];
      router169.out[2] <--> VariableBandWidthLink <--> router155.in[4];
      router170.out[0] <--> VariableBandWidthLink <--> router47.in[5];
      router170.out[1] <--> VariableBandWidthLink <--> router101.in[5];
      router170.out[2] <--> VariableBandWidthLink <--> router155.in[5];
      router171.out[0] <--> VariableBandWidthLink <--> router48.in[3];
      router171.out[1] <--> VariableBandWidthLink <--> router102.in[3];
      router171.out[2] <--> VariableBandWidthLink <--> router156.in[3];
      router172.out[0] <--> VariableBandWidthLink <--> router48.in[4];
      router172.out[1] <--> VariableBandWidthLink <--> router102.in[4];
      router172.out[2] <--> VariableBandWidthLink <--> router156.in[4];
      router173.out[0] <--> VariableBandWidthLink <--> router48.in[5];
      router173.out[1] <--> VariableBandWidthLink <--> router102.in[5];
      router173.out[2] <--> VariableBandWidthLink <--> router156.in[5];
      router174.out[0] <--> VariableBandWidthLink <--> router49.in[3];
      router174.out[1] <--> VariableBandWidthLink <--> router103.in[3];
      router174.out[2] <--> VariableBandWidthLink <--> router157.in[3];
      router175.out[0] <--> VariableBandWidthLink <--> router49.in[4];
      router175.out[1] <--> VariableBandWidthLink <--> router103.in[4];
      router175.out[2] <--> VariableBandWidthLink <--> router157.in[4];
      router176.out[0] <--> VariableBandWidthLink <--> router49.in[5];
      router176.out[1] <--> VariableBandWidthLink <--> router103.in[5];
      router176.out[2] <--> VariableBandWidthLink <--> router157.in[5];
      router177.out[0] <--> VariableBandWidthLink <--> router50.in[3];
      router177.out[1] <--> VariableBandWidthLink <--> router104.in[3];
      router177.out[2] <--> VariableBandWidthLink <--> router158.in[3];
      router178.out[0] <--> VariableBandWidthLink <--> router50.in[4];
      router178.out[1] <--> VariableBandWidthLink <--> router104.in[4];
      router178.out[2] <--> VariableBandWidthLink <--> router158.in[4];
      router179.out[0] <--> VariableBandWidthLink <--> router50.in[5];
      router179.out[1] <--> VariableBandWidthLink <--> router104.in[5];
      router179.out[2] <--> VariableBandWidthLink <--> router158.in[5];
      router180.out[0] <--> VariableBandWidthLink <--> router51.in[3];
      router180.out[1] <--> VariableBandWidthLink <--> router105.in[3];
      router180.out[2] <--> VariableBandWidthLink <--> router159.in[3];
      router181.out[0] <--> VariableBandWidthLink <--> router51.in[4];
      router181.out[1] <--> VariableBandWidthLink <--> router105.in[4];
      router181.out[2] <--> VariableBandWidthLink <--> router159.in[4];
      router182.out[0] <--> VariableBandWidthLink <--> router51.in[5];
      router182.out[1] <--> VariableBandWidthLink <--> router105.in[5];
      router182.out[2] <--> VariableBandWidthLink <--> router159.in[5];
      router183.out[0] <--> VariableBandWidthLink <--> router52.in[3];
      router183.out[1] <--> VariableBandWidthLink <--> router106.in[3];
      router183.out[2] <--> VariableBandWidthLink <--> router160.in[3];
      router184.out[0] <--> VariableBandWidthLink <--> router52.in[4];
      router184.out[1] <--> VariableBandWidthLink <--> router106.in[4];
      router184.out[2] <--> VariableBandWidthLink <--> router160.in[4];
      router185.out[0] <--> VariableBandWidthLink <--> router52.in[5];
      router185.out[1] <--> VariableBandWidthLink <--> router106.in[5];
      router185.out[2] <--> VariableBandWidthLink <--> router160.in[5];
      router186.out[0] <--> VariableBandWidthLink <--> router53.in[3];
      router186.out[1] <--> VariableBandWidthLink <--> router107.in[3];
      router186.out[2] <--> VariableBandWidthLink <--> router161.in[3];
      router187.out[0] <--> VariableBandWidthLink <--> router53.in[4];
      router187.out[1] <--> VariableBandWidthLink <--> router107.in[4];
      router187.out[2] <--> VariableBandWidthLink <--> router161.in[4];
      router188.out[0] <--> VariableBandWidthLink <--> router53.in[5];
      router188.out[1] <--> VariableBandWidthLink <--> router107.in[5];
      router188.out[2] <--> VariableBandWidthLink <--> router161.in[5];
}
