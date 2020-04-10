// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidthFatTree_2_3
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
        @display("p=100, 700");
      gates:
        in[7];
        out[7];
    };

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 6;
        @display("p=500, 700");
      gates:
        in[7];
        out[7];
    };

    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 6;
        @display("p=900, 700");
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
        @display("p=1600, 700");
      gates:
        in[7];
        out[7];
    };

    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 6;
        @display("p=2000, 700");
      gates:
        in[7];
        out[7];
    };

    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 6;
        @display("p=2400, 700");
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
        @display("p=3100, 700");
      gates:
        in[7];
        out[7];
    };

    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 6;
        @display("p=3500, 700");
      gates:
        in[7];
        out[7];
    };

    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 6;
        @display("p=3900, 700");
      gates:
        in[7];
        out[7];
    };

    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 3;
        @display("p=100, 900");
      gates:
        in[4];
        out[4];
    };

    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 3;
        @display("p=500, 900");
      gates:
        in[4];
        out[4];
    };

    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 3;
        @display("p=900, 900");
      gates:
        in[4];
        out[4];
    };

    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 3;
        @display("p=1600, 900");
      gates:
        in[4];
        out[4];
    };

    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 3;
        @display("p=2000, 900");
      gates:
        in[4];
        out[4];
    };

    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 3;
        @display("p=2400, 900");
      gates:
        in[4];
        out[4];
    };

    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 3;
        @display("p=3100, 900");
      gates:
        in[4];
        out[4];
    };

    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 3;
        @display("p=3500, 900");
      gates:
        in[4];
        out[4];
    };

    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 3;
        @display("p=3900, 900");
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
      router46.out[0] <--> VariableBandWidthLink <--> router12.in[4];
      router46.out[1] <--> VariableBandWidthLink <--> router27.in[4];
      router46.out[2] <--> VariableBandWidthLink <--> router42.in[4];
      router47.out[0] <--> VariableBandWidthLink <--> router12.in[5];
      router47.out[1] <--> VariableBandWidthLink <--> router27.in[5];
      router47.out[2] <--> VariableBandWidthLink <--> router42.in[5];
      router48.out[0] <--> VariableBandWidthLink <--> router13.in[3];
      router48.out[1] <--> VariableBandWidthLink <--> router28.in[3];
      router48.out[2] <--> VariableBandWidthLink <--> router43.in[3];
      router49.out[0] <--> VariableBandWidthLink <--> router13.in[4];
      router49.out[1] <--> VariableBandWidthLink <--> router28.in[4];
      router49.out[2] <--> VariableBandWidthLink <--> router43.in[4];
      router50.out[0] <--> VariableBandWidthLink <--> router13.in[5];
      router50.out[1] <--> VariableBandWidthLink <--> router28.in[5];
      router50.out[2] <--> VariableBandWidthLink <--> router43.in[5];
      router51.out[0] <--> VariableBandWidthLink <--> router14.in[3];
      router51.out[1] <--> VariableBandWidthLink <--> router29.in[3];
      router51.out[2] <--> VariableBandWidthLink <--> router44.in[3];
      router52.out[0] <--> VariableBandWidthLink <--> router14.in[4];
      router52.out[1] <--> VariableBandWidthLink <--> router29.in[4];
      router52.out[2] <--> VariableBandWidthLink <--> router44.in[4];
      router53.out[0] <--> VariableBandWidthLink <--> router14.in[5];
      router53.out[1] <--> VariableBandWidthLink <--> router29.in[5];
      router53.out[2] <--> VariableBandWidthLink <--> router44.in[5];
}
