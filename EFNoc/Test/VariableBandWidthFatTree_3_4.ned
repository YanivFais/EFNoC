// Copyright Yaniv Fais,Tel Aviv University

package efnoc.fattree.S_64.SteadyRandom.L_0.Alpha_0.M_0;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthFatTree_3_4
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
        @display("p=300, 130");
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

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=400, 130");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=400, 100");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=600, 130");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=600, 100");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=700, 130");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=700, 100");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=800, 130");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=800, 100");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=900, 130");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=900, 100");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=1100, 130");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=1100, 100");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=1200, 130");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=1200, 100");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=1300, 130");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=1300, 100");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=1400, 130");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=1400, 100");
      gates:
        in[2];
        out[2];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=1600, 130");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=1600, 100");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=1700, 130");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=1700, 100");
      gates:
        in[2];
        out[2];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=1800, 130");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 2;
        @display("p=1800, 100");
      gates:
        in[2];
        out[2];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=1900, 130");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=1900, 100");
      gates:
        in[2];
        out[2];
    };

    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=2500, 130");
    }
    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=2500, 100");
      gates:
        in[2];
        out[2];
    };

    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=2600, 130");
    }
    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=2600, 100");
      gates:
        in[2];
        out[2];
    };

    core18 : <coreType> like NI_Ifc {
      parameters:
        id = 18;
        @display("p=2700, 130");
    }
    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 2;
        @display("p=2700, 100");
      gates:
        in[2];
        out[2];
    };

    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=2800, 130");
    }
    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 2;
        @display("p=2800, 100");
      gates:
        in[2];
        out[2];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=3000, 130");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=3000, 100");
      gates:
        in[2];
        out[2];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=3100, 130");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=3100, 100");
      gates:
        in[2];
        out[2];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=3200, 130");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 2;
        @display("p=3200, 100");
      gates:
        in[2];
        out[2];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=3300, 130");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=3300, 100");
      gates:
        in[2];
        out[2];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=3500, 130");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=3500, 100");
      gates:
        in[2];
        out[2];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=3600, 130");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=3600, 100");
      gates:
        in[2];
        out[2];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=3700, 130");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 2;
        @display("p=3700, 100");
      gates:
        in[2];
        out[2];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=3800, 130");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 2;
        @display("p=3800, 100");
      gates:
        in[2];
        out[2];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=4000, 130");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 2;
        @display("p=4000, 100");
      gates:
        in[2];
        out[2];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=4100, 130");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 2;
        @display("p=4100, 100");
      gates:
        in[2];
        out[2];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=4200, 130");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 2;
        @display("p=4200, 100");
      gates:
        in[2];
        out[2];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=4300, 130");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 2;
        @display("p=4300, 100");
      gates:
        in[2];
        out[2];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=4900, 130");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=4900, 100");
      gates:
        in[2];
        out[2];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=5000, 130");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 2;
        @display("p=5000, 100");
      gates:
        in[2];
        out[2];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=5100, 130");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 2;
        @display("p=5100, 100");
      gates:
        in[2];
        out[2];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=5200, 130");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 2;
        @display("p=5200, 100");
      gates:
        in[2];
        out[2];
    };

    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=5400, 130");
    }
    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 2;
        @display("p=5400, 100");
      gates:
        in[2];
        out[2];
    };

    core37 : <coreType> like NI_Ifc {
      parameters:
        id = 37;
        @display("p=5500, 130");
    }
    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 2;
        @display("p=5500, 100");
      gates:
        in[2];
        out[2];
    };

    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=5600, 130");
    }
    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 2;
        @display("p=5600, 100");
      gates:
        in[2];
        out[2];
    };

    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=5700, 130");
    }
    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 2;
        @display("p=5700, 100");
      gates:
        in[2];
        out[2];
    };

    core40 : <coreType> like NI_Ifc {
      parameters:
        id = 40;
        @display("p=5900, 130");
    }
    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 2;
        @display("p=5900, 100");
      gates:
        in[2];
        out[2];
    };

    core41 : <coreType> like NI_Ifc {
      parameters:
        id = 41;
        @display("p=6000, 130");
    }
    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 2;
        @display("p=6000, 100");
      gates:
        in[2];
        out[2];
    };

    core42 : <coreType> like NI_Ifc {
      parameters:
        id = 42;
        @display("p=6100, 130");
    }
    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 2;
        @display("p=6100, 100");
      gates:
        in[2];
        out[2];
    };

    core43 : <coreType> like NI_Ifc {
      parameters:
        id = 43;
        @display("p=6200, 130");
    }
    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 2;
        @display("p=6200, 100");
      gates:
        in[2];
        out[2];
    };

    core44 : <coreType> like NI_Ifc {
      parameters:
        id = 44;
        @display("p=6400, 130");
    }
    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 2;
        @display("p=6400, 100");
      gates:
        in[2];
        out[2];
    };

    core45 : <coreType> like NI_Ifc {
      parameters:
        id = 45;
        @display("p=6500, 130");
    }
    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 2;
        @display("p=6500, 100");
      gates:
        in[2];
        out[2];
    };

    core46 : <coreType> like NI_Ifc {
      parameters:
        id = 46;
        @display("p=6600, 130");
    }
    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 2;
        @display("p=6600, 100");
      gates:
        in[2];
        out[2];
    };

    core47 : <coreType> like NI_Ifc {
      parameters:
        id = 47;
        @display("p=6700, 130");
    }
    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 2;
        @display("p=6700, 100");
      gates:
        in[2];
        out[2];
    };

    core48 : <coreType> like NI_Ifc {
      parameters:
        id = 48;
        @display("p=7300, 130");
    }
    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 2;
        @display("p=7300, 100");
      gates:
        in[2];
        out[2];
    };

    core49 : <coreType> like NI_Ifc {
      parameters:
        id = 49;
        @display("p=7400, 130");
    }
    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 2;
        @display("p=7400, 100");
      gates:
        in[2];
        out[2];
    };

    core50 : <coreType> like NI_Ifc {
      parameters:
        id = 50;
        @display("p=7500, 130");
    }
    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 2;
        @display("p=7500, 100");
      gates:
        in[2];
        out[2];
    };

    core51 : <coreType> like NI_Ifc {
      parameters:
        id = 51;
        @display("p=7600, 130");
    }
    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 2;
        @display("p=7600, 100");
      gates:
        in[2];
        out[2];
    };

    core52 : <coreType> like NI_Ifc {
      parameters:
        id = 52;
        @display("p=7800, 130");
    }
    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 2;
        @display("p=7800, 100");
      gates:
        in[2];
        out[2];
    };

    core53 : <coreType> like NI_Ifc {
      parameters:
        id = 53;
        @display("p=7900, 130");
    }
    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 2;
        @display("p=7900, 100");
      gates:
        in[2];
        out[2];
    };

    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=8000, 130");
    }
    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 2;
        @display("p=8000, 100");
      gates:
        in[2];
        out[2];
    };

    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=8100, 130");
    }
    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 2;
        @display("p=8100, 100");
      gates:
        in[2];
        out[2];
    };

    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=8300, 130");
    }
    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 2;
        @display("p=8300, 100");
      gates:
        in[2];
        out[2];
    };

    core57 : <coreType> like NI_Ifc {
      parameters:
        id = 57;
        @display("p=8400, 130");
    }
    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 2;
        @display("p=8400, 100");
      gates:
        in[2];
        out[2];
    };

    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=8500, 130");
    }
    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 2;
        @display("p=8500, 100");
      gates:
        in[2];
        out[2];
    };

    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=8600, 130");
    }
    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 2;
        @display("p=8600, 100");
      gates:
        in[2];
        out[2];
    };

    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=8800, 130");
    }
    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 2;
        @display("p=8800, 100");
      gates:
        in[2];
        out[2];
    };

    core61 : <coreType> like NI_Ifc {
      parameters:
        id = 61;
        @display("p=8900, 130");
    }
    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 2;
        @display("p=8900, 100");
      gates:
        in[2];
        out[2];
    };

    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=9000, 130");
    }
    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 2;
        @display("p=9000, 100");
      gates:
        in[2];
        out[2];
    };

    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=9100, 130");
    }
    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 2;
        @display("p=9100, 100");
      gates:
        in[2];
        out[2];
    };

    core64 : <coreType> like NI_Ifc {
      parameters:
        id = 64;
        @display("p=11300, 130");
    }
    router64 : <routerType> like Router_Ifc {
      parameters:
        id = 64;
        numPorts = 2;
        @display("p=11300, 100");
      gates:
        in[2];
        out[2];
    };

    core65 : <coreType> like NI_Ifc {
      parameters:
        id = 65;
        @display("p=11400, 130");
    }
    router65 : <routerType> like Router_Ifc {
      parameters:
        id = 65;
        numPorts = 2;
        @display("p=11400, 100");
      gates:
        in[2];
        out[2];
    };

    core66 : <coreType> like NI_Ifc {
      parameters:
        id = 66;
        @display("p=11500, 130");
    }
    router66 : <routerType> like Router_Ifc {
      parameters:
        id = 66;
        numPorts = 2;
        @display("p=11500, 100");
      gates:
        in[2];
        out[2];
    };

    core67 : <coreType> like NI_Ifc {
      parameters:
        id = 67;
        @display("p=11600, 130");
    }
    router67 : <routerType> like Router_Ifc {
      parameters:
        id = 67;
        numPorts = 2;
        @display("p=11600, 100");
      gates:
        in[2];
        out[2];
    };

    core68 : <coreType> like NI_Ifc {
      parameters:
        id = 68;
        @display("p=11800, 130");
    }
    router68 : <routerType> like Router_Ifc {
      parameters:
        id = 68;
        numPorts = 2;
        @display("p=11800, 100");
      gates:
        in[2];
        out[2];
    };

    core69 : <coreType> like NI_Ifc {
      parameters:
        id = 69;
        @display("p=11900, 130");
    }
    router69 : <routerType> like Router_Ifc {
      parameters:
        id = 69;
        numPorts = 2;
        @display("p=11900, 100");
      gates:
        in[2];
        out[2];
    };

    core70 : <coreType> like NI_Ifc {
      parameters:
        id = 70;
        @display("p=12000, 130");
    }
    router70 : <routerType> like Router_Ifc {
      parameters:
        id = 70;
        numPorts = 2;
        @display("p=12000, 100");
      gates:
        in[2];
        out[2];
    };

    core71 : <coreType> like NI_Ifc {
      parameters:
        id = 71;
        @display("p=12100, 130");
    }
    router71 : <routerType> like Router_Ifc {
      parameters:
        id = 71;
        numPorts = 2;
        @display("p=12100, 100");
      gates:
        in[2];
        out[2];
    };

    core72 : <coreType> like NI_Ifc {
      parameters:
        id = 72;
        @display("p=12300, 130");
    }
    router72 : <routerType> like Router_Ifc {
      parameters:
        id = 72;
        numPorts = 2;
        @display("p=12300, 100");
      gates:
        in[2];
        out[2];
    };

    core73 : <coreType> like NI_Ifc {
      parameters:
        id = 73;
        @display("p=12400, 130");
    }
    router73 : <routerType> like Router_Ifc {
      parameters:
        id = 73;
        numPorts = 2;
        @display("p=12400, 100");
      gates:
        in[2];
        out[2];
    };

    core74 : <coreType> like NI_Ifc {
      parameters:
        id = 74;
        @display("p=12500, 130");
    }
    router74 : <routerType> like Router_Ifc {
      parameters:
        id = 74;
        numPorts = 2;
        @display("p=12500, 100");
      gates:
        in[2];
        out[2];
    };

    core75 : <coreType> like NI_Ifc {
      parameters:
        id = 75;
        @display("p=12600, 130");
    }
    router75 : <routerType> like Router_Ifc {
      parameters:
        id = 75;
        numPorts = 2;
        @display("p=12600, 100");
      gates:
        in[2];
        out[2];
    };

    core76 : <coreType> like NI_Ifc {
      parameters:
        id = 76;
        @display("p=12800, 130");
    }
    router76 : <routerType> like Router_Ifc {
      parameters:
        id = 76;
        numPorts = 2;
        @display("p=12800, 100");
      gates:
        in[2];
        out[2];
    };

    core77 : <coreType> like NI_Ifc {
      parameters:
        id = 77;
        @display("p=12900, 130");
    }
    router77 : <routerType> like Router_Ifc {
      parameters:
        id = 77;
        numPorts = 2;
        @display("p=12900, 100");
      gates:
        in[2];
        out[2];
    };

    core78 : <coreType> like NI_Ifc {
      parameters:
        id = 78;
        @display("p=13000, 130");
    }
    router78 : <routerType> like Router_Ifc {
      parameters:
        id = 78;
        numPorts = 2;
        @display("p=13000, 100");
      gates:
        in[2];
        out[2];
    };

    core79 : <coreType> like NI_Ifc {
      parameters:
        id = 79;
        @display("p=13100, 130");
    }
    router79 : <routerType> like Router_Ifc {
      parameters:
        id = 79;
        numPorts = 2;
        @display("p=13100, 100");
      gates:
        in[2];
        out[2];
    };

    core80 : <coreType> like NI_Ifc {
      parameters:
        id = 80;
        @display("p=13700, 130");
    }
    router80 : <routerType> like Router_Ifc {
      parameters:
        id = 80;
        numPorts = 2;
        @display("p=13700, 100");
      gates:
        in[2];
        out[2];
    };

    core81 : <coreType> like NI_Ifc {
      parameters:
        id = 81;
        @display("p=13800, 130");
    }
    router81 : <routerType> like Router_Ifc {
      parameters:
        id = 81;
        numPorts = 2;
        @display("p=13800, 100");
      gates:
        in[2];
        out[2];
    };

    core82 : <coreType> like NI_Ifc {
      parameters:
        id = 82;
        @display("p=13900, 130");
    }
    router82 : <routerType> like Router_Ifc {
      parameters:
        id = 82;
        numPorts = 2;
        @display("p=13900, 100");
      gates:
        in[2];
        out[2];
    };

    core83 : <coreType> like NI_Ifc {
      parameters:
        id = 83;
        @display("p=14000, 130");
    }
    router83 : <routerType> like Router_Ifc {
      parameters:
        id = 83;
        numPorts = 2;
        @display("p=14000, 100");
      gates:
        in[2];
        out[2];
    };

    core84 : <coreType> like NI_Ifc {
      parameters:
        id = 84;
        @display("p=14200, 130");
    }
    router84 : <routerType> like Router_Ifc {
      parameters:
        id = 84;
        numPorts = 2;
        @display("p=14200, 100");
      gates:
        in[2];
        out[2];
    };

    core85 : <coreType> like NI_Ifc {
      parameters:
        id = 85;
        @display("p=14300, 130");
    }
    router85 : <routerType> like Router_Ifc {
      parameters:
        id = 85;
        numPorts = 2;
        @display("p=14300, 100");
      gates:
        in[2];
        out[2];
    };

    core86 : <coreType> like NI_Ifc {
      parameters:
        id = 86;
        @display("p=14400, 130");
    }
    router86 : <routerType> like Router_Ifc {
      parameters:
        id = 86;
        numPorts = 2;
        @display("p=14400, 100");
      gates:
        in[2];
        out[2];
    };

    core87 : <coreType> like NI_Ifc {
      parameters:
        id = 87;
        @display("p=14500, 130");
    }
    router87 : <routerType> like Router_Ifc {
      parameters:
        id = 87;
        numPorts = 2;
        @display("p=14500, 100");
      gates:
        in[2];
        out[2];
    };

    core88 : <coreType> like NI_Ifc {
      parameters:
        id = 88;
        @display("p=14700, 130");
    }
    router88 : <routerType> like Router_Ifc {
      parameters:
        id = 88;
        numPorts = 2;
        @display("p=14700, 100");
      gates:
        in[2];
        out[2];
    };

    core89 : <coreType> like NI_Ifc {
      parameters:
        id = 89;
        @display("p=14800, 130");
    }
    router89 : <routerType> like Router_Ifc {
      parameters:
        id = 89;
        numPorts = 2;
        @display("p=14800, 100");
      gates:
        in[2];
        out[2];
    };

    core90 : <coreType> like NI_Ifc {
      parameters:
        id = 90;
        @display("p=14900, 130");
    }
    router90 : <routerType> like Router_Ifc {
      parameters:
        id = 90;
        numPorts = 2;
        @display("p=14900, 100");
      gates:
        in[2];
        out[2];
    };

    core91 : <coreType> like NI_Ifc {
      parameters:
        id = 91;
        @display("p=15000, 130");
    }
    router91 : <routerType> like Router_Ifc {
      parameters:
        id = 91;
        numPorts = 2;
        @display("p=15000, 100");
      gates:
        in[2];
        out[2];
    };

    core92 : <coreType> like NI_Ifc {
      parameters:
        id = 92;
        @display("p=15200, 130");
    }
    router92 : <routerType> like Router_Ifc {
      parameters:
        id = 92;
        numPorts = 2;
        @display("p=15200, 100");
      gates:
        in[2];
        out[2];
    };

    core93 : <coreType> like NI_Ifc {
      parameters:
        id = 93;
        @display("p=15300, 130");
    }
    router93 : <routerType> like Router_Ifc {
      parameters:
        id = 93;
        numPorts = 2;
        @display("p=15300, 100");
      gates:
        in[2];
        out[2];
    };

    core94 : <coreType> like NI_Ifc {
      parameters:
        id = 94;
        @display("p=15400, 130");
    }
    router94 : <routerType> like Router_Ifc {
      parameters:
        id = 94;
        numPorts = 2;
        @display("p=15400, 100");
      gates:
        in[2];
        out[2];
    };

    core95 : <coreType> like NI_Ifc {
      parameters:
        id = 95;
        @display("p=15500, 130");
    }
    router95 : <routerType> like Router_Ifc {
      parameters:
        id = 95;
        numPorts = 2;
        @display("p=15500, 100");
      gates:
        in[2];
        out[2];
    };

    core96 : <coreType> like NI_Ifc {
      parameters:
        id = 96;
        @display("p=16100, 130");
    }
    router96 : <routerType> like Router_Ifc {
      parameters:
        id = 96;
        numPorts = 2;
        @display("p=16100, 100");
      gates:
        in[2];
        out[2];
    };

    core97 : <coreType> like NI_Ifc {
      parameters:
        id = 97;
        @display("p=16200, 130");
    }
    router97 : <routerType> like Router_Ifc {
      parameters:
        id = 97;
        numPorts = 2;
        @display("p=16200, 100");
      gates:
        in[2];
        out[2];
    };

    core98 : <coreType> like NI_Ifc {
      parameters:
        id = 98;
        @display("p=16300, 130");
    }
    router98 : <routerType> like Router_Ifc {
      parameters:
        id = 98;
        numPorts = 2;
        @display("p=16300, 100");
      gates:
        in[2];
        out[2];
    };

    core99 : <coreType> like NI_Ifc {
      parameters:
        id = 99;
        @display("p=16400, 130");
    }
    router99 : <routerType> like Router_Ifc {
      parameters:
        id = 99;
        numPorts = 2;
        @display("p=16400, 100");
      gates:
        in[2];
        out[2];
    };

    core100 : <coreType> like NI_Ifc {
      parameters:
        id = 100;
        @display("p=16600, 130");
    }
    router100 : <routerType> like Router_Ifc {
      parameters:
        id = 100;
        numPorts = 2;
        @display("p=16600, 100");
      gates:
        in[2];
        out[2];
    };

    core101 : <coreType> like NI_Ifc {
      parameters:
        id = 101;
        @display("p=16700, 130");
    }
    router101 : <routerType> like Router_Ifc {
      parameters:
        id = 101;
        numPorts = 2;
        @display("p=16700, 100");
      gates:
        in[2];
        out[2];
    };

    core102 : <coreType> like NI_Ifc {
      parameters:
        id = 102;
        @display("p=16800, 130");
    }
    router102 : <routerType> like Router_Ifc {
      parameters:
        id = 102;
        numPorts = 2;
        @display("p=16800, 100");
      gates:
        in[2];
        out[2];
    };

    core103 : <coreType> like NI_Ifc {
      parameters:
        id = 103;
        @display("p=16900, 130");
    }
    router103 : <routerType> like Router_Ifc {
      parameters:
        id = 103;
        numPorts = 2;
        @display("p=16900, 100");
      gates:
        in[2];
        out[2];
    };

    core104 : <coreType> like NI_Ifc {
      parameters:
        id = 104;
        @display("p=17100, 130");
    }
    router104 : <routerType> like Router_Ifc {
      parameters:
        id = 104;
        numPorts = 2;
        @display("p=17100, 100");
      gates:
        in[2];
        out[2];
    };

    core105 : <coreType> like NI_Ifc {
      parameters:
        id = 105;
        @display("p=17200, 130");
    }
    router105 : <routerType> like Router_Ifc {
      parameters:
        id = 105;
        numPorts = 2;
        @display("p=17200, 100");
      gates:
        in[2];
        out[2];
    };

    core106 : <coreType> like NI_Ifc {
      parameters:
        id = 106;
        @display("p=17300, 130");
    }
    router106 : <routerType> like Router_Ifc {
      parameters:
        id = 106;
        numPorts = 2;
        @display("p=17300, 100");
      gates:
        in[2];
        out[2];
    };

    core107 : <coreType> like NI_Ifc {
      parameters:
        id = 107;
        @display("p=17400, 130");
    }
    router107 : <routerType> like Router_Ifc {
      parameters:
        id = 107;
        numPorts = 2;
        @display("p=17400, 100");
      gates:
        in[2];
        out[2];
    };

    core108 : <coreType> like NI_Ifc {
      parameters:
        id = 108;
        @display("p=17600, 130");
    }
    router108 : <routerType> like Router_Ifc {
      parameters:
        id = 108;
        numPorts = 2;
        @display("p=17600, 100");
      gates:
        in[2];
        out[2];
    };

    core109 : <coreType> like NI_Ifc {
      parameters:
        id = 109;
        @display("p=17700, 130");
    }
    router109 : <routerType> like Router_Ifc {
      parameters:
        id = 109;
        numPorts = 2;
        @display("p=17700, 100");
      gates:
        in[2];
        out[2];
    };

    core110 : <coreType> like NI_Ifc {
      parameters:
        id = 110;
        @display("p=17800, 130");
    }
    router110 : <routerType> like Router_Ifc {
      parameters:
        id = 110;
        numPorts = 2;
        @display("p=17800, 100");
      gates:
        in[2];
        out[2];
    };

    core111 : <coreType> like NI_Ifc {
      parameters:
        id = 111;
        @display("p=17900, 130");
    }
    router111 : <routerType> like Router_Ifc {
      parameters:
        id = 111;
        numPorts = 2;
        @display("p=17900, 100");
      gates:
        in[2];
        out[2];
    };

    core112 : <coreType> like NI_Ifc {
      parameters:
        id = 112;
        @display("p=18500, 130");
    }
    router112 : <routerType> like Router_Ifc {
      parameters:
        id = 112;
        numPorts = 2;
        @display("p=18500, 100");
      gates:
        in[2];
        out[2];
    };

    core113 : <coreType> like NI_Ifc {
      parameters:
        id = 113;
        @display("p=18600, 130");
    }
    router113 : <routerType> like Router_Ifc {
      parameters:
        id = 113;
        numPorts = 2;
        @display("p=18600, 100");
      gates:
        in[2];
        out[2];
    };

    core114 : <coreType> like NI_Ifc {
      parameters:
        id = 114;
        @display("p=18700, 130");
    }
    router114 : <routerType> like Router_Ifc {
      parameters:
        id = 114;
        numPorts = 2;
        @display("p=18700, 100");
      gates:
        in[2];
        out[2];
    };

    core115 : <coreType> like NI_Ifc {
      parameters:
        id = 115;
        @display("p=18800, 130");
    }
    router115 : <routerType> like Router_Ifc {
      parameters:
        id = 115;
        numPorts = 2;
        @display("p=18800, 100");
      gates:
        in[2];
        out[2];
    };

    core116 : <coreType> like NI_Ifc {
      parameters:
        id = 116;
        @display("p=19000, 130");
    }
    router116 : <routerType> like Router_Ifc {
      parameters:
        id = 116;
        numPorts = 2;
        @display("p=19000, 100");
      gates:
        in[2];
        out[2];
    };

    core117 : <coreType> like NI_Ifc {
      parameters:
        id = 117;
        @display("p=19100, 130");
    }
    router117 : <routerType> like Router_Ifc {
      parameters:
        id = 117;
        numPorts = 2;
        @display("p=19100, 100");
      gates:
        in[2];
        out[2];
    };

    core118 : <coreType> like NI_Ifc {
      parameters:
        id = 118;
        @display("p=19200, 130");
    }
    router118 : <routerType> like Router_Ifc {
      parameters:
        id = 118;
        numPorts = 2;
        @display("p=19200, 100");
      gates:
        in[2];
        out[2];
    };

    core119 : <coreType> like NI_Ifc {
      parameters:
        id = 119;
        @display("p=19300, 130");
    }
    router119 : <routerType> like Router_Ifc {
      parameters:
        id = 119;
        numPorts = 2;
        @display("p=19300, 100");
      gates:
        in[2];
        out[2];
    };

    core120 : <coreType> like NI_Ifc {
      parameters:
        id = 120;
        @display("p=19500, 130");
    }
    router120 : <routerType> like Router_Ifc {
      parameters:
        id = 120;
        numPorts = 2;
        @display("p=19500, 100");
      gates:
        in[2];
        out[2];
    };

    core121 : <coreType> like NI_Ifc {
      parameters:
        id = 121;
        @display("p=19600, 130");
    }
    router121 : <routerType> like Router_Ifc {
      parameters:
        id = 121;
        numPorts = 2;
        @display("p=19600, 100");
      gates:
        in[2];
        out[2];
    };

    core122 : <coreType> like NI_Ifc {
      parameters:
        id = 122;
        @display("p=19700, 130");
    }
    router122 : <routerType> like Router_Ifc {
      parameters:
        id = 122;
        numPorts = 2;
        @display("p=19700, 100");
      gates:
        in[2];
        out[2];
    };

    core123 : <coreType> like NI_Ifc {
      parameters:
        id = 123;
        @display("p=19800, 130");
    }
    router123 : <routerType> like Router_Ifc {
      parameters:
        id = 123;
        numPorts = 2;
        @display("p=19800, 100");
      gates:
        in[2];
        out[2];
    };

    core124 : <coreType> like NI_Ifc {
      parameters:
        id = 124;
        @display("p=20000, 130");
    }
    router124 : <routerType> like Router_Ifc {
      parameters:
        id = 124;
        numPorts = 2;
        @display("p=20000, 100");
      gates:
        in[2];
        out[2];
    };

    core125 : <coreType> like NI_Ifc {
      parameters:
        id = 125;
        @display("p=20100, 130");
    }
    router125 : <routerType> like Router_Ifc {
      parameters:
        id = 125;
        numPorts = 2;
        @display("p=20100, 100");
      gates:
        in[2];
        out[2];
    };

    core126 : <coreType> like NI_Ifc {
      parameters:
        id = 126;
        @display("p=20200, 130");
    }
    router126 : <routerType> like Router_Ifc {
      parameters:
        id = 126;
        numPorts = 2;
        @display("p=20200, 100");
      gates:
        in[2];
        out[2];
    };

    core127 : <coreType> like NI_Ifc {
      parameters:
        id = 127;
        @display("p=20300, 130");
    }
    router127 : <routerType> like Router_Ifc {
      parameters:
        id = 127;
        numPorts = 2;
        @display("p=20300, 100");
      gates:
        in[2];
        out[2];
    };

    core128 : <coreType> like NI_Ifc {
      parameters:
        id = 128;
        @display("p=22500, 130");
    }
    router128 : <routerType> like Router_Ifc {
      parameters:
        id = 128;
        numPorts = 2;
        @display("p=22500, 100");
      gates:
        in[2];
        out[2];
    };

    core129 : <coreType> like NI_Ifc {
      parameters:
        id = 129;
        @display("p=22600, 130");
    }
    router129 : <routerType> like Router_Ifc {
      parameters:
        id = 129;
        numPorts = 2;
        @display("p=22600, 100");
      gates:
        in[2];
        out[2];
    };

    core130 : <coreType> like NI_Ifc {
      parameters:
        id = 130;
        @display("p=22700, 130");
    }
    router130 : <routerType> like Router_Ifc {
      parameters:
        id = 130;
        numPorts = 2;
        @display("p=22700, 100");
      gates:
        in[2];
        out[2];
    };

    core131 : <coreType> like NI_Ifc {
      parameters:
        id = 131;
        @display("p=22800, 130");
    }
    router131 : <routerType> like Router_Ifc {
      parameters:
        id = 131;
        numPorts = 2;
        @display("p=22800, 100");
      gates:
        in[2];
        out[2];
    };

    core132 : <coreType> like NI_Ifc {
      parameters:
        id = 132;
        @display("p=23000, 130");
    }
    router132 : <routerType> like Router_Ifc {
      parameters:
        id = 132;
        numPorts = 2;
        @display("p=23000, 100");
      gates:
        in[2];
        out[2];
    };

    core133 : <coreType> like NI_Ifc {
      parameters:
        id = 133;
        @display("p=23100, 130");
    }
    router133 : <routerType> like Router_Ifc {
      parameters:
        id = 133;
        numPorts = 2;
        @display("p=23100, 100");
      gates:
        in[2];
        out[2];
    };

    core134 : <coreType> like NI_Ifc {
      parameters:
        id = 134;
        @display("p=23200, 130");
    }
    router134 : <routerType> like Router_Ifc {
      parameters:
        id = 134;
        numPorts = 2;
        @display("p=23200, 100");
      gates:
        in[2];
        out[2];
    };

    core135 : <coreType> like NI_Ifc {
      parameters:
        id = 135;
        @display("p=23300, 130");
    }
    router135 : <routerType> like Router_Ifc {
      parameters:
        id = 135;
        numPorts = 2;
        @display("p=23300, 100");
      gates:
        in[2];
        out[2];
    };

    core136 : <coreType> like NI_Ifc {
      parameters:
        id = 136;
        @display("p=23500, 130");
    }
    router136 : <routerType> like Router_Ifc {
      parameters:
        id = 136;
        numPorts = 2;
        @display("p=23500, 100");
      gates:
        in[2];
        out[2];
    };

    core137 : <coreType> like NI_Ifc {
      parameters:
        id = 137;
        @display("p=23600, 130");
    }
    router137 : <routerType> like Router_Ifc {
      parameters:
        id = 137;
        numPorts = 2;
        @display("p=23600, 100");
      gates:
        in[2];
        out[2];
    };

    core138 : <coreType> like NI_Ifc {
      parameters:
        id = 138;
        @display("p=23700, 130");
    }
    router138 : <routerType> like Router_Ifc {
      parameters:
        id = 138;
        numPorts = 2;
        @display("p=23700, 100");
      gates:
        in[2];
        out[2];
    };

    core139 : <coreType> like NI_Ifc {
      parameters:
        id = 139;
        @display("p=23800, 130");
    }
    router139 : <routerType> like Router_Ifc {
      parameters:
        id = 139;
        numPorts = 2;
        @display("p=23800, 100");
      gates:
        in[2];
        out[2];
    };

    core140 : <coreType> like NI_Ifc {
      parameters:
        id = 140;
        @display("p=24000, 130");
    }
    router140 : <routerType> like Router_Ifc {
      parameters:
        id = 140;
        numPorts = 2;
        @display("p=24000, 100");
      gates:
        in[2];
        out[2];
    };

    core141 : <coreType> like NI_Ifc {
      parameters:
        id = 141;
        @display("p=24100, 130");
    }
    router141 : <routerType> like Router_Ifc {
      parameters:
        id = 141;
        numPorts = 2;
        @display("p=24100, 100");
      gates:
        in[2];
        out[2];
    };

    core142 : <coreType> like NI_Ifc {
      parameters:
        id = 142;
        @display("p=24200, 130");
    }
    router142 : <routerType> like Router_Ifc {
      parameters:
        id = 142;
        numPorts = 2;
        @display("p=24200, 100");
      gates:
        in[2];
        out[2];
    };

    core143 : <coreType> like NI_Ifc {
      parameters:
        id = 143;
        @display("p=24300, 130");
    }
    router143 : <routerType> like Router_Ifc {
      parameters:
        id = 143;
        numPorts = 2;
        @display("p=24300, 100");
      gates:
        in[2];
        out[2];
    };

    core144 : <coreType> like NI_Ifc {
      parameters:
        id = 144;
        @display("p=24900, 130");
    }
    router144 : <routerType> like Router_Ifc {
      parameters:
        id = 144;
        numPorts = 2;
        @display("p=24900, 100");
      gates:
        in[2];
        out[2];
    };

    core145 : <coreType> like NI_Ifc {
      parameters:
        id = 145;
        @display("p=25000, 130");
    }
    router145 : <routerType> like Router_Ifc {
      parameters:
        id = 145;
        numPorts = 2;
        @display("p=25000, 100");
      gates:
        in[2];
        out[2];
    };

    core146 : <coreType> like NI_Ifc {
      parameters:
        id = 146;
        @display("p=25100, 130");
    }
    router146 : <routerType> like Router_Ifc {
      parameters:
        id = 146;
        numPorts = 2;
        @display("p=25100, 100");
      gates:
        in[2];
        out[2];
    };

    core147 : <coreType> like NI_Ifc {
      parameters:
        id = 147;
        @display("p=25200, 130");
    }
    router147 : <routerType> like Router_Ifc {
      parameters:
        id = 147;
        numPorts = 2;
        @display("p=25200, 100");
      gates:
        in[2];
        out[2];
    };

    core148 : <coreType> like NI_Ifc {
      parameters:
        id = 148;
        @display("p=25400, 130");
    }
    router148 : <routerType> like Router_Ifc {
      parameters:
        id = 148;
        numPorts = 2;
        @display("p=25400, 100");
      gates:
        in[2];
        out[2];
    };

    core149 : <coreType> like NI_Ifc {
      parameters:
        id = 149;
        @display("p=25500, 130");
    }
    router149 : <routerType> like Router_Ifc {
      parameters:
        id = 149;
        numPorts = 2;
        @display("p=25500, 100");
      gates:
        in[2];
        out[2];
    };

    core150 : <coreType> like NI_Ifc {
      parameters:
        id = 150;
        @display("p=25600, 130");
    }
    router150 : <routerType> like Router_Ifc {
      parameters:
        id = 150;
        numPorts = 2;
        @display("p=25600, 100");
      gates:
        in[2];
        out[2];
    };

    core151 : <coreType> like NI_Ifc {
      parameters:
        id = 151;
        @display("p=25700, 130");
    }
    router151 : <routerType> like Router_Ifc {
      parameters:
        id = 151;
        numPorts = 2;
        @display("p=25700, 100");
      gates:
        in[2];
        out[2];
    };

    core152 : <coreType> like NI_Ifc {
      parameters:
        id = 152;
        @display("p=25900, 130");
    }
    router152 : <routerType> like Router_Ifc {
      parameters:
        id = 152;
        numPorts = 2;
        @display("p=25900, 100");
      gates:
        in[2];
        out[2];
    };

    core153 : <coreType> like NI_Ifc {
      parameters:
        id = 153;
        @display("p=26000, 130");
    }
    router153 : <routerType> like Router_Ifc {
      parameters:
        id = 153;
        numPorts = 2;
        @display("p=26000, 100");
      gates:
        in[2];
        out[2];
    };

    core154 : <coreType> like NI_Ifc {
      parameters:
        id = 154;
        @display("p=26100, 130");
    }
    router154 : <routerType> like Router_Ifc {
      parameters:
        id = 154;
        numPorts = 2;
        @display("p=26100, 100");
      gates:
        in[2];
        out[2];
    };

    core155 : <coreType> like NI_Ifc {
      parameters:
        id = 155;
        @display("p=26200, 130");
    }
    router155 : <routerType> like Router_Ifc {
      parameters:
        id = 155;
        numPorts = 2;
        @display("p=26200, 100");
      gates:
        in[2];
        out[2];
    };

    core156 : <coreType> like NI_Ifc {
      parameters:
        id = 156;
        @display("p=26400, 130");
    }
    router156 : <routerType> like Router_Ifc {
      parameters:
        id = 156;
        numPorts = 2;
        @display("p=26400, 100");
      gates:
        in[2];
        out[2];
    };

    core157 : <coreType> like NI_Ifc {
      parameters:
        id = 157;
        @display("p=26500, 130");
    }
    router157 : <routerType> like Router_Ifc {
      parameters:
        id = 157;
        numPorts = 2;
        @display("p=26500, 100");
      gates:
        in[2];
        out[2];
    };

    core158 : <coreType> like NI_Ifc {
      parameters:
        id = 158;
        @display("p=26600, 130");
    }
    router158 : <routerType> like Router_Ifc {
      parameters:
        id = 158;
        numPorts = 2;
        @display("p=26600, 100");
      gates:
        in[2];
        out[2];
    };

    core159 : <coreType> like NI_Ifc {
      parameters:
        id = 159;
        @display("p=26700, 130");
    }
    router159 : <routerType> like Router_Ifc {
      parameters:
        id = 159;
        numPorts = 2;
        @display("p=26700, 100");
      gates:
        in[2];
        out[2];
    };

    core160 : <coreType> like NI_Ifc {
      parameters:
        id = 160;
        @display("p=27300, 130");
    }
    router160 : <routerType> like Router_Ifc {
      parameters:
        id = 160;
        numPorts = 2;
        @display("p=27300, 100");
      gates:
        in[2];
        out[2];
    };

    core161 : <coreType> like NI_Ifc {
      parameters:
        id = 161;
        @display("p=27400, 130");
    }
    router161 : <routerType> like Router_Ifc {
      parameters:
        id = 161;
        numPorts = 2;
        @display("p=27400, 100");
      gates:
        in[2];
        out[2];
    };

    core162 : <coreType> like NI_Ifc {
      parameters:
        id = 162;
        @display("p=27500, 130");
    }
    router162 : <routerType> like Router_Ifc {
      parameters:
        id = 162;
        numPorts = 2;
        @display("p=27500, 100");
      gates:
        in[2];
        out[2];
    };

    core163 : <coreType> like NI_Ifc {
      parameters:
        id = 163;
        @display("p=27600, 130");
    }
    router163 : <routerType> like Router_Ifc {
      parameters:
        id = 163;
        numPorts = 2;
        @display("p=27600, 100");
      gates:
        in[2];
        out[2];
    };

    core164 : <coreType> like NI_Ifc {
      parameters:
        id = 164;
        @display("p=27800, 130");
    }
    router164 : <routerType> like Router_Ifc {
      parameters:
        id = 164;
        numPorts = 2;
        @display("p=27800, 100");
      gates:
        in[2];
        out[2];
    };

    core165 : <coreType> like NI_Ifc {
      parameters:
        id = 165;
        @display("p=27900, 130");
    }
    router165 : <routerType> like Router_Ifc {
      parameters:
        id = 165;
        numPorts = 2;
        @display("p=27900, 100");
      gates:
        in[2];
        out[2];
    };

    core166 : <coreType> like NI_Ifc {
      parameters:
        id = 166;
        @display("p=28000, 130");
    }
    router166 : <routerType> like Router_Ifc {
      parameters:
        id = 166;
        numPorts = 2;
        @display("p=28000, 100");
      gates:
        in[2];
        out[2];
    };

    core167 : <coreType> like NI_Ifc {
      parameters:
        id = 167;
        @display("p=28100, 130");
    }
    router167 : <routerType> like Router_Ifc {
      parameters:
        id = 167;
        numPorts = 2;
        @display("p=28100, 100");
      gates:
        in[2];
        out[2];
    };

    core168 : <coreType> like NI_Ifc {
      parameters:
        id = 168;
        @display("p=28300, 130");
    }
    router168 : <routerType> like Router_Ifc {
      parameters:
        id = 168;
        numPorts = 2;
        @display("p=28300, 100");
      gates:
        in[2];
        out[2];
    };

    core169 : <coreType> like NI_Ifc {
      parameters:
        id = 169;
        @display("p=28400, 130");
    }
    router169 : <routerType> like Router_Ifc {
      parameters:
        id = 169;
        numPorts = 2;
        @display("p=28400, 100");
      gates:
        in[2];
        out[2];
    };

    core170 : <coreType> like NI_Ifc {
      parameters:
        id = 170;
        @display("p=28500, 130");
    }
    router170 : <routerType> like Router_Ifc {
      parameters:
        id = 170;
        numPorts = 2;
        @display("p=28500, 100");
      gates:
        in[2];
        out[2];
    };

    core171 : <coreType> like NI_Ifc {
      parameters:
        id = 171;
        @display("p=28600, 130");
    }
    router171 : <routerType> like Router_Ifc {
      parameters:
        id = 171;
        numPorts = 2;
        @display("p=28600, 100");
      gates:
        in[2];
        out[2];
    };

    core172 : <coreType> like NI_Ifc {
      parameters:
        id = 172;
        @display("p=28800, 130");
    }
    router172 : <routerType> like Router_Ifc {
      parameters:
        id = 172;
        numPorts = 2;
        @display("p=28800, 100");
      gates:
        in[2];
        out[2];
    };

    core173 : <coreType> like NI_Ifc {
      parameters:
        id = 173;
        @display("p=28900, 130");
    }
    router173 : <routerType> like Router_Ifc {
      parameters:
        id = 173;
        numPorts = 2;
        @display("p=28900, 100");
      gates:
        in[2];
        out[2];
    };

    core174 : <coreType> like NI_Ifc {
      parameters:
        id = 174;
        @display("p=29000, 130");
    }
    router174 : <routerType> like Router_Ifc {
      parameters:
        id = 174;
        numPorts = 2;
        @display("p=29000, 100");
      gates:
        in[2];
        out[2];
    };

    core175 : <coreType> like NI_Ifc {
      parameters:
        id = 175;
        @display("p=29100, 130");
    }
    router175 : <routerType> like Router_Ifc {
      parameters:
        id = 175;
        numPorts = 2;
        @display("p=29100, 100");
      gates:
        in[2];
        out[2];
    };

    core176 : <coreType> like NI_Ifc {
      parameters:
        id = 176;
        @display("p=29700, 130");
    }
    router176 : <routerType> like Router_Ifc {
      parameters:
        id = 176;
        numPorts = 2;
        @display("p=29700, 100");
      gates:
        in[2];
        out[2];
    };

    core177 : <coreType> like NI_Ifc {
      parameters:
        id = 177;
        @display("p=29800, 130");
    }
    router177 : <routerType> like Router_Ifc {
      parameters:
        id = 177;
        numPorts = 2;
        @display("p=29800, 100");
      gates:
        in[2];
        out[2];
    };

    core178 : <coreType> like NI_Ifc {
      parameters:
        id = 178;
        @display("p=29900, 130");
    }
    router178 : <routerType> like Router_Ifc {
      parameters:
        id = 178;
        numPorts = 2;
        @display("p=29900, 100");
      gates:
        in[2];
        out[2];
    };

    core179 : <coreType> like NI_Ifc {
      parameters:
        id = 179;
        @display("p=30000, 130");
    }
    router179 : <routerType> like Router_Ifc {
      parameters:
        id = 179;
        numPorts = 2;
        @display("p=30000, 100");
      gates:
        in[2];
        out[2];
    };

    core180 : <coreType> like NI_Ifc {
      parameters:
        id = 180;
        @display("p=30200, 130");
    }
    router180 : <routerType> like Router_Ifc {
      parameters:
        id = 180;
        numPorts = 2;
        @display("p=30200, 100");
      gates:
        in[2];
        out[2];
    };

    core181 : <coreType> like NI_Ifc {
      parameters:
        id = 181;
        @display("p=30300, 130");
    }
    router181 : <routerType> like Router_Ifc {
      parameters:
        id = 181;
        numPorts = 2;
        @display("p=30300, 100");
      gates:
        in[2];
        out[2];
    };

    core182 : <coreType> like NI_Ifc {
      parameters:
        id = 182;
        @display("p=30400, 130");
    }
    router182 : <routerType> like Router_Ifc {
      parameters:
        id = 182;
        numPorts = 2;
        @display("p=30400, 100");
      gates:
        in[2];
        out[2];
    };

    core183 : <coreType> like NI_Ifc {
      parameters:
        id = 183;
        @display("p=30500, 130");
    }
    router183 : <routerType> like Router_Ifc {
      parameters:
        id = 183;
        numPorts = 2;
        @display("p=30500, 100");
      gates:
        in[2];
        out[2];
    };

    core184 : <coreType> like NI_Ifc {
      parameters:
        id = 184;
        @display("p=30700, 130");
    }
    router184 : <routerType> like Router_Ifc {
      parameters:
        id = 184;
        numPorts = 2;
        @display("p=30700, 100");
      gates:
        in[2];
        out[2];
    };

    core185 : <coreType> like NI_Ifc {
      parameters:
        id = 185;
        @display("p=30800, 130");
    }
    router185 : <routerType> like Router_Ifc {
      parameters:
        id = 185;
        numPorts = 2;
        @display("p=30800, 100");
      gates:
        in[2];
        out[2];
    };

    core186 : <coreType> like NI_Ifc {
      parameters:
        id = 186;
        @display("p=30900, 130");
    }
    router186 : <routerType> like Router_Ifc {
      parameters:
        id = 186;
        numPorts = 2;
        @display("p=30900, 100");
      gates:
        in[2];
        out[2];
    };

    core187 : <coreType> like NI_Ifc {
      parameters:
        id = 187;
        @display("p=31000, 130");
    }
    router187 : <routerType> like Router_Ifc {
      parameters:
        id = 187;
        numPorts = 2;
        @display("p=31000, 100");
      gates:
        in[2];
        out[2];
    };

    core188 : <coreType> like NI_Ifc {
      parameters:
        id = 188;
        @display("p=31200, 130");
    }
    router188 : <routerType> like Router_Ifc {
      parameters:
        id = 188;
        numPorts = 2;
        @display("p=31200, 100");
      gates:
        in[2];
        out[2];
    };

    core189 : <coreType> like NI_Ifc {
      parameters:
        id = 189;
        @display("p=31300, 130");
    }
    router189 : <routerType> like Router_Ifc {
      parameters:
        id = 189;
        numPorts = 2;
        @display("p=31300, 100");
      gates:
        in[2];
        out[2];
    };

    core190 : <coreType> like NI_Ifc {
      parameters:
        id = 190;
        @display("p=31400, 130");
    }
    router190 : <routerType> like Router_Ifc {
      parameters:
        id = 190;
        numPorts = 2;
        @display("p=31400, 100");
      gates:
        in[2];
        out[2];
    };

    core191 : <coreType> like NI_Ifc {
      parameters:
        id = 191;
        @display("p=31500, 130");
    }
    router191 : <routerType> like Router_Ifc {
      parameters:
        id = 191;
        numPorts = 2;
        @display("p=31500, 100");
      gates:
        in[2];
        out[2];
    };

    core192 : <coreType> like NI_Ifc {
      parameters:
        id = 192;
        @display("p=33700, 130");
    }
    router192 : <routerType> like Router_Ifc {
      parameters:
        id = 192;
        numPorts = 2;
        @display("p=33700, 100");
      gates:
        in[2];
        out[2];
    };

    core193 : <coreType> like NI_Ifc {
      parameters:
        id = 193;
        @display("p=33800, 130");
    }
    router193 : <routerType> like Router_Ifc {
      parameters:
        id = 193;
        numPorts = 2;
        @display("p=33800, 100");
      gates:
        in[2];
        out[2];
    };

    core194 : <coreType> like NI_Ifc {
      parameters:
        id = 194;
        @display("p=33900, 130");
    }
    router194 : <routerType> like Router_Ifc {
      parameters:
        id = 194;
        numPorts = 2;
        @display("p=33900, 100");
      gates:
        in[2];
        out[2];
    };

    core195 : <coreType> like NI_Ifc {
      parameters:
        id = 195;
        @display("p=34000, 130");
    }
    router195 : <routerType> like Router_Ifc {
      parameters:
        id = 195;
        numPorts = 2;
        @display("p=34000, 100");
      gates:
        in[2];
        out[2];
    };

    core196 : <coreType> like NI_Ifc {
      parameters:
        id = 196;
        @display("p=34200, 130");
    }
    router196 : <routerType> like Router_Ifc {
      parameters:
        id = 196;
        numPorts = 2;
        @display("p=34200, 100");
      gates:
        in[2];
        out[2];
    };

    core197 : <coreType> like NI_Ifc {
      parameters:
        id = 197;
        @display("p=34300, 130");
    }
    router197 : <routerType> like Router_Ifc {
      parameters:
        id = 197;
        numPorts = 2;
        @display("p=34300, 100");
      gates:
        in[2];
        out[2];
    };

    core198 : <coreType> like NI_Ifc {
      parameters:
        id = 198;
        @display("p=34400, 130");
    }
    router198 : <routerType> like Router_Ifc {
      parameters:
        id = 198;
        numPorts = 2;
        @display("p=34400, 100");
      gates:
        in[2];
        out[2];
    };

    core199 : <coreType> like NI_Ifc {
      parameters:
        id = 199;
        @display("p=34500, 130");
    }
    router199 : <routerType> like Router_Ifc {
      parameters:
        id = 199;
        numPorts = 2;
        @display("p=34500, 100");
      gates:
        in[2];
        out[2];
    };

    core200 : <coreType> like NI_Ifc {
      parameters:
        id = 200;
        @display("p=34700, 130");
    }
    router200 : <routerType> like Router_Ifc {
      parameters:
        id = 200;
        numPorts = 2;
        @display("p=34700, 100");
      gates:
        in[2];
        out[2];
    };

    core201 : <coreType> like NI_Ifc {
      parameters:
        id = 201;
        @display("p=34800, 130");
    }
    router201 : <routerType> like Router_Ifc {
      parameters:
        id = 201;
        numPorts = 2;
        @display("p=34800, 100");
      gates:
        in[2];
        out[2];
    };

    core202 : <coreType> like NI_Ifc {
      parameters:
        id = 202;
        @display("p=34900, 130");
    }
    router202 : <routerType> like Router_Ifc {
      parameters:
        id = 202;
        numPorts = 2;
        @display("p=34900, 100");
      gates:
        in[2];
        out[2];
    };

    core203 : <coreType> like NI_Ifc {
      parameters:
        id = 203;
        @display("p=35000, 130");
    }
    router203 : <routerType> like Router_Ifc {
      parameters:
        id = 203;
        numPorts = 2;
        @display("p=35000, 100");
      gates:
        in[2];
        out[2];
    };

    core204 : <coreType> like NI_Ifc {
      parameters:
        id = 204;
        @display("p=35200, 130");
    }
    router204 : <routerType> like Router_Ifc {
      parameters:
        id = 204;
        numPorts = 2;
        @display("p=35200, 100");
      gates:
        in[2];
        out[2];
    };

    core205 : <coreType> like NI_Ifc {
      parameters:
        id = 205;
        @display("p=35300, 130");
    }
    router205 : <routerType> like Router_Ifc {
      parameters:
        id = 205;
        numPorts = 2;
        @display("p=35300, 100");
      gates:
        in[2];
        out[2];
    };

    core206 : <coreType> like NI_Ifc {
      parameters:
        id = 206;
        @display("p=35400, 130");
    }
    router206 : <routerType> like Router_Ifc {
      parameters:
        id = 206;
        numPorts = 2;
        @display("p=35400, 100");
      gates:
        in[2];
        out[2];
    };

    core207 : <coreType> like NI_Ifc {
      parameters:
        id = 207;
        @display("p=35500, 130");
    }
    router207 : <routerType> like Router_Ifc {
      parameters:
        id = 207;
        numPorts = 2;
        @display("p=35500, 100");
      gates:
        in[2];
        out[2];
    };

    core208 : <coreType> like NI_Ifc {
      parameters:
        id = 208;
        @display("p=36100, 130");
    }
    router208 : <routerType> like Router_Ifc {
      parameters:
        id = 208;
        numPorts = 2;
        @display("p=36100, 100");
      gates:
        in[2];
        out[2];
    };

    core209 : <coreType> like NI_Ifc {
      parameters:
        id = 209;
        @display("p=36200, 130");
    }
    router209 : <routerType> like Router_Ifc {
      parameters:
        id = 209;
        numPorts = 2;
        @display("p=36200, 100");
      gates:
        in[2];
        out[2];
    };

    core210 : <coreType> like NI_Ifc {
      parameters:
        id = 210;
        @display("p=36300, 130");
    }
    router210 : <routerType> like Router_Ifc {
      parameters:
        id = 210;
        numPorts = 2;
        @display("p=36300, 100");
      gates:
        in[2];
        out[2];
    };

    core211 : <coreType> like NI_Ifc {
      parameters:
        id = 211;
        @display("p=36400, 130");
    }
    router211 : <routerType> like Router_Ifc {
      parameters:
        id = 211;
        numPorts = 2;
        @display("p=36400, 100");
      gates:
        in[2];
        out[2];
    };

    core212 : <coreType> like NI_Ifc {
      parameters:
        id = 212;
        @display("p=36600, 130");
    }
    router212 : <routerType> like Router_Ifc {
      parameters:
        id = 212;
        numPorts = 2;
        @display("p=36600, 100");
      gates:
        in[2];
        out[2];
    };

    core213 : <coreType> like NI_Ifc {
      parameters:
        id = 213;
        @display("p=36700, 130");
    }
    router213 : <routerType> like Router_Ifc {
      parameters:
        id = 213;
        numPorts = 2;
        @display("p=36700, 100");
      gates:
        in[2];
        out[2];
    };

    core214 : <coreType> like NI_Ifc {
      parameters:
        id = 214;
        @display("p=36800, 130");
    }
    router214 : <routerType> like Router_Ifc {
      parameters:
        id = 214;
        numPorts = 2;
        @display("p=36800, 100");
      gates:
        in[2];
        out[2];
    };

    core215 : <coreType> like NI_Ifc {
      parameters:
        id = 215;
        @display("p=36900, 130");
    }
    router215 : <routerType> like Router_Ifc {
      parameters:
        id = 215;
        numPorts = 2;
        @display("p=36900, 100");
      gates:
        in[2];
        out[2];
    };

    core216 : <coreType> like NI_Ifc {
      parameters:
        id = 216;
        @display("p=37100, 130");
    }
    router216 : <routerType> like Router_Ifc {
      parameters:
        id = 216;
        numPorts = 2;
        @display("p=37100, 100");
      gates:
        in[2];
        out[2];
    };

    core217 : <coreType> like NI_Ifc {
      parameters:
        id = 217;
        @display("p=37200, 130");
    }
    router217 : <routerType> like Router_Ifc {
      parameters:
        id = 217;
        numPorts = 2;
        @display("p=37200, 100");
      gates:
        in[2];
        out[2];
    };

    core218 : <coreType> like NI_Ifc {
      parameters:
        id = 218;
        @display("p=37300, 130");
    }
    router218 : <routerType> like Router_Ifc {
      parameters:
        id = 218;
        numPorts = 2;
        @display("p=37300, 100");
      gates:
        in[2];
        out[2];
    };

    core219 : <coreType> like NI_Ifc {
      parameters:
        id = 219;
        @display("p=37400, 130");
    }
    router219 : <routerType> like Router_Ifc {
      parameters:
        id = 219;
        numPorts = 2;
        @display("p=37400, 100");
      gates:
        in[2];
        out[2];
    };

    core220 : <coreType> like NI_Ifc {
      parameters:
        id = 220;
        @display("p=37600, 130");
    }
    router220 : <routerType> like Router_Ifc {
      parameters:
        id = 220;
        numPorts = 2;
        @display("p=37600, 100");
      gates:
        in[2];
        out[2];
    };

    core221 : <coreType> like NI_Ifc {
      parameters:
        id = 221;
        @display("p=37700, 130");
    }
    router221 : <routerType> like Router_Ifc {
      parameters:
        id = 221;
        numPorts = 2;
        @display("p=37700, 100");
      gates:
        in[2];
        out[2];
    };

    core222 : <coreType> like NI_Ifc {
      parameters:
        id = 222;
        @display("p=37800, 130");
    }
    router222 : <routerType> like Router_Ifc {
      parameters:
        id = 222;
        numPorts = 2;
        @display("p=37800, 100");
      gates:
        in[2];
        out[2];
    };

    core223 : <coreType> like NI_Ifc {
      parameters:
        id = 223;
        @display("p=37900, 130");
    }
    router223 : <routerType> like Router_Ifc {
      parameters:
        id = 223;
        numPorts = 2;
        @display("p=37900, 100");
      gates:
        in[2];
        out[2];
    };

    core224 : <coreType> like NI_Ifc {
      parameters:
        id = 224;
        @display("p=38500, 130");
    }
    router224 : <routerType> like Router_Ifc {
      parameters:
        id = 224;
        numPorts = 2;
        @display("p=38500, 100");
      gates:
        in[2];
        out[2];
    };

    core225 : <coreType> like NI_Ifc {
      parameters:
        id = 225;
        @display("p=38600, 130");
    }
    router225 : <routerType> like Router_Ifc {
      parameters:
        id = 225;
        numPorts = 2;
        @display("p=38600, 100");
      gates:
        in[2];
        out[2];
    };

    core226 : <coreType> like NI_Ifc {
      parameters:
        id = 226;
        @display("p=38700, 130");
    }
    router226 : <routerType> like Router_Ifc {
      parameters:
        id = 226;
        numPorts = 2;
        @display("p=38700, 100");
      gates:
        in[2];
        out[2];
    };

    core227 : <coreType> like NI_Ifc {
      parameters:
        id = 227;
        @display("p=38800, 130");
    }
    router227 : <routerType> like Router_Ifc {
      parameters:
        id = 227;
        numPorts = 2;
        @display("p=38800, 100");
      gates:
        in[2];
        out[2];
    };

    core228 : <coreType> like NI_Ifc {
      parameters:
        id = 228;
        @display("p=39000, 130");
    }
    router228 : <routerType> like Router_Ifc {
      parameters:
        id = 228;
        numPorts = 2;
        @display("p=39000, 100");
      gates:
        in[2];
        out[2];
    };

    core229 : <coreType> like NI_Ifc {
      parameters:
        id = 229;
        @display("p=39100, 130");
    }
    router229 : <routerType> like Router_Ifc {
      parameters:
        id = 229;
        numPorts = 2;
        @display("p=39100, 100");
      gates:
        in[2];
        out[2];
    };

    core230 : <coreType> like NI_Ifc {
      parameters:
        id = 230;
        @display("p=39200, 130");
    }
    router230 : <routerType> like Router_Ifc {
      parameters:
        id = 230;
        numPorts = 2;
        @display("p=39200, 100");
      gates:
        in[2];
        out[2];
    };

    core231 : <coreType> like NI_Ifc {
      parameters:
        id = 231;
        @display("p=39300, 130");
    }
    router231 : <routerType> like Router_Ifc {
      parameters:
        id = 231;
        numPorts = 2;
        @display("p=39300, 100");
      gates:
        in[2];
        out[2];
    };

    core232 : <coreType> like NI_Ifc {
      parameters:
        id = 232;
        @display("p=39500, 130");
    }
    router232 : <routerType> like Router_Ifc {
      parameters:
        id = 232;
        numPorts = 2;
        @display("p=39500, 100");
      gates:
        in[2];
        out[2];
    };

    core233 : <coreType> like NI_Ifc {
      parameters:
        id = 233;
        @display("p=39600, 130");
    }
    router233 : <routerType> like Router_Ifc {
      parameters:
        id = 233;
        numPorts = 2;
        @display("p=39600, 100");
      gates:
        in[2];
        out[2];
    };

    core234 : <coreType> like NI_Ifc {
      parameters:
        id = 234;
        @display("p=39700, 130");
    }
    router234 : <routerType> like Router_Ifc {
      parameters:
        id = 234;
        numPorts = 2;
        @display("p=39700, 100");
      gates:
        in[2];
        out[2];
    };

    core235 : <coreType> like NI_Ifc {
      parameters:
        id = 235;
        @display("p=39800, 130");
    }
    router235 : <routerType> like Router_Ifc {
      parameters:
        id = 235;
        numPorts = 2;
        @display("p=39800, 100");
      gates:
        in[2];
        out[2];
    };

    core236 : <coreType> like NI_Ifc {
      parameters:
        id = 236;
        @display("p=40000, 130");
    }
    router236 : <routerType> like Router_Ifc {
      parameters:
        id = 236;
        numPorts = 2;
        @display("p=40000, 100");
      gates:
        in[2];
        out[2];
    };

    core237 : <coreType> like NI_Ifc {
      parameters:
        id = 237;
        @display("p=40100, 130");
    }
    router237 : <routerType> like Router_Ifc {
      parameters:
        id = 237;
        numPorts = 2;
        @display("p=40100, 100");
      gates:
        in[2];
        out[2];
    };

    core238 : <coreType> like NI_Ifc {
      parameters:
        id = 238;
        @display("p=40200, 130");
    }
    router238 : <routerType> like Router_Ifc {
      parameters:
        id = 238;
        numPorts = 2;
        @display("p=40200, 100");
      gates:
        in[2];
        out[2];
    };

    core239 : <coreType> like NI_Ifc {
      parameters:
        id = 239;
        @display("p=40300, 130");
    }
    router239 : <routerType> like Router_Ifc {
      parameters:
        id = 239;
        numPorts = 2;
        @display("p=40300, 100");
      gates:
        in[2];
        out[2];
    };

    core240 : <coreType> like NI_Ifc {
      parameters:
        id = 240;
        @display("p=40900, 130");
    }
    router240 : <routerType> like Router_Ifc {
      parameters:
        id = 240;
        numPorts = 2;
        @display("p=40900, 100");
      gates:
        in[2];
        out[2];
    };

    core241 : <coreType> like NI_Ifc {
      parameters:
        id = 241;
        @display("p=41000, 130");
    }
    router241 : <routerType> like Router_Ifc {
      parameters:
        id = 241;
        numPorts = 2;
        @display("p=41000, 100");
      gates:
        in[2];
        out[2];
    };

    core242 : <coreType> like NI_Ifc {
      parameters:
        id = 242;
        @display("p=41100, 130");
    }
    router242 : <routerType> like Router_Ifc {
      parameters:
        id = 242;
        numPorts = 2;
        @display("p=41100, 100");
      gates:
        in[2];
        out[2];
    };

    core243 : <coreType> like NI_Ifc {
      parameters:
        id = 243;
        @display("p=41200, 130");
    }
    router243 : <routerType> like Router_Ifc {
      parameters:
        id = 243;
        numPorts = 2;
        @display("p=41200, 100");
      gates:
        in[2];
        out[2];
    };

    core244 : <coreType> like NI_Ifc {
      parameters:
        id = 244;
        @display("p=41400, 130");
    }
    router244 : <routerType> like Router_Ifc {
      parameters:
        id = 244;
        numPorts = 2;
        @display("p=41400, 100");
      gates:
        in[2];
        out[2];
    };

    core245 : <coreType> like NI_Ifc {
      parameters:
        id = 245;
        @display("p=41500, 130");
    }
    router245 : <routerType> like Router_Ifc {
      parameters:
        id = 245;
        numPorts = 2;
        @display("p=41500, 100");
      gates:
        in[2];
        out[2];
    };

    core246 : <coreType> like NI_Ifc {
      parameters:
        id = 246;
        @display("p=41600, 130");
    }
    router246 : <routerType> like Router_Ifc {
      parameters:
        id = 246;
        numPorts = 2;
        @display("p=41600, 100");
      gates:
        in[2];
        out[2];
    };

    core247 : <coreType> like NI_Ifc {
      parameters:
        id = 247;
        @display("p=41700, 130");
    }
    router247 : <routerType> like Router_Ifc {
      parameters:
        id = 247;
        numPorts = 2;
        @display("p=41700, 100");
      gates:
        in[2];
        out[2];
    };

    core248 : <coreType> like NI_Ifc {
      parameters:
        id = 248;
        @display("p=41900, 130");
    }
    router248 : <routerType> like Router_Ifc {
      parameters:
        id = 248;
        numPorts = 2;
        @display("p=41900, 100");
      gates:
        in[2];
        out[2];
    };

    core249 : <coreType> like NI_Ifc {
      parameters:
        id = 249;
        @display("p=42000, 130");
    }
    router249 : <routerType> like Router_Ifc {
      parameters:
        id = 249;
        numPorts = 2;
        @display("p=42000, 100");
      gates:
        in[2];
        out[2];
    };

    core250 : <coreType> like NI_Ifc {
      parameters:
        id = 250;
        @display("p=42100, 130");
    }
    router250 : <routerType> like Router_Ifc {
      parameters:
        id = 250;
        numPorts = 2;
        @display("p=42100, 100");
      gates:
        in[2];
        out[2];
    };

    core251 : <coreType> like NI_Ifc {
      parameters:
        id = 251;
        @display("p=42200, 130");
    }
    router251 : <routerType> like Router_Ifc {
      parameters:
        id = 251;
        numPorts = 2;
        @display("p=42200, 100");
      gates:
        in[2];
        out[2];
    };

    core252 : <coreType> like NI_Ifc {
      parameters:
        id = 252;
        @display("p=42400, 130");
    }
    router252 : <routerType> like Router_Ifc {
      parameters:
        id = 252;
        numPorts = 2;
        @display("p=42400, 100");
      gates:
        in[2];
        out[2];
    };

    core253 : <coreType> like NI_Ifc {
      parameters:
        id = 253;
        @display("p=42500, 130");
    }
    router253 : <routerType> like Router_Ifc {
      parameters:
        id = 253;
        numPorts = 2;
        @display("p=42500, 100");
      gates:
        in[2];
        out[2];
    };

    core254 : <coreType> like NI_Ifc {
      parameters:
        id = 254;
        @display("p=42600, 130");
    }
    router254 : <routerType> like Router_Ifc {
      parameters:
        id = 254;
        numPorts = 2;
        @display("p=42600, 100");
      gates:
        in[2];
        out[2];
    };

    core255 : <coreType> like NI_Ifc {
      parameters:
        id = 255;
        @display("p=42700, 130");
    }
    router255 : <routerType> like Router_Ifc {
      parameters:
        id = 255;
        numPorts = 2;
        @display("p=42700, 100");
      gates:
        in[2];
        out[2];
    };

    router256 : <routerType> like Router_Ifc {
      parameters:
        id = 256;
        numPorts = 8;
        @display("p=7400, 900");
      gates:
        in[9];
        out[9];
    };

    router257 : <routerType> like Router_Ifc {
      parameters:
        id = 257;
        numPorts = 8;
        @display("p=25500, 200");
      gates:
        in[9];
        out[9];
    };

    router258 : <routerType> like Router_Ifc {
      parameters:
        id = 258;
        numPorts = 8;
        @display("p=7900, 900");
      gates:
        in[9];
        out[9];
    };

    router259 : <routerType> like Router_Ifc {
      parameters:
        id = 259;
        numPorts = 8;
        @display("p=8400, 900");
      gates:
        in[9];
        out[9];
    };

    router260 : <routerType> like Router_Ifc {
      parameters:
        id = 260;
        numPorts = 8;
        @display("p=8900, 900");
      gates:
        in[9];
        out[9];
    };

    router261 : <routerType> like Router_Ifc {
      parameters:
        id = 261;
        numPorts = 8;
        @display("p=15300, 200");
      gates:
        in[9];
        out[9];
    };

    router262 : <routerType> like Router_Ifc {
      parameters:
        id = 262;
        numPorts = 8;
        @display("p=26000, 200");
      gates:
        in[9];
        out[9];
    };

    router263 : <routerType> like Router_Ifc {
      parameters:
        id = 263;
        numPorts = 8;
        @display("p=13800, 900");
      gates:
        in[9];
        out[9];
    };

    router264 : <routerType> like Router_Ifc {
      parameters:
        id = 264;
        numPorts = 8;
        @display("p=14300, 900");
      gates:
        in[9];
        out[9];
    };

    router265 : <routerType> like Router_Ifc {
      parameters:
        id = 265;
        numPorts = 8;
        @display("p=14800, 900");
      gates:
        in[9];
        out[9];
    };

    router266 : <routerType> like Router_Ifc {
      parameters:
        id = 266;
        numPorts = 8;
        @display("p=15300, 900");
      gates:
        in[9];
        out[9];
    };

    router267 : <routerType> like Router_Ifc {
      parameters:
        id = 267;
        numPorts = 8;
        @display("p=26500, 200");
      gates:
        in[9];
        out[9];
    };

    router268 : <routerType> like Router_Ifc {
      parameters:
        id = 268;
        numPorts = 8;
        @display("p=25000, 900");
      gates:
        in[9];
        out[9];
    };

    router269 : <routerType> like Router_Ifc {
      parameters:
        id = 269;
        numPorts = 8;
        @display("p=25500, 900");
      gates:
        in[9];
        out[9];
    };

    router270 : <routerType> like Router_Ifc {
      parameters:
        id = 270;
        numPorts = 8;
        @display("p=26000, 900");
      gates:
        in[9];
        out[9];
    };

    router271 : <routerType> like Router_Ifc {
      parameters:
        id = 271;
        numPorts = 8;
        @display("p=26500, 900");
      gates:
        in[9];
        out[9];
    };

    router272 : <routerType> like Router_Ifc {
      parameters:
        id = 272;
        numPorts = 8;
        @display("p=200, 1200");
      gates:
        in[9];
        out[9];
    };

    router273 : <routerType> like Router_Ifc {
      parameters:
        id = 273;
        numPorts = 8;
        @display("p=700, 1200");
      gates:
        in[9];
        out[9];
    };

    router274 : <routerType> like Router_Ifc {
      parameters:
        id = 274;
        numPorts = 8;
        @display("p=1200, 1200");
      gates:
        in[9];
        out[9];
    };

    router275 : <routerType> like Router_Ifc {
      parameters:
        id = 275;
        numPorts = 8;
        @display("p=1700, 1200");
      gates:
        in[9];
        out[9];
    };

    router276 : <routerType> like Router_Ifc {
      parameters:
        id = 276;
        numPorts = 8;
        @display("p=27400, 200");
      gates:
        in[9];
        out[9];
    };

    router277 : <routerType> like Router_Ifc {
      parameters:
        id = 277;
        numPorts = 8;
        @display("p=16200, 200");
      gates:
        in[9];
        out[9];
    };

    router278 : <routerType> like Router_Ifc {
      parameters:
        id = 278;
        numPorts = 8;
        @display("p=2600, 1200");
      gates:
        in[9];
        out[9];
    };

    router279 : <routerType> like Router_Ifc {
      parameters:
        id = 279;
        numPorts = 8;
        @display("p=3100, 1200");
      gates:
        in[9];
        out[9];
    };

    router280 : <routerType> like Router_Ifc {
      parameters:
        id = 280;
        numPorts = 8;
        @display("p=3600, 1200");
      gates:
        in[9];
        out[9];
    };

    router281 : <routerType> like Router_Ifc {
      parameters:
        id = 281;
        numPorts = 8;
        @display("p=27900, 200");
      gates:
        in[9];
        out[9];
    };

    router282 : <routerType> like Router_Ifc {
      parameters:
        id = 282;
        numPorts = 8;
        @display("p=4100, 1200");
      gates:
        in[9];
        out[9];
    };

    router283 : <routerType> like Router_Ifc {
      parameters:
        id = 283;
        numPorts = 8;
        @display("p=16700, 200");
      gates:
        in[9];
        out[9];
    };

    router284 : <routerType> like Router_Ifc {
      parameters:
        id = 284;
        numPorts = 8;
        @display("p=5000, 1200");
      gates:
        in[9];
        out[9];
    };

    router285 : <routerType> like Router_Ifc {
      parameters:
        id = 285;
        numPorts = 8;
        @display("p=5500, 1200");
      gates:
        in[9];
        out[9];
    };

    router286 : <routerType> like Router_Ifc {
      parameters:
        id = 286;
        numPorts = 8;
        @display("p=28400, 200");
      gates:
        in[9];
        out[9];
    };

    router287 : <routerType> like Router_Ifc {
      parameters:
        id = 287;
        numPorts = 8;
        @display("p=6000, 1200");
      gates:
        in[9];
        out[9];
    };

    router288 : <routerType> like Router_Ifc {
      parameters:
        id = 288;
        numPorts = 8;
        @display("p=6500, 1200");
      gates:
        in[9];
        out[9];
    };

    router289 : <routerType> like Router_Ifc {
      parameters:
        id = 289;
        numPorts = 8;
        @display("p=17200, 200");
      gates:
        in[9];
        out[9];
    };

    router290 : <routerType> like Router_Ifc {
      parameters:
        id = 290;
        numPorts = 8;
        @display("p=7400, 1200");
      gates:
        in[9];
        out[9];
    };

    router291 : <routerType> like Router_Ifc {
      parameters:
        id = 291;
        numPorts = 8;
        @display("p=28900, 200");
      gates:
        in[9];
        out[9];
    };

    router292 : <routerType> like Router_Ifc {
      parameters:
        id = 292;
        numPorts = 8;
        @display("p=27400, 900");
      gates:
        in[9];
        out[9];
    };

    router293 : <routerType> like Router_Ifc {
      parameters:
        id = 293;
        numPorts = 8;
        @display("p=27900, 900");
      gates:
        in[9];
        out[9];
    };

    router294 : <routerType> like Router_Ifc {
      parameters:
        id = 294;
        numPorts = 8;
        @display("p=28400, 900");
      gates:
        in[9];
        out[9];
    };

    router295 : <routerType> like Router_Ifc {
      parameters:
        id = 295;
        numPorts = 8;
        @display("p=28900, 900");
      gates:
        in[9];
        out[9];
    };

    router296 : <routerType> like Router_Ifc {
      parameters:
        id = 296;
        numPorts = 8;
        @display("p=7900, 1200");
      gates:
        in[9];
        out[9];
    };

    router297 : <routerType> like Router_Ifc {
      parameters:
        id = 297;
        numPorts = 8;
        @display("p=8400, 1200");
      gates:
        in[9];
        out[9];
    };

    router298 : <routerType> like Router_Ifc {
      parameters:
        id = 298;
        numPorts = 8;
        @display("p=8900, 1200");
      gates:
        in[9];
        out[9];
    };

    router299 : <routerType> like Router_Ifc {
      parameters:
        id = 299;
        numPorts = 8;
        @display("p=17700, 200");
      gates:
        in[9];
        out[9];
    };

    router300 : <routerType> like Router_Ifc {
      parameters:
        id = 300;
        numPorts = 8;
        @display("p=29800, 200");
      gates:
        in[9];
        out[9];
    };

    router301 : <routerType> like Router_Ifc {
      parameters:
        id = 301;
        numPorts = 8;
        @display("p=16200, 900");
      gates:
        in[9];
        out[9];
    };

    router302 : <routerType> like Router_Ifc {
      parameters:
        id = 302;
        numPorts = 8;
        @display("p=16700, 900");
      gates:
        in[9];
        out[9];
    };

    router303 : <routerType> like Router_Ifc {
      parameters:
        id = 303;
        numPorts = 8;
        @display("p=17200, 900");
      gates:
        in[9];
        out[9];
    };

    router304 : <routerType> like Router_Ifc {
      parameters:
        id = 304;
        numPorts = 8;
        @display("p=17700, 900");
      gates:
        in[9];
        out[9];
    };

    router305 : <routerType> like Router_Ifc {
      parameters:
        id = 305;
        numPorts = 8;
        @display("p=30300, 200");
      gates:
        in[9];
        out[9];
    };

    router306 : <routerType> like Router_Ifc {
      parameters:
        id = 306;
        numPorts = 8;
        @display("p=3100, 900");
      gates:
        in[9];
        out[9];
    };

    router307 : <routerType> like Router_Ifc {
      parameters:
        id = 307;
        numPorts = 8;
        @display("p=3600, 900");
      gates:
        in[9];
        out[9];
    };

    router308 : <routerType> like Router_Ifc {
      parameters:
        id = 308;
        numPorts = 8;
        @display("p=4100, 900");
      gates:
        in[9];
        out[9];
    };

    router309 : <routerType> like Router_Ifc {
      parameters:
        id = 309;
        numPorts = 8;
        @display("p=6500, 200");
      gates:
        in[9];
        out[9];
    };

    router310 : <routerType> like Router_Ifc {
      parameters:
        id = 310;
        numPorts = 8;
        @display("p=30800, 200");
      gates:
        in[9];
        out[9];
    };

    router311 : <routerType> like Router_Ifc {
      parameters:
        id = 311;
        numPorts = 8;
        @display("p=18600, 200");
      gates:
        in[9];
        out[9];
    };

    router312 : <routerType> like Router_Ifc {
      parameters:
        id = 312;
        numPorts = 8;
        @display("p=11400, 200");
      gates:
        in[9];
        out[9];
    };

    router313 : <routerType> like Router_Ifc {
      parameters:
        id = 313;
        numPorts = 8;
        @display("p=5000, 900");
      gates:
        in[9];
        out[9];
    };

    router314 : <routerType> like Router_Ifc {
      parameters:
        id = 314;
        numPorts = 8;
        @display("p=5500, 900");
      gates:
        in[9];
        out[9];
    };

    router315 : <routerType> like Router_Ifc {
      parameters:
        id = 315;
        numPorts = 8;
        @display("p=31300, 200");
      gates:
        in[9];
        out[9];
    };

    router316 : <routerType> like Router_Ifc {
      parameters:
        id = 316;
        numPorts = 8;
        @display("p=29800, 900");
      gates:
        in[9];
        out[9];
    };

    router317 : <routerType> like Router_Ifc {
      parameters:
        id = 317;
        numPorts = 8;
        @display("p=30300, 900");
      gates:
        in[9];
        out[9];
    };

    router318 : <routerType> like Router_Ifc {
      parameters:
        id = 318;
        numPorts = 8;
        @display("p=30800, 900");
      gates:
        in[9];
        out[9];
    };

    router319 : <routerType> like Router_Ifc {
      parameters:
        id = 319;
        numPorts = 8;
        @display("p=31300, 900");
      gates:
        in[9];
        out[9];
    };

    router320 : <routerType> like Router_Ifc {
      parameters:
        id = 320;
        numPorts = 8;
        @display("p=22600, 1200");
      gates:
        in[9];
        out[9];
    };

    router321 : <routerType> like Router_Ifc {
      parameters:
        id = 321;
        numPorts = 8;
        @display("p=23100, 1200");
      gates:
        in[9];
        out[9];
    };

    router322 : <routerType> like Router_Ifc {
      parameters:
        id = 322;
        numPorts = 8;
        @display("p=23600, 1200");
      gates:
        in[9];
        out[9];
    };

    router323 : <routerType> like Router_Ifc {
      parameters:
        id = 323;
        numPorts = 8;
        @display("p=24100, 1200");
      gates:
        in[9];
        out[9];
    };

    router324 : <routerType> like Router_Ifc {
      parameters:
        id = 324;
        numPorts = 8;
        @display("p=25000, 1200");
      gates:
        in[9];
        out[9];
    };

    router325 : <routerType> like Router_Ifc {
      parameters:
        id = 325;
        numPorts = 8;
        @display("p=25500, 1200");
      gates:
        in[9];
        out[9];
    };

    router326 : <routerType> like Router_Ifc {
      parameters:
        id = 326;
        numPorts = 8;
        @display("p=26000, 1200");
      gates:
        in[9];
        out[9];
    };

    router327 : <routerType> like Router_Ifc {
      parameters:
        id = 327;
        numPorts = 8;
        @display("p=26500, 1200");
      gates:
        in[9];
        out[9];
    };

    router328 : <routerType> like Router_Ifc {
      parameters:
        id = 328;
        numPorts = 8;
        @display("p=27400, 1200");
      gates:
        in[9];
        out[9];
    };

    router329 : <routerType> like Router_Ifc {
      parameters:
        id = 329;
        numPorts = 8;
        @display("p=27900, 1200");
      gates:
        in[9];
        out[9];
    };

    router330 : <routerType> like Router_Ifc {
      parameters:
        id = 330;
        numPorts = 8;
        @display("p=28400, 1200");
      gates:
        in[9];
        out[9];
    };

    router331 : <routerType> like Router_Ifc {
      parameters:
        id = 331;
        numPorts = 8;
        @display("p=28900, 1200");
      gates:
        in[9];
        out[9];
    };

    router332 : <routerType> like Router_Ifc {
      parameters:
        id = 332;
        numPorts = 8;
        @display("p=29800, 1200");
      gates:
        in[9];
        out[9];
    };

    router333 : <routerType> like Router_Ifc {
      parameters:
        id = 333;
        numPorts = 8;
        @display("p=30300, 1200");
      gates:
        in[9];
        out[9];
    };

    router334 : <routerType> like Router_Ifc {
      parameters:
        id = 334;
        numPorts = 8;
        @display("p=30800, 1200");
      gates:
        in[9];
        out[9];
    };

    router335 : <routerType> like Router_Ifc {
      parameters:
        id = 335;
        numPorts = 8;
        @display("p=31300, 1200");
      gates:
        in[9];
        out[9];
    };

    router336 : <routerType> like Router_Ifc {
      parameters:
        id = 336;
        numPorts = 8;
        @display("p=6000, 900");
      gates:
        in[9];
        out[9];
    };

    router337 : <routerType> like Router_Ifc {
      parameters:
        id = 337;
        numPorts = 8;
        @display("p=19100, 200");
      gates:
        in[9];
        out[9];
    };

    router338 : <routerType> like Router_Ifc {
      parameters:
        id = 338;
        numPorts = 8;
        @display("p=6500, 900");
      gates:
        in[9];
        out[9];
    };

    router339 : <routerType> like Router_Ifc {
      parameters:
        id = 339;
        numPorts = 8;
        @display("p=11900, 200");
      gates:
        in[9];
        out[9];
    };

    router340 : <routerType> like Router_Ifc {
      parameters:
        id = 340;
        numPorts = 8;
        @display("p=33800, 200");
      gates:
        in[9];
        out[9];
    };

    router341 : <routerType> like Router_Ifc {
      parameters:
        id = 341;
        numPorts = 8;
        @display("p=1700, 900");
      gates:
        in[9];
        out[9];
    };

    router342 : <routerType> like Router_Ifc {
      parameters:
        id = 342;
        numPorts = 8;
        @display("p=3100, 200");
      gates:
        in[9];
        out[9];
    };

    router343 : <routerType> like Router_Ifc {
      parameters:
        id = 343;
        numPorts = 8;
        @display("p=19600, 200");
      gates:
        in[9];
        out[9];
    };

    router344 : <routerType> like Router_Ifc {
      parameters:
        id = 344;
        numPorts = 8;
        @display("p=700, 200");
      gates:
        in[9];
        out[9];
    };

    router345 : <routerType> like Router_Ifc {
      parameters:
        id = 345;
        numPorts = 8;
        @display("p=34300, 200");
      gates:
        in[9];
        out[9];
    };

    router346 : <routerType> like Router_Ifc {
      parameters:
        id = 346;
        numPorts = 8;
        @display("p=1200, 200");
      gates:
        in[9];
        out[9];
    };

    router347 : <routerType> like Router_Ifc {
      parameters:
        id = 347;
        numPorts = 8;
        @display("p=12400, 200");
      gates:
        in[9];
        out[9];
    };

    router348 : <routerType> like Router_Ifc {
      parameters:
        id = 348;
        numPorts = 8;
        @display("p=7400, 200");
      gates:
        in[9];
        out[9];
    };

    router349 : <routerType> like Router_Ifc {
      parameters:
        id = 349;
        numPorts = 8;
        @display("p=20100, 200");
      gates:
        in[9];
        out[9];
    };

    router350 : <routerType> like Router_Ifc {
      parameters:
        id = 350;
        numPorts = 8;
        @display("p=34800, 200");
      gates:
        in[9];
        out[9];
    };

    router351 : <routerType> like Router_Ifc {
      parameters:
        id = 351;
        numPorts = 8;
        @display("p=18600, 900");
      gates:
        in[9];
        out[9];
    };

    router352 : <routerType> like Router_Ifc {
      parameters:
        id = 352;
        numPorts = 8;
        @display("p=19100, 900");
      gates:
        in[9];
        out[9];
    };

    router353 : <routerType> like Router_Ifc {
      parameters:
        id = 353;
        numPorts = 8;
        @display("p=19600, 900");
      gates:
        in[9];
        out[9];
    };

    router354 : <routerType> like Router_Ifc {
      parameters:
        id = 354;
        numPorts = 8;
        @display("p=20100, 900");
      gates:
        in[9];
        out[9];
    };

    router355 : <routerType> like Router_Ifc {
      parameters:
        id = 355;
        numPorts = 8;
        @display("p=35300, 200");
      gates:
        in[9];
        out[9];
    };

    router356 : <routerType> like Router_Ifc {
      parameters:
        id = 356;
        numPorts = 8;
        @display("p=33800, 900");
      gates:
        in[9];
        out[9];
    };

    router357 : <routerType> like Router_Ifc {
      parameters:
        id = 357;
        numPorts = 8;
        @display("p=34300, 900");
      gates:
        in[9];
        out[9];
    };

    router358 : <routerType> like Router_Ifc {
      parameters:
        id = 358;
        numPorts = 8;
        @display("p=34800, 900");
      gates:
        in[9];
        out[9];
    };

    router359 : <routerType> like Router_Ifc {
      parameters:
        id = 359;
        numPorts = 8;
        @display("p=35300, 900");
      gates:
        in[9];
        out[9];
    };

    router360 : <routerType> like Router_Ifc {
      parameters:
        id = 360;
        numPorts = 8;
        @display("p=11400, 1200");
      gates:
        in[9];
        out[9];
    };

    router361 : <routerType> like Router_Ifc {
      parameters:
        id = 361;
        numPorts = 8;
        @display("p=11900, 1200");
      gates:
        in[9];
        out[9];
    };

    router362 : <routerType> like Router_Ifc {
      parameters:
        id = 362;
        numPorts = 8;
        @display("p=12400, 1200");
      gates:
        in[9];
        out[9];
    };

    router363 : <routerType> like Router_Ifc {
      parameters:
        id = 363;
        numPorts = 8;
        @display("p=12900, 1200");
      gates:
        in[9];
        out[9];
    };

    router364 : <routerType> like Router_Ifc {
      parameters:
        id = 364;
        numPorts = 8;
        @display("p=36200, 200");
      gates:
        in[9];
        out[9];
    };

    router365 : <routerType> like Router_Ifc {
      parameters:
        id = 365;
        numPorts = 8;
        @display("p=13800, 1200");
      gates:
        in[9];
        out[9];
    };

    router366 : <routerType> like Router_Ifc {
      parameters:
        id = 366;
        numPorts = 8;
        @display("p=14300, 1200");
      gates:
        in[9];
        out[9];
    };

    router367 : <routerType> like Router_Ifc {
      parameters:
        id = 367;
        numPorts = 8;
        @display("p=14800, 1200");
      gates:
        in[9];
        out[9];
    };

    router368 : <routerType> like Router_Ifc {
      parameters:
        id = 368;
        numPorts = 8;
        @display("p=15300, 1200");
      gates:
        in[9];
        out[9];
    };

    router369 : <routerType> like Router_Ifc {
      parameters:
        id = 369;
        numPorts = 8;
        @display("p=36700, 200");
      gates:
        in[9];
        out[9];
    };

    router370 : <routerType> like Router_Ifc {
      parameters:
        id = 370;
        numPorts = 8;
        @display("p=16200, 1200");
      gates:
        in[9];
        out[9];
    };

    router371 : <routerType> like Router_Ifc {
      parameters:
        id = 371;
        numPorts = 8;
        @display("p=16700, 1200");
      gates:
        in[9];
        out[9];
    };

    router372 : <routerType> like Router_Ifc {
      parameters:
        id = 372;
        numPorts = 8;
        @display("p=17200, 1200");
      gates:
        in[9];
        out[9];
    };

    router373 : <routerType> like Router_Ifc {
      parameters:
        id = 373;
        numPorts = 8;
        @display("p=17700, 1200");
      gates:
        in[9];
        out[9];
    };

    router374 : <routerType> like Router_Ifc {
      parameters:
        id = 374;
        numPorts = 8;
        @display("p=37200, 200");
      gates:
        in[9];
        out[9];
    };

    router375 : <routerType> like Router_Ifc {
      parameters:
        id = 375;
        numPorts = 8;
        @display("p=18600, 1200");
      gates:
        in[9];
        out[9];
    };

    router376 : <routerType> like Router_Ifc {
      parameters:
        id = 376;
        numPorts = 8;
        @display("p=19100, 1200");
      gates:
        in[9];
        out[9];
    };

    router377 : <routerType> like Router_Ifc {
      parameters:
        id = 377;
        numPorts = 8;
        @display("p=19600, 1200");
      gates:
        in[9];
        out[9];
    };

    router378 : <routerType> like Router_Ifc {
      parameters:
        id = 378;
        numPorts = 8;
        @display("p=20100, 1200");
      gates:
        in[9];
        out[9];
    };

    router379 : <routerType> like Router_Ifc {
      parameters:
        id = 379;
        numPorts = 8;
        @display("p=37700, 200");
      gates:
        in[9];
        out[9];
    };

    router380 : <routerType> like Router_Ifc {
      parameters:
        id = 380;
        numPorts = 8;
        @display("p=36200, 900");
      gates:
        in[9];
        out[9];
    };

    router381 : <routerType> like Router_Ifc {
      parameters:
        id = 381;
        numPorts = 8;
        @display("p=36700, 900");
      gates:
        in[9];
        out[9];
    };

    router382 : <routerType> like Router_Ifc {
      parameters:
        id = 382;
        numPorts = 8;
        @display("p=37200, 900");
      gates:
        in[9];
        out[9];
    };

    router383 : <routerType> like Router_Ifc {
      parameters:
        id = 383;
        numPorts = 8;
        @display("p=37700, 900");
      gates:
        in[9];
        out[9];
    };

    router384 : <routerType> like Router_Ifc {
      parameters:
        id = 384;
        numPorts = 8;
        @display("p=5000, 200");
      gates:
        in[9];
        out[9];
    };

    router385 : <routerType> like Router_Ifc {
      parameters:
        id = 385;
        numPorts = 8;
        @display("p=200, 200");
      gates:
        in[9];
        out[9];
    };

    router386 : <routerType> like Router_Ifc {
      parameters:
        id = 386;
        numPorts = 8;
        @display("p=1700, 200");
      gates:
        in[9];
        out[9];
    };

    router387 : <routerType> like Router_Ifc {
      parameters:
        id = 387;
        numPorts = 8;
        @display("p=12900, 200");
      gates:
        in[9];
        out[9];
    };

    router388 : <routerType> like Router_Ifc {
      parameters:
        id = 388;
        numPorts = 8;
        @display("p=38600, 200");
      gates:
        in[9];
        out[9];
    };

    router389 : <routerType> like Router_Ifc {
      parameters:
        id = 389;
        numPorts = 8;
        @display("p=22600, 200");
      gates:
        in[9];
        out[9];
    };

    router390 : <routerType> like Router_Ifc {
      parameters:
        id = 390;
        numPorts = 8;
        @display("p=11400, 900");
      gates:
        in[9];
        out[9];
    };

    router391 : <routerType> like Router_Ifc {
      parameters:
        id = 391;
        numPorts = 8;
        @display("p=11900, 900");
      gates:
        in[9];
        out[9];
    };

    router392 : <routerType> like Router_Ifc {
      parameters:
        id = 392;
        numPorts = 8;
        @display("p=12400, 900");
      gates:
        in[9];
        out[9];
    };

    router393 : <routerType> like Router_Ifc {
      parameters:
        id = 393;
        numPorts = 8;
        @display("p=39100, 200");
      gates:
        in[9];
        out[9];
    };

    router394 : <routerType> like Router_Ifc {
      parameters:
        id = 394;
        numPorts = 8;
        @display("p=12900, 900");
      gates:
        in[9];
        out[9];
    };

    router395 : <routerType> like Router_Ifc {
      parameters:
        id = 395;
        numPorts = 8;
        @display("p=23100, 200");
      gates:
        in[9];
        out[9];
    };

    router396 : <routerType> like Router_Ifc {
      parameters:
        id = 396;
        numPorts = 8;
        @display("p=3600, 200");
      gates:
        in[9];
        out[9];
    };

    router397 : <routerType> like Router_Ifc {
      parameters:
        id = 397;
        numPorts = 8;
        @display("p=7900, 200");
      gates:
        in[9];
        out[9];
    };

    router398 : <routerType> like Router_Ifc {
      parameters:
        id = 398;
        numPorts = 8;
        @display("p=39600, 200");
      gates:
        in[9];
        out[9];
    };

    router399 : <routerType> like Router_Ifc {
      parameters:
        id = 399;
        numPorts = 8;
        @display("p=2600, 200");
      gates:
        in[9];
        out[9];
    };

    router400 : <routerType> like Router_Ifc {
      parameters:
        id = 400;
        numPorts = 8;
        @display("p=5500, 200");
      gates:
        in[9];
        out[9];
    };

    router401 : <routerType> like Router_Ifc {
      parameters:
        id = 401;
        numPorts = 8;
        @display("p=23600, 200");
      gates:
        in[9];
        out[9];
    };

    router402 : <routerType> like Router_Ifc {
      parameters:
        id = 402;
        numPorts = 8;
        @display("p=13800, 200");
      gates:
        in[9];
        out[9];
    };

    router403 : <routerType> like Router_Ifc {
      parameters:
        id = 403;
        numPorts = 8;
        @display("p=40100, 200");
      gates:
        in[9];
        out[9];
    };

    router404 : <routerType> like Router_Ifc {
      parameters:
        id = 404;
        numPorts = 8;
        @display("p=38600, 900");
      gates:
        in[9];
        out[9];
    };

    router405 : <routerType> like Router_Ifc {
      parameters:
        id = 405;
        numPorts = 8;
        @display("p=39100, 900");
      gates:
        in[9];
        out[9];
    };

    router406 : <routerType> like Router_Ifc {
      parameters:
        id = 406;
        numPorts = 8;
        @display("p=39600, 900");
      gates:
        in[9];
        out[9];
    };

    router407 : <routerType> like Router_Ifc {
      parameters:
        id = 407;
        numPorts = 8;
        @display("p=40100, 900");
      gates:
        in[9];
        out[9];
    };

    router408 : <routerType> like Router_Ifc {
      parameters:
        id = 408;
        numPorts = 8;
        @display("p=200, 900");
      gates:
        in[9];
        out[9];
    };

    router409 : <routerType> like Router_Ifc {
      parameters:
        id = 409;
        numPorts = 8;
        @display("p=700, 900");
      gates:
        in[9];
        out[9];
    };

    router410 : <routerType> like Router_Ifc {
      parameters:
        id = 410;
        numPorts = 8;
        @display("p=8400, 200");
      gates:
        in[9];
        out[9];
    };

    router411 : <routerType> like Router_Ifc {
      parameters:
        id = 411;
        numPorts = 8;
        @display("p=24100, 200");
      gates:
        in[9];
        out[9];
    };

    router412 : <routerType> like Router_Ifc {
      parameters:
        id = 412;
        numPorts = 8;
        @display("p=41000, 200");
      gates:
        in[9];
        out[9];
    };

    router413 : <routerType> like Router_Ifc {
      parameters:
        id = 413;
        numPorts = 8;
        @display("p=22600, 900");
      gates:
        in[9];
        out[9];
    };

    router414 : <routerType> like Router_Ifc {
      parameters:
        id = 414;
        numPorts = 8;
        @display("p=23100, 900");
      gates:
        in[9];
        out[9];
    };

    router415 : <routerType> like Router_Ifc {
      parameters:
        id = 415;
        numPorts = 8;
        @display("p=23600, 900");
      gates:
        in[9];
        out[9];
    };

    router416 : <routerType> like Router_Ifc {
      parameters:
        id = 416;
        numPorts = 8;
        @display("p=24100, 900");
      gates:
        in[9];
        out[9];
    };

    router417 : <routerType> like Router_Ifc {
      parameters:
        id = 417;
        numPorts = 8;
        @display("p=41500, 200");
      gates:
        in[9];
        out[9];
    };

    router418 : <routerType> like Router_Ifc {
      parameters:
        id = 418;
        numPorts = 8;
        @display("p=1200, 900");
      gates:
        in[9];
        out[9];
    };

    router419 : <routerType> like Router_Ifc {
      parameters:
        id = 419;
        numPorts = 8;
        @display("p=14300, 200");
      gates:
        in[9];
        out[9];
    };

    router420 : <routerType> like Router_Ifc {
      parameters:
        id = 420;
        numPorts = 8;
        @display("p=4100, 200");
      gates:
        in[9];
        out[9];
    };

    router421 : <routerType> like Router_Ifc {
      parameters:
        id = 421;
        numPorts = 8;
        @display("p=6000, 200");
      gates:
        in[9];
        out[9];
    };

    router422 : <routerType> like Router_Ifc {
      parameters:
        id = 422;
        numPorts = 8;
        @display("p=42000, 200");
      gates:
        in[9];
        out[9];
    };

    router423 : <routerType> like Router_Ifc {
      parameters:
        id = 423;
        numPorts = 8;
        @display("p=25000, 200");
      gates:
        in[9];
        out[9];
    };

    router424 : <routerType> like Router_Ifc {
      parameters:
        id = 424;
        numPorts = 8;
        @display("p=2600, 900");
      gates:
        in[9];
        out[9];
    };

    router425 : <routerType> like Router_Ifc {
      parameters:
        id = 425;
        numPorts = 8;
        @display("p=8900, 200");
      gates:
        in[9];
        out[9];
    };

    router426 : <routerType> like Router_Ifc {
      parameters:
        id = 426;
        numPorts = 8;
        @display("p=14800, 200");
      gates:
        in[9];
        out[9];
    };

    router427 : <routerType> like Router_Ifc {
      parameters:
        id = 427;
        numPorts = 8;
        @display("p=42500, 200");
      gates:
        in[9];
        out[9];
    };

    router428 : <routerType> like Router_Ifc {
      parameters:
        id = 428;
        numPorts = 8;
        @display("p=41000, 900");
      gates:
        in[9];
        out[9];
    };

    router429 : <routerType> like Router_Ifc {
      parameters:
        id = 429;
        numPorts = 8;
        @display("p=41500, 900");
      gates:
        in[9];
        out[9];
    };

    router430 : <routerType> like Router_Ifc {
      parameters:
        id = 430;
        numPorts = 8;
        @display("p=42000, 900");
      gates:
        in[9];
        out[9];
    };

    router431 : <routerType> like Router_Ifc {
      parameters:
        id = 431;
        numPorts = 8;
        @display("p=42500, 900");
      gates:
        in[9];
        out[9];
    };

    router432 : <routerType> like Router_Ifc {
      parameters:
        id = 432;
        numPorts = 8;
        @display("p=33800, 1200");
      gates:
        in[9];
        out[9];
    };

    router433 : <routerType> like Router_Ifc {
      parameters:
        id = 433;
        numPorts = 8;
        @display("p=34300, 1200");
      gates:
        in[9];
        out[9];
    };

    router434 : <routerType> like Router_Ifc {
      parameters:
        id = 434;
        numPorts = 8;
        @display("p=34800, 1200");
      gates:
        in[9];
        out[9];
    };

    router435 : <routerType> like Router_Ifc {
      parameters:
        id = 435;
        numPorts = 8;
        @display("p=35300, 1200");
      gates:
        in[9];
        out[9];
    };

    router436 : <routerType> like Router_Ifc {
      parameters:
        id = 436;
        numPorts = 8;
        @display("p=36200, 1200");
      gates:
        in[9];
        out[9];
    };

    router437 : <routerType> like Router_Ifc {
      parameters:
        id = 437;
        numPorts = 8;
        @display("p=36700, 1200");
      gates:
        in[9];
        out[9];
    };

    router438 : <routerType> like Router_Ifc {
      parameters:
        id = 438;
        numPorts = 8;
        @display("p=37200, 1200");
      gates:
        in[9];
        out[9];
    };

    router439 : <routerType> like Router_Ifc {
      parameters:
        id = 439;
        numPorts = 8;
        @display("p=37700, 1200");
      gates:
        in[9];
        out[9];
    };

    router440 : <routerType> like Router_Ifc {
      parameters:
        id = 440;
        numPorts = 8;
        @display("p=38600, 1200");
      gates:
        in[9];
        out[9];
    };

    router441 : <routerType> like Router_Ifc {
      parameters:
        id = 441;
        numPorts = 8;
        @display("p=39100, 1200");
      gates:
        in[9];
        out[9];
    };

    router442 : <routerType> like Router_Ifc {
      parameters:
        id = 442;
        numPorts = 8;
        @display("p=39600, 1200");
      gates:
        in[9];
        out[9];
    };

    router443 : <routerType> like Router_Ifc {
      parameters:
        id = 443;
        numPorts = 8;
        @display("p=40100, 1200");
      gates:
        in[9];
        out[9];
    };

    router444 : <routerType> like Router_Ifc {
      parameters:
        id = 444;
        numPorts = 8;
        @display("p=41000, 1200");
      gates:
        in[9];
        out[9];
    };

    router445 : <routerType> like Router_Ifc {
      parameters:
        id = 445;
        numPorts = 8;
        @display("p=41500, 1200");
      gates:
        in[9];
        out[9];
    };

    router446 : <routerType> like Router_Ifc {
      parameters:
        id = 446;
        numPorts = 8;
        @display("p=42000, 1200");
      gates:
        in[9];
        out[9];
    };

    router447 : <routerType> like Router_Ifc {
      parameters:
        id = 447;
        numPorts = 8;
        @display("p=42500, 1200");
      gates:
        in[9];
        out[9];
    };

    router448 : <routerType> like Router_Ifc {
      parameters:
        id = 448;
        numPorts = 4;
        @display("p=200, 1500");
      gates:
        in[5];
        out[5];
    };

    router449 : <routerType> like Router_Ifc {
      parameters:
        id = 449;
        numPorts = 4;
        @display("p=700, 1500");
      gates:
        in[5];
        out[5];
    };

    router450 : <routerType> like Router_Ifc {
      parameters:
        id = 450;
        numPorts = 4;
        @display("p=1200, 1500");
      gates:
        in[5];
        out[5];
    };

    router451 : <routerType> like Router_Ifc {
      parameters:
        id = 451;
        numPorts = 4;
        @display("p=1700, 1500");
      gates:
        in[5];
        out[5];
    };

    router452 : <routerType> like Router_Ifc {
      parameters:
        id = 452;
        numPorts = 4;
        @display("p=2600, 1500");
      gates:
        in[5];
        out[5];
    };

    router453 : <routerType> like Router_Ifc {
      parameters:
        id = 453;
        numPorts = 4;
        @display("p=3100, 1500");
      gates:
        in[5];
        out[5];
    };

    router454 : <routerType> like Router_Ifc {
      parameters:
        id = 454;
        numPorts = 4;
        @display("p=3600, 1500");
      gates:
        in[5];
        out[5];
    };

    router455 : <routerType> like Router_Ifc {
      parameters:
        id = 455;
        numPorts = 4;
        @display("p=4100, 1500");
      gates:
        in[5];
        out[5];
    };

    router456 : <routerType> like Router_Ifc {
      parameters:
        id = 456;
        numPorts = 4;
        @display("p=5000, 1500");
      gates:
        in[5];
        out[5];
    };

    router457 : <routerType> like Router_Ifc {
      parameters:
        id = 457;
        numPorts = 4;
        @display("p=5500, 1500");
      gates:
        in[5];
        out[5];
    };

    router458 : <routerType> like Router_Ifc {
      parameters:
        id = 458;
        numPorts = 4;
        @display("p=6000, 1500");
      gates:
        in[5];
        out[5];
    };

    router459 : <routerType> like Router_Ifc {
      parameters:
        id = 459;
        numPorts = 4;
        @display("p=6500, 1500");
      gates:
        in[5];
        out[5];
    };

    router460 : <routerType> like Router_Ifc {
      parameters:
        id = 460;
        numPorts = 4;
        @display("p=7400, 1500");
      gates:
        in[5];
        out[5];
    };

    router461 : <routerType> like Router_Ifc {
      parameters:
        id = 461;
        numPorts = 4;
        @display("p=7900, 1500");
      gates:
        in[5];
        out[5];
    };

    router462 : <routerType> like Router_Ifc {
      parameters:
        id = 462;
        numPorts = 4;
        @display("p=8400, 1500");
      gates:
        in[5];
        out[5];
    };

    router463 : <routerType> like Router_Ifc {
      parameters:
        id = 463;
        numPorts = 4;
        @display("p=8900, 1500");
      gates:
        in[5];
        out[5];
    };

    router464 : <routerType> like Router_Ifc {
      parameters:
        id = 464;
        numPorts = 4;
        @display("p=11400, 1500");
      gates:
        in[5];
        out[5];
    };

    router465 : <routerType> like Router_Ifc {
      parameters:
        id = 465;
        numPorts = 4;
        @display("p=11900, 1500");
      gates:
        in[5];
        out[5];
    };

    router466 : <routerType> like Router_Ifc {
      parameters:
        id = 466;
        numPorts = 4;
        @display("p=12400, 1500");
      gates:
        in[5];
        out[5];
    };

    router467 : <routerType> like Router_Ifc {
      parameters:
        id = 467;
        numPorts = 4;
        @display("p=12900, 1500");
      gates:
        in[5];
        out[5];
    };

    router468 : <routerType> like Router_Ifc {
      parameters:
        id = 468;
        numPorts = 4;
        @display("p=13800, 1500");
      gates:
        in[5];
        out[5];
    };

    router469 : <routerType> like Router_Ifc {
      parameters:
        id = 469;
        numPorts = 4;
        @display("p=14300, 1500");
      gates:
        in[5];
        out[5];
    };

    router470 : <routerType> like Router_Ifc {
      parameters:
        id = 470;
        numPorts = 4;
        @display("p=14800, 1500");
      gates:
        in[5];
        out[5];
    };

    router471 : <routerType> like Router_Ifc {
      parameters:
        id = 471;
        numPorts = 4;
        @display("p=15300, 1500");
      gates:
        in[5];
        out[5];
    };

    router472 : <routerType> like Router_Ifc {
      parameters:
        id = 472;
        numPorts = 4;
        @display("p=16200, 1500");
      gates:
        in[5];
        out[5];
    };

    router473 : <routerType> like Router_Ifc {
      parameters:
        id = 473;
        numPorts = 4;
        @display("p=16700, 1500");
      gates:
        in[5];
        out[5];
    };

    router474 : <routerType> like Router_Ifc {
      parameters:
        id = 474;
        numPorts = 4;
        @display("p=17200, 1500");
      gates:
        in[5];
        out[5];
    };

    router475 : <routerType> like Router_Ifc {
      parameters:
        id = 475;
        numPorts = 4;
        @display("p=17700, 1500");
      gates:
        in[5];
        out[5];
    };

    router476 : <routerType> like Router_Ifc {
      parameters:
        id = 476;
        numPorts = 4;
        @display("p=18600, 1500");
      gates:
        in[5];
        out[5];
    };

    router477 : <routerType> like Router_Ifc {
      parameters:
        id = 477;
        numPorts = 4;
        @display("p=19100, 1500");
      gates:
        in[5];
        out[5];
    };

    router478 : <routerType> like Router_Ifc {
      parameters:
        id = 478;
        numPorts = 4;
        @display("p=19600, 1500");
      gates:
        in[5];
        out[5];
    };

    router479 : <routerType> like Router_Ifc {
      parameters:
        id = 479;
        numPorts = 4;
        @display("p=20100, 1500");
      gates:
        in[5];
        out[5];
    };

    router480 : <routerType> like Router_Ifc {
      parameters:
        id = 480;
        numPorts = 4;
        @display("p=22600, 1500");
      gates:
        in[5];
        out[5];
    };

    router481 : <routerType> like Router_Ifc {
      parameters:
        id = 481;
        numPorts = 4;
        @display("p=23100, 1500");
      gates:
        in[5];
        out[5];
    };

    router482 : <routerType> like Router_Ifc {
      parameters:
        id = 482;
        numPorts = 4;
        @display("p=23600, 1500");
      gates:
        in[5];
        out[5];
    };

    router483 : <routerType> like Router_Ifc {
      parameters:
        id = 483;
        numPorts = 4;
        @display("p=24100, 1500");
      gates:
        in[5];
        out[5];
    };

    router484 : <routerType> like Router_Ifc {
      parameters:
        id = 484;
        numPorts = 4;
        @display("p=25000, 1500");
      gates:
        in[5];
        out[5];
    };

    router485 : <routerType> like Router_Ifc {
      parameters:
        id = 485;
        numPorts = 4;
        @display("p=25500, 1500");
      gates:
        in[5];
        out[5];
    };

    router486 : <routerType> like Router_Ifc {
      parameters:
        id = 486;
        numPorts = 4;
        @display("p=26000, 1500");
      gates:
        in[5];
        out[5];
    };

    router487 : <routerType> like Router_Ifc {
      parameters:
        id = 487;
        numPorts = 4;
        @display("p=26500, 1500");
      gates:
        in[5];
        out[5];
    };

    router488 : <routerType> like Router_Ifc {
      parameters:
        id = 488;
        numPorts = 4;
        @display("p=27400, 1500");
      gates:
        in[5];
        out[5];
    };

    router489 : <routerType> like Router_Ifc {
      parameters:
        id = 489;
        numPorts = 4;
        @display("p=27900, 1500");
      gates:
        in[5];
        out[5];
    };

    router490 : <routerType> like Router_Ifc {
      parameters:
        id = 490;
        numPorts = 4;
        @display("p=28400, 1500");
      gates:
        in[5];
        out[5];
    };

    router491 : <routerType> like Router_Ifc {
      parameters:
        id = 491;
        numPorts = 4;
        @display("p=28900, 1500");
      gates:
        in[5];
        out[5];
    };

    router492 : <routerType> like Router_Ifc {
      parameters:
        id = 492;
        numPorts = 4;
        @display("p=29800, 1500");
      gates:
        in[5];
        out[5];
    };

    router493 : <routerType> like Router_Ifc {
      parameters:
        id = 493;
        numPorts = 4;
        @display("p=30300, 1500");
      gates:
        in[5];
        out[5];
    };

    router494 : <routerType> like Router_Ifc {
      parameters:
        id = 494;
        numPorts = 4;
        @display("p=30800, 1500");
      gates:
        in[5];
        out[5];
    };

    router495 : <routerType> like Router_Ifc {
      parameters:
        id = 495;
        numPorts = 4;
        @display("p=31300, 1500");
      gates:
        in[5];
        out[5];
    };

    router496 : <routerType> like Router_Ifc {
      parameters:
        id = 496;
        numPorts = 4;
        @display("p=33800, 1500");
      gates:
        in[5];
        out[5];
    };

    router497 : <routerType> like Router_Ifc {
      parameters:
        id = 497;
        numPorts = 4;
        @display("p=34300, 1500");
      gates:
        in[5];
        out[5];
    };

    router498 : <routerType> like Router_Ifc {
      parameters:
        id = 498;
        numPorts = 4;
        @display("p=34800, 1500");
      gates:
        in[5];
        out[5];
    };

    router499 : <routerType> like Router_Ifc {
      parameters:
        id = 499;
        numPorts = 4;
        @display("p=35300, 1500");
      gates:
        in[5];
        out[5];
    };

    router500 : <routerType> like Router_Ifc {
      parameters:
        id = 500;
        numPorts = 4;
        @display("p=36200, 1500");
      gates:
        in[5];
        out[5];
    };

    router501 : <routerType> like Router_Ifc {
      parameters:
        id = 501;
        numPorts = 4;
        @display("p=36700, 1500");
      gates:
        in[5];
        out[5];
    };

    router502 : <routerType> like Router_Ifc {
      parameters:
        id = 502;
        numPorts = 4;
        @display("p=37200, 1500");
      gates:
        in[5];
        out[5];
    };

    router503 : <routerType> like Router_Ifc {
      parameters:
        id = 503;
        numPorts = 4;
        @display("p=37700, 1500");
      gates:
        in[5];
        out[5];
    };

    router504 : <routerType> like Router_Ifc {
      parameters:
        id = 504;
        numPorts = 4;
        @display("p=38600, 1500");
      gates:
        in[5];
        out[5];
    };

    router505 : <routerType> like Router_Ifc {
      parameters:
        id = 505;
        numPorts = 4;
        @display("p=39100, 1500");
      gates:
        in[5];
        out[5];
    };

    router506 : <routerType> like Router_Ifc {
      parameters:
        id = 506;
        numPorts = 4;
        @display("p=39600, 1500");
      gates:
        in[5];
        out[5];
    };

    router507 : <routerType> like Router_Ifc {
      parameters:
        id = 507;
        numPorts = 4;
        @display("p=40100, 1500");
      gates:
        in[5];
        out[5];
    };

    router508 : <routerType> like Router_Ifc {
      parameters:
        id = 508;
        numPorts = 4;
        @display("p=41000, 1500");
      gates:
        in[5];
        out[5];
    };

    router509 : <routerType> like Router_Ifc {
      parameters:
        id = 509;
        numPorts = 4;
        @display("p=41500, 1500");
      gates:
        in[5];
        out[5];
    };

    router510 : <routerType> like Router_Ifc {
      parameters:
        id = 510;
        numPorts = 4;
        @display("p=42000, 1500");
      gates:
        in[5];
        out[5];
    };

    router511 : <routerType> like Router_Ifc {
      parameters:
        id = 511;
        numPorts = 4;
        @display("p=42500, 1500");
      gates:
        in[5];
        out[5];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router385.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router385.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router385.in[2];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router385.in[3];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router344.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router344.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router344.in[2];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router344.in[3];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router346.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router346.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router346.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router346.in[3];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router386.in[0];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router386.in[1];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router386.in[2];
      router14.in[1] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[1] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router386.in[3];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router399.in[0];
      router16.in[1] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[1] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router399.in[1];
      router17.in[1] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[1] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router399.in[2];
      router18.in[1] <--> VariableBandWidthLink <--> core18.out; 
      router18.out[1] <--> VariableBandWidthLink <--> core18.in; 
      router19.out[0] <--> VariableBandWidthLink <--> router399.in[3];
      router19.in[1] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[1] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router342.in[0];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router342.in[1];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router342.in[2];
      router22.in[1] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[1] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router342.in[3];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router396.in[0];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router396.in[1];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router396.in[2];
      router26.in[1] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[1] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router396.in[3];
      router27.in[1] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[1] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router420.in[0];
      router28.in[1] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[1] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router420.in[1];
      router29.in[1] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[1] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router420.in[2];
      router30.in[1] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[1] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router420.in[3];
      router31.in[1] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[1] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router384.in[0];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router384.in[1];
      router33.in[1] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[1] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router384.in[2];
      router34.in[1] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[1] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router384.in[3];
      router35.in[1] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[1] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router400.in[0];
      router36.in[1] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[1] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router400.in[1];
      router37.in[1] <--> VariableBandWidthLink <--> core37.out; 
      router37.out[1] <--> VariableBandWidthLink <--> core37.in; 
      router38.out[0] <--> VariableBandWidthLink <--> router400.in[2];
      router38.in[1] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[1] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router400.in[3];
      router39.in[1] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[1] <--> VariableBandWidthLink <--> core39.in; 
      router40.out[0] <--> VariableBandWidthLink <--> router421.in[0];
      router40.in[1] <--> VariableBandWidthLink <--> core40.out; 
      router40.out[1] <--> VariableBandWidthLink <--> core40.in; 
      router41.out[0] <--> VariableBandWidthLink <--> router421.in[1];
      router41.in[1] <--> VariableBandWidthLink <--> core41.out; 
      router41.out[1] <--> VariableBandWidthLink <--> core41.in; 
      router42.out[0] <--> VariableBandWidthLink <--> router421.in[2];
      router42.in[1] <--> VariableBandWidthLink <--> core42.out; 
      router42.out[1] <--> VariableBandWidthLink <--> core42.in; 
      router43.out[0] <--> VariableBandWidthLink <--> router421.in[3];
      router43.in[1] <--> VariableBandWidthLink <--> core43.out; 
      router43.out[1] <--> VariableBandWidthLink <--> core43.in; 
      router44.out[0] <--> VariableBandWidthLink <--> router309.in[0];
      router44.in[1] <--> VariableBandWidthLink <--> core44.out; 
      router44.out[1] <--> VariableBandWidthLink <--> core44.in; 
      router45.out[0] <--> VariableBandWidthLink <--> router309.in[1];
      router45.in[1] <--> VariableBandWidthLink <--> core45.out; 
      router45.out[1] <--> VariableBandWidthLink <--> core45.in; 
      router46.out[0] <--> VariableBandWidthLink <--> router309.in[2];
      router46.in[1] <--> VariableBandWidthLink <--> core46.out; 
      router46.out[1] <--> VariableBandWidthLink <--> core46.in; 
      router47.out[0] <--> VariableBandWidthLink <--> router309.in[3];
      router47.in[1] <--> VariableBandWidthLink <--> core47.out; 
      router47.out[1] <--> VariableBandWidthLink <--> core47.in; 
      router48.out[0] <--> VariableBandWidthLink <--> router348.in[0];
      router48.in[1] <--> VariableBandWidthLink <--> core48.out; 
      router48.out[1] <--> VariableBandWidthLink <--> core48.in; 
      router49.out[0] <--> VariableBandWidthLink <--> router348.in[1];
      router49.in[1] <--> VariableBandWidthLink <--> core49.out; 
      router49.out[1] <--> VariableBandWidthLink <--> core49.in; 
      router50.out[0] <--> VariableBandWidthLink <--> router348.in[2];
      router50.in[1] <--> VariableBandWidthLink <--> core50.out; 
      router50.out[1] <--> VariableBandWidthLink <--> core50.in; 
      router51.out[0] <--> VariableBandWidthLink <--> router348.in[3];
      router51.in[1] <--> VariableBandWidthLink <--> core51.out; 
      router51.out[1] <--> VariableBandWidthLink <--> core51.in; 
      router52.out[0] <--> VariableBandWidthLink <--> router397.in[0];
      router52.in[1] <--> VariableBandWidthLink <--> core52.out; 
      router52.out[1] <--> VariableBandWidthLink <--> core52.in; 
      router53.out[0] <--> VariableBandWidthLink <--> router397.in[1];
      router53.in[1] <--> VariableBandWidthLink <--> core53.out; 
      router53.out[1] <--> VariableBandWidthLink <--> core53.in; 
      router54.out[0] <--> VariableBandWidthLink <--> router397.in[2];
      router54.in[1] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[1] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router397.in[3];
      router55.in[1] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[1] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router410.in[0];
      router56.in[1] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[1] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router410.in[1];
      router57.in[1] <--> VariableBandWidthLink <--> core57.out; 
      router57.out[1] <--> VariableBandWidthLink <--> core57.in; 
      router58.out[0] <--> VariableBandWidthLink <--> router410.in[2];
      router58.in[1] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[1] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router410.in[3];
      router59.in[1] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[1] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router425.in[0];
      router60.in[1] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[1] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router425.in[1];
      router61.in[1] <--> VariableBandWidthLink <--> core61.out; 
      router61.out[1] <--> VariableBandWidthLink <--> core61.in; 
      router62.out[0] <--> VariableBandWidthLink <--> router425.in[2];
      router62.in[1] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[1] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router425.in[3];
      router63.in[1] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[1] <--> VariableBandWidthLink <--> core63.in; 
      router64.out[0] <--> VariableBandWidthLink <--> router312.in[0];
      router64.in[1] <--> VariableBandWidthLink <--> core64.out; 
      router64.out[1] <--> VariableBandWidthLink <--> core64.in; 
      router65.out[0] <--> VariableBandWidthLink <--> router312.in[1];
      router65.in[1] <--> VariableBandWidthLink <--> core65.out; 
      router65.out[1] <--> VariableBandWidthLink <--> core65.in; 
      router66.out[0] <--> VariableBandWidthLink <--> router312.in[2];
      router66.in[1] <--> VariableBandWidthLink <--> core66.out; 
      router66.out[1] <--> VariableBandWidthLink <--> core66.in; 
      router67.out[0] <--> VariableBandWidthLink <--> router312.in[3];
      router67.in[1] <--> VariableBandWidthLink <--> core67.out; 
      router67.out[1] <--> VariableBandWidthLink <--> core67.in; 
      router68.out[0] <--> VariableBandWidthLink <--> router339.in[0];
      router68.in[1] <--> VariableBandWidthLink <--> core68.out; 
      router68.out[1] <--> VariableBandWidthLink <--> core68.in; 
      router69.out[0] <--> VariableBandWidthLink <--> router339.in[1];
      router69.in[1] <--> VariableBandWidthLink <--> core69.out; 
      router69.out[1] <--> VariableBandWidthLink <--> core69.in; 
      router70.out[0] <--> VariableBandWidthLink <--> router339.in[2];
      router70.in[1] <--> VariableBandWidthLink <--> core70.out; 
      router70.out[1] <--> VariableBandWidthLink <--> core70.in; 
      router71.out[0] <--> VariableBandWidthLink <--> router339.in[3];
      router71.in[1] <--> VariableBandWidthLink <--> core71.out; 
      router71.out[1] <--> VariableBandWidthLink <--> core71.in; 
      router72.out[0] <--> VariableBandWidthLink <--> router347.in[0];
      router72.in[1] <--> VariableBandWidthLink <--> core72.out; 
      router72.out[1] <--> VariableBandWidthLink <--> core72.in; 
      router73.out[0] <--> VariableBandWidthLink <--> router347.in[1];
      router73.in[1] <--> VariableBandWidthLink <--> core73.out; 
      router73.out[1] <--> VariableBandWidthLink <--> core73.in; 
      router74.out[0] <--> VariableBandWidthLink <--> router347.in[2];
      router74.in[1] <--> VariableBandWidthLink <--> core74.out; 
      router74.out[1] <--> VariableBandWidthLink <--> core74.in; 
      router75.out[0] <--> VariableBandWidthLink <--> router347.in[3];
      router75.in[1] <--> VariableBandWidthLink <--> core75.out; 
      router75.out[1] <--> VariableBandWidthLink <--> core75.in; 
      router76.out[0] <--> VariableBandWidthLink <--> router387.in[0];
      router76.in[1] <--> VariableBandWidthLink <--> core76.out; 
      router76.out[1] <--> VariableBandWidthLink <--> core76.in; 
      router77.out[0] <--> VariableBandWidthLink <--> router387.in[1];
      router77.in[1] <--> VariableBandWidthLink <--> core77.out; 
      router77.out[1] <--> VariableBandWidthLink <--> core77.in; 
      router78.out[0] <--> VariableBandWidthLink <--> router387.in[2];
      router78.in[1] <--> VariableBandWidthLink <--> core78.out; 
      router78.out[1] <--> VariableBandWidthLink <--> core78.in; 
      router79.out[0] <--> VariableBandWidthLink <--> router387.in[3];
      router79.in[1] <--> VariableBandWidthLink <--> core79.out; 
      router79.out[1] <--> VariableBandWidthLink <--> core79.in; 
      router80.out[0] <--> VariableBandWidthLink <--> router402.in[0];
      router80.in[1] <--> VariableBandWidthLink <--> core80.out; 
      router80.out[1] <--> VariableBandWidthLink <--> core80.in; 
      router81.out[0] <--> VariableBandWidthLink <--> router402.in[1];
      router81.in[1] <--> VariableBandWidthLink <--> core81.out; 
      router81.out[1] <--> VariableBandWidthLink <--> core81.in; 
      router82.out[0] <--> VariableBandWidthLink <--> router402.in[2];
      router82.in[1] <--> VariableBandWidthLink <--> core82.out; 
      router82.out[1] <--> VariableBandWidthLink <--> core82.in; 
      router83.out[0] <--> VariableBandWidthLink <--> router402.in[3];
      router83.in[1] <--> VariableBandWidthLink <--> core83.out; 
      router83.out[1] <--> VariableBandWidthLink <--> core83.in; 
      router84.out[0] <--> VariableBandWidthLink <--> router419.in[0];
      router84.in[1] <--> VariableBandWidthLink <--> core84.out; 
      router84.out[1] <--> VariableBandWidthLink <--> core84.in; 
      router85.out[0] <--> VariableBandWidthLink <--> router419.in[1];
      router85.in[1] <--> VariableBandWidthLink <--> core85.out; 
      router85.out[1] <--> VariableBandWidthLink <--> core85.in; 
      router86.out[0] <--> VariableBandWidthLink <--> router419.in[2];
      router86.in[1] <--> VariableBandWidthLink <--> core86.out; 
      router86.out[1] <--> VariableBandWidthLink <--> core86.in; 
      router87.out[0] <--> VariableBandWidthLink <--> router419.in[3];
      router87.in[1] <--> VariableBandWidthLink <--> core87.out; 
      router87.out[1] <--> VariableBandWidthLink <--> core87.in; 
      router88.out[0] <--> VariableBandWidthLink <--> router426.in[0];
      router88.in[1] <--> VariableBandWidthLink <--> core88.out; 
      router88.out[1] <--> VariableBandWidthLink <--> core88.in; 
      router89.out[0] <--> VariableBandWidthLink <--> router426.in[1];
      router89.in[1] <--> VariableBandWidthLink <--> core89.out; 
      router89.out[1] <--> VariableBandWidthLink <--> core89.in; 
      router90.out[0] <--> VariableBandWidthLink <--> router426.in[2];
      router90.in[1] <--> VariableBandWidthLink <--> core90.out; 
      router90.out[1] <--> VariableBandWidthLink <--> core90.in; 
      router91.out[0] <--> VariableBandWidthLink <--> router426.in[3];
      router91.in[1] <--> VariableBandWidthLink <--> core91.out; 
      router91.out[1] <--> VariableBandWidthLink <--> core91.in; 
      router92.out[0] <--> VariableBandWidthLink <--> router261.in[0];
      router92.in[1] <--> VariableBandWidthLink <--> core92.out; 
      router92.out[1] <--> VariableBandWidthLink <--> core92.in; 
      router93.out[0] <--> VariableBandWidthLink <--> router261.in[1];
      router93.in[1] <--> VariableBandWidthLink <--> core93.out; 
      router93.out[1] <--> VariableBandWidthLink <--> core93.in; 
      router94.out[0] <--> VariableBandWidthLink <--> router261.in[2];
      router94.in[1] <--> VariableBandWidthLink <--> core94.out; 
      router94.out[1] <--> VariableBandWidthLink <--> core94.in; 
      router95.out[0] <--> VariableBandWidthLink <--> router261.in[3];
      router95.in[1] <--> VariableBandWidthLink <--> core95.out; 
      router95.out[1] <--> VariableBandWidthLink <--> core95.in; 
      router96.out[0] <--> VariableBandWidthLink <--> router277.in[0];
      router96.in[1] <--> VariableBandWidthLink <--> core96.out; 
      router96.out[1] <--> VariableBandWidthLink <--> core96.in; 
      router97.out[0] <--> VariableBandWidthLink <--> router277.in[1];
      router97.in[1] <--> VariableBandWidthLink <--> core97.out; 
      router97.out[1] <--> VariableBandWidthLink <--> core97.in; 
      router98.out[0] <--> VariableBandWidthLink <--> router277.in[2];
      router98.in[1] <--> VariableBandWidthLink <--> core98.out; 
      router98.out[1] <--> VariableBandWidthLink <--> core98.in; 
      router99.out[0] <--> VariableBandWidthLink <--> router277.in[3];
      router99.in[1] <--> VariableBandWidthLink <--> core99.out; 
      router99.out[1] <--> VariableBandWidthLink <--> core99.in; 
      router100.out[0] <--> VariableBandWidthLink <--> router283.in[0];
      router100.in[1] <--> VariableBandWidthLink <--> core100.out; 
      router100.out[1] <--> VariableBandWidthLink <--> core100.in; 
      router101.out[0] <--> VariableBandWidthLink <--> router283.in[1];
      router101.in[1] <--> VariableBandWidthLink <--> core101.out; 
      router101.out[1] <--> VariableBandWidthLink <--> core101.in; 
      router102.out[0] <--> VariableBandWidthLink <--> router283.in[2];
      router102.in[1] <--> VariableBandWidthLink <--> core102.out; 
      router102.out[1] <--> VariableBandWidthLink <--> core102.in; 
      router103.out[0] <--> VariableBandWidthLink <--> router283.in[3];
      router103.in[1] <--> VariableBandWidthLink <--> core103.out; 
      router103.out[1] <--> VariableBandWidthLink <--> core103.in; 
      router104.out[0] <--> VariableBandWidthLink <--> router289.in[0];
      router104.in[1] <--> VariableBandWidthLink <--> core104.out; 
      router104.out[1] <--> VariableBandWidthLink <--> core104.in; 
      router105.out[0] <--> VariableBandWidthLink <--> router289.in[1];
      router105.in[1] <--> VariableBandWidthLink <--> core105.out; 
      router105.out[1] <--> VariableBandWidthLink <--> core105.in; 
      router106.out[0] <--> VariableBandWidthLink <--> router289.in[2];
      router106.in[1] <--> VariableBandWidthLink <--> core106.out; 
      router106.out[1] <--> VariableBandWidthLink <--> core106.in; 
      router107.out[0] <--> VariableBandWidthLink <--> router289.in[3];
      router107.in[1] <--> VariableBandWidthLink <--> core107.out; 
      router107.out[1] <--> VariableBandWidthLink <--> core107.in; 
      router108.out[0] <--> VariableBandWidthLink <--> router299.in[0];
      router108.in[1] <--> VariableBandWidthLink <--> core108.out; 
      router108.out[1] <--> VariableBandWidthLink <--> core108.in; 
      router109.out[0] <--> VariableBandWidthLink <--> router299.in[1];
      router109.in[1] <--> VariableBandWidthLink <--> core109.out; 
      router109.out[1] <--> VariableBandWidthLink <--> core109.in; 
      router110.out[0] <--> VariableBandWidthLink <--> router299.in[2];
      router110.in[1] <--> VariableBandWidthLink <--> core110.out; 
      router110.out[1] <--> VariableBandWidthLink <--> core110.in; 
      router111.out[0] <--> VariableBandWidthLink <--> router299.in[3];
      router111.in[1] <--> VariableBandWidthLink <--> core111.out; 
      router111.out[1] <--> VariableBandWidthLink <--> core111.in; 
      router112.out[0] <--> VariableBandWidthLink <--> router311.in[0];
      router112.in[1] <--> VariableBandWidthLink <--> core112.out; 
      router112.out[1] <--> VariableBandWidthLink <--> core112.in; 
      router113.out[0] <--> VariableBandWidthLink <--> router311.in[1];
      router113.in[1] <--> VariableBandWidthLink <--> core113.out; 
      router113.out[1] <--> VariableBandWidthLink <--> core113.in; 
      router114.out[0] <--> VariableBandWidthLink <--> router311.in[2];
      router114.in[1] <--> VariableBandWidthLink <--> core114.out; 
      router114.out[1] <--> VariableBandWidthLink <--> core114.in; 
      router115.out[0] <--> VariableBandWidthLink <--> router311.in[3];
      router115.in[1] <--> VariableBandWidthLink <--> core115.out; 
      router115.out[1] <--> VariableBandWidthLink <--> core115.in; 
      router116.out[0] <--> VariableBandWidthLink <--> router337.in[0];
      router116.in[1] <--> VariableBandWidthLink <--> core116.out; 
      router116.out[1] <--> VariableBandWidthLink <--> core116.in; 
      router117.out[0] <--> VariableBandWidthLink <--> router337.in[1];
      router117.in[1] <--> VariableBandWidthLink <--> core117.out; 
      router117.out[1] <--> VariableBandWidthLink <--> core117.in; 
      router118.out[0] <--> VariableBandWidthLink <--> router337.in[2];
      router118.in[1] <--> VariableBandWidthLink <--> core118.out; 
      router118.out[1] <--> VariableBandWidthLink <--> core118.in; 
      router119.out[0] <--> VariableBandWidthLink <--> router337.in[3];
      router119.in[1] <--> VariableBandWidthLink <--> core119.out; 
      router119.out[1] <--> VariableBandWidthLink <--> core119.in; 
      router120.out[0] <--> VariableBandWidthLink <--> router343.in[0];
      router120.in[1] <--> VariableBandWidthLink <--> core120.out; 
      router120.out[1] <--> VariableBandWidthLink <--> core120.in; 
      router121.out[0] <--> VariableBandWidthLink <--> router343.in[1];
      router121.in[1] <--> VariableBandWidthLink <--> core121.out; 
      router121.out[1] <--> VariableBandWidthLink <--> core121.in; 
      router122.out[0] <--> VariableBandWidthLink <--> router343.in[2];
      router122.in[1] <--> VariableBandWidthLink <--> core122.out; 
      router122.out[1] <--> VariableBandWidthLink <--> core122.in; 
      router123.out[0] <--> VariableBandWidthLink <--> router343.in[3];
      router123.in[1] <--> VariableBandWidthLink <--> core123.out; 
      router123.out[1] <--> VariableBandWidthLink <--> core123.in; 
      router124.out[0] <--> VariableBandWidthLink <--> router349.in[0];
      router124.in[1] <--> VariableBandWidthLink <--> core124.out; 
      router124.out[1] <--> VariableBandWidthLink <--> core124.in; 
      router125.out[0] <--> VariableBandWidthLink <--> router349.in[1];
      router125.in[1] <--> VariableBandWidthLink <--> core125.out; 
      router125.out[1] <--> VariableBandWidthLink <--> core125.in; 
      router126.out[0] <--> VariableBandWidthLink <--> router349.in[2];
      router126.in[1] <--> VariableBandWidthLink <--> core126.out; 
      router126.out[1] <--> VariableBandWidthLink <--> core126.in; 
      router127.out[0] <--> VariableBandWidthLink <--> router349.in[3];
      router127.in[1] <--> VariableBandWidthLink <--> core127.out; 
      router127.out[1] <--> VariableBandWidthLink <--> core127.in; 
      router128.out[0] <--> VariableBandWidthLink <--> router389.in[0];
      router128.in[1] <--> VariableBandWidthLink <--> core128.out; 
      router128.out[1] <--> VariableBandWidthLink <--> core128.in; 
      router129.out[0] <--> VariableBandWidthLink <--> router389.in[1];
      router129.in[1] <--> VariableBandWidthLink <--> core129.out; 
      router129.out[1] <--> VariableBandWidthLink <--> core129.in; 
      router130.out[0] <--> VariableBandWidthLink <--> router389.in[2];
      router130.in[1] <--> VariableBandWidthLink <--> core130.out; 
      router130.out[1] <--> VariableBandWidthLink <--> core130.in; 
      router131.out[0] <--> VariableBandWidthLink <--> router389.in[3];
      router131.in[1] <--> VariableBandWidthLink <--> core131.out; 
      router131.out[1] <--> VariableBandWidthLink <--> core131.in; 
      router132.out[0] <--> VariableBandWidthLink <--> router395.in[0];
      router132.in[1] <--> VariableBandWidthLink <--> core132.out; 
      router132.out[1] <--> VariableBandWidthLink <--> core132.in; 
      router133.out[0] <--> VariableBandWidthLink <--> router395.in[1];
      router133.in[1] <--> VariableBandWidthLink <--> core133.out; 
      router133.out[1] <--> VariableBandWidthLink <--> core133.in; 
      router134.out[0] <--> VariableBandWidthLink <--> router395.in[2];
      router134.in[1] <--> VariableBandWidthLink <--> core134.out; 
      router134.out[1] <--> VariableBandWidthLink <--> core134.in; 
      router135.out[0] <--> VariableBandWidthLink <--> router395.in[3];
      router135.in[1] <--> VariableBandWidthLink <--> core135.out; 
      router135.out[1] <--> VariableBandWidthLink <--> core135.in; 
      router136.out[0] <--> VariableBandWidthLink <--> router401.in[0];
      router136.in[1] <--> VariableBandWidthLink <--> core136.out; 
      router136.out[1] <--> VariableBandWidthLink <--> core136.in; 
      router137.out[0] <--> VariableBandWidthLink <--> router401.in[1];
      router137.in[1] <--> VariableBandWidthLink <--> core137.out; 
      router137.out[1] <--> VariableBandWidthLink <--> core137.in; 
      router138.out[0] <--> VariableBandWidthLink <--> router401.in[2];
      router138.in[1] <--> VariableBandWidthLink <--> core138.out; 
      router138.out[1] <--> VariableBandWidthLink <--> core138.in; 
      router139.out[0] <--> VariableBandWidthLink <--> router401.in[3];
      router139.in[1] <--> VariableBandWidthLink <--> core139.out; 
      router139.out[1] <--> VariableBandWidthLink <--> core139.in; 
      router140.out[0] <--> VariableBandWidthLink <--> router411.in[0];
      router140.in[1] <--> VariableBandWidthLink <--> core140.out; 
      router140.out[1] <--> VariableBandWidthLink <--> core140.in; 
      router141.out[0] <--> VariableBandWidthLink <--> router411.in[1];
      router141.in[1] <--> VariableBandWidthLink <--> core141.out; 
      router141.out[1] <--> VariableBandWidthLink <--> core141.in; 
      router142.out[0] <--> VariableBandWidthLink <--> router411.in[2];
      router142.in[1] <--> VariableBandWidthLink <--> core142.out; 
      router142.out[1] <--> VariableBandWidthLink <--> core142.in; 
      router143.out[0] <--> VariableBandWidthLink <--> router411.in[3];
      router143.in[1] <--> VariableBandWidthLink <--> core143.out; 
      router143.out[1] <--> VariableBandWidthLink <--> core143.in; 
      router144.out[0] <--> VariableBandWidthLink <--> router423.in[0];
      router144.in[1] <--> VariableBandWidthLink <--> core144.out; 
      router144.out[1] <--> VariableBandWidthLink <--> core144.in; 
      router145.out[0] <--> VariableBandWidthLink <--> router423.in[1];
      router145.in[1] <--> VariableBandWidthLink <--> core145.out; 
      router145.out[1] <--> VariableBandWidthLink <--> core145.in; 
      router146.out[0] <--> VariableBandWidthLink <--> router423.in[2];
      router146.in[1] <--> VariableBandWidthLink <--> core146.out; 
      router146.out[1] <--> VariableBandWidthLink <--> core146.in; 
      router147.out[0] <--> VariableBandWidthLink <--> router423.in[3];
      router147.in[1] <--> VariableBandWidthLink <--> core147.out; 
      router147.out[1] <--> VariableBandWidthLink <--> core147.in; 
      router148.out[0] <--> VariableBandWidthLink <--> router257.in[0];
      router148.in[1] <--> VariableBandWidthLink <--> core148.out; 
      router148.out[1] <--> VariableBandWidthLink <--> core148.in; 
      router149.out[0] <--> VariableBandWidthLink <--> router257.in[1];
      router149.in[1] <--> VariableBandWidthLink <--> core149.out; 
      router149.out[1] <--> VariableBandWidthLink <--> core149.in; 
      router150.out[0] <--> VariableBandWidthLink <--> router257.in[2];
      router150.in[1] <--> VariableBandWidthLink <--> core150.out; 
      router150.out[1] <--> VariableBandWidthLink <--> core150.in; 
      router151.out[0] <--> VariableBandWidthLink <--> router257.in[3];
      router151.in[1] <--> VariableBandWidthLink <--> core151.out; 
      router151.out[1] <--> VariableBandWidthLink <--> core151.in; 
      router152.out[0] <--> VariableBandWidthLink <--> router262.in[0];
      router152.in[1] <--> VariableBandWidthLink <--> core152.out; 
      router152.out[1] <--> VariableBandWidthLink <--> core152.in; 
      router153.out[0] <--> VariableBandWidthLink <--> router262.in[1];
      router153.in[1] <--> VariableBandWidthLink <--> core153.out; 
      router153.out[1] <--> VariableBandWidthLink <--> core153.in; 
      router154.out[0] <--> VariableBandWidthLink <--> router262.in[2];
      router154.in[1] <--> VariableBandWidthLink <--> core154.out; 
      router154.out[1] <--> VariableBandWidthLink <--> core154.in; 
      router155.out[0] <--> VariableBandWidthLink <--> router262.in[3];
      router155.in[1] <--> VariableBandWidthLink <--> core155.out; 
      router155.out[1] <--> VariableBandWidthLink <--> core155.in; 
      router156.out[0] <--> VariableBandWidthLink <--> router267.in[0];
      router156.in[1] <--> VariableBandWidthLink <--> core156.out; 
      router156.out[1] <--> VariableBandWidthLink <--> core156.in; 
      router157.out[0] <--> VariableBandWidthLink <--> router267.in[1];
      router157.in[1] <--> VariableBandWidthLink <--> core157.out; 
      router157.out[1] <--> VariableBandWidthLink <--> core157.in; 
      router158.out[0] <--> VariableBandWidthLink <--> router267.in[2];
      router158.in[1] <--> VariableBandWidthLink <--> core158.out; 
      router158.out[1] <--> VariableBandWidthLink <--> core158.in; 
      router159.out[0] <--> VariableBandWidthLink <--> router267.in[3];
      router159.in[1] <--> VariableBandWidthLink <--> core159.out; 
      router159.out[1] <--> VariableBandWidthLink <--> core159.in; 
      router160.out[0] <--> VariableBandWidthLink <--> router276.in[0];
      router160.in[1] <--> VariableBandWidthLink <--> core160.out; 
      router160.out[1] <--> VariableBandWidthLink <--> core160.in; 
      router161.out[0] <--> VariableBandWidthLink <--> router276.in[1];
      router161.in[1] <--> VariableBandWidthLink <--> core161.out; 
      router161.out[1] <--> VariableBandWidthLink <--> core161.in; 
      router162.out[0] <--> VariableBandWidthLink <--> router276.in[2];
      router162.in[1] <--> VariableBandWidthLink <--> core162.out; 
      router162.out[1] <--> VariableBandWidthLink <--> core162.in; 
      router163.out[0] <--> VariableBandWidthLink <--> router276.in[3];
      router163.in[1] <--> VariableBandWidthLink <--> core163.out; 
      router163.out[1] <--> VariableBandWidthLink <--> core163.in; 
      router164.out[0] <--> VariableBandWidthLink <--> router281.in[0];
      router164.in[1] <--> VariableBandWidthLink <--> core164.out; 
      router164.out[1] <--> VariableBandWidthLink <--> core164.in; 
      router165.out[0] <--> VariableBandWidthLink <--> router281.in[1];
      router165.in[1] <--> VariableBandWidthLink <--> core165.out; 
      router165.out[1] <--> VariableBandWidthLink <--> core165.in; 
      router166.out[0] <--> VariableBandWidthLink <--> router281.in[2];
      router166.in[1] <--> VariableBandWidthLink <--> core166.out; 
      router166.out[1] <--> VariableBandWidthLink <--> core166.in; 
      router167.out[0] <--> VariableBandWidthLink <--> router281.in[3];
      router167.in[1] <--> VariableBandWidthLink <--> core167.out; 
      router167.out[1] <--> VariableBandWidthLink <--> core167.in; 
      router168.out[0] <--> VariableBandWidthLink <--> router286.in[0];
      router168.in[1] <--> VariableBandWidthLink <--> core168.out; 
      router168.out[1] <--> VariableBandWidthLink <--> core168.in; 
      router169.out[0] <--> VariableBandWidthLink <--> router286.in[1];
      router169.in[1] <--> VariableBandWidthLink <--> core169.out; 
      router169.out[1] <--> VariableBandWidthLink <--> core169.in; 
      router170.out[0] <--> VariableBandWidthLink <--> router286.in[2];
      router170.in[1] <--> VariableBandWidthLink <--> core170.out; 
      router170.out[1] <--> VariableBandWidthLink <--> core170.in; 
      router171.out[0] <--> VariableBandWidthLink <--> router286.in[3];
      router171.in[1] <--> VariableBandWidthLink <--> core171.out; 
      router171.out[1] <--> VariableBandWidthLink <--> core171.in; 
      router172.out[0] <--> VariableBandWidthLink <--> router291.in[0];
      router172.in[1] <--> VariableBandWidthLink <--> core172.out; 
      router172.out[1] <--> VariableBandWidthLink <--> core172.in; 
      router173.out[0] <--> VariableBandWidthLink <--> router291.in[1];
      router173.in[1] <--> VariableBandWidthLink <--> core173.out; 
      router173.out[1] <--> VariableBandWidthLink <--> core173.in; 
      router174.out[0] <--> VariableBandWidthLink <--> router291.in[2];
      router174.in[1] <--> VariableBandWidthLink <--> core174.out; 
      router174.out[1] <--> VariableBandWidthLink <--> core174.in; 
      router175.out[0] <--> VariableBandWidthLink <--> router291.in[3];
      router175.in[1] <--> VariableBandWidthLink <--> core175.out; 
      router175.out[1] <--> VariableBandWidthLink <--> core175.in; 
      router176.out[0] <--> VariableBandWidthLink <--> router300.in[0];
      router176.in[1] <--> VariableBandWidthLink <--> core176.out; 
      router176.out[1] <--> VariableBandWidthLink <--> core176.in; 
      router177.out[0] <--> VariableBandWidthLink <--> router300.in[1];
      router177.in[1] <--> VariableBandWidthLink <--> core177.out; 
      router177.out[1] <--> VariableBandWidthLink <--> core177.in; 
      router178.out[0] <--> VariableBandWidthLink <--> router300.in[2];
      router178.in[1] <--> VariableBandWidthLink <--> core178.out; 
      router178.out[1] <--> VariableBandWidthLink <--> core178.in; 
      router179.out[0] <--> VariableBandWidthLink <--> router300.in[3];
      router179.in[1] <--> VariableBandWidthLink <--> core179.out; 
      router179.out[1] <--> VariableBandWidthLink <--> core179.in; 
      router180.out[0] <--> VariableBandWidthLink <--> router305.in[0];
      router180.in[1] <--> VariableBandWidthLink <--> core180.out; 
      router180.out[1] <--> VariableBandWidthLink <--> core180.in; 
      router181.out[0] <--> VariableBandWidthLink <--> router305.in[1];
      router181.in[1] <--> VariableBandWidthLink <--> core181.out; 
      router181.out[1] <--> VariableBandWidthLink <--> core181.in; 
      router182.out[0] <--> VariableBandWidthLink <--> router305.in[2];
      router182.in[1] <--> VariableBandWidthLink <--> core182.out; 
      router182.out[1] <--> VariableBandWidthLink <--> core182.in; 
      router183.out[0] <--> VariableBandWidthLink <--> router305.in[3];
      router183.in[1] <--> VariableBandWidthLink <--> core183.out; 
      router183.out[1] <--> VariableBandWidthLink <--> core183.in; 
      router184.out[0] <--> VariableBandWidthLink <--> router310.in[0];
      router184.in[1] <--> VariableBandWidthLink <--> core184.out; 
      router184.out[1] <--> VariableBandWidthLink <--> core184.in; 
      router185.out[0] <--> VariableBandWidthLink <--> router310.in[1];
      router185.in[1] <--> VariableBandWidthLink <--> core185.out; 
      router185.out[1] <--> VariableBandWidthLink <--> core185.in; 
      router186.out[0] <--> VariableBandWidthLink <--> router310.in[2];
      router186.in[1] <--> VariableBandWidthLink <--> core186.out; 
      router186.out[1] <--> VariableBandWidthLink <--> core186.in; 
      router187.out[0] <--> VariableBandWidthLink <--> router310.in[3];
      router187.in[1] <--> VariableBandWidthLink <--> core187.out; 
      router187.out[1] <--> VariableBandWidthLink <--> core187.in; 
      router188.out[0] <--> VariableBandWidthLink <--> router315.in[0];
      router188.in[1] <--> VariableBandWidthLink <--> core188.out; 
      router188.out[1] <--> VariableBandWidthLink <--> core188.in; 
      router189.out[0] <--> VariableBandWidthLink <--> router315.in[1];
      router189.in[1] <--> VariableBandWidthLink <--> core189.out; 
      router189.out[1] <--> VariableBandWidthLink <--> core189.in; 
      router190.out[0] <--> VariableBandWidthLink <--> router315.in[2];
      router190.in[1] <--> VariableBandWidthLink <--> core190.out; 
      router190.out[1] <--> VariableBandWidthLink <--> core190.in; 
      router191.out[0] <--> VariableBandWidthLink <--> router315.in[3];
      router191.in[1] <--> VariableBandWidthLink <--> core191.out; 
      router191.out[1] <--> VariableBandWidthLink <--> core191.in; 
      router192.out[0] <--> VariableBandWidthLink <--> router340.in[0];
      router192.in[1] <--> VariableBandWidthLink <--> core192.out; 
      router192.out[1] <--> VariableBandWidthLink <--> core192.in; 
      router193.out[0] <--> VariableBandWidthLink <--> router340.in[1];
      router193.in[1] <--> VariableBandWidthLink <--> core193.out; 
      router193.out[1] <--> VariableBandWidthLink <--> core193.in; 
      router194.out[0] <--> VariableBandWidthLink <--> router340.in[2];
      router194.in[1] <--> VariableBandWidthLink <--> core194.out; 
      router194.out[1] <--> VariableBandWidthLink <--> core194.in; 
      router195.out[0] <--> VariableBandWidthLink <--> router340.in[3];
      router195.in[1] <--> VariableBandWidthLink <--> core195.out; 
      router195.out[1] <--> VariableBandWidthLink <--> core195.in; 
      router196.out[0] <--> VariableBandWidthLink <--> router345.in[0];
      router196.in[1] <--> VariableBandWidthLink <--> core196.out; 
      router196.out[1] <--> VariableBandWidthLink <--> core196.in; 
      router197.out[0] <--> VariableBandWidthLink <--> router345.in[1];
      router197.in[1] <--> VariableBandWidthLink <--> core197.out; 
      router197.out[1] <--> VariableBandWidthLink <--> core197.in; 
      router198.out[0] <--> VariableBandWidthLink <--> router345.in[2];
      router198.in[1] <--> VariableBandWidthLink <--> core198.out; 
      router198.out[1] <--> VariableBandWidthLink <--> core198.in; 
      router199.out[0] <--> VariableBandWidthLink <--> router345.in[3];
      router199.in[1] <--> VariableBandWidthLink <--> core199.out; 
      router199.out[1] <--> VariableBandWidthLink <--> core199.in; 
      router200.out[0] <--> VariableBandWidthLink <--> router350.in[0];
      router200.in[1] <--> VariableBandWidthLink <--> core200.out; 
      router200.out[1] <--> VariableBandWidthLink <--> core200.in; 
      router201.out[0] <--> VariableBandWidthLink <--> router350.in[1];
      router201.in[1] <--> VariableBandWidthLink <--> core201.out; 
      router201.out[1] <--> VariableBandWidthLink <--> core201.in; 
      router202.out[0] <--> VariableBandWidthLink <--> router350.in[2];
      router202.in[1] <--> VariableBandWidthLink <--> core202.out; 
      router202.out[1] <--> VariableBandWidthLink <--> core202.in; 
      router203.out[0] <--> VariableBandWidthLink <--> router350.in[3];
      router203.in[1] <--> VariableBandWidthLink <--> core203.out; 
      router203.out[1] <--> VariableBandWidthLink <--> core203.in; 
      router204.out[0] <--> VariableBandWidthLink <--> router355.in[0];
      router204.in[1] <--> VariableBandWidthLink <--> core204.out; 
      router204.out[1] <--> VariableBandWidthLink <--> core204.in; 
      router205.out[0] <--> VariableBandWidthLink <--> router355.in[1];
      router205.in[1] <--> VariableBandWidthLink <--> core205.out; 
      router205.out[1] <--> VariableBandWidthLink <--> core205.in; 
      router206.out[0] <--> VariableBandWidthLink <--> router355.in[2];
      router206.in[1] <--> VariableBandWidthLink <--> core206.out; 
      router206.out[1] <--> VariableBandWidthLink <--> core206.in; 
      router207.out[0] <--> VariableBandWidthLink <--> router355.in[3];
      router207.in[1] <--> VariableBandWidthLink <--> core207.out; 
      router207.out[1] <--> VariableBandWidthLink <--> core207.in; 
      router208.out[0] <--> VariableBandWidthLink <--> router364.in[0];
      router208.in[1] <--> VariableBandWidthLink <--> core208.out; 
      router208.out[1] <--> VariableBandWidthLink <--> core208.in; 
      router209.out[0] <--> VariableBandWidthLink <--> router364.in[1];
      router209.in[1] <--> VariableBandWidthLink <--> core209.out; 
      router209.out[1] <--> VariableBandWidthLink <--> core209.in; 
      router210.out[0] <--> VariableBandWidthLink <--> router364.in[2];
      router210.in[1] <--> VariableBandWidthLink <--> core210.out; 
      router210.out[1] <--> VariableBandWidthLink <--> core210.in; 
      router211.out[0] <--> VariableBandWidthLink <--> router364.in[3];
      router211.in[1] <--> VariableBandWidthLink <--> core211.out; 
      router211.out[1] <--> VariableBandWidthLink <--> core211.in; 
      router212.out[0] <--> VariableBandWidthLink <--> router369.in[0];
      router212.in[1] <--> VariableBandWidthLink <--> core212.out; 
      router212.out[1] <--> VariableBandWidthLink <--> core212.in; 
      router213.out[0] <--> VariableBandWidthLink <--> router369.in[1];
      router213.in[1] <--> VariableBandWidthLink <--> core213.out; 
      router213.out[1] <--> VariableBandWidthLink <--> core213.in; 
      router214.out[0] <--> VariableBandWidthLink <--> router369.in[2];
      router214.in[1] <--> VariableBandWidthLink <--> core214.out; 
      router214.out[1] <--> VariableBandWidthLink <--> core214.in; 
      router215.out[0] <--> VariableBandWidthLink <--> router369.in[3];
      router215.in[1] <--> VariableBandWidthLink <--> core215.out; 
      router215.out[1] <--> VariableBandWidthLink <--> core215.in; 
      router216.out[0] <--> VariableBandWidthLink <--> router374.in[0];
      router216.in[1] <--> VariableBandWidthLink <--> core216.out; 
      router216.out[1] <--> VariableBandWidthLink <--> core216.in; 
      router217.out[0] <--> VariableBandWidthLink <--> router374.in[1];
      router217.in[1] <--> VariableBandWidthLink <--> core217.out; 
      router217.out[1] <--> VariableBandWidthLink <--> core217.in; 
      router218.out[0] <--> VariableBandWidthLink <--> router374.in[2];
      router218.in[1] <--> VariableBandWidthLink <--> core218.out; 
      router218.out[1] <--> VariableBandWidthLink <--> core218.in; 
      router219.out[0] <--> VariableBandWidthLink <--> router374.in[3];
      router219.in[1] <--> VariableBandWidthLink <--> core219.out; 
      router219.out[1] <--> VariableBandWidthLink <--> core219.in; 
      router220.out[0] <--> VariableBandWidthLink <--> router379.in[0];
      router220.in[1] <--> VariableBandWidthLink <--> core220.out; 
      router220.out[1] <--> VariableBandWidthLink <--> core220.in; 
      router221.out[0] <--> VariableBandWidthLink <--> router379.in[1];
      router221.in[1] <--> VariableBandWidthLink <--> core221.out; 
      router221.out[1] <--> VariableBandWidthLink <--> core221.in; 
      router222.out[0] <--> VariableBandWidthLink <--> router379.in[2];
      router222.in[1] <--> VariableBandWidthLink <--> core222.out; 
      router222.out[1] <--> VariableBandWidthLink <--> core222.in; 
      router223.out[0] <--> VariableBandWidthLink <--> router379.in[3];
      router223.in[1] <--> VariableBandWidthLink <--> core223.out; 
      router223.out[1] <--> VariableBandWidthLink <--> core223.in; 
      router224.out[0] <--> VariableBandWidthLink <--> router388.in[0];
      router224.in[1] <--> VariableBandWidthLink <--> core224.out; 
      router224.out[1] <--> VariableBandWidthLink <--> core224.in; 
      router225.out[0] <--> VariableBandWidthLink <--> router388.in[1];
      router225.in[1] <--> VariableBandWidthLink <--> core225.out; 
      router225.out[1] <--> VariableBandWidthLink <--> core225.in; 
      router226.out[0] <--> VariableBandWidthLink <--> router388.in[2];
      router226.in[1] <--> VariableBandWidthLink <--> core226.out; 
      router226.out[1] <--> VariableBandWidthLink <--> core226.in; 
      router227.out[0] <--> VariableBandWidthLink <--> router388.in[3];
      router227.in[1] <--> VariableBandWidthLink <--> core227.out; 
      router227.out[1] <--> VariableBandWidthLink <--> core227.in; 
      router228.out[0] <--> VariableBandWidthLink <--> router393.in[0];
      router228.in[1] <--> VariableBandWidthLink <--> core228.out; 
      router228.out[1] <--> VariableBandWidthLink <--> core228.in; 
      router229.out[0] <--> VariableBandWidthLink <--> router393.in[1];
      router229.in[1] <--> VariableBandWidthLink <--> core229.out; 
      router229.out[1] <--> VariableBandWidthLink <--> core229.in; 
      router230.out[0] <--> VariableBandWidthLink <--> router393.in[2];
      router230.in[1] <--> VariableBandWidthLink <--> core230.out; 
      router230.out[1] <--> VariableBandWidthLink <--> core230.in; 
      router231.out[0] <--> VariableBandWidthLink <--> router393.in[3];
      router231.in[1] <--> VariableBandWidthLink <--> core231.out; 
      router231.out[1] <--> VariableBandWidthLink <--> core231.in; 
      router232.out[0] <--> VariableBandWidthLink <--> router398.in[0];
      router232.in[1] <--> VariableBandWidthLink <--> core232.out; 
      router232.out[1] <--> VariableBandWidthLink <--> core232.in; 
      router233.out[0] <--> VariableBandWidthLink <--> router398.in[1];
      router233.in[1] <--> VariableBandWidthLink <--> core233.out; 
      router233.out[1] <--> VariableBandWidthLink <--> core233.in; 
      router234.out[0] <--> VariableBandWidthLink <--> router398.in[2];
      router234.in[1] <--> VariableBandWidthLink <--> core234.out; 
      router234.out[1] <--> VariableBandWidthLink <--> core234.in; 
      router235.out[0] <--> VariableBandWidthLink <--> router398.in[3];
      router235.in[1] <--> VariableBandWidthLink <--> core235.out; 
      router235.out[1] <--> VariableBandWidthLink <--> core235.in; 
      router236.out[0] <--> VariableBandWidthLink <--> router403.in[0];
      router236.in[1] <--> VariableBandWidthLink <--> core236.out; 
      router236.out[1] <--> VariableBandWidthLink <--> core236.in; 
      router237.out[0] <--> VariableBandWidthLink <--> router403.in[1];
      router237.in[1] <--> VariableBandWidthLink <--> core237.out; 
      router237.out[1] <--> VariableBandWidthLink <--> core237.in; 
      router238.out[0] <--> VariableBandWidthLink <--> router403.in[2];
      router238.in[1] <--> VariableBandWidthLink <--> core238.out; 
      router238.out[1] <--> VariableBandWidthLink <--> core238.in; 
      router239.out[0] <--> VariableBandWidthLink <--> router403.in[3];
      router239.in[1] <--> VariableBandWidthLink <--> core239.out; 
      router239.out[1] <--> VariableBandWidthLink <--> core239.in; 
      router240.out[0] <--> VariableBandWidthLink <--> router412.in[0];
      router240.in[1] <--> VariableBandWidthLink <--> core240.out; 
      router240.out[1] <--> VariableBandWidthLink <--> core240.in; 
      router241.out[0] <--> VariableBandWidthLink <--> router412.in[1];
      router241.in[1] <--> VariableBandWidthLink <--> core241.out; 
      router241.out[1] <--> VariableBandWidthLink <--> core241.in; 
      router242.out[0] <--> VariableBandWidthLink <--> router412.in[2];
      router242.in[1] <--> VariableBandWidthLink <--> core242.out; 
      router242.out[1] <--> VariableBandWidthLink <--> core242.in; 
      router243.out[0] <--> VariableBandWidthLink <--> router412.in[3];
      router243.in[1] <--> VariableBandWidthLink <--> core243.out; 
      router243.out[1] <--> VariableBandWidthLink <--> core243.in; 
      router244.out[0] <--> VariableBandWidthLink <--> router417.in[0];
      router244.in[1] <--> VariableBandWidthLink <--> core244.out; 
      router244.out[1] <--> VariableBandWidthLink <--> core244.in; 
      router245.out[0] <--> VariableBandWidthLink <--> router417.in[1];
      router245.in[1] <--> VariableBandWidthLink <--> core245.out; 
      router245.out[1] <--> VariableBandWidthLink <--> core245.in; 
      router246.out[0] <--> VariableBandWidthLink <--> router417.in[2];
      router246.in[1] <--> VariableBandWidthLink <--> core246.out; 
      router246.out[1] <--> VariableBandWidthLink <--> core246.in; 
      router247.out[0] <--> VariableBandWidthLink <--> router417.in[3];
      router247.in[1] <--> VariableBandWidthLink <--> core247.out; 
      router247.out[1] <--> VariableBandWidthLink <--> core247.in; 
      router248.out[0] <--> VariableBandWidthLink <--> router422.in[0];
      router248.in[1] <--> VariableBandWidthLink <--> core248.out; 
      router248.out[1] <--> VariableBandWidthLink <--> core248.in; 
      router249.out[0] <--> VariableBandWidthLink <--> router422.in[1];
      router249.in[1] <--> VariableBandWidthLink <--> core249.out; 
      router249.out[1] <--> VariableBandWidthLink <--> core249.in; 
      router250.out[0] <--> VariableBandWidthLink <--> router422.in[2];
      router250.in[1] <--> VariableBandWidthLink <--> core250.out; 
      router250.out[1] <--> VariableBandWidthLink <--> core250.in; 
      router251.out[0] <--> VariableBandWidthLink <--> router422.in[3];
      router251.in[1] <--> VariableBandWidthLink <--> core251.out; 
      router251.out[1] <--> VariableBandWidthLink <--> core251.in; 
      router252.out[0] <--> VariableBandWidthLink <--> router427.in[0];
      router252.in[1] <--> VariableBandWidthLink <--> core252.out; 
      router252.out[1] <--> VariableBandWidthLink <--> core252.in; 
      router253.out[0] <--> VariableBandWidthLink <--> router427.in[1];
      router253.in[1] <--> VariableBandWidthLink <--> core253.out; 
      router253.out[1] <--> VariableBandWidthLink <--> core253.in; 
      router254.out[0] <--> VariableBandWidthLink <--> router427.in[2];
      router254.in[1] <--> VariableBandWidthLink <--> core254.out; 
      router254.out[1] <--> VariableBandWidthLink <--> core254.in; 
      router255.out[0] <--> VariableBandWidthLink <--> router427.in[3];
      router255.in[1] <--> VariableBandWidthLink <--> core255.out; 
      router255.out[1] <--> VariableBandWidthLink <--> core255.in; 
      router256.out[0] <--> VariableBandWidthLink <--> router348.in[4];
      router256.out[1] <--> VariableBandWidthLink <--> router397.in[4];
      router256.out[2] <--> VariableBandWidthLink <--> router410.in[4];
      router256.out[3] <--> VariableBandWidthLink <--> router425.in[4];
      router256.out[4] <--> VariableBandWidthLink <--> router272.in[3];
      router256.out[5] <--> VariableBandWidthLink <--> router273.in[3];
      router256.out[6] <--> VariableBandWidthLink <--> router274.in[3];
      router256.out[7] <--> VariableBandWidthLink <--> router275.in[3];
      router257.out[0] <--> VariableBandWidthLink <--> router148.in[0];
      router257.out[1] <--> VariableBandWidthLink <--> router149.in[0];
      router257.out[2] <--> VariableBandWidthLink <--> router150.in[0];
      router257.out[3] <--> VariableBandWidthLink <--> router151.in[0];
      router257.out[4] <--> VariableBandWidthLink <--> router268.in[1];
      router257.out[5] <--> VariableBandWidthLink <--> router269.in[1];
      router257.out[6] <--> VariableBandWidthLink <--> router270.in[1];
      router257.out[7] <--> VariableBandWidthLink <--> router271.in[1];
      router258.out[0] <--> VariableBandWidthLink <--> router348.in[5];
      router258.out[1] <--> VariableBandWidthLink <--> router397.in[5];
      router258.out[2] <--> VariableBandWidthLink <--> router410.in[5];
      router258.out[3] <--> VariableBandWidthLink <--> router425.in[5];
      router258.out[4] <--> VariableBandWidthLink <--> router278.in[3];
      router258.out[5] <--> VariableBandWidthLink <--> router279.in[3];
      router258.out[6] <--> VariableBandWidthLink <--> router280.in[3];
      router258.out[7] <--> VariableBandWidthLink <--> router282.in[3];
      router259.out[0] <--> VariableBandWidthLink <--> router348.in[6];
      router259.out[1] <--> VariableBandWidthLink <--> router397.in[6];
      router259.out[2] <--> VariableBandWidthLink <--> router410.in[6];
      router259.out[3] <--> VariableBandWidthLink <--> router425.in[6];
      router259.out[4] <--> VariableBandWidthLink <--> router284.in[3];
      router259.out[5] <--> VariableBandWidthLink <--> router285.in[3];
      router259.out[6] <--> VariableBandWidthLink <--> router287.in[3];
      router259.out[7] <--> VariableBandWidthLink <--> router288.in[3];
      router260.out[0] <--> VariableBandWidthLink <--> router348.in[7];
      router260.out[1] <--> VariableBandWidthLink <--> router397.in[7];
      router260.out[2] <--> VariableBandWidthLink <--> router410.in[7];
      router260.out[3] <--> VariableBandWidthLink <--> router425.in[7];
      router260.out[4] <--> VariableBandWidthLink <--> router290.in[3];
      router260.out[5] <--> VariableBandWidthLink <--> router296.in[3];
      router260.out[6] <--> VariableBandWidthLink <--> router297.in[3];
      router260.out[7] <--> VariableBandWidthLink <--> router298.in[3];
      router261.out[0] <--> VariableBandWidthLink <--> router92.in[0];
      router261.out[1] <--> VariableBandWidthLink <--> router93.in[0];
      router261.out[2] <--> VariableBandWidthLink <--> router94.in[0];
      router261.out[3] <--> VariableBandWidthLink <--> router95.in[0];
      router261.out[4] <--> VariableBandWidthLink <--> router263.in[3];
      router261.out[5] <--> VariableBandWidthLink <--> router264.in[3];
      router261.out[6] <--> VariableBandWidthLink <--> router265.in[3];
      router261.out[7] <--> VariableBandWidthLink <--> router266.in[3];
      router262.out[0] <--> VariableBandWidthLink <--> router152.in[0];
      router262.out[1] <--> VariableBandWidthLink <--> router153.in[0];
      router262.out[2] <--> VariableBandWidthLink <--> router154.in[0];
      router262.out[3] <--> VariableBandWidthLink <--> router155.in[0];
      router262.out[4] <--> VariableBandWidthLink <--> router268.in[2];
      router262.out[5] <--> VariableBandWidthLink <--> router269.in[2];
      router262.out[6] <--> VariableBandWidthLink <--> router270.in[2];
      router262.out[7] <--> VariableBandWidthLink <--> router271.in[2];
      router263.out[0] <--> VariableBandWidthLink <--> router402.in[4];
      router263.out[1] <--> VariableBandWidthLink <--> router419.in[4];
      router263.out[2] <--> VariableBandWidthLink <--> router426.in[4];
      router263.out[3] <--> VariableBandWidthLink <--> router261.in[4];
      router263.out[4] <--> VariableBandWidthLink <--> router360.in[1];
      router263.out[5] <--> VariableBandWidthLink <--> router361.in[1];
      router263.out[6] <--> VariableBandWidthLink <--> router362.in[1];
      router263.out[7] <--> VariableBandWidthLink <--> router363.in[1];
      router264.out[0] <--> VariableBandWidthLink <--> router402.in[5];
      router264.out[1] <--> VariableBandWidthLink <--> router419.in[5];
      router264.out[2] <--> VariableBandWidthLink <--> router426.in[5];
      router264.out[3] <--> VariableBandWidthLink <--> router261.in[5];
      router264.out[4] <--> VariableBandWidthLink <--> router365.in[1];
      router264.out[5] <--> VariableBandWidthLink <--> router366.in[1];
      router264.out[6] <--> VariableBandWidthLink <--> router367.in[1];
      router264.out[7] <--> VariableBandWidthLink <--> router368.in[1];
      router265.out[0] <--> VariableBandWidthLink <--> router402.in[6];
      router265.out[1] <--> VariableBandWidthLink <--> router419.in[6];
      router265.out[2] <--> VariableBandWidthLink <--> router426.in[6];
      router265.out[3] <--> VariableBandWidthLink <--> router261.in[6];
      router265.out[4] <--> VariableBandWidthLink <--> router370.in[1];
      router265.out[5] <--> VariableBandWidthLink <--> router371.in[1];
      router265.out[6] <--> VariableBandWidthLink <--> router372.in[1];
      router265.out[7] <--> VariableBandWidthLink <--> router373.in[1];
      router266.out[0] <--> VariableBandWidthLink <--> router402.in[7];
      router266.out[1] <--> VariableBandWidthLink <--> router419.in[7];
      router266.out[2] <--> VariableBandWidthLink <--> router426.in[7];
      router266.out[3] <--> VariableBandWidthLink <--> router261.in[7];
      router266.out[4] <--> VariableBandWidthLink <--> router375.in[1];
      router266.out[5] <--> VariableBandWidthLink <--> router376.in[1];
      router266.out[6] <--> VariableBandWidthLink <--> router377.in[1];
      router266.out[7] <--> VariableBandWidthLink <--> router378.in[1];
      router267.out[0] <--> VariableBandWidthLink <--> router156.in[0];
      router267.out[1] <--> VariableBandWidthLink <--> router157.in[0];
      router267.out[2] <--> VariableBandWidthLink <--> router158.in[0];
      router267.out[3] <--> VariableBandWidthLink <--> router159.in[0];
      router267.out[4] <--> VariableBandWidthLink <--> router268.in[3];
      router267.out[5] <--> VariableBandWidthLink <--> router269.in[3];
      router267.out[6] <--> VariableBandWidthLink <--> router270.in[3];
      router267.out[7] <--> VariableBandWidthLink <--> router271.in[3];
      router268.out[0] <--> VariableBandWidthLink <--> router423.in[4];
      router268.out[1] <--> VariableBandWidthLink <--> router257.in[4];
      router268.out[2] <--> VariableBandWidthLink <--> router262.in[4];
      router268.out[3] <--> VariableBandWidthLink <--> router267.in[4];
      router268.out[4] <--> VariableBandWidthLink <--> router320.in[1];
      router268.out[5] <--> VariableBandWidthLink <--> router321.in[1];
      router268.out[6] <--> VariableBandWidthLink <--> router322.in[1];
      router268.out[7] <--> VariableBandWidthLink <--> router323.in[1];
      router269.out[0] <--> VariableBandWidthLink <--> router423.in[5];
      router269.out[1] <--> VariableBandWidthLink <--> router257.in[5];
      router269.out[2] <--> VariableBandWidthLink <--> router262.in[5];
      router269.out[3] <--> VariableBandWidthLink <--> router267.in[5];
      router269.out[4] <--> VariableBandWidthLink <--> router324.in[1];
      router269.out[5] <--> VariableBandWidthLink <--> router325.in[1];
      router269.out[6] <--> VariableBandWidthLink <--> router326.in[1];
      router269.out[7] <--> VariableBandWidthLink <--> router327.in[1];
      router270.out[0] <--> VariableBandWidthLink <--> router423.in[6];
      router270.out[1] <--> VariableBandWidthLink <--> router257.in[6];
      router270.out[2] <--> VariableBandWidthLink <--> router262.in[6];
      router270.out[3] <--> VariableBandWidthLink <--> router267.in[6];
      router270.out[4] <--> VariableBandWidthLink <--> router328.in[1];
      router270.out[5] <--> VariableBandWidthLink <--> router329.in[1];
      router270.out[6] <--> VariableBandWidthLink <--> router330.in[1];
      router270.out[7] <--> VariableBandWidthLink <--> router331.in[1];
      router271.out[0] <--> VariableBandWidthLink <--> router423.in[7];
      router271.out[1] <--> VariableBandWidthLink <--> router257.in[7];
      router271.out[2] <--> VariableBandWidthLink <--> router262.in[7];
      router271.out[3] <--> VariableBandWidthLink <--> router267.in[7];
      router271.out[4] <--> VariableBandWidthLink <--> router332.in[1];
      router271.out[5] <--> VariableBandWidthLink <--> router333.in[1];
      router271.out[6] <--> VariableBandWidthLink <--> router334.in[1];
      router271.out[7] <--> VariableBandWidthLink <--> router335.in[1];
      router272.out[0] <--> VariableBandWidthLink <--> router408.in[4];
      router272.out[1] <--> VariableBandWidthLink <--> router424.in[4];
      router272.out[2] <--> VariableBandWidthLink <--> router313.in[4];
      router272.out[3] <--> VariableBandWidthLink <--> router256.in[4];
      router272.out[4] <--> VariableBandWidthLink <--> router448.in[0];
      router272.out[5] <--> VariableBandWidthLink <--> router449.in[0];
      router272.out[6] <--> VariableBandWidthLink <--> router450.in[0];
      router272.out[7] <--> VariableBandWidthLink <--> router451.in[0];
      router273.out[0] <--> VariableBandWidthLink <--> router408.in[5];
      router273.out[1] <--> VariableBandWidthLink <--> router424.in[5];
      router273.out[2] <--> VariableBandWidthLink <--> router313.in[5];
      router273.out[3] <--> VariableBandWidthLink <--> router256.in[5];
      router273.out[4] <--> VariableBandWidthLink <--> router452.in[0];
      router273.out[5] <--> VariableBandWidthLink <--> router453.in[0];
      router273.out[6] <--> VariableBandWidthLink <--> router454.in[0];
      router273.out[7] <--> VariableBandWidthLink <--> router455.in[0];
      router274.out[0] <--> VariableBandWidthLink <--> router408.in[6];
      router274.out[1] <--> VariableBandWidthLink <--> router424.in[6];
      router274.out[2] <--> VariableBandWidthLink <--> router313.in[6];
      router274.out[3] <--> VariableBandWidthLink <--> router256.in[6];
      router274.out[4] <--> VariableBandWidthLink <--> router456.in[0];
      router274.out[5] <--> VariableBandWidthLink <--> router457.in[0];
      router274.out[6] <--> VariableBandWidthLink <--> router458.in[0];
      router274.out[7] <--> VariableBandWidthLink <--> router459.in[0];
      router275.out[0] <--> VariableBandWidthLink <--> router408.in[7];
      router275.out[1] <--> VariableBandWidthLink <--> router424.in[7];
      router275.out[2] <--> VariableBandWidthLink <--> router313.in[7];
      router275.out[3] <--> VariableBandWidthLink <--> router256.in[7];
      router275.out[4] <--> VariableBandWidthLink <--> router460.in[0];
      router275.out[5] <--> VariableBandWidthLink <--> router461.in[0];
      router275.out[6] <--> VariableBandWidthLink <--> router462.in[0];
      router275.out[7] <--> VariableBandWidthLink <--> router463.in[0];
      router276.out[0] <--> VariableBandWidthLink <--> router160.in[0];
      router276.out[1] <--> VariableBandWidthLink <--> router161.in[0];
      router276.out[2] <--> VariableBandWidthLink <--> router162.in[0];
      router276.out[3] <--> VariableBandWidthLink <--> router163.in[0];
      router276.out[4] <--> VariableBandWidthLink <--> router292.in[0];
      router276.out[5] <--> VariableBandWidthLink <--> router293.in[0];
      router276.out[6] <--> VariableBandWidthLink <--> router294.in[0];
      router276.out[7] <--> VariableBandWidthLink <--> router295.in[0];
      router277.out[0] <--> VariableBandWidthLink <--> router96.in[0];
      router277.out[1] <--> VariableBandWidthLink <--> router97.in[0];
      router277.out[2] <--> VariableBandWidthLink <--> router98.in[0];
      router277.out[3] <--> VariableBandWidthLink <--> router99.in[0];
      router277.out[4] <--> VariableBandWidthLink <--> router301.in[0];
      router277.out[5] <--> VariableBandWidthLink <--> router302.in[0];
      router277.out[6] <--> VariableBandWidthLink <--> router303.in[0];
      router277.out[7] <--> VariableBandWidthLink <--> router304.in[0];
      router278.out[0] <--> VariableBandWidthLink <--> router409.in[4];
      router278.out[1] <--> VariableBandWidthLink <--> router306.in[4];
      router278.out[2] <--> VariableBandWidthLink <--> router314.in[4];
      router278.out[3] <--> VariableBandWidthLink <--> router258.in[4];
      router278.out[4] <--> VariableBandWidthLink <--> router464.in[0];
      router278.out[5] <--> VariableBandWidthLink <--> router465.in[0];
      router278.out[6] <--> VariableBandWidthLink <--> router466.in[0];
      router278.out[7] <--> VariableBandWidthLink <--> router467.in[0];
      router279.out[0] <--> VariableBandWidthLink <--> router409.in[5];
      router279.out[1] <--> VariableBandWidthLink <--> router306.in[5];
      router279.out[2] <--> VariableBandWidthLink <--> router314.in[5];
      router279.out[3] <--> VariableBandWidthLink <--> router258.in[5];
      router279.out[4] <--> VariableBandWidthLink <--> router468.in[0];
      router279.out[5] <--> VariableBandWidthLink <--> router469.in[0];
      router279.out[6] <--> VariableBandWidthLink <--> router470.in[0];
      router279.out[7] <--> VariableBandWidthLink <--> router471.in[0];
      router280.out[0] <--> VariableBandWidthLink <--> router409.in[6];
      router280.out[1] <--> VariableBandWidthLink <--> router306.in[6];
      router280.out[2] <--> VariableBandWidthLink <--> router314.in[6];
      router280.out[3] <--> VariableBandWidthLink <--> router258.in[6];
      router280.out[4] <--> VariableBandWidthLink <--> router472.in[0];
      router280.out[5] <--> VariableBandWidthLink <--> router473.in[0];
      router280.out[6] <--> VariableBandWidthLink <--> router474.in[0];
      router280.out[7] <--> VariableBandWidthLink <--> router475.in[0];
      router281.out[0] <--> VariableBandWidthLink <--> router164.in[0];
      router281.out[1] <--> VariableBandWidthLink <--> router165.in[0];
      router281.out[2] <--> VariableBandWidthLink <--> router166.in[0];
      router281.out[3] <--> VariableBandWidthLink <--> router167.in[0];
      router281.out[4] <--> VariableBandWidthLink <--> router292.in[1];
      router281.out[5] <--> VariableBandWidthLink <--> router293.in[1];
      router281.out[6] <--> VariableBandWidthLink <--> router294.in[1];
      router281.out[7] <--> VariableBandWidthLink <--> router295.in[1];
      router282.out[0] <--> VariableBandWidthLink <--> router409.in[7];
      router282.out[1] <--> VariableBandWidthLink <--> router306.in[7];
      router282.out[2] <--> VariableBandWidthLink <--> router314.in[7];
      router282.out[3] <--> VariableBandWidthLink <--> router258.in[7];
      router282.out[4] <--> VariableBandWidthLink <--> router476.in[0];
      router282.out[5] <--> VariableBandWidthLink <--> router477.in[0];
      router282.out[6] <--> VariableBandWidthLink <--> router478.in[0];
      router282.out[7] <--> VariableBandWidthLink <--> router479.in[0];
      router283.out[0] <--> VariableBandWidthLink <--> router100.in[0];
      router283.out[1] <--> VariableBandWidthLink <--> router101.in[0];
      router283.out[2] <--> VariableBandWidthLink <--> router102.in[0];
      router283.out[3] <--> VariableBandWidthLink <--> router103.in[0];
      router283.out[4] <--> VariableBandWidthLink <--> router301.in[1];
      router283.out[5] <--> VariableBandWidthLink <--> router302.in[1];
      router283.out[6] <--> VariableBandWidthLink <--> router303.in[1];
      router283.out[7] <--> VariableBandWidthLink <--> router304.in[1];
      router284.out[0] <--> VariableBandWidthLink <--> router418.in[4];
      router284.out[1] <--> VariableBandWidthLink <--> router307.in[4];
      router284.out[2] <--> VariableBandWidthLink <--> router336.in[4];
      router284.out[3] <--> VariableBandWidthLink <--> router259.in[4];
      router284.out[4] <--> VariableBandWidthLink <--> router480.in[0];
      router284.out[5] <--> VariableBandWidthLink <--> router481.in[0];
      router284.out[6] <--> VariableBandWidthLink <--> router482.in[0];
      router284.out[7] <--> VariableBandWidthLink <--> router483.in[0];
      router285.out[0] <--> VariableBandWidthLink <--> router418.in[5];
      router285.out[1] <--> VariableBandWidthLink <--> router307.in[5];
      router285.out[2] <--> VariableBandWidthLink <--> router336.in[5];
      router285.out[3] <--> VariableBandWidthLink <--> router259.in[5];
      router285.out[4] <--> VariableBandWidthLink <--> router484.in[0];
      router285.out[5] <--> VariableBandWidthLink <--> router485.in[0];
      router285.out[6] <--> VariableBandWidthLink <--> router486.in[0];
      router285.out[7] <--> VariableBandWidthLink <--> router487.in[0];
      router286.out[0] <--> VariableBandWidthLink <--> router168.in[0];
      router286.out[1] <--> VariableBandWidthLink <--> router169.in[0];
      router286.out[2] <--> VariableBandWidthLink <--> router170.in[0];
      router286.out[3] <--> VariableBandWidthLink <--> router171.in[0];
      router286.out[4] <--> VariableBandWidthLink <--> router292.in[2];
      router286.out[5] <--> VariableBandWidthLink <--> router293.in[2];
      router286.out[6] <--> VariableBandWidthLink <--> router294.in[2];
      router286.out[7] <--> VariableBandWidthLink <--> router295.in[2];
      router287.out[0] <--> VariableBandWidthLink <--> router418.in[6];
      router287.out[1] <--> VariableBandWidthLink <--> router307.in[6];
      router287.out[2] <--> VariableBandWidthLink <--> router336.in[6];
      router287.out[3] <--> VariableBandWidthLink <--> router259.in[6];
      router287.out[4] <--> VariableBandWidthLink <--> router488.in[0];
      router287.out[5] <--> VariableBandWidthLink <--> router489.in[0];
      router287.out[6] <--> VariableBandWidthLink <--> router490.in[0];
      router287.out[7] <--> VariableBandWidthLink <--> router491.in[0];
      router288.out[0] <--> VariableBandWidthLink <--> router418.in[7];
      router288.out[1] <--> VariableBandWidthLink <--> router307.in[7];
      router288.out[2] <--> VariableBandWidthLink <--> router336.in[7];
      router288.out[3] <--> VariableBandWidthLink <--> router259.in[7];
      router288.out[4] <--> VariableBandWidthLink <--> router492.in[0];
      router288.out[5] <--> VariableBandWidthLink <--> router493.in[0];
      router288.out[6] <--> VariableBandWidthLink <--> router494.in[0];
      router288.out[7] <--> VariableBandWidthLink <--> router495.in[0];
      router289.out[0] <--> VariableBandWidthLink <--> router104.in[0];
      router289.out[1] <--> VariableBandWidthLink <--> router105.in[0];
      router289.out[2] <--> VariableBandWidthLink <--> router106.in[0];
      router289.out[3] <--> VariableBandWidthLink <--> router107.in[0];
      router289.out[4] <--> VariableBandWidthLink <--> router301.in[2];
      router289.out[5] <--> VariableBandWidthLink <--> router302.in[2];
      router289.out[6] <--> VariableBandWidthLink <--> router303.in[2];
      router289.out[7] <--> VariableBandWidthLink <--> router304.in[2];
      router290.out[0] <--> VariableBandWidthLink <--> router341.in[4];
      router290.out[1] <--> VariableBandWidthLink <--> router308.in[4];
      router290.out[2] <--> VariableBandWidthLink <--> router338.in[4];
      router290.out[3] <--> VariableBandWidthLink <--> router260.in[4];
      router290.out[4] <--> VariableBandWidthLink <--> router496.in[0];
      router290.out[5] <--> VariableBandWidthLink <--> router497.in[0];
      router290.out[6] <--> VariableBandWidthLink <--> router498.in[0];
      router290.out[7] <--> VariableBandWidthLink <--> router499.in[0];
      router291.out[0] <--> VariableBandWidthLink <--> router172.in[0];
      router291.out[1] <--> VariableBandWidthLink <--> router173.in[0];
      router291.out[2] <--> VariableBandWidthLink <--> router174.in[0];
      router291.out[3] <--> VariableBandWidthLink <--> router175.in[0];
      router291.out[4] <--> VariableBandWidthLink <--> router292.in[3];
      router291.out[5] <--> VariableBandWidthLink <--> router293.in[3];
      router291.out[6] <--> VariableBandWidthLink <--> router294.in[3];
      router291.out[7] <--> VariableBandWidthLink <--> router295.in[3];
      router292.out[0] <--> VariableBandWidthLink <--> router276.in[4];
      router292.out[1] <--> VariableBandWidthLink <--> router281.in[4];
      router292.out[2] <--> VariableBandWidthLink <--> router286.in[4];
      router292.out[3] <--> VariableBandWidthLink <--> router291.in[4];
      router292.out[4] <--> VariableBandWidthLink <--> router320.in[2];
      router292.out[5] <--> VariableBandWidthLink <--> router321.in[2];
      router292.out[6] <--> VariableBandWidthLink <--> router322.in[2];
      router292.out[7] <--> VariableBandWidthLink <--> router323.in[2];
      router293.out[0] <--> VariableBandWidthLink <--> router276.in[5];
      router293.out[1] <--> VariableBandWidthLink <--> router281.in[5];
      router293.out[2] <--> VariableBandWidthLink <--> router286.in[5];
      router293.out[3] <--> VariableBandWidthLink <--> router291.in[5];
      router293.out[4] <--> VariableBandWidthLink <--> router324.in[2];
      router293.out[5] <--> VariableBandWidthLink <--> router325.in[2];
      router293.out[6] <--> VariableBandWidthLink <--> router326.in[2];
      router293.out[7] <--> VariableBandWidthLink <--> router327.in[2];
      router294.out[0] <--> VariableBandWidthLink <--> router276.in[6];
      router294.out[1] <--> VariableBandWidthLink <--> router281.in[6];
      router294.out[2] <--> VariableBandWidthLink <--> router286.in[6];
      router294.out[3] <--> VariableBandWidthLink <--> router291.in[6];
      router294.out[4] <--> VariableBandWidthLink <--> router328.in[2];
      router294.out[5] <--> VariableBandWidthLink <--> router329.in[2];
      router294.out[6] <--> VariableBandWidthLink <--> router330.in[2];
      router294.out[7] <--> VariableBandWidthLink <--> router331.in[2];
      router295.out[0] <--> VariableBandWidthLink <--> router276.in[7];
      router295.out[1] <--> VariableBandWidthLink <--> router281.in[7];
      router295.out[2] <--> VariableBandWidthLink <--> router286.in[7];
      router295.out[3] <--> VariableBandWidthLink <--> router291.in[7];
      router295.out[4] <--> VariableBandWidthLink <--> router332.in[2];
      router295.out[5] <--> VariableBandWidthLink <--> router333.in[2];
      router295.out[6] <--> VariableBandWidthLink <--> router334.in[2];
      router295.out[7] <--> VariableBandWidthLink <--> router335.in[2];
      router296.out[0] <--> VariableBandWidthLink <--> router341.in[5];
      router296.out[1] <--> VariableBandWidthLink <--> router308.in[5];
      router296.out[2] <--> VariableBandWidthLink <--> router338.in[5];
      router296.out[3] <--> VariableBandWidthLink <--> router260.in[5];
      router296.out[4] <--> VariableBandWidthLink <--> router500.in[0];
      router296.out[5] <--> VariableBandWidthLink <--> router501.in[0];
      router296.out[6] <--> VariableBandWidthLink <--> router502.in[0];
      router296.out[7] <--> VariableBandWidthLink <--> router503.in[0];
      router297.out[0] <--> VariableBandWidthLink <--> router341.in[6];
      router297.out[1] <--> VariableBandWidthLink <--> router308.in[6];
      router297.out[2] <--> VariableBandWidthLink <--> router338.in[6];
      router297.out[3] <--> VariableBandWidthLink <--> router260.in[6];
      router297.out[4] <--> VariableBandWidthLink <--> router504.in[0];
      router297.out[5] <--> VariableBandWidthLink <--> router505.in[0];
      router297.out[6] <--> VariableBandWidthLink <--> router506.in[0];
      router297.out[7] <--> VariableBandWidthLink <--> router507.in[0];
      router298.out[0] <--> VariableBandWidthLink <--> router341.in[7];
      router298.out[1] <--> VariableBandWidthLink <--> router308.in[7];
      router298.out[2] <--> VariableBandWidthLink <--> router338.in[7];
      router298.out[3] <--> VariableBandWidthLink <--> router260.in[7];
      router298.out[4] <--> VariableBandWidthLink <--> router508.in[0];
      router298.out[5] <--> VariableBandWidthLink <--> router509.in[0];
      router298.out[6] <--> VariableBandWidthLink <--> router510.in[0];
      router298.out[7] <--> VariableBandWidthLink <--> router511.in[0];
      router299.out[0] <--> VariableBandWidthLink <--> router108.in[0];
      router299.out[1] <--> VariableBandWidthLink <--> router109.in[0];
      router299.out[2] <--> VariableBandWidthLink <--> router110.in[0];
      router299.out[3] <--> VariableBandWidthLink <--> router111.in[0];
      router299.out[4] <--> VariableBandWidthLink <--> router301.in[3];
      router299.out[5] <--> VariableBandWidthLink <--> router302.in[3];
      router299.out[6] <--> VariableBandWidthLink <--> router303.in[3];
      router299.out[7] <--> VariableBandWidthLink <--> router304.in[3];
      router300.out[0] <--> VariableBandWidthLink <--> router176.in[0];
      router300.out[1] <--> VariableBandWidthLink <--> router177.in[0];
      router300.out[2] <--> VariableBandWidthLink <--> router178.in[0];
      router300.out[3] <--> VariableBandWidthLink <--> router179.in[0];
      router300.out[4] <--> VariableBandWidthLink <--> router316.in[0];
      router300.out[5] <--> VariableBandWidthLink <--> router317.in[0];
      router300.out[6] <--> VariableBandWidthLink <--> router318.in[0];
      router300.out[7] <--> VariableBandWidthLink <--> router319.in[0];
      router301.out[0] <--> VariableBandWidthLink <--> router277.in[4];
      router301.out[1] <--> VariableBandWidthLink <--> router283.in[4];
      router301.out[2] <--> VariableBandWidthLink <--> router289.in[4];
      router301.out[3] <--> VariableBandWidthLink <--> router299.in[4];
      router301.out[4] <--> VariableBandWidthLink <--> router360.in[2];
      router301.out[5] <--> VariableBandWidthLink <--> router361.in[2];
      router301.out[6] <--> VariableBandWidthLink <--> router362.in[2];
      router301.out[7] <--> VariableBandWidthLink <--> router363.in[2];
      router302.out[0] <--> VariableBandWidthLink <--> router277.in[5];
      router302.out[1] <--> VariableBandWidthLink <--> router283.in[5];
      router302.out[2] <--> VariableBandWidthLink <--> router289.in[5];
      router302.out[3] <--> VariableBandWidthLink <--> router299.in[5];
      router302.out[4] <--> VariableBandWidthLink <--> router365.in[2];
      router302.out[5] <--> VariableBandWidthLink <--> router366.in[2];
      router302.out[6] <--> VariableBandWidthLink <--> router367.in[2];
      router302.out[7] <--> VariableBandWidthLink <--> router368.in[2];
      router303.out[0] <--> VariableBandWidthLink <--> router277.in[6];
      router303.out[1] <--> VariableBandWidthLink <--> router283.in[6];
      router303.out[2] <--> VariableBandWidthLink <--> router289.in[6];
      router303.out[3] <--> VariableBandWidthLink <--> router299.in[6];
      router303.out[4] <--> VariableBandWidthLink <--> router370.in[2];
      router303.out[5] <--> VariableBandWidthLink <--> router371.in[2];
      router303.out[6] <--> VariableBandWidthLink <--> router372.in[2];
      router303.out[7] <--> VariableBandWidthLink <--> router373.in[2];
      router304.out[0] <--> VariableBandWidthLink <--> router277.in[7];
      router304.out[1] <--> VariableBandWidthLink <--> router283.in[7];
      router304.out[2] <--> VariableBandWidthLink <--> router289.in[7];
      router304.out[3] <--> VariableBandWidthLink <--> router299.in[7];
      router304.out[4] <--> VariableBandWidthLink <--> router375.in[2];
      router304.out[5] <--> VariableBandWidthLink <--> router376.in[2];
      router304.out[6] <--> VariableBandWidthLink <--> router377.in[2];
      router304.out[7] <--> VariableBandWidthLink <--> router378.in[2];
      router305.out[0] <--> VariableBandWidthLink <--> router180.in[0];
      router305.out[1] <--> VariableBandWidthLink <--> router181.in[0];
      router305.out[2] <--> VariableBandWidthLink <--> router182.in[0];
      router305.out[3] <--> VariableBandWidthLink <--> router183.in[0];
      router305.out[4] <--> VariableBandWidthLink <--> router316.in[1];
      router305.out[5] <--> VariableBandWidthLink <--> router317.in[1];
      router305.out[6] <--> VariableBandWidthLink <--> router318.in[1];
      router305.out[7] <--> VariableBandWidthLink <--> router319.in[1];
      router306.out[0] <--> VariableBandWidthLink <--> router399.in[5];
      router306.out[1] <--> VariableBandWidthLink <--> router342.in[5];
      router306.out[2] <--> VariableBandWidthLink <--> router396.in[5];
      router306.out[3] <--> VariableBandWidthLink <--> router420.in[5];
      router306.out[4] <--> VariableBandWidthLink <--> router278.in[1];
      router306.out[5] <--> VariableBandWidthLink <--> router279.in[1];
      router306.out[6] <--> VariableBandWidthLink <--> router280.in[1];
      router306.out[7] <--> VariableBandWidthLink <--> router282.in[1];
      router307.out[0] <--> VariableBandWidthLink <--> router399.in[6];
      router307.out[1] <--> VariableBandWidthLink <--> router342.in[6];
      router307.out[2] <--> VariableBandWidthLink <--> router396.in[6];
      router307.out[3] <--> VariableBandWidthLink <--> router420.in[6];
      router307.out[4] <--> VariableBandWidthLink <--> router284.in[1];
      router307.out[5] <--> VariableBandWidthLink <--> router285.in[1];
      router307.out[6] <--> VariableBandWidthLink <--> router287.in[1];
      router307.out[7] <--> VariableBandWidthLink <--> router288.in[1];
      router308.out[0] <--> VariableBandWidthLink <--> router399.in[7];
      router308.out[1] <--> VariableBandWidthLink <--> router342.in[7];
      router308.out[2] <--> VariableBandWidthLink <--> router396.in[7];
      router308.out[3] <--> VariableBandWidthLink <--> router420.in[7];
      router308.out[4] <--> VariableBandWidthLink <--> router290.in[1];
      router308.out[5] <--> VariableBandWidthLink <--> router296.in[1];
      router308.out[6] <--> VariableBandWidthLink <--> router297.in[1];
      router308.out[7] <--> VariableBandWidthLink <--> router298.in[1];
      router309.out[0] <--> VariableBandWidthLink <--> router44.in[0];
      router309.out[1] <--> VariableBandWidthLink <--> router45.in[0];
      router309.out[2] <--> VariableBandWidthLink <--> router46.in[0];
      router309.out[3] <--> VariableBandWidthLink <--> router47.in[0];
      router309.out[4] <--> VariableBandWidthLink <--> router313.in[3];
      router309.out[5] <--> VariableBandWidthLink <--> router314.in[3];
      router309.out[6] <--> VariableBandWidthLink <--> router336.in[3];
      router309.out[7] <--> VariableBandWidthLink <--> router338.in[3];
      router310.out[0] <--> VariableBandWidthLink <--> router184.in[0];
      router310.out[1] <--> VariableBandWidthLink <--> router185.in[0];
      router310.out[2] <--> VariableBandWidthLink <--> router186.in[0];
      router310.out[3] <--> VariableBandWidthLink <--> router187.in[0];
      router310.out[4] <--> VariableBandWidthLink <--> router316.in[2];
      router310.out[5] <--> VariableBandWidthLink <--> router317.in[2];
      router310.out[6] <--> VariableBandWidthLink <--> router318.in[2];
      router310.out[7] <--> VariableBandWidthLink <--> router319.in[2];
      router311.out[0] <--> VariableBandWidthLink <--> router112.in[0];
      router311.out[1] <--> VariableBandWidthLink <--> router113.in[0];
      router311.out[2] <--> VariableBandWidthLink <--> router114.in[0];
      router311.out[3] <--> VariableBandWidthLink <--> router115.in[0];
      router311.out[4] <--> VariableBandWidthLink <--> router351.in[0];
      router311.out[5] <--> VariableBandWidthLink <--> router352.in[0];
      router311.out[6] <--> VariableBandWidthLink <--> router353.in[0];
      router311.out[7] <--> VariableBandWidthLink <--> router354.in[0];
      router312.out[0] <--> VariableBandWidthLink <--> router64.in[0];
      router312.out[1] <--> VariableBandWidthLink <--> router65.in[0];
      router312.out[2] <--> VariableBandWidthLink <--> router66.in[0];
      router312.out[3] <--> VariableBandWidthLink <--> router67.in[0];
      router312.out[4] <--> VariableBandWidthLink <--> router390.in[0];
      router312.out[5] <--> VariableBandWidthLink <--> router391.in[0];
      router312.out[6] <--> VariableBandWidthLink <--> router392.in[0];
      router312.out[7] <--> VariableBandWidthLink <--> router394.in[0];
      router313.out[0] <--> VariableBandWidthLink <--> router384.in[4];
      router313.out[1] <--> VariableBandWidthLink <--> router400.in[4];
      router313.out[2] <--> VariableBandWidthLink <--> router421.in[4];
      router313.out[3] <--> VariableBandWidthLink <--> router309.in[4];
      router313.out[4] <--> VariableBandWidthLink <--> router272.in[2];
      router313.out[5] <--> VariableBandWidthLink <--> router273.in[2];
      router313.out[6] <--> VariableBandWidthLink <--> router274.in[2];
      router313.out[7] <--> VariableBandWidthLink <--> router275.in[2];
      router314.out[0] <--> VariableBandWidthLink <--> router384.in[5];
      router314.out[1] <--> VariableBandWidthLink <--> router400.in[5];
      router314.out[2] <--> VariableBandWidthLink <--> router421.in[5];
      router314.out[3] <--> VariableBandWidthLink <--> router309.in[5];
      router314.out[4] <--> VariableBandWidthLink <--> router278.in[2];
      router314.out[5] <--> VariableBandWidthLink <--> router279.in[2];
      router314.out[6] <--> VariableBandWidthLink <--> router280.in[2];
      router314.out[7] <--> VariableBandWidthLink <--> router282.in[2];
      router315.out[0] <--> VariableBandWidthLink <--> router188.in[0];
      router315.out[1] <--> VariableBandWidthLink <--> router189.in[0];
      router315.out[2] <--> VariableBandWidthLink <--> router190.in[0];
      router315.out[3] <--> VariableBandWidthLink <--> router191.in[0];
      router315.out[4] <--> VariableBandWidthLink <--> router316.in[3];
      router315.out[5] <--> VariableBandWidthLink <--> router317.in[3];
      router315.out[6] <--> VariableBandWidthLink <--> router318.in[3];
      router315.out[7] <--> VariableBandWidthLink <--> router319.in[3];
      router316.out[0] <--> VariableBandWidthLink <--> router300.in[4];
      router316.out[1] <--> VariableBandWidthLink <--> router305.in[4];
      router316.out[2] <--> VariableBandWidthLink <--> router310.in[4];
      router316.out[3] <--> VariableBandWidthLink <--> router315.in[4];
      router316.out[4] <--> VariableBandWidthLink <--> router320.in[3];
      router316.out[5] <--> VariableBandWidthLink <--> router321.in[3];
      router316.out[6] <--> VariableBandWidthLink <--> router322.in[3];
      router316.out[7] <--> VariableBandWidthLink <--> router323.in[3];
      router317.out[0] <--> VariableBandWidthLink <--> router300.in[5];
      router317.out[1] <--> VariableBandWidthLink <--> router305.in[5];
      router317.out[2] <--> VariableBandWidthLink <--> router310.in[5];
      router317.out[3] <--> VariableBandWidthLink <--> router315.in[5];
      router317.out[4] <--> VariableBandWidthLink <--> router324.in[3];
      router317.out[5] <--> VariableBandWidthLink <--> router325.in[3];
      router317.out[6] <--> VariableBandWidthLink <--> router326.in[3];
      router317.out[7] <--> VariableBandWidthLink <--> router327.in[3];
      router318.out[0] <--> VariableBandWidthLink <--> router300.in[6];
      router318.out[1] <--> VariableBandWidthLink <--> router305.in[6];
      router318.out[2] <--> VariableBandWidthLink <--> router310.in[6];
      router318.out[3] <--> VariableBandWidthLink <--> router315.in[6];
      router318.out[4] <--> VariableBandWidthLink <--> router328.in[3];
      router318.out[5] <--> VariableBandWidthLink <--> router329.in[3];
      router318.out[6] <--> VariableBandWidthLink <--> router330.in[3];
      router318.out[7] <--> VariableBandWidthLink <--> router331.in[3];
      router319.out[0] <--> VariableBandWidthLink <--> router300.in[7];
      router319.out[1] <--> VariableBandWidthLink <--> router305.in[7];
      router319.out[2] <--> VariableBandWidthLink <--> router310.in[7];
      router319.out[3] <--> VariableBandWidthLink <--> router315.in[7];
      router319.out[4] <--> VariableBandWidthLink <--> router332.in[3];
      router319.out[5] <--> VariableBandWidthLink <--> router333.in[3];
      router319.out[6] <--> VariableBandWidthLink <--> router334.in[3];
      router319.out[7] <--> VariableBandWidthLink <--> router335.in[3];
      router320.out[0] <--> VariableBandWidthLink <--> router413.in[4];
      router320.out[1] <--> VariableBandWidthLink <--> router268.in[4];
      router320.out[2] <--> VariableBandWidthLink <--> router292.in[4];
      router320.out[3] <--> VariableBandWidthLink <--> router316.in[4];
      router320.out[4] <--> VariableBandWidthLink <--> router448.in[2];
      router320.out[5] <--> VariableBandWidthLink <--> router449.in[2];
      router320.out[6] <--> VariableBandWidthLink <--> router450.in[2];
      router320.out[7] <--> VariableBandWidthLink <--> router451.in[2];
      router321.out[0] <--> VariableBandWidthLink <--> router413.in[5];
      router321.out[1] <--> VariableBandWidthLink <--> router268.in[5];
      router321.out[2] <--> VariableBandWidthLink <--> router292.in[5];
      router321.out[3] <--> VariableBandWidthLink <--> router316.in[5];
      router321.out[4] <--> VariableBandWidthLink <--> router452.in[2];
      router321.out[5] <--> VariableBandWidthLink <--> router453.in[2];
      router321.out[6] <--> VariableBandWidthLink <--> router454.in[2];
      router321.out[7] <--> VariableBandWidthLink <--> router455.in[2];
      router322.out[0] <--> VariableBandWidthLink <--> router413.in[6];
      router322.out[1] <--> VariableBandWidthLink <--> router268.in[6];
      router322.out[2] <--> VariableBandWidthLink <--> router292.in[6];
      router322.out[3] <--> VariableBandWidthLink <--> router316.in[6];
      router322.out[4] <--> VariableBandWidthLink <--> router456.in[2];
      router322.out[5] <--> VariableBandWidthLink <--> router457.in[2];
      router322.out[6] <--> VariableBandWidthLink <--> router458.in[2];
      router322.out[7] <--> VariableBandWidthLink <--> router459.in[2];
      router323.out[0] <--> VariableBandWidthLink <--> router413.in[7];
      router323.out[1] <--> VariableBandWidthLink <--> router268.in[7];
      router323.out[2] <--> VariableBandWidthLink <--> router292.in[7];
      router323.out[3] <--> VariableBandWidthLink <--> router316.in[7];
      router323.out[4] <--> VariableBandWidthLink <--> router460.in[2];
      router323.out[5] <--> VariableBandWidthLink <--> router461.in[2];
      router323.out[6] <--> VariableBandWidthLink <--> router462.in[2];
      router323.out[7] <--> VariableBandWidthLink <--> router463.in[2];
      router324.out[0] <--> VariableBandWidthLink <--> router414.in[4];
      router324.out[1] <--> VariableBandWidthLink <--> router269.in[4];
      router324.out[2] <--> VariableBandWidthLink <--> router293.in[4];
      router324.out[3] <--> VariableBandWidthLink <--> router317.in[4];
      router324.out[4] <--> VariableBandWidthLink <--> router464.in[2];
      router324.out[5] <--> VariableBandWidthLink <--> router465.in[2];
      router324.out[6] <--> VariableBandWidthLink <--> router466.in[2];
      router324.out[7] <--> VariableBandWidthLink <--> router467.in[2];
      router325.out[0] <--> VariableBandWidthLink <--> router414.in[5];
      router325.out[1] <--> VariableBandWidthLink <--> router269.in[5];
      router325.out[2] <--> VariableBandWidthLink <--> router293.in[5];
      router325.out[3] <--> VariableBandWidthLink <--> router317.in[5];
      router325.out[4] <--> VariableBandWidthLink <--> router468.in[2];
      router325.out[5] <--> VariableBandWidthLink <--> router469.in[2];
      router325.out[6] <--> VariableBandWidthLink <--> router470.in[2];
      router325.out[7] <--> VariableBandWidthLink <--> router471.in[2];
      router326.out[0] <--> VariableBandWidthLink <--> router414.in[6];
      router326.out[1] <--> VariableBandWidthLink <--> router269.in[6];
      router326.out[2] <--> VariableBandWidthLink <--> router293.in[6];
      router326.out[3] <--> VariableBandWidthLink <--> router317.in[6];
      router326.out[4] <--> VariableBandWidthLink <--> router472.in[2];
      router326.out[5] <--> VariableBandWidthLink <--> router473.in[2];
      router326.out[6] <--> VariableBandWidthLink <--> router474.in[2];
      router326.out[7] <--> VariableBandWidthLink <--> router475.in[2];
      router327.out[0] <--> VariableBandWidthLink <--> router414.in[7];
      router327.out[1] <--> VariableBandWidthLink <--> router269.in[7];
      router327.out[2] <--> VariableBandWidthLink <--> router293.in[7];
      router327.out[3] <--> VariableBandWidthLink <--> router317.in[7];
      router327.out[4] <--> VariableBandWidthLink <--> router476.in[2];
      router327.out[5] <--> VariableBandWidthLink <--> router477.in[2];
      router327.out[6] <--> VariableBandWidthLink <--> router478.in[2];
      router327.out[7] <--> VariableBandWidthLink <--> router479.in[2];
      router328.out[0] <--> VariableBandWidthLink <--> router415.in[4];
      router328.out[1] <--> VariableBandWidthLink <--> router270.in[4];
      router328.out[2] <--> VariableBandWidthLink <--> router294.in[4];
      router328.out[3] <--> VariableBandWidthLink <--> router318.in[4];
      router328.out[4] <--> VariableBandWidthLink <--> router480.in[2];
      router328.out[5] <--> VariableBandWidthLink <--> router481.in[2];
      router328.out[6] <--> VariableBandWidthLink <--> router482.in[2];
      router328.out[7] <--> VariableBandWidthLink <--> router483.in[2];
      router329.out[0] <--> VariableBandWidthLink <--> router415.in[5];
      router329.out[1] <--> VariableBandWidthLink <--> router270.in[5];
      router329.out[2] <--> VariableBandWidthLink <--> router294.in[5];
      router329.out[3] <--> VariableBandWidthLink <--> router318.in[5];
      router329.out[4] <--> VariableBandWidthLink <--> router484.in[2];
      router329.out[5] <--> VariableBandWidthLink <--> router485.in[2];
      router329.out[6] <--> VariableBandWidthLink <--> router486.in[2];
      router329.out[7] <--> VariableBandWidthLink <--> router487.in[2];
      router330.out[0] <--> VariableBandWidthLink <--> router415.in[6];
      router330.out[1] <--> VariableBandWidthLink <--> router270.in[6];
      router330.out[2] <--> VariableBandWidthLink <--> router294.in[6];
      router330.out[3] <--> VariableBandWidthLink <--> router318.in[6];
      router330.out[4] <--> VariableBandWidthLink <--> router488.in[2];
      router330.out[5] <--> VariableBandWidthLink <--> router489.in[2];
      router330.out[6] <--> VariableBandWidthLink <--> router490.in[2];
      router330.out[7] <--> VariableBandWidthLink <--> router491.in[2];
      router331.out[0] <--> VariableBandWidthLink <--> router415.in[7];
      router331.out[1] <--> VariableBandWidthLink <--> router270.in[7];
      router331.out[2] <--> VariableBandWidthLink <--> router294.in[7];
      router331.out[3] <--> VariableBandWidthLink <--> router318.in[7];
      router331.out[4] <--> VariableBandWidthLink <--> router492.in[2];
      router331.out[5] <--> VariableBandWidthLink <--> router493.in[2];
      router331.out[6] <--> VariableBandWidthLink <--> router494.in[2];
      router331.out[7] <--> VariableBandWidthLink <--> router495.in[2];
      router332.out[0] <--> VariableBandWidthLink <--> router416.in[4];
      router332.out[1] <--> VariableBandWidthLink <--> router271.in[4];
      router332.out[2] <--> VariableBandWidthLink <--> router295.in[4];
      router332.out[3] <--> VariableBandWidthLink <--> router319.in[4];
      router332.out[4] <--> VariableBandWidthLink <--> router496.in[2];
      router332.out[5] <--> VariableBandWidthLink <--> router497.in[2];
      router332.out[6] <--> VariableBandWidthLink <--> router498.in[2];
      router332.out[7] <--> VariableBandWidthLink <--> router499.in[2];
      router333.out[0] <--> VariableBandWidthLink <--> router416.in[5];
      router333.out[1] <--> VariableBandWidthLink <--> router271.in[5];
      router333.out[2] <--> VariableBandWidthLink <--> router295.in[5];
      router333.out[3] <--> VariableBandWidthLink <--> router319.in[5];
      router333.out[4] <--> VariableBandWidthLink <--> router500.in[2];
      router333.out[5] <--> VariableBandWidthLink <--> router501.in[2];
      router333.out[6] <--> VariableBandWidthLink <--> router502.in[2];
      router333.out[7] <--> VariableBandWidthLink <--> router503.in[2];
      router334.out[0] <--> VariableBandWidthLink <--> router416.in[6];
      router334.out[1] <--> VariableBandWidthLink <--> router271.in[6];
      router334.out[2] <--> VariableBandWidthLink <--> router295.in[6];
      router334.out[3] <--> VariableBandWidthLink <--> router319.in[6];
      router334.out[4] <--> VariableBandWidthLink <--> router504.in[2];
      router334.out[5] <--> VariableBandWidthLink <--> router505.in[2];
      router334.out[6] <--> VariableBandWidthLink <--> router506.in[2];
      router334.out[7] <--> VariableBandWidthLink <--> router507.in[2];
      router335.out[0] <--> VariableBandWidthLink <--> router416.in[7];
      router335.out[1] <--> VariableBandWidthLink <--> router271.in[7];
      router335.out[2] <--> VariableBandWidthLink <--> router295.in[7];
      router335.out[3] <--> VariableBandWidthLink <--> router319.in[7];
      router335.out[4] <--> VariableBandWidthLink <--> router508.in[2];
      router335.out[5] <--> VariableBandWidthLink <--> router509.in[2];
      router335.out[6] <--> VariableBandWidthLink <--> router510.in[2];
      router335.out[7] <--> VariableBandWidthLink <--> router511.in[2];
      router336.out[0] <--> VariableBandWidthLink <--> router384.in[6];
      router336.out[1] <--> VariableBandWidthLink <--> router400.in[6];
      router336.out[2] <--> VariableBandWidthLink <--> router421.in[6];
      router336.out[3] <--> VariableBandWidthLink <--> router309.in[6];
      router336.out[4] <--> VariableBandWidthLink <--> router284.in[2];
      router336.out[5] <--> VariableBandWidthLink <--> router285.in[2];
      router336.out[6] <--> VariableBandWidthLink <--> router287.in[2];
      router336.out[7] <--> VariableBandWidthLink <--> router288.in[2];
      router337.out[0] <--> VariableBandWidthLink <--> router116.in[0];
      router337.out[1] <--> VariableBandWidthLink <--> router117.in[0];
      router337.out[2] <--> VariableBandWidthLink <--> router118.in[0];
      router337.out[3] <--> VariableBandWidthLink <--> router119.in[0];
      router337.out[4] <--> VariableBandWidthLink <--> router351.in[1];
      router337.out[5] <--> VariableBandWidthLink <--> router352.in[1];
      router337.out[6] <--> VariableBandWidthLink <--> router353.in[1];
      router337.out[7] <--> VariableBandWidthLink <--> router354.in[1];
      router338.out[0] <--> VariableBandWidthLink <--> router384.in[7];
      router338.out[1] <--> VariableBandWidthLink <--> router400.in[7];
      router338.out[2] <--> VariableBandWidthLink <--> router421.in[7];
      router338.out[3] <--> VariableBandWidthLink <--> router309.in[7];
      router338.out[4] <--> VariableBandWidthLink <--> router290.in[2];
      router338.out[5] <--> VariableBandWidthLink <--> router296.in[2];
      router338.out[6] <--> VariableBandWidthLink <--> router297.in[2];
      router338.out[7] <--> VariableBandWidthLink <--> router298.in[2];
      router339.out[0] <--> VariableBandWidthLink <--> router68.in[0];
      router339.out[1] <--> VariableBandWidthLink <--> router69.in[0];
      router339.out[2] <--> VariableBandWidthLink <--> router70.in[0];
      router339.out[3] <--> VariableBandWidthLink <--> router71.in[0];
      router339.out[4] <--> VariableBandWidthLink <--> router390.in[1];
      router339.out[5] <--> VariableBandWidthLink <--> router391.in[1];
      router339.out[6] <--> VariableBandWidthLink <--> router392.in[1];
      router339.out[7] <--> VariableBandWidthLink <--> router394.in[1];
      router340.out[0] <--> VariableBandWidthLink <--> router192.in[0];
      router340.out[1] <--> VariableBandWidthLink <--> router193.in[0];
      router340.out[2] <--> VariableBandWidthLink <--> router194.in[0];
      router340.out[3] <--> VariableBandWidthLink <--> router195.in[0];
      router340.out[4] <--> VariableBandWidthLink <--> router356.in[0];
      router340.out[5] <--> VariableBandWidthLink <--> router357.in[0];
      router340.out[6] <--> VariableBandWidthLink <--> router358.in[0];
      router340.out[7] <--> VariableBandWidthLink <--> router359.in[0];
      router341.out[0] <--> VariableBandWidthLink <--> router385.in[7];
      router341.out[1] <--> VariableBandWidthLink <--> router344.in[7];
      router341.out[2] <--> VariableBandWidthLink <--> router346.in[7];
      router341.out[3] <--> VariableBandWidthLink <--> router386.in[7];
      router341.out[4] <--> VariableBandWidthLink <--> router290.in[0];
      router341.out[5] <--> VariableBandWidthLink <--> router296.in[0];
      router341.out[6] <--> VariableBandWidthLink <--> router297.in[0];
      router341.out[7] <--> VariableBandWidthLink <--> router298.in[0];
      router342.out[0] <--> VariableBandWidthLink <--> router20.in[0];
      router342.out[1] <--> VariableBandWidthLink <--> router21.in[0];
      router342.out[2] <--> VariableBandWidthLink <--> router22.in[0];
      router342.out[3] <--> VariableBandWidthLink <--> router23.in[0];
      router342.out[4] <--> VariableBandWidthLink <--> router424.in[1];
      router342.out[5] <--> VariableBandWidthLink <--> router306.in[1];
      router342.out[6] <--> VariableBandWidthLink <--> router307.in[1];
      router342.out[7] <--> VariableBandWidthLink <--> router308.in[1];
      router343.out[0] <--> VariableBandWidthLink <--> router120.in[0];
      router343.out[1] <--> VariableBandWidthLink <--> router121.in[0];
      router343.out[2] <--> VariableBandWidthLink <--> router122.in[0];
      router343.out[3] <--> VariableBandWidthLink <--> router123.in[0];
      router343.out[4] <--> VariableBandWidthLink <--> router351.in[2];
      router343.out[5] <--> VariableBandWidthLink <--> router352.in[2];
      router343.out[6] <--> VariableBandWidthLink <--> router353.in[2];
      router343.out[7] <--> VariableBandWidthLink <--> router354.in[2];
      router344.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router344.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router344.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router344.out[3] <--> VariableBandWidthLink <--> router7.in[0];
      router344.out[4] <--> VariableBandWidthLink <--> router408.in[1];
      router344.out[5] <--> VariableBandWidthLink <--> router409.in[1];
      router344.out[6] <--> VariableBandWidthLink <--> router418.in[1];
      router344.out[7] <--> VariableBandWidthLink <--> router341.in[1];
      router345.out[0] <--> VariableBandWidthLink <--> router196.in[0];
      router345.out[1] <--> VariableBandWidthLink <--> router197.in[0];
      router345.out[2] <--> VariableBandWidthLink <--> router198.in[0];
      router345.out[3] <--> VariableBandWidthLink <--> router199.in[0];
      router345.out[4] <--> VariableBandWidthLink <--> router356.in[1];
      router345.out[5] <--> VariableBandWidthLink <--> router357.in[1];
      router345.out[6] <--> VariableBandWidthLink <--> router358.in[1];
      router345.out[7] <--> VariableBandWidthLink <--> router359.in[1];
      router346.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router346.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router346.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router346.out[3] <--> VariableBandWidthLink <--> router11.in[0];
      router346.out[4] <--> VariableBandWidthLink <--> router408.in[2];
      router346.out[5] <--> VariableBandWidthLink <--> router409.in[2];
      router346.out[6] <--> VariableBandWidthLink <--> router418.in[2];
      router346.out[7] <--> VariableBandWidthLink <--> router341.in[2];
      router347.out[0] <--> VariableBandWidthLink <--> router72.in[0];
      router347.out[1] <--> VariableBandWidthLink <--> router73.in[0];
      router347.out[2] <--> VariableBandWidthLink <--> router74.in[0];
      router347.out[3] <--> VariableBandWidthLink <--> router75.in[0];
      router347.out[4] <--> VariableBandWidthLink <--> router390.in[2];
      router347.out[5] <--> VariableBandWidthLink <--> router391.in[2];
      router347.out[6] <--> VariableBandWidthLink <--> router392.in[2];
      router347.out[7] <--> VariableBandWidthLink <--> router394.in[2];
      router348.out[0] <--> VariableBandWidthLink <--> router48.in[0];
      router348.out[1] <--> VariableBandWidthLink <--> router49.in[0];
      router348.out[2] <--> VariableBandWidthLink <--> router50.in[0];
      router348.out[3] <--> VariableBandWidthLink <--> router51.in[0];
      router348.out[4] <--> VariableBandWidthLink <--> router256.in[0];
      router348.out[5] <--> VariableBandWidthLink <--> router258.in[0];
      router348.out[6] <--> VariableBandWidthLink <--> router259.in[0];
      router348.out[7] <--> VariableBandWidthLink <--> router260.in[0];
      router349.out[0] <--> VariableBandWidthLink <--> router124.in[0];
      router349.out[1] <--> VariableBandWidthLink <--> router125.in[0];
      router349.out[2] <--> VariableBandWidthLink <--> router126.in[0];
      router349.out[3] <--> VariableBandWidthLink <--> router127.in[0];
      router349.out[4] <--> VariableBandWidthLink <--> router351.in[3];
      router349.out[5] <--> VariableBandWidthLink <--> router352.in[3];
      router349.out[6] <--> VariableBandWidthLink <--> router353.in[3];
      router349.out[7] <--> VariableBandWidthLink <--> router354.in[3];
      router350.out[0] <--> VariableBandWidthLink <--> router200.in[0];
      router350.out[1] <--> VariableBandWidthLink <--> router201.in[0];
      router350.out[2] <--> VariableBandWidthLink <--> router202.in[0];
      router350.out[3] <--> VariableBandWidthLink <--> router203.in[0];
      router350.out[4] <--> VariableBandWidthLink <--> router356.in[2];
      router350.out[5] <--> VariableBandWidthLink <--> router357.in[2];
      router350.out[6] <--> VariableBandWidthLink <--> router358.in[2];
      router350.out[7] <--> VariableBandWidthLink <--> router359.in[2];
      router351.out[0] <--> VariableBandWidthLink <--> router311.in[4];
      router351.out[1] <--> VariableBandWidthLink <--> router337.in[4];
      router351.out[2] <--> VariableBandWidthLink <--> router343.in[4];
      router351.out[3] <--> VariableBandWidthLink <--> router349.in[4];
      router351.out[4] <--> VariableBandWidthLink <--> router360.in[3];
      router351.out[5] <--> VariableBandWidthLink <--> router361.in[3];
      router351.out[6] <--> VariableBandWidthLink <--> router362.in[3];
      router351.out[7] <--> VariableBandWidthLink <--> router363.in[3];
      router352.out[0] <--> VariableBandWidthLink <--> router311.in[5];
      router352.out[1] <--> VariableBandWidthLink <--> router337.in[5];
      router352.out[2] <--> VariableBandWidthLink <--> router343.in[5];
      router352.out[3] <--> VariableBandWidthLink <--> router349.in[5];
      router352.out[4] <--> VariableBandWidthLink <--> router365.in[3];
      router352.out[5] <--> VariableBandWidthLink <--> router366.in[3];
      router352.out[6] <--> VariableBandWidthLink <--> router367.in[3];
      router352.out[7] <--> VariableBandWidthLink <--> router368.in[3];
      router353.out[0] <--> VariableBandWidthLink <--> router311.in[6];
      router353.out[1] <--> VariableBandWidthLink <--> router337.in[6];
      router353.out[2] <--> VariableBandWidthLink <--> router343.in[6];
      router353.out[3] <--> VariableBandWidthLink <--> router349.in[6];
      router353.out[4] <--> VariableBandWidthLink <--> router370.in[3];
      router353.out[5] <--> VariableBandWidthLink <--> router371.in[3];
      router353.out[6] <--> VariableBandWidthLink <--> router372.in[3];
      router353.out[7] <--> VariableBandWidthLink <--> router373.in[3];
      router354.out[0] <--> VariableBandWidthLink <--> router311.in[7];
      router354.out[1] <--> VariableBandWidthLink <--> router337.in[7];
      router354.out[2] <--> VariableBandWidthLink <--> router343.in[7];
      router354.out[3] <--> VariableBandWidthLink <--> router349.in[7];
      router354.out[4] <--> VariableBandWidthLink <--> router375.in[3];
      router354.out[5] <--> VariableBandWidthLink <--> router376.in[3];
      router354.out[6] <--> VariableBandWidthLink <--> router377.in[3];
      router354.out[7] <--> VariableBandWidthLink <--> router378.in[3];
      router355.out[0] <--> VariableBandWidthLink <--> router204.in[0];
      router355.out[1] <--> VariableBandWidthLink <--> router205.in[0];
      router355.out[2] <--> VariableBandWidthLink <--> router206.in[0];
      router355.out[3] <--> VariableBandWidthLink <--> router207.in[0];
      router355.out[4] <--> VariableBandWidthLink <--> router356.in[3];
      router355.out[5] <--> VariableBandWidthLink <--> router357.in[3];
      router355.out[6] <--> VariableBandWidthLink <--> router358.in[3];
      router355.out[7] <--> VariableBandWidthLink <--> router359.in[3];
      router356.out[0] <--> VariableBandWidthLink <--> router340.in[4];
      router356.out[1] <--> VariableBandWidthLink <--> router345.in[4];
      router356.out[2] <--> VariableBandWidthLink <--> router350.in[4];
      router356.out[3] <--> VariableBandWidthLink <--> router355.in[4];
      router356.out[4] <--> VariableBandWidthLink <--> router432.in[0];
      router356.out[5] <--> VariableBandWidthLink <--> router433.in[0];
      router356.out[6] <--> VariableBandWidthLink <--> router434.in[0];
      router356.out[7] <--> VariableBandWidthLink <--> router435.in[0];
      router357.out[0] <--> VariableBandWidthLink <--> router340.in[5];
      router357.out[1] <--> VariableBandWidthLink <--> router345.in[5];
      router357.out[2] <--> VariableBandWidthLink <--> router350.in[5];
      router357.out[3] <--> VariableBandWidthLink <--> router355.in[5];
      router357.out[4] <--> VariableBandWidthLink <--> router436.in[0];
      router357.out[5] <--> VariableBandWidthLink <--> router437.in[0];
      router357.out[6] <--> VariableBandWidthLink <--> router438.in[0];
      router357.out[7] <--> VariableBandWidthLink <--> router439.in[0];
      router358.out[0] <--> VariableBandWidthLink <--> router340.in[6];
      router358.out[1] <--> VariableBandWidthLink <--> router345.in[6];
      router358.out[2] <--> VariableBandWidthLink <--> router350.in[6];
      router358.out[3] <--> VariableBandWidthLink <--> router355.in[6];
      router358.out[4] <--> VariableBandWidthLink <--> router440.in[0];
      router358.out[5] <--> VariableBandWidthLink <--> router441.in[0];
      router358.out[6] <--> VariableBandWidthLink <--> router442.in[0];
      router358.out[7] <--> VariableBandWidthLink <--> router443.in[0];
      router359.out[0] <--> VariableBandWidthLink <--> router340.in[7];
      router359.out[1] <--> VariableBandWidthLink <--> router345.in[7];
      router359.out[2] <--> VariableBandWidthLink <--> router350.in[7];
      router359.out[3] <--> VariableBandWidthLink <--> router355.in[7];
      router359.out[4] <--> VariableBandWidthLink <--> router444.in[0];
      router359.out[5] <--> VariableBandWidthLink <--> router445.in[0];
      router359.out[6] <--> VariableBandWidthLink <--> router446.in[0];
      router359.out[7] <--> VariableBandWidthLink <--> router447.in[0];
      router360.out[0] <--> VariableBandWidthLink <--> router390.in[4];
      router360.out[1] <--> VariableBandWidthLink <--> router263.in[4];
      router360.out[2] <--> VariableBandWidthLink <--> router301.in[4];
      router360.out[3] <--> VariableBandWidthLink <--> router351.in[4];
      router360.out[4] <--> VariableBandWidthLink <--> router448.in[1];
      router360.out[5] <--> VariableBandWidthLink <--> router449.in[1];
      router360.out[6] <--> VariableBandWidthLink <--> router450.in[1];
      router360.out[7] <--> VariableBandWidthLink <--> router451.in[1];
      router361.out[0] <--> VariableBandWidthLink <--> router390.in[5];
      router361.out[1] <--> VariableBandWidthLink <--> router263.in[5];
      router361.out[2] <--> VariableBandWidthLink <--> router301.in[5];
      router361.out[3] <--> VariableBandWidthLink <--> router351.in[5];
      router361.out[4] <--> VariableBandWidthLink <--> router452.in[1];
      router361.out[5] <--> VariableBandWidthLink <--> router453.in[1];
      router361.out[6] <--> VariableBandWidthLink <--> router454.in[1];
      router361.out[7] <--> VariableBandWidthLink <--> router455.in[1];
      router362.out[0] <--> VariableBandWidthLink <--> router390.in[6];
      router362.out[1] <--> VariableBandWidthLink <--> router263.in[6];
      router362.out[2] <--> VariableBandWidthLink <--> router301.in[6];
      router362.out[3] <--> VariableBandWidthLink <--> router351.in[6];
      router362.out[4] <--> VariableBandWidthLink <--> router456.in[1];
      router362.out[5] <--> VariableBandWidthLink <--> router457.in[1];
      router362.out[6] <--> VariableBandWidthLink <--> router458.in[1];
      router362.out[7] <--> VariableBandWidthLink <--> router459.in[1];
      router363.out[0] <--> VariableBandWidthLink <--> router390.in[7];
      router363.out[1] <--> VariableBandWidthLink <--> router263.in[7];
      router363.out[2] <--> VariableBandWidthLink <--> router301.in[7];
      router363.out[3] <--> VariableBandWidthLink <--> router351.in[7];
      router363.out[4] <--> VariableBandWidthLink <--> router460.in[1];
      router363.out[5] <--> VariableBandWidthLink <--> router461.in[1];
      router363.out[6] <--> VariableBandWidthLink <--> router462.in[1];
      router363.out[7] <--> VariableBandWidthLink <--> router463.in[1];
      router364.out[0] <--> VariableBandWidthLink <--> router208.in[0];
      router364.out[1] <--> VariableBandWidthLink <--> router209.in[0];
      router364.out[2] <--> VariableBandWidthLink <--> router210.in[0];
      router364.out[3] <--> VariableBandWidthLink <--> router211.in[0];
      router364.out[4] <--> VariableBandWidthLink <--> router380.in[0];
      router364.out[5] <--> VariableBandWidthLink <--> router381.in[0];
      router364.out[6] <--> VariableBandWidthLink <--> router382.in[0];
      router364.out[7] <--> VariableBandWidthLink <--> router383.in[0];
      router365.out[0] <--> VariableBandWidthLink <--> router391.in[4];
      router365.out[1] <--> VariableBandWidthLink <--> router264.in[4];
      router365.out[2] <--> VariableBandWidthLink <--> router302.in[4];
      router365.out[3] <--> VariableBandWidthLink <--> router352.in[4];
      router365.out[4] <--> VariableBandWidthLink <--> router464.in[1];
      router365.out[5] <--> VariableBandWidthLink <--> router465.in[1];
      router365.out[6] <--> VariableBandWidthLink <--> router466.in[1];
      router365.out[7] <--> VariableBandWidthLink <--> router467.in[1];
      router366.out[0] <--> VariableBandWidthLink <--> router391.in[5];
      router366.out[1] <--> VariableBandWidthLink <--> router264.in[5];
      router366.out[2] <--> VariableBandWidthLink <--> router302.in[5];
      router366.out[3] <--> VariableBandWidthLink <--> router352.in[5];
      router366.out[4] <--> VariableBandWidthLink <--> router468.in[1];
      router366.out[5] <--> VariableBandWidthLink <--> router469.in[1];
      router366.out[6] <--> VariableBandWidthLink <--> router470.in[1];
      router366.out[7] <--> VariableBandWidthLink <--> router471.in[1];
      router367.out[0] <--> VariableBandWidthLink <--> router391.in[6];
      router367.out[1] <--> VariableBandWidthLink <--> router264.in[6];
      router367.out[2] <--> VariableBandWidthLink <--> router302.in[6];
      router367.out[3] <--> VariableBandWidthLink <--> router352.in[6];
      router367.out[4] <--> VariableBandWidthLink <--> router472.in[1];
      router367.out[5] <--> VariableBandWidthLink <--> router473.in[1];
      router367.out[6] <--> VariableBandWidthLink <--> router474.in[1];
      router367.out[7] <--> VariableBandWidthLink <--> router475.in[1];
      router368.out[0] <--> VariableBandWidthLink <--> router391.in[7];
      router368.out[1] <--> VariableBandWidthLink <--> router264.in[7];
      router368.out[2] <--> VariableBandWidthLink <--> router302.in[7];
      router368.out[3] <--> VariableBandWidthLink <--> router352.in[7];
      router368.out[4] <--> VariableBandWidthLink <--> router476.in[1];
      router368.out[5] <--> VariableBandWidthLink <--> router477.in[1];
      router368.out[6] <--> VariableBandWidthLink <--> router478.in[1];
      router368.out[7] <--> VariableBandWidthLink <--> router479.in[1];
      router369.out[0] <--> VariableBandWidthLink <--> router212.in[0];
      router369.out[1] <--> VariableBandWidthLink <--> router213.in[0];
      router369.out[2] <--> VariableBandWidthLink <--> router214.in[0];
      router369.out[3] <--> VariableBandWidthLink <--> router215.in[0];
      router369.out[4] <--> VariableBandWidthLink <--> router380.in[1];
      router369.out[5] <--> VariableBandWidthLink <--> router381.in[1];
      router369.out[6] <--> VariableBandWidthLink <--> router382.in[1];
      router369.out[7] <--> VariableBandWidthLink <--> router383.in[1];
      router370.out[0] <--> VariableBandWidthLink <--> router392.in[4];
      router370.out[1] <--> VariableBandWidthLink <--> router265.in[4];
      router370.out[2] <--> VariableBandWidthLink <--> router303.in[4];
      router370.out[3] <--> VariableBandWidthLink <--> router353.in[4];
      router370.out[4] <--> VariableBandWidthLink <--> router480.in[1];
      router370.out[5] <--> VariableBandWidthLink <--> router481.in[1];
      router370.out[6] <--> VariableBandWidthLink <--> router482.in[1];
      router370.out[7] <--> VariableBandWidthLink <--> router483.in[1];
      router371.out[0] <--> VariableBandWidthLink <--> router392.in[5];
      router371.out[1] <--> VariableBandWidthLink <--> router265.in[5];
      router371.out[2] <--> VariableBandWidthLink <--> router303.in[5];
      router371.out[3] <--> VariableBandWidthLink <--> router353.in[5];
      router371.out[4] <--> VariableBandWidthLink <--> router484.in[1];
      router371.out[5] <--> VariableBandWidthLink <--> router485.in[1];
      router371.out[6] <--> VariableBandWidthLink <--> router486.in[1];
      router371.out[7] <--> VariableBandWidthLink <--> router487.in[1];
      router372.out[0] <--> VariableBandWidthLink <--> router392.in[6];
      router372.out[1] <--> VariableBandWidthLink <--> router265.in[6];
      router372.out[2] <--> VariableBandWidthLink <--> router303.in[6];
      router372.out[3] <--> VariableBandWidthLink <--> router353.in[6];
      router372.out[4] <--> VariableBandWidthLink <--> router488.in[1];
      router372.out[5] <--> VariableBandWidthLink <--> router489.in[1];
      router372.out[6] <--> VariableBandWidthLink <--> router490.in[1];
      router372.out[7] <--> VariableBandWidthLink <--> router491.in[1];
      router373.out[0] <--> VariableBandWidthLink <--> router392.in[7];
      router373.out[1] <--> VariableBandWidthLink <--> router265.in[7];
      router373.out[2] <--> VariableBandWidthLink <--> router303.in[7];
      router373.out[3] <--> VariableBandWidthLink <--> router353.in[7];
      router373.out[4] <--> VariableBandWidthLink <--> router492.in[1];
      router373.out[5] <--> VariableBandWidthLink <--> router493.in[1];
      router373.out[6] <--> VariableBandWidthLink <--> router494.in[1];
      router373.out[7] <--> VariableBandWidthLink <--> router495.in[1];
      router374.out[0] <--> VariableBandWidthLink <--> router216.in[0];
      router374.out[1] <--> VariableBandWidthLink <--> router217.in[0];
      router374.out[2] <--> VariableBandWidthLink <--> router218.in[0];
      router374.out[3] <--> VariableBandWidthLink <--> router219.in[0];
      router374.out[4] <--> VariableBandWidthLink <--> router380.in[2];
      router374.out[5] <--> VariableBandWidthLink <--> router381.in[2];
      router374.out[6] <--> VariableBandWidthLink <--> router382.in[2];
      router374.out[7] <--> VariableBandWidthLink <--> router383.in[2];
      router375.out[0] <--> VariableBandWidthLink <--> router394.in[4];
      router375.out[1] <--> VariableBandWidthLink <--> router266.in[4];
      router375.out[2] <--> VariableBandWidthLink <--> router304.in[4];
      router375.out[3] <--> VariableBandWidthLink <--> router354.in[4];
      router375.out[4] <--> VariableBandWidthLink <--> router496.in[1];
      router375.out[5] <--> VariableBandWidthLink <--> router497.in[1];
      router375.out[6] <--> VariableBandWidthLink <--> router498.in[1];
      router375.out[7] <--> VariableBandWidthLink <--> router499.in[1];
      router376.out[0] <--> VariableBandWidthLink <--> router394.in[5];
      router376.out[1] <--> VariableBandWidthLink <--> router266.in[5];
      router376.out[2] <--> VariableBandWidthLink <--> router304.in[5];
      router376.out[3] <--> VariableBandWidthLink <--> router354.in[5];
      router376.out[4] <--> VariableBandWidthLink <--> router500.in[1];
      router376.out[5] <--> VariableBandWidthLink <--> router501.in[1];
      router376.out[6] <--> VariableBandWidthLink <--> router502.in[1];
      router376.out[7] <--> VariableBandWidthLink <--> router503.in[1];
      router377.out[0] <--> VariableBandWidthLink <--> router394.in[6];
      router377.out[1] <--> VariableBandWidthLink <--> router266.in[6];
      router377.out[2] <--> VariableBandWidthLink <--> router304.in[6];
      router377.out[3] <--> VariableBandWidthLink <--> router354.in[6];
      router377.out[4] <--> VariableBandWidthLink <--> router504.in[1];
      router377.out[5] <--> VariableBandWidthLink <--> router505.in[1];
      router377.out[6] <--> VariableBandWidthLink <--> router506.in[1];
      router377.out[7] <--> VariableBandWidthLink <--> router507.in[1];
      router378.out[0] <--> VariableBandWidthLink <--> router394.in[7];
      router378.out[1] <--> VariableBandWidthLink <--> router266.in[7];
      router378.out[2] <--> VariableBandWidthLink <--> router304.in[7];
      router378.out[3] <--> VariableBandWidthLink <--> router354.in[7];
      router378.out[4] <--> VariableBandWidthLink <--> router508.in[1];
      router378.out[5] <--> VariableBandWidthLink <--> router509.in[1];
      router378.out[6] <--> VariableBandWidthLink <--> router510.in[1];
      router378.out[7] <--> VariableBandWidthLink <--> router511.in[1];
      router379.out[0] <--> VariableBandWidthLink <--> router220.in[0];
      router379.out[1] <--> VariableBandWidthLink <--> router221.in[0];
      router379.out[2] <--> VariableBandWidthLink <--> router222.in[0];
      router379.out[3] <--> VariableBandWidthLink <--> router223.in[0];
      router379.out[4] <--> VariableBandWidthLink <--> router380.in[3];
      router379.out[5] <--> VariableBandWidthLink <--> router381.in[3];
      router379.out[6] <--> VariableBandWidthLink <--> router382.in[3];
      router379.out[7] <--> VariableBandWidthLink <--> router383.in[3];
      router380.out[0] <--> VariableBandWidthLink <--> router364.in[4];
      router380.out[1] <--> VariableBandWidthLink <--> router369.in[4];
      router380.out[2] <--> VariableBandWidthLink <--> router374.in[4];
      router380.out[3] <--> VariableBandWidthLink <--> router379.in[4];
      router380.out[4] <--> VariableBandWidthLink <--> router432.in[1];
      router380.out[5] <--> VariableBandWidthLink <--> router433.in[1];
      router380.out[6] <--> VariableBandWidthLink <--> router434.in[1];
      router380.out[7] <--> VariableBandWidthLink <--> router435.in[1];
      router381.out[0] <--> VariableBandWidthLink <--> router364.in[5];
      router381.out[1] <--> VariableBandWidthLink <--> router369.in[5];
      router381.out[2] <--> VariableBandWidthLink <--> router374.in[5];
      router381.out[3] <--> VariableBandWidthLink <--> router379.in[5];
      router381.out[4] <--> VariableBandWidthLink <--> router436.in[1];
      router381.out[5] <--> VariableBandWidthLink <--> router437.in[1];
      router381.out[6] <--> VariableBandWidthLink <--> router438.in[1];
      router381.out[7] <--> VariableBandWidthLink <--> router439.in[1];
      router382.out[0] <--> VariableBandWidthLink <--> router364.in[6];
      router382.out[1] <--> VariableBandWidthLink <--> router369.in[6];
      router382.out[2] <--> VariableBandWidthLink <--> router374.in[6];
      router382.out[3] <--> VariableBandWidthLink <--> router379.in[6];
      router382.out[4] <--> VariableBandWidthLink <--> router440.in[1];
      router382.out[5] <--> VariableBandWidthLink <--> router441.in[1];
      router382.out[6] <--> VariableBandWidthLink <--> router442.in[1];
      router382.out[7] <--> VariableBandWidthLink <--> router443.in[1];
      router383.out[0] <--> VariableBandWidthLink <--> router364.in[7];
      router383.out[1] <--> VariableBandWidthLink <--> router369.in[7];
      router383.out[2] <--> VariableBandWidthLink <--> router374.in[7];
      router383.out[3] <--> VariableBandWidthLink <--> router379.in[7];
      router383.out[4] <--> VariableBandWidthLink <--> router444.in[1];
      router383.out[5] <--> VariableBandWidthLink <--> router445.in[1];
      router383.out[6] <--> VariableBandWidthLink <--> router446.in[1];
      router383.out[7] <--> VariableBandWidthLink <--> router447.in[1];
      router384.out[0] <--> VariableBandWidthLink <--> router32.in[0];
      router384.out[1] <--> VariableBandWidthLink <--> router33.in[0];
      router384.out[2] <--> VariableBandWidthLink <--> router34.in[0];
      router384.out[3] <--> VariableBandWidthLink <--> router35.in[0];
      router384.out[4] <--> VariableBandWidthLink <--> router313.in[0];
      router384.out[5] <--> VariableBandWidthLink <--> router314.in[0];
      router384.out[6] <--> VariableBandWidthLink <--> router336.in[0];
      router384.out[7] <--> VariableBandWidthLink <--> router338.in[0];
      router385.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router385.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router385.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router385.out[3] <--> VariableBandWidthLink <--> router3.in[0];
      router385.out[4] <--> VariableBandWidthLink <--> router408.in[0];
      router385.out[5] <--> VariableBandWidthLink <--> router409.in[0];
      router385.out[6] <--> VariableBandWidthLink <--> router418.in[0];
      router385.out[7] <--> VariableBandWidthLink <--> router341.in[0];
      router386.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router386.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router386.out[2] <--> VariableBandWidthLink <--> router14.in[0];
      router386.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router386.out[4] <--> VariableBandWidthLink <--> router408.in[3];
      router386.out[5] <--> VariableBandWidthLink <--> router409.in[3];
      router386.out[6] <--> VariableBandWidthLink <--> router418.in[3];
      router386.out[7] <--> VariableBandWidthLink <--> router341.in[3];
      router387.out[0] <--> VariableBandWidthLink <--> router76.in[0];
      router387.out[1] <--> VariableBandWidthLink <--> router77.in[0];
      router387.out[2] <--> VariableBandWidthLink <--> router78.in[0];
      router387.out[3] <--> VariableBandWidthLink <--> router79.in[0];
      router387.out[4] <--> VariableBandWidthLink <--> router390.in[3];
      router387.out[5] <--> VariableBandWidthLink <--> router391.in[3];
      router387.out[6] <--> VariableBandWidthLink <--> router392.in[3];
      router387.out[7] <--> VariableBandWidthLink <--> router394.in[3];
      router388.out[0] <--> VariableBandWidthLink <--> router224.in[0];
      router388.out[1] <--> VariableBandWidthLink <--> router225.in[0];
      router388.out[2] <--> VariableBandWidthLink <--> router226.in[0];
      router388.out[3] <--> VariableBandWidthLink <--> router227.in[0];
      router388.out[4] <--> VariableBandWidthLink <--> router404.in[0];
      router388.out[5] <--> VariableBandWidthLink <--> router405.in[0];
      router388.out[6] <--> VariableBandWidthLink <--> router406.in[0];
      router388.out[7] <--> VariableBandWidthLink <--> router407.in[0];
      router389.out[0] <--> VariableBandWidthLink <--> router128.in[0];
      router389.out[1] <--> VariableBandWidthLink <--> router129.in[0];
      router389.out[2] <--> VariableBandWidthLink <--> router130.in[0];
      router389.out[3] <--> VariableBandWidthLink <--> router131.in[0];
      router389.out[4] <--> VariableBandWidthLink <--> router413.in[0];
      router389.out[5] <--> VariableBandWidthLink <--> router414.in[0];
      router389.out[6] <--> VariableBandWidthLink <--> router415.in[0];
      router389.out[7] <--> VariableBandWidthLink <--> router416.in[0];
      router390.out[0] <--> VariableBandWidthLink <--> router312.in[4];
      router390.out[1] <--> VariableBandWidthLink <--> router339.in[4];
      router390.out[2] <--> VariableBandWidthLink <--> router347.in[4];
      router390.out[3] <--> VariableBandWidthLink <--> router387.in[4];
      router390.out[4] <--> VariableBandWidthLink <--> router360.in[0];
      router390.out[5] <--> VariableBandWidthLink <--> router361.in[0];
      router390.out[6] <--> VariableBandWidthLink <--> router362.in[0];
      router390.out[7] <--> VariableBandWidthLink <--> router363.in[0];
      router391.out[0] <--> VariableBandWidthLink <--> router312.in[5];
      router391.out[1] <--> VariableBandWidthLink <--> router339.in[5];
      router391.out[2] <--> VariableBandWidthLink <--> router347.in[5];
      router391.out[3] <--> VariableBandWidthLink <--> router387.in[5];
      router391.out[4] <--> VariableBandWidthLink <--> router365.in[0];
      router391.out[5] <--> VariableBandWidthLink <--> router366.in[0];
      router391.out[6] <--> VariableBandWidthLink <--> router367.in[0];
      router391.out[7] <--> VariableBandWidthLink <--> router368.in[0];
      router392.out[0] <--> VariableBandWidthLink <--> router312.in[6];
      router392.out[1] <--> VariableBandWidthLink <--> router339.in[6];
      router392.out[2] <--> VariableBandWidthLink <--> router347.in[6];
      router392.out[3] <--> VariableBandWidthLink <--> router387.in[6];
      router392.out[4] <--> VariableBandWidthLink <--> router370.in[0];
      router392.out[5] <--> VariableBandWidthLink <--> router371.in[0];
      router392.out[6] <--> VariableBandWidthLink <--> router372.in[0];
      router392.out[7] <--> VariableBandWidthLink <--> router373.in[0];
      router393.out[0] <--> VariableBandWidthLink <--> router228.in[0];
      router393.out[1] <--> VariableBandWidthLink <--> router229.in[0];
      router393.out[2] <--> VariableBandWidthLink <--> router230.in[0];
      router393.out[3] <--> VariableBandWidthLink <--> router231.in[0];
      router393.out[4] <--> VariableBandWidthLink <--> router404.in[1];
      router393.out[5] <--> VariableBandWidthLink <--> router405.in[1];
      router393.out[6] <--> VariableBandWidthLink <--> router406.in[1];
      router393.out[7] <--> VariableBandWidthLink <--> router407.in[1];
      router394.out[0] <--> VariableBandWidthLink <--> router312.in[7];
      router394.out[1] <--> VariableBandWidthLink <--> router339.in[7];
      router394.out[2] <--> VariableBandWidthLink <--> router347.in[7];
      router394.out[3] <--> VariableBandWidthLink <--> router387.in[7];
      router394.out[4] <--> VariableBandWidthLink <--> router375.in[0];
      router394.out[5] <--> VariableBandWidthLink <--> router376.in[0];
      router394.out[6] <--> VariableBandWidthLink <--> router377.in[0];
      router394.out[7] <--> VariableBandWidthLink <--> router378.in[0];
      router395.out[0] <--> VariableBandWidthLink <--> router132.in[0];
      router395.out[1] <--> VariableBandWidthLink <--> router133.in[0];
      router395.out[2] <--> VariableBandWidthLink <--> router134.in[0];
      router395.out[3] <--> VariableBandWidthLink <--> router135.in[0];
      router395.out[4] <--> VariableBandWidthLink <--> router413.in[1];
      router395.out[5] <--> VariableBandWidthLink <--> router414.in[1];
      router395.out[6] <--> VariableBandWidthLink <--> router415.in[1];
      router395.out[7] <--> VariableBandWidthLink <--> router416.in[1];
      router396.out[0] <--> VariableBandWidthLink <--> router24.in[0];
      router396.out[1] <--> VariableBandWidthLink <--> router25.in[0];
      router396.out[2] <--> VariableBandWidthLink <--> router26.in[0];
      router396.out[3] <--> VariableBandWidthLink <--> router27.in[0];
      router396.out[4] <--> VariableBandWidthLink <--> router424.in[2];
      router396.out[5] <--> VariableBandWidthLink <--> router306.in[2];
      router396.out[6] <--> VariableBandWidthLink <--> router307.in[2];
      router396.out[7] <--> VariableBandWidthLink <--> router308.in[2];
      router397.out[0] <--> VariableBandWidthLink <--> router52.in[0];
      router397.out[1] <--> VariableBandWidthLink <--> router53.in[0];
      router397.out[2] <--> VariableBandWidthLink <--> router54.in[0];
      router397.out[3] <--> VariableBandWidthLink <--> router55.in[0];
      router397.out[4] <--> VariableBandWidthLink <--> router256.in[1];
      router397.out[5] <--> VariableBandWidthLink <--> router258.in[1];
      router397.out[6] <--> VariableBandWidthLink <--> router259.in[1];
      router397.out[7] <--> VariableBandWidthLink <--> router260.in[1];
      router398.out[0] <--> VariableBandWidthLink <--> router232.in[0];
      router398.out[1] <--> VariableBandWidthLink <--> router233.in[0];
      router398.out[2] <--> VariableBandWidthLink <--> router234.in[0];
      router398.out[3] <--> VariableBandWidthLink <--> router235.in[0];
      router398.out[4] <--> VariableBandWidthLink <--> router404.in[2];
      router398.out[5] <--> VariableBandWidthLink <--> router405.in[2];
      router398.out[6] <--> VariableBandWidthLink <--> router406.in[2];
      router398.out[7] <--> VariableBandWidthLink <--> router407.in[2];
      router399.out[0] <--> VariableBandWidthLink <--> router16.in[0];
      router399.out[1] <--> VariableBandWidthLink <--> router17.in[0];
      router399.out[2] <--> VariableBandWidthLink <--> router18.in[0];
      router399.out[3] <--> VariableBandWidthLink <--> router19.in[0];
      router399.out[4] <--> VariableBandWidthLink <--> router424.in[0];
      router399.out[5] <--> VariableBandWidthLink <--> router306.in[0];
      router399.out[6] <--> VariableBandWidthLink <--> router307.in[0];
      router399.out[7] <--> VariableBandWidthLink <--> router308.in[0];
      router400.out[0] <--> VariableBandWidthLink <--> router36.in[0];
      router400.out[1] <--> VariableBandWidthLink <--> router37.in[0];
      router400.out[2] <--> VariableBandWidthLink <--> router38.in[0];
      router400.out[3] <--> VariableBandWidthLink <--> router39.in[0];
      router400.out[4] <--> VariableBandWidthLink <--> router313.in[1];
      router400.out[5] <--> VariableBandWidthLink <--> router314.in[1];
      router400.out[6] <--> VariableBandWidthLink <--> router336.in[1];
      router400.out[7] <--> VariableBandWidthLink <--> router338.in[1];
      router401.out[0] <--> VariableBandWidthLink <--> router136.in[0];
      router401.out[1] <--> VariableBandWidthLink <--> router137.in[0];
      router401.out[2] <--> VariableBandWidthLink <--> router138.in[0];
      router401.out[3] <--> VariableBandWidthLink <--> router139.in[0];
      router401.out[4] <--> VariableBandWidthLink <--> router413.in[2];
      router401.out[5] <--> VariableBandWidthLink <--> router414.in[2];
      router401.out[6] <--> VariableBandWidthLink <--> router415.in[2];
      router401.out[7] <--> VariableBandWidthLink <--> router416.in[2];
      router402.out[0] <--> VariableBandWidthLink <--> router80.in[0];
      router402.out[1] <--> VariableBandWidthLink <--> router81.in[0];
      router402.out[2] <--> VariableBandWidthLink <--> router82.in[0];
      router402.out[3] <--> VariableBandWidthLink <--> router83.in[0];
      router402.out[4] <--> VariableBandWidthLink <--> router263.in[0];
      router402.out[5] <--> VariableBandWidthLink <--> router264.in[0];
      router402.out[6] <--> VariableBandWidthLink <--> router265.in[0];
      router402.out[7] <--> VariableBandWidthLink <--> router266.in[0];
      router403.out[0] <--> VariableBandWidthLink <--> router236.in[0];
      router403.out[1] <--> VariableBandWidthLink <--> router237.in[0];
      router403.out[2] <--> VariableBandWidthLink <--> router238.in[0];
      router403.out[3] <--> VariableBandWidthLink <--> router239.in[0];
      router403.out[4] <--> VariableBandWidthLink <--> router404.in[3];
      router403.out[5] <--> VariableBandWidthLink <--> router405.in[3];
      router403.out[6] <--> VariableBandWidthLink <--> router406.in[3];
      router403.out[7] <--> VariableBandWidthLink <--> router407.in[3];
      router404.out[0] <--> VariableBandWidthLink <--> router388.in[4];
      router404.out[1] <--> VariableBandWidthLink <--> router393.in[4];
      router404.out[2] <--> VariableBandWidthLink <--> router398.in[4];
      router404.out[3] <--> VariableBandWidthLink <--> router403.in[4];
      router404.out[4] <--> VariableBandWidthLink <--> router432.in[2];
      router404.out[5] <--> VariableBandWidthLink <--> router433.in[2];
      router404.out[6] <--> VariableBandWidthLink <--> router434.in[2];
      router404.out[7] <--> VariableBandWidthLink <--> router435.in[2];
      router405.out[0] <--> VariableBandWidthLink <--> router388.in[5];
      router405.out[1] <--> VariableBandWidthLink <--> router393.in[5];
      router405.out[2] <--> VariableBandWidthLink <--> router398.in[5];
      router405.out[3] <--> VariableBandWidthLink <--> router403.in[5];
      router405.out[4] <--> VariableBandWidthLink <--> router436.in[2];
      router405.out[5] <--> VariableBandWidthLink <--> router437.in[2];
      router405.out[6] <--> VariableBandWidthLink <--> router438.in[2];
      router405.out[7] <--> VariableBandWidthLink <--> router439.in[2];
      router406.out[0] <--> VariableBandWidthLink <--> router388.in[6];
      router406.out[1] <--> VariableBandWidthLink <--> router393.in[6];
      router406.out[2] <--> VariableBandWidthLink <--> router398.in[6];
      router406.out[3] <--> VariableBandWidthLink <--> router403.in[6];
      router406.out[4] <--> VariableBandWidthLink <--> router440.in[2];
      router406.out[5] <--> VariableBandWidthLink <--> router441.in[2];
      router406.out[6] <--> VariableBandWidthLink <--> router442.in[2];
      router406.out[7] <--> VariableBandWidthLink <--> router443.in[2];
      router407.out[0] <--> VariableBandWidthLink <--> router388.in[7];
      router407.out[1] <--> VariableBandWidthLink <--> router393.in[7];
      router407.out[2] <--> VariableBandWidthLink <--> router398.in[7];
      router407.out[3] <--> VariableBandWidthLink <--> router403.in[7];
      router407.out[4] <--> VariableBandWidthLink <--> router444.in[2];
      router407.out[5] <--> VariableBandWidthLink <--> router445.in[2];
      router407.out[6] <--> VariableBandWidthLink <--> router446.in[2];
      router407.out[7] <--> VariableBandWidthLink <--> router447.in[2];
      router408.out[0] <--> VariableBandWidthLink <--> router385.in[4];
      router408.out[1] <--> VariableBandWidthLink <--> router344.in[4];
      router408.out[2] <--> VariableBandWidthLink <--> router346.in[4];
      router408.out[3] <--> VariableBandWidthLink <--> router386.in[4];
      router408.out[4] <--> VariableBandWidthLink <--> router272.in[0];
      router408.out[5] <--> VariableBandWidthLink <--> router273.in[0];
      router408.out[6] <--> VariableBandWidthLink <--> router274.in[0];
      router408.out[7] <--> VariableBandWidthLink <--> router275.in[0];
      router409.out[0] <--> VariableBandWidthLink <--> router385.in[5];
      router409.out[1] <--> VariableBandWidthLink <--> router344.in[5];
      router409.out[2] <--> VariableBandWidthLink <--> router346.in[5];
      router409.out[3] <--> VariableBandWidthLink <--> router386.in[5];
      router409.out[4] <--> VariableBandWidthLink <--> router278.in[0];
      router409.out[5] <--> VariableBandWidthLink <--> router279.in[0];
      router409.out[6] <--> VariableBandWidthLink <--> router280.in[0];
      router409.out[7] <--> VariableBandWidthLink <--> router282.in[0];
      router410.out[0] <--> VariableBandWidthLink <--> router56.in[0];
      router410.out[1] <--> VariableBandWidthLink <--> router57.in[0];
      router410.out[2] <--> VariableBandWidthLink <--> router58.in[0];
      router410.out[3] <--> VariableBandWidthLink <--> router59.in[0];
      router410.out[4] <--> VariableBandWidthLink <--> router256.in[2];
      router410.out[5] <--> VariableBandWidthLink <--> router258.in[2];
      router410.out[6] <--> VariableBandWidthLink <--> router259.in[2];
      router410.out[7] <--> VariableBandWidthLink <--> router260.in[2];
      router411.out[0] <--> VariableBandWidthLink <--> router140.in[0];
      router411.out[1] <--> VariableBandWidthLink <--> router141.in[0];
      router411.out[2] <--> VariableBandWidthLink <--> router142.in[0];
      router411.out[3] <--> VariableBandWidthLink <--> router143.in[0];
      router411.out[4] <--> VariableBandWidthLink <--> router413.in[3];
      router411.out[5] <--> VariableBandWidthLink <--> router414.in[3];
      router411.out[6] <--> VariableBandWidthLink <--> router415.in[3];
      router411.out[7] <--> VariableBandWidthLink <--> router416.in[3];
      router412.out[0] <--> VariableBandWidthLink <--> router240.in[0];
      router412.out[1] <--> VariableBandWidthLink <--> router241.in[0];
      router412.out[2] <--> VariableBandWidthLink <--> router242.in[0];
      router412.out[3] <--> VariableBandWidthLink <--> router243.in[0];
      router412.out[4] <--> VariableBandWidthLink <--> router428.in[0];
      router412.out[5] <--> VariableBandWidthLink <--> router429.in[0];
      router412.out[6] <--> VariableBandWidthLink <--> router430.in[0];
      router412.out[7] <--> VariableBandWidthLink <--> router431.in[0];
      router413.out[0] <--> VariableBandWidthLink <--> router389.in[4];
      router413.out[1] <--> VariableBandWidthLink <--> router395.in[4];
      router413.out[2] <--> VariableBandWidthLink <--> router401.in[4];
      router413.out[3] <--> VariableBandWidthLink <--> router411.in[4];
      router413.out[4] <--> VariableBandWidthLink <--> router320.in[0];
      router413.out[5] <--> VariableBandWidthLink <--> router321.in[0];
      router413.out[6] <--> VariableBandWidthLink <--> router322.in[0];
      router413.out[7] <--> VariableBandWidthLink <--> router323.in[0];
      router414.out[0] <--> VariableBandWidthLink <--> router389.in[5];
      router414.out[1] <--> VariableBandWidthLink <--> router395.in[5];
      router414.out[2] <--> VariableBandWidthLink <--> router401.in[5];
      router414.out[3] <--> VariableBandWidthLink <--> router411.in[5];
      router414.out[4] <--> VariableBandWidthLink <--> router324.in[0];
      router414.out[5] <--> VariableBandWidthLink <--> router325.in[0];
      router414.out[6] <--> VariableBandWidthLink <--> router326.in[0];
      router414.out[7] <--> VariableBandWidthLink <--> router327.in[0];
      router415.out[0] <--> VariableBandWidthLink <--> router389.in[6];
      router415.out[1] <--> VariableBandWidthLink <--> router395.in[6];
      router415.out[2] <--> VariableBandWidthLink <--> router401.in[6];
      router415.out[3] <--> VariableBandWidthLink <--> router411.in[6];
      router415.out[4] <--> VariableBandWidthLink <--> router328.in[0];
      router415.out[5] <--> VariableBandWidthLink <--> router329.in[0];
      router415.out[6] <--> VariableBandWidthLink <--> router330.in[0];
      router415.out[7] <--> VariableBandWidthLink <--> router331.in[0];
      router416.out[0] <--> VariableBandWidthLink <--> router389.in[7];
      router416.out[1] <--> VariableBandWidthLink <--> router395.in[7];
      router416.out[2] <--> VariableBandWidthLink <--> router401.in[7];
      router416.out[3] <--> VariableBandWidthLink <--> router411.in[7];
      router416.out[4] <--> VariableBandWidthLink <--> router332.in[0];
      router416.out[5] <--> VariableBandWidthLink <--> router333.in[0];
      router416.out[6] <--> VariableBandWidthLink <--> router334.in[0];
      router416.out[7] <--> VariableBandWidthLink <--> router335.in[0];
      router417.out[0] <--> VariableBandWidthLink <--> router244.in[0];
      router417.out[1] <--> VariableBandWidthLink <--> router245.in[0];
      router417.out[2] <--> VariableBandWidthLink <--> router246.in[0];
      router417.out[3] <--> VariableBandWidthLink <--> router247.in[0];
      router417.out[4] <--> VariableBandWidthLink <--> router428.in[1];
      router417.out[5] <--> VariableBandWidthLink <--> router429.in[1];
      router417.out[6] <--> VariableBandWidthLink <--> router430.in[1];
      router417.out[7] <--> VariableBandWidthLink <--> router431.in[1];
      router418.out[0] <--> VariableBandWidthLink <--> router385.in[6];
      router418.out[1] <--> VariableBandWidthLink <--> router344.in[6];
      router418.out[2] <--> VariableBandWidthLink <--> router346.in[6];
      router418.out[3] <--> VariableBandWidthLink <--> router386.in[6];
      router418.out[4] <--> VariableBandWidthLink <--> router284.in[0];
      router418.out[5] <--> VariableBandWidthLink <--> router285.in[0];
      router418.out[6] <--> VariableBandWidthLink <--> router287.in[0];
      router418.out[7] <--> VariableBandWidthLink <--> router288.in[0];
      router419.out[0] <--> VariableBandWidthLink <--> router84.in[0];
      router419.out[1] <--> VariableBandWidthLink <--> router85.in[0];
      router419.out[2] <--> VariableBandWidthLink <--> router86.in[0];
      router419.out[3] <--> VariableBandWidthLink <--> router87.in[0];
      router419.out[4] <--> VariableBandWidthLink <--> router263.in[1];
      router419.out[5] <--> VariableBandWidthLink <--> router264.in[1];
      router419.out[6] <--> VariableBandWidthLink <--> router265.in[1];
      router419.out[7] <--> VariableBandWidthLink <--> router266.in[1];
      router420.out[0] <--> VariableBandWidthLink <--> router28.in[0];
      router420.out[1] <--> VariableBandWidthLink <--> router29.in[0];
      router420.out[2] <--> VariableBandWidthLink <--> router30.in[0];
      router420.out[3] <--> VariableBandWidthLink <--> router31.in[0];
      router420.out[4] <--> VariableBandWidthLink <--> router424.in[3];
      router420.out[5] <--> VariableBandWidthLink <--> router306.in[3];
      router420.out[6] <--> VariableBandWidthLink <--> router307.in[3];
      router420.out[7] <--> VariableBandWidthLink <--> router308.in[3];
      router421.out[0] <--> VariableBandWidthLink <--> router40.in[0];
      router421.out[1] <--> VariableBandWidthLink <--> router41.in[0];
      router421.out[2] <--> VariableBandWidthLink <--> router42.in[0];
      router421.out[3] <--> VariableBandWidthLink <--> router43.in[0];
      router421.out[4] <--> VariableBandWidthLink <--> router313.in[2];
      router421.out[5] <--> VariableBandWidthLink <--> router314.in[2];
      router421.out[6] <--> VariableBandWidthLink <--> router336.in[2];
      router421.out[7] <--> VariableBandWidthLink <--> router338.in[2];
      router422.out[0] <--> VariableBandWidthLink <--> router248.in[0];
      router422.out[1] <--> VariableBandWidthLink <--> router249.in[0];
      router422.out[2] <--> VariableBandWidthLink <--> router250.in[0];
      router422.out[3] <--> VariableBandWidthLink <--> router251.in[0];
      router422.out[4] <--> VariableBandWidthLink <--> router428.in[2];
      router422.out[5] <--> VariableBandWidthLink <--> router429.in[2];
      router422.out[6] <--> VariableBandWidthLink <--> router430.in[2];
      router422.out[7] <--> VariableBandWidthLink <--> router431.in[2];
      router423.out[0] <--> VariableBandWidthLink <--> router144.in[0];
      router423.out[1] <--> VariableBandWidthLink <--> router145.in[0];
      router423.out[2] <--> VariableBandWidthLink <--> router146.in[0];
      router423.out[3] <--> VariableBandWidthLink <--> router147.in[0];
      router423.out[4] <--> VariableBandWidthLink <--> router268.in[0];
      router423.out[5] <--> VariableBandWidthLink <--> router269.in[0];
      router423.out[6] <--> VariableBandWidthLink <--> router270.in[0];
      router423.out[7] <--> VariableBandWidthLink <--> router271.in[0];
      router424.out[0] <--> VariableBandWidthLink <--> router399.in[4];
      router424.out[1] <--> VariableBandWidthLink <--> router342.in[4];
      router424.out[2] <--> VariableBandWidthLink <--> router396.in[4];
      router424.out[3] <--> VariableBandWidthLink <--> router420.in[4];
      router424.out[4] <--> VariableBandWidthLink <--> router272.in[1];
      router424.out[5] <--> VariableBandWidthLink <--> router273.in[1];
      router424.out[6] <--> VariableBandWidthLink <--> router274.in[1];
      router424.out[7] <--> VariableBandWidthLink <--> router275.in[1];
      router425.out[0] <--> VariableBandWidthLink <--> router60.in[0];
      router425.out[1] <--> VariableBandWidthLink <--> router61.in[0];
      router425.out[2] <--> VariableBandWidthLink <--> router62.in[0];
      router425.out[3] <--> VariableBandWidthLink <--> router63.in[0];
      router425.out[4] <--> VariableBandWidthLink <--> router256.in[3];
      router425.out[5] <--> VariableBandWidthLink <--> router258.in[3];
      router425.out[6] <--> VariableBandWidthLink <--> router259.in[3];
      router425.out[7] <--> VariableBandWidthLink <--> router260.in[3];
      router426.out[0] <--> VariableBandWidthLink <--> router88.in[0];
      router426.out[1] <--> VariableBandWidthLink <--> router89.in[0];
      router426.out[2] <--> VariableBandWidthLink <--> router90.in[0];
      router426.out[3] <--> VariableBandWidthLink <--> router91.in[0];
      router426.out[4] <--> VariableBandWidthLink <--> router263.in[2];
      router426.out[5] <--> VariableBandWidthLink <--> router264.in[2];
      router426.out[6] <--> VariableBandWidthLink <--> router265.in[2];
      router426.out[7] <--> VariableBandWidthLink <--> router266.in[2];
      router427.out[0] <--> VariableBandWidthLink <--> router252.in[0];
      router427.out[1] <--> VariableBandWidthLink <--> router253.in[0];
      router427.out[2] <--> VariableBandWidthLink <--> router254.in[0];
      router427.out[3] <--> VariableBandWidthLink <--> router255.in[0];
      router427.out[4] <--> VariableBandWidthLink <--> router428.in[3];
      router427.out[5] <--> VariableBandWidthLink <--> router429.in[3];
      router427.out[6] <--> VariableBandWidthLink <--> router430.in[3];
      router427.out[7] <--> VariableBandWidthLink <--> router431.in[3];
      router428.out[0] <--> VariableBandWidthLink <--> router412.in[4];
      router428.out[1] <--> VariableBandWidthLink <--> router417.in[4];
      router428.out[2] <--> VariableBandWidthLink <--> router422.in[4];
      router428.out[3] <--> VariableBandWidthLink <--> router427.in[4];
      router428.out[4] <--> VariableBandWidthLink <--> router432.in[3];
      router428.out[5] <--> VariableBandWidthLink <--> router433.in[3];
      router428.out[6] <--> VariableBandWidthLink <--> router434.in[3];
      router428.out[7] <--> VariableBandWidthLink <--> router435.in[3];
      router429.out[0] <--> VariableBandWidthLink <--> router412.in[5];
      router429.out[1] <--> VariableBandWidthLink <--> router417.in[5];
      router429.out[2] <--> VariableBandWidthLink <--> router422.in[5];
      router429.out[3] <--> VariableBandWidthLink <--> router427.in[5];
      router429.out[4] <--> VariableBandWidthLink <--> router436.in[3];
      router429.out[5] <--> VariableBandWidthLink <--> router437.in[3];
      router429.out[6] <--> VariableBandWidthLink <--> router438.in[3];
      router429.out[7] <--> VariableBandWidthLink <--> router439.in[3];
      router430.out[0] <--> VariableBandWidthLink <--> router412.in[6];
      router430.out[1] <--> VariableBandWidthLink <--> router417.in[6];
      router430.out[2] <--> VariableBandWidthLink <--> router422.in[6];
      router430.out[3] <--> VariableBandWidthLink <--> router427.in[6];
      router430.out[4] <--> VariableBandWidthLink <--> router440.in[3];
      router430.out[5] <--> VariableBandWidthLink <--> router441.in[3];
      router430.out[6] <--> VariableBandWidthLink <--> router442.in[3];
      router430.out[7] <--> VariableBandWidthLink <--> router443.in[3];
      router431.out[0] <--> VariableBandWidthLink <--> router412.in[7];
      router431.out[1] <--> VariableBandWidthLink <--> router417.in[7];
      router431.out[2] <--> VariableBandWidthLink <--> router422.in[7];
      router431.out[3] <--> VariableBandWidthLink <--> router427.in[7];
      router431.out[4] <--> VariableBandWidthLink <--> router444.in[3];
      router431.out[5] <--> VariableBandWidthLink <--> router445.in[3];
      router431.out[6] <--> VariableBandWidthLink <--> router446.in[3];
      router431.out[7] <--> VariableBandWidthLink <--> router447.in[3];
      router432.out[0] <--> VariableBandWidthLink <--> router356.in[4];
      router432.out[1] <--> VariableBandWidthLink <--> router380.in[4];
      router432.out[2] <--> VariableBandWidthLink <--> router404.in[4];
      router432.out[3] <--> VariableBandWidthLink <--> router428.in[4];
      router432.out[4] <--> VariableBandWidthLink <--> router448.in[3];
      router432.out[5] <--> VariableBandWidthLink <--> router449.in[3];
      router432.out[6] <--> VariableBandWidthLink <--> router450.in[3];
      router432.out[7] <--> VariableBandWidthLink <--> router451.in[3];
      router433.out[0] <--> VariableBandWidthLink <--> router356.in[5];
      router433.out[1] <--> VariableBandWidthLink <--> router380.in[5];
      router433.out[2] <--> VariableBandWidthLink <--> router404.in[5];
      router433.out[3] <--> VariableBandWidthLink <--> router428.in[5];
      router433.out[4] <--> VariableBandWidthLink <--> router452.in[3];
      router433.out[5] <--> VariableBandWidthLink <--> router453.in[3];
      router433.out[6] <--> VariableBandWidthLink <--> router454.in[3];
      router433.out[7] <--> VariableBandWidthLink <--> router455.in[3];
      router434.out[0] <--> VariableBandWidthLink <--> router356.in[6];
      router434.out[1] <--> VariableBandWidthLink <--> router380.in[6];
      router434.out[2] <--> VariableBandWidthLink <--> router404.in[6];
      router434.out[3] <--> VariableBandWidthLink <--> router428.in[6];
      router434.out[4] <--> VariableBandWidthLink <--> router456.in[3];
      router434.out[5] <--> VariableBandWidthLink <--> router457.in[3];
      router434.out[6] <--> VariableBandWidthLink <--> router458.in[3];
      router434.out[7] <--> VariableBandWidthLink <--> router459.in[3];
      router435.out[0] <--> VariableBandWidthLink <--> router356.in[7];
      router435.out[1] <--> VariableBandWidthLink <--> router380.in[7];
      router435.out[2] <--> VariableBandWidthLink <--> router404.in[7];
      router435.out[3] <--> VariableBandWidthLink <--> router428.in[7];
      router435.out[4] <--> VariableBandWidthLink <--> router460.in[3];
      router435.out[5] <--> VariableBandWidthLink <--> router461.in[3];
      router435.out[6] <--> VariableBandWidthLink <--> router462.in[3];
      router435.out[7] <--> VariableBandWidthLink <--> router463.in[3];
      router436.out[0] <--> VariableBandWidthLink <--> router357.in[4];
      router436.out[1] <--> VariableBandWidthLink <--> router381.in[4];
      router436.out[2] <--> VariableBandWidthLink <--> router405.in[4];
      router436.out[3] <--> VariableBandWidthLink <--> router429.in[4];
      router436.out[4] <--> VariableBandWidthLink <--> router464.in[3];
      router436.out[5] <--> VariableBandWidthLink <--> router465.in[3];
      router436.out[6] <--> VariableBandWidthLink <--> router466.in[3];
      router436.out[7] <--> VariableBandWidthLink <--> router467.in[3];
      router437.out[0] <--> VariableBandWidthLink <--> router357.in[5];
      router437.out[1] <--> VariableBandWidthLink <--> router381.in[5];
      router437.out[2] <--> VariableBandWidthLink <--> router405.in[5];
      router437.out[3] <--> VariableBandWidthLink <--> router429.in[5];
      router437.out[4] <--> VariableBandWidthLink <--> router468.in[3];
      router437.out[5] <--> VariableBandWidthLink <--> router469.in[3];
      router437.out[6] <--> VariableBandWidthLink <--> router470.in[3];
      router437.out[7] <--> VariableBandWidthLink <--> router471.in[3];
      router438.out[0] <--> VariableBandWidthLink <--> router357.in[6];
      router438.out[1] <--> VariableBandWidthLink <--> router381.in[6];
      router438.out[2] <--> VariableBandWidthLink <--> router405.in[6];
      router438.out[3] <--> VariableBandWidthLink <--> router429.in[6];
      router438.out[4] <--> VariableBandWidthLink <--> router472.in[3];
      router438.out[5] <--> VariableBandWidthLink <--> router473.in[3];
      router438.out[6] <--> VariableBandWidthLink <--> router474.in[3];
      router438.out[7] <--> VariableBandWidthLink <--> router475.in[3];
      router439.out[0] <--> VariableBandWidthLink <--> router357.in[7];
      router439.out[1] <--> VariableBandWidthLink <--> router381.in[7];
      router439.out[2] <--> VariableBandWidthLink <--> router405.in[7];
      router439.out[3] <--> VariableBandWidthLink <--> router429.in[7];
      router439.out[4] <--> VariableBandWidthLink <--> router476.in[3];
      router439.out[5] <--> VariableBandWidthLink <--> router477.in[3];
      router439.out[6] <--> VariableBandWidthLink <--> router478.in[3];
      router439.out[7] <--> VariableBandWidthLink <--> router479.in[3];
      router440.out[0] <--> VariableBandWidthLink <--> router358.in[4];
      router440.out[1] <--> VariableBandWidthLink <--> router382.in[4];
      router440.out[2] <--> VariableBandWidthLink <--> router406.in[4];
      router440.out[3] <--> VariableBandWidthLink <--> router430.in[4];
      router440.out[4] <--> VariableBandWidthLink <--> router480.in[3];
      router440.out[5] <--> VariableBandWidthLink <--> router481.in[3];
      router440.out[6] <--> VariableBandWidthLink <--> router482.in[3];
      router440.out[7] <--> VariableBandWidthLink <--> router483.in[3];
      router441.out[0] <--> VariableBandWidthLink <--> router358.in[5];
      router441.out[1] <--> VariableBandWidthLink <--> router382.in[5];
      router441.out[2] <--> VariableBandWidthLink <--> router406.in[5];
      router441.out[3] <--> VariableBandWidthLink <--> router430.in[5];
      router441.out[4] <--> VariableBandWidthLink <--> router484.in[3];
      router441.out[5] <--> VariableBandWidthLink <--> router485.in[3];
      router441.out[6] <--> VariableBandWidthLink <--> router486.in[3];
      router441.out[7] <--> VariableBandWidthLink <--> router487.in[3];
      router442.out[0] <--> VariableBandWidthLink <--> router358.in[6];
      router442.out[1] <--> VariableBandWidthLink <--> router382.in[6];
      router442.out[2] <--> VariableBandWidthLink <--> router406.in[6];
      router442.out[3] <--> VariableBandWidthLink <--> router430.in[6];
      router442.out[4] <--> VariableBandWidthLink <--> router488.in[3];
      router442.out[5] <--> VariableBandWidthLink <--> router489.in[3];
      router442.out[6] <--> VariableBandWidthLink <--> router490.in[3];
      router442.out[7] <--> VariableBandWidthLink <--> router491.in[3];
      router443.out[0] <--> VariableBandWidthLink <--> router358.in[7];
      router443.out[1] <--> VariableBandWidthLink <--> router382.in[7];
      router443.out[2] <--> VariableBandWidthLink <--> router406.in[7];
      router443.out[3] <--> VariableBandWidthLink <--> router430.in[7];
      router443.out[4] <--> VariableBandWidthLink <--> router492.in[3];
      router443.out[5] <--> VariableBandWidthLink <--> router493.in[3];
      router443.out[6] <--> VariableBandWidthLink <--> router494.in[3];
      router443.out[7] <--> VariableBandWidthLink <--> router495.in[3];
      router444.out[0] <--> VariableBandWidthLink <--> router359.in[4];
      router444.out[1] <--> VariableBandWidthLink <--> router383.in[4];
      router444.out[2] <--> VariableBandWidthLink <--> router407.in[4];
      router444.out[3] <--> VariableBandWidthLink <--> router431.in[4];
      router444.out[4] <--> VariableBandWidthLink <--> router496.in[3];
      router444.out[5] <--> VariableBandWidthLink <--> router497.in[3];
      router444.out[6] <--> VariableBandWidthLink <--> router498.in[3];
      router444.out[7] <--> VariableBandWidthLink <--> router499.in[3];
      router445.out[0] <--> VariableBandWidthLink <--> router359.in[5];
      router445.out[1] <--> VariableBandWidthLink <--> router383.in[5];
      router445.out[2] <--> VariableBandWidthLink <--> router407.in[5];
      router445.out[3] <--> VariableBandWidthLink <--> router431.in[5];
      router445.out[4] <--> VariableBandWidthLink <--> router500.in[3];
      router445.out[5] <--> VariableBandWidthLink <--> router501.in[3];
      router445.out[6] <--> VariableBandWidthLink <--> router502.in[3];
      router445.out[7] <--> VariableBandWidthLink <--> router503.in[3];
      router446.out[0] <--> VariableBandWidthLink <--> router359.in[6];
      router446.out[1] <--> VariableBandWidthLink <--> router383.in[6];
      router446.out[2] <--> VariableBandWidthLink <--> router407.in[6];
      router446.out[3] <--> VariableBandWidthLink <--> router431.in[6];
      router446.out[4] <--> VariableBandWidthLink <--> router504.in[3];
      router446.out[5] <--> VariableBandWidthLink <--> router505.in[3];
      router446.out[6] <--> VariableBandWidthLink <--> router506.in[3];
      router446.out[7] <--> VariableBandWidthLink <--> router507.in[3];
      router447.out[0] <--> VariableBandWidthLink <--> router359.in[7];
      router447.out[1] <--> VariableBandWidthLink <--> router383.in[7];
      router447.out[2] <--> VariableBandWidthLink <--> router407.in[7];
      router447.out[3] <--> VariableBandWidthLink <--> router431.in[7];
      router447.out[4] <--> VariableBandWidthLink <--> router508.in[3];
      router447.out[5] <--> VariableBandWidthLink <--> router509.in[3];
      router447.out[6] <--> VariableBandWidthLink <--> router510.in[3];
      router447.out[7] <--> VariableBandWidthLink <--> router511.in[3];
      router448.out[0] <--> VariableBandWidthLink <--> router272.in[4];
      router448.out[1] <--> VariableBandWidthLink <--> router360.in[4];
      router448.out[2] <--> VariableBandWidthLink <--> router320.in[4];
      router448.out[3] <--> VariableBandWidthLink <--> router432.in[4];
      router449.out[0] <--> VariableBandWidthLink <--> router272.in[5];
      router449.out[1] <--> VariableBandWidthLink <--> router360.in[5];
      router449.out[2] <--> VariableBandWidthLink <--> router320.in[5];
      router449.out[3] <--> VariableBandWidthLink <--> router432.in[5];
      router450.out[0] <--> VariableBandWidthLink <--> router272.in[6];
      router450.out[1] <--> VariableBandWidthLink <--> router360.in[6];
      router450.out[2] <--> VariableBandWidthLink <--> router320.in[6];
      router450.out[3] <--> VariableBandWidthLink <--> router432.in[6];
      router451.out[0] <--> VariableBandWidthLink <--> router272.in[7];
      router451.out[1] <--> VariableBandWidthLink <--> router360.in[7];
      router451.out[2] <--> VariableBandWidthLink <--> router320.in[7];
      router451.out[3] <--> VariableBandWidthLink <--> router432.in[7];
      router452.out[0] <--> VariableBandWidthLink <--> router273.in[4];
      router452.out[1] <--> VariableBandWidthLink <--> router361.in[4];
      router452.out[2] <--> VariableBandWidthLink <--> router321.in[4];
      router452.out[3] <--> VariableBandWidthLink <--> router433.in[4];
      router453.out[0] <--> VariableBandWidthLink <--> router273.in[5];
      router453.out[1] <--> VariableBandWidthLink <--> router361.in[5];
      router453.out[2] <--> VariableBandWidthLink <--> router321.in[5];
      router453.out[3] <--> VariableBandWidthLink <--> router433.in[5];
      router454.out[0] <--> VariableBandWidthLink <--> router273.in[6];
      router454.out[1] <--> VariableBandWidthLink <--> router361.in[6];
      router454.out[2] <--> VariableBandWidthLink <--> router321.in[6];
      router454.out[3] <--> VariableBandWidthLink <--> router433.in[6];
      router455.out[0] <--> VariableBandWidthLink <--> router273.in[7];
      router455.out[1] <--> VariableBandWidthLink <--> router361.in[7];
      router455.out[2] <--> VariableBandWidthLink <--> router321.in[7];
      router455.out[3] <--> VariableBandWidthLink <--> router433.in[7];
      router456.out[0] <--> VariableBandWidthLink <--> router274.in[4];
      router456.out[1] <--> VariableBandWidthLink <--> router362.in[4];
      router456.out[2] <--> VariableBandWidthLink <--> router322.in[4];
      router456.out[3] <--> VariableBandWidthLink <--> router434.in[4];
      router457.out[0] <--> VariableBandWidthLink <--> router274.in[5];
      router457.out[1] <--> VariableBandWidthLink <--> router362.in[5];
      router457.out[2] <--> VariableBandWidthLink <--> router322.in[5];
      router457.out[3] <--> VariableBandWidthLink <--> router434.in[5];
      router458.out[0] <--> VariableBandWidthLink <--> router274.in[6];
      router458.out[1] <--> VariableBandWidthLink <--> router362.in[6];
      router458.out[2] <--> VariableBandWidthLink <--> router322.in[6];
      router458.out[3] <--> VariableBandWidthLink <--> router434.in[6];
      router459.out[0] <--> VariableBandWidthLink <--> router274.in[7];
      router459.out[1] <--> VariableBandWidthLink <--> router362.in[7];
      router459.out[2] <--> VariableBandWidthLink <--> router322.in[7];
      router459.out[3] <--> VariableBandWidthLink <--> router434.in[7];
      router460.out[0] <--> VariableBandWidthLink <--> router275.in[4];
      router460.out[1] <--> VariableBandWidthLink <--> router363.in[4];
      router460.out[2] <--> VariableBandWidthLink <--> router323.in[4];
      router460.out[3] <--> VariableBandWidthLink <--> router435.in[4];
      router461.out[0] <--> VariableBandWidthLink <--> router275.in[5];
      router461.out[1] <--> VariableBandWidthLink <--> router363.in[5];
      router461.out[2] <--> VariableBandWidthLink <--> router323.in[5];
      router461.out[3] <--> VariableBandWidthLink <--> router435.in[5];
      router462.out[0] <--> VariableBandWidthLink <--> router275.in[6];
      router462.out[1] <--> VariableBandWidthLink <--> router363.in[6];
      router462.out[2] <--> VariableBandWidthLink <--> router323.in[6];
      router462.out[3] <--> VariableBandWidthLink <--> router435.in[6];
      router463.out[0] <--> VariableBandWidthLink <--> router275.in[7];
      router463.out[1] <--> VariableBandWidthLink <--> router363.in[7];
      router463.out[2] <--> VariableBandWidthLink <--> router323.in[7];
      router463.out[3] <--> VariableBandWidthLink <--> router435.in[7];
      router464.out[0] <--> VariableBandWidthLink <--> router278.in[4];
      router464.out[1] <--> VariableBandWidthLink <--> router365.in[4];
      router464.out[2] <--> VariableBandWidthLink <--> router324.in[4];
      router464.out[3] <--> VariableBandWidthLink <--> router436.in[4];
      router465.out[0] <--> VariableBandWidthLink <--> router278.in[5];
      router465.out[1] <--> VariableBandWidthLink <--> router365.in[5];
      router465.out[2] <--> VariableBandWidthLink <--> router324.in[5];
      router465.out[3] <--> VariableBandWidthLink <--> router436.in[5];
      router466.out[0] <--> VariableBandWidthLink <--> router278.in[6];
      router466.out[1] <--> VariableBandWidthLink <--> router365.in[6];
      router466.out[2] <--> VariableBandWidthLink <--> router324.in[6];
      router466.out[3] <--> VariableBandWidthLink <--> router436.in[6];
      router467.out[0] <--> VariableBandWidthLink <--> router278.in[7];
      router467.out[1] <--> VariableBandWidthLink <--> router365.in[7];
      router467.out[2] <--> VariableBandWidthLink <--> router324.in[7];
      router467.out[3] <--> VariableBandWidthLink <--> router436.in[7];
      router468.out[0] <--> VariableBandWidthLink <--> router279.in[4];
      router468.out[1] <--> VariableBandWidthLink <--> router366.in[4];
      router468.out[2] <--> VariableBandWidthLink <--> router325.in[4];
      router468.out[3] <--> VariableBandWidthLink <--> router437.in[4];
      router469.out[0] <--> VariableBandWidthLink <--> router279.in[5];
      router469.out[1] <--> VariableBandWidthLink <--> router366.in[5];
      router469.out[2] <--> VariableBandWidthLink <--> router325.in[5];
      router469.out[3] <--> VariableBandWidthLink <--> router437.in[5];
      router470.out[0] <--> VariableBandWidthLink <--> router279.in[6];
      router470.out[1] <--> VariableBandWidthLink <--> router366.in[6];
      router470.out[2] <--> VariableBandWidthLink <--> router325.in[6];
      router470.out[3] <--> VariableBandWidthLink <--> router437.in[6];
      router471.out[0] <--> VariableBandWidthLink <--> router279.in[7];
      router471.out[1] <--> VariableBandWidthLink <--> router366.in[7];
      router471.out[2] <--> VariableBandWidthLink <--> router325.in[7];
      router471.out[3] <--> VariableBandWidthLink <--> router437.in[7];
      router472.out[0] <--> VariableBandWidthLink <--> router280.in[4];
      router472.out[1] <--> VariableBandWidthLink <--> router367.in[4];
      router472.out[2] <--> VariableBandWidthLink <--> router326.in[4];
      router472.out[3] <--> VariableBandWidthLink <--> router438.in[4];
      router473.out[0] <--> VariableBandWidthLink <--> router280.in[5];
      router473.out[1] <--> VariableBandWidthLink <--> router367.in[5];
      router473.out[2] <--> VariableBandWidthLink <--> router326.in[5];
      router473.out[3] <--> VariableBandWidthLink <--> router438.in[5];
      router474.out[0] <--> VariableBandWidthLink <--> router280.in[6];
      router474.out[1] <--> VariableBandWidthLink <--> router367.in[6];
      router474.out[2] <--> VariableBandWidthLink <--> router326.in[6];
      router474.out[3] <--> VariableBandWidthLink <--> router438.in[6];
      router475.out[0] <--> VariableBandWidthLink <--> router280.in[7];
      router475.out[1] <--> VariableBandWidthLink <--> router367.in[7];
      router475.out[2] <--> VariableBandWidthLink <--> router326.in[7];
      router475.out[3] <--> VariableBandWidthLink <--> router438.in[7];
      router476.out[0] <--> VariableBandWidthLink <--> router282.in[4];
      router476.out[1] <--> VariableBandWidthLink <--> router368.in[4];
      router476.out[2] <--> VariableBandWidthLink <--> router327.in[4];
      router476.out[3] <--> VariableBandWidthLink <--> router439.in[4];
      router477.out[0] <--> VariableBandWidthLink <--> router282.in[5];
      router477.out[1] <--> VariableBandWidthLink <--> router368.in[5];
      router477.out[2] <--> VariableBandWidthLink <--> router327.in[5];
      router477.out[3] <--> VariableBandWidthLink <--> router439.in[5];
      router478.out[0] <--> VariableBandWidthLink <--> router282.in[6];
      router478.out[1] <--> VariableBandWidthLink <--> router368.in[6];
      router478.out[2] <--> VariableBandWidthLink <--> router327.in[6];
      router478.out[3] <--> VariableBandWidthLink <--> router439.in[6];
      router479.out[0] <--> VariableBandWidthLink <--> router282.in[7];
      router479.out[1] <--> VariableBandWidthLink <--> router368.in[7];
      router479.out[2] <--> VariableBandWidthLink <--> router327.in[7];
      router479.out[3] <--> VariableBandWidthLink <--> router439.in[7];
      router480.out[0] <--> VariableBandWidthLink <--> router284.in[4];
      router480.out[1] <--> VariableBandWidthLink <--> router370.in[4];
      router480.out[2] <--> VariableBandWidthLink <--> router328.in[4];
      router480.out[3] <--> VariableBandWidthLink <--> router440.in[4];
      router481.out[0] <--> VariableBandWidthLink <--> router284.in[5];
      router481.out[1] <--> VariableBandWidthLink <--> router370.in[5];
      router481.out[2] <--> VariableBandWidthLink <--> router328.in[5];
      router481.out[3] <--> VariableBandWidthLink <--> router440.in[5];
      router482.out[0] <--> VariableBandWidthLink <--> router284.in[6];
      router482.out[1] <--> VariableBandWidthLink <--> router370.in[6];
      router482.out[2] <--> VariableBandWidthLink <--> router328.in[6];
      router482.out[3] <--> VariableBandWidthLink <--> router440.in[6];
      router483.out[0] <--> VariableBandWidthLink <--> router284.in[7];
      router483.out[1] <--> VariableBandWidthLink <--> router370.in[7];
      router483.out[2] <--> VariableBandWidthLink <--> router328.in[7];
      router483.out[3] <--> VariableBandWidthLink <--> router440.in[7];
      router484.out[0] <--> VariableBandWidthLink <--> router285.in[4];
      router484.out[1] <--> VariableBandWidthLink <--> router371.in[4];
      router484.out[2] <--> VariableBandWidthLink <--> router329.in[4];
      router484.out[3] <--> VariableBandWidthLink <--> router441.in[4];
      router485.out[0] <--> VariableBandWidthLink <--> router285.in[5];
      router485.out[1] <--> VariableBandWidthLink <--> router371.in[5];
      router485.out[2] <--> VariableBandWidthLink <--> router329.in[5];
      router485.out[3] <--> VariableBandWidthLink <--> router441.in[5];
      router486.out[0] <--> VariableBandWidthLink <--> router285.in[6];
      router486.out[1] <--> VariableBandWidthLink <--> router371.in[6];
      router486.out[2] <--> VariableBandWidthLink <--> router329.in[6];
      router486.out[3] <--> VariableBandWidthLink <--> router441.in[6];
      router487.out[0] <--> VariableBandWidthLink <--> router285.in[7];
      router487.out[1] <--> VariableBandWidthLink <--> router371.in[7];
      router487.out[2] <--> VariableBandWidthLink <--> router329.in[7];
      router487.out[3] <--> VariableBandWidthLink <--> router441.in[7];
      router488.out[0] <--> VariableBandWidthLink <--> router287.in[4];
      router488.out[1] <--> VariableBandWidthLink <--> router372.in[4];
      router488.out[2] <--> VariableBandWidthLink <--> router330.in[4];
      router488.out[3] <--> VariableBandWidthLink <--> router442.in[4];
      router489.out[0] <--> VariableBandWidthLink <--> router287.in[5];
      router489.out[1] <--> VariableBandWidthLink <--> router372.in[5];
      router489.out[2] <--> VariableBandWidthLink <--> router330.in[5];
      router489.out[3] <--> VariableBandWidthLink <--> router442.in[5];
      router490.out[0] <--> VariableBandWidthLink <--> router287.in[6];
      router490.out[1] <--> VariableBandWidthLink <--> router372.in[6];
      router490.out[2] <--> VariableBandWidthLink <--> router330.in[6];
      router490.out[3] <--> VariableBandWidthLink <--> router442.in[6];
      router491.out[0] <--> VariableBandWidthLink <--> router287.in[7];
      router491.out[1] <--> VariableBandWidthLink <--> router372.in[7];
      router491.out[2] <--> VariableBandWidthLink <--> router330.in[7];
      router491.out[3] <--> VariableBandWidthLink <--> router442.in[7];
      router492.out[0] <--> VariableBandWidthLink <--> router288.in[4];
      router492.out[1] <--> VariableBandWidthLink <--> router373.in[4];
      router492.out[2] <--> VariableBandWidthLink <--> router331.in[4];
      router492.out[3] <--> VariableBandWidthLink <--> router443.in[4];
      router493.out[0] <--> VariableBandWidthLink <--> router288.in[5];
      router493.out[1] <--> VariableBandWidthLink <--> router373.in[5];
      router493.out[2] <--> VariableBandWidthLink <--> router331.in[5];
      router493.out[3] <--> VariableBandWidthLink <--> router443.in[5];
      router494.out[0] <--> VariableBandWidthLink <--> router288.in[6];
      router494.out[1] <--> VariableBandWidthLink <--> router373.in[6];
      router494.out[2] <--> VariableBandWidthLink <--> router331.in[6];
      router494.out[3] <--> VariableBandWidthLink <--> router443.in[6];
      router495.out[0] <--> VariableBandWidthLink <--> router288.in[7];
      router495.out[1] <--> VariableBandWidthLink <--> router373.in[7];
      router495.out[2] <--> VariableBandWidthLink <--> router331.in[7];
      router495.out[3] <--> VariableBandWidthLink <--> router443.in[7];
      router496.out[0] <--> VariableBandWidthLink <--> router290.in[4];
      router496.out[1] <--> VariableBandWidthLink <--> router375.in[4];
      router496.out[2] <--> VariableBandWidthLink <--> router332.in[4];
      router496.out[3] <--> VariableBandWidthLink <--> router444.in[4];
      router497.out[0] <--> VariableBandWidthLink <--> router290.in[5];
      router497.out[1] <--> VariableBandWidthLink <--> router375.in[5];
      router497.out[2] <--> VariableBandWidthLink <--> router332.in[5];
      router497.out[3] <--> VariableBandWidthLink <--> router444.in[5];
      router498.out[0] <--> VariableBandWidthLink <--> router290.in[6];
      router498.out[1] <--> VariableBandWidthLink <--> router375.in[6];
      router498.out[2] <--> VariableBandWidthLink <--> router332.in[6];
      router498.out[3] <--> VariableBandWidthLink <--> router444.in[6];
      router499.out[0] <--> VariableBandWidthLink <--> router290.in[7];
      router499.out[1] <--> VariableBandWidthLink <--> router375.in[7];
      router499.out[2] <--> VariableBandWidthLink <--> router332.in[7];
      router499.out[3] <--> VariableBandWidthLink <--> router444.in[7];
      router500.out[0] <--> VariableBandWidthLink <--> router296.in[4];
      router500.out[1] <--> VariableBandWidthLink <--> router376.in[4];
      router500.out[2] <--> VariableBandWidthLink <--> router333.in[4];
      router500.out[3] <--> VariableBandWidthLink <--> router445.in[4];
      router501.out[0] <--> VariableBandWidthLink <--> router296.in[5];
      router501.out[1] <--> VariableBandWidthLink <--> router376.in[5];
      router501.out[2] <--> VariableBandWidthLink <--> router333.in[5];
      router501.out[3] <--> VariableBandWidthLink <--> router445.in[5];
      router502.out[0] <--> VariableBandWidthLink <--> router296.in[6];
      router502.out[1] <--> VariableBandWidthLink <--> router376.in[6];
      router502.out[2] <--> VariableBandWidthLink <--> router333.in[6];
      router502.out[3] <--> VariableBandWidthLink <--> router445.in[6];
      router503.out[0] <--> VariableBandWidthLink <--> router296.in[7];
      router503.out[1] <--> VariableBandWidthLink <--> router376.in[7];
      router503.out[2] <--> VariableBandWidthLink <--> router333.in[7];
      router503.out[3] <--> VariableBandWidthLink <--> router445.in[7];
      router504.out[0] <--> VariableBandWidthLink <--> router297.in[4];
      router504.out[1] <--> VariableBandWidthLink <--> router377.in[4];
      router504.out[2] <--> VariableBandWidthLink <--> router334.in[4];
      router504.out[3] <--> VariableBandWidthLink <--> router446.in[4];
      router505.out[0] <--> VariableBandWidthLink <--> router297.in[5];
      router505.out[1] <--> VariableBandWidthLink <--> router377.in[5];
      router505.out[2] <--> VariableBandWidthLink <--> router334.in[5];
      router505.out[3] <--> VariableBandWidthLink <--> router446.in[5];
      router506.out[0] <--> VariableBandWidthLink <--> router297.in[6];
      router506.out[1] <--> VariableBandWidthLink <--> router377.in[6];
      router506.out[2] <--> VariableBandWidthLink <--> router334.in[6];
      router506.out[3] <--> VariableBandWidthLink <--> router446.in[6];
      router507.out[0] <--> VariableBandWidthLink <--> router297.in[7];
      router507.out[1] <--> VariableBandWidthLink <--> router377.in[7];
      router507.out[2] <--> VariableBandWidthLink <--> router334.in[7];
      router507.out[3] <--> VariableBandWidthLink <--> router446.in[7];
      router508.out[0] <--> VariableBandWidthLink <--> router298.in[4];
      router508.out[1] <--> VariableBandWidthLink <--> router378.in[4];
      router508.out[2] <--> VariableBandWidthLink <--> router335.in[4];
      router508.out[3] <--> VariableBandWidthLink <--> router447.in[4];
      router509.out[0] <--> VariableBandWidthLink <--> router298.in[5];
      router509.out[1] <--> VariableBandWidthLink <--> router378.in[5];
      router509.out[2] <--> VariableBandWidthLink <--> router335.in[5];
      router509.out[3] <--> VariableBandWidthLink <--> router447.in[5];
      router510.out[0] <--> VariableBandWidthLink <--> router298.in[6];
      router510.out[1] <--> VariableBandWidthLink <--> router378.in[6];
      router510.out[2] <--> VariableBandWidthLink <--> router335.in[6];
      router510.out[3] <--> VariableBandWidthLink <--> router447.in[6];
      router511.out[0] <--> VariableBandWidthLink <--> router298.in[7];
      router511.out[1] <--> VariableBandWidthLink <--> router378.in[7];
      router511.out[2] <--> VariableBandWidthLink <--> router335.in[7];
      router511.out[3] <--> VariableBandWidthLink <--> router447.in[7];
}
