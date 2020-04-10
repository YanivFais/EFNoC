// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidth2Ary4Fly
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=200, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=200, 100");
      gates:
        in[2];
        out[2];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=200, 230");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=200, 200");
      gates:
        in[2];
        out[2];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=200, 330");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=200, 300");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=200, 430");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=200, 400");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=200, 530");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=200, 500");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=200, 630");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=200, 600");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=200, 730");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=200, 700");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=200, 830");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=200, 800");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=200, 930");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=200, 900");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=200, 1030");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=200, 1000");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=200, 1130");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=200, 1100");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=200, 1230");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=200, 1200");
      gates:
        in[2];
        out[2];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=200, 1330");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=200, 1300");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=200, 1430");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=200, 1400");
      gates:
        in[2];
        out[2];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=200, 1530");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 2;
        @display("p=200, 1500");
      gates:
        in[2];
        out[2];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=200, 1630");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=200, 1600");
      gates:
        in[2];
        out[2];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 4;
        @display("p=400, 400");
      gates:
        in[5];
        out[5];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 4;
        @display("p=400, 600");
      gates:
        in[5];
        out[5];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 4;
        @display("p=400, 800");
      gates:
        in[5];
        out[5];
    };

    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 4;
        @display("p=400, 1000");
      gates:
        in[5];
        out[5];
    };

    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 4;
        @display("p=400, 1200");
      gates:
        in[5];
        out[5];
    };

    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 4;
        @display("p=400, 1400");
      gates:
        in[5];
        out[5];
    };

    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 4;
        @display("p=400, 1600");
      gates:
        in[5];
        out[5];
    };

    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 4;
        @display("p=600, 200");
      gates:
        in[5];
        out[5];
    };

    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 4;
        @display("p=600, 400");
      gates:
        in[5];
        out[5];
    };

    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 4;
        @display("p=600, 600");
      gates:
        in[5];
        out[5];
    };

    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 4;
        @display("p=600, 800");
      gates:
        in[5];
        out[5];
    };

    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 4;
        @display("p=600, 1000");
      gates:
        in[5];
        out[5];
    };

    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 4;
        @display("p=600, 1200");
      gates:
        in[5];
        out[5];
    };

    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 4;
        @display("p=600, 1400");
      gates:
        in[5];
        out[5];
    };

    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 4;
        @display("p=600, 1600");
      gates:
        in[5];
        out[5];
    };

    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 4;
        @display("p=800, 200");
      gates:
        in[5];
        out[5];
    };

    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 4;
        @display("p=800, 400");
      gates:
        in[5];
        out[5];
    };

    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 4;
        @display("p=800, 600");
      gates:
        in[5];
        out[5];
    };

    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 4;
        @display("p=800, 800");
      gates:
        in[5];
        out[5];
    };

    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 4;
        @display("p=800, 1000");
      gates:
        in[5];
        out[5];
    };

    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 4;
        @display("p=800, 1200");
      gates:
        in[5];
        out[5];
    };

    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 4;
        @display("p=800, 1400");
      gates:
        in[5];
        out[5];
    };

    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 4;
        @display("p=800, 1600");
      gates:
        in[5];
        out[5];
    };

    router40 : <routerType> like Router_Ifc {
      parameters:
        id = 40;
        numPorts = 4;
        @display("p=1000, 200");
      gates:
        in[5];
        out[5];
    };

    router41 : <routerType> like Router_Ifc {
      parameters:
        id = 41;
        numPorts = 4;
        @display("p=1000, 400");
      gates:
        in[5];
        out[5];
    };

    router42 : <routerType> like Router_Ifc {
      parameters:
        id = 42;
        numPorts = 4;
        @display("p=1000, 600");
      gates:
        in[5];
        out[5];
    };

    router43 : <routerType> like Router_Ifc {
      parameters:
        id = 43;
        numPorts = 4;
        @display("p=1000, 800");
      gates:
        in[5];
        out[5];
    };

    router44 : <routerType> like Router_Ifc {
      parameters:
        id = 44;
        numPorts = 4;
        @display("p=1000, 1000");
      gates:
        in[5];
        out[5];
    };

    router45 : <routerType> like Router_Ifc {
      parameters:
        id = 45;
        numPorts = 4;
        @display("p=1000, 1200");
      gates:
        in[5];
        out[5];
    };

    router46 : <routerType> like Router_Ifc {
      parameters:
        id = 46;
        numPorts = 4;
        @display("p=1000, 1400");
      gates:
        in[5];
        out[5];
    };

    router47 : <routerType> like Router_Ifc {
      parameters:
        id = 47;
        numPorts = 4;
        @display("p=1000, 1600");
      gates:
        in[5];
        out[5];
    };

    core48 : <coreType> like NI_Ifc {
      parameters:
        id = 48;
        @display("p=1200, 130");
    }
    router48 : <routerType> like Router_Ifc {
      parameters:
        id = 48;
        numPorts = 2;
        @display("p=1200, 100");
      gates:
        in[2];
        out[2];
    };

    core49 : <coreType> like NI_Ifc {
      parameters:
        id = 49;
        @display("p=1200, 230");
    }
    router49 : <routerType> like Router_Ifc {
      parameters:
        id = 49;
        numPorts = 2;
        @display("p=1200, 200");
      gates:
        in[2];
        out[2];
    };

    core50 : <coreType> like NI_Ifc {
      parameters:
        id = 50;
        @display("p=1200, 330");
    }
    router50 : <routerType> like Router_Ifc {
      parameters:
        id = 50;
        numPorts = 2;
        @display("p=1200, 300");
      gates:
        in[2];
        out[2];
    };

    core51 : <coreType> like NI_Ifc {
      parameters:
        id = 51;
        @display("p=1200, 430");
    }
    router51 : <routerType> like Router_Ifc {
      parameters:
        id = 51;
        numPorts = 2;
        @display("p=1200, 400");
      gates:
        in[2];
        out[2];
    };

    core52 : <coreType> like NI_Ifc {
      parameters:
        id = 52;
        @display("p=1200, 530");
    }
    router52 : <routerType> like Router_Ifc {
      parameters:
        id = 52;
        numPorts = 2;
        @display("p=1200, 500");
      gates:
        in[2];
        out[2];
    };

    core53 : <coreType> like NI_Ifc {
      parameters:
        id = 53;
        @display("p=1200, 630");
    }
    router53 : <routerType> like Router_Ifc {
      parameters:
        id = 53;
        numPorts = 2;
        @display("p=1200, 600");
      gates:
        in[2];
        out[2];
    };

    core54 : <coreType> like NI_Ifc {
      parameters:
        id = 54;
        @display("p=1200, 730");
    }
    router54 : <routerType> like Router_Ifc {
      parameters:
        id = 54;
        numPorts = 2;
        @display("p=1200, 700");
      gates:
        in[2];
        out[2];
    };

    core55 : <coreType> like NI_Ifc {
      parameters:
        id = 55;
        @display("p=1200, 830");
    }
    router55 : <routerType> like Router_Ifc {
      parameters:
        id = 55;
        numPorts = 2;
        @display("p=1200, 800");
      gates:
        in[2];
        out[2];
    };

    core56 : <coreType> like NI_Ifc {
      parameters:
        id = 56;
        @display("p=1200, 930");
    }
    router56 : <routerType> like Router_Ifc {
      parameters:
        id = 56;
        numPorts = 2;
        @display("p=1200, 900");
      gates:
        in[2];
        out[2];
    };

    core57 : <coreType> like NI_Ifc {
      parameters:
        id = 57;
        @display("p=1200, 1030");
    }
    router57 : <routerType> like Router_Ifc {
      parameters:
        id = 57;
        numPorts = 2;
        @display("p=1200, 1000");
      gates:
        in[2];
        out[2];
    };

    core58 : <coreType> like NI_Ifc {
      parameters:
        id = 58;
        @display("p=1200, 1130");
    }
    router58 : <routerType> like Router_Ifc {
      parameters:
        id = 58;
        numPorts = 2;
        @display("p=1200, 1100");
      gates:
        in[2];
        out[2];
    };

    core59 : <coreType> like NI_Ifc {
      parameters:
        id = 59;
        @display("p=1200, 1230");
    }
    router59 : <routerType> like Router_Ifc {
      parameters:
        id = 59;
        numPorts = 2;
        @display("p=1200, 1200");
      gates:
        in[2];
        out[2];
    };

    core60 : <coreType> like NI_Ifc {
      parameters:
        id = 60;
        @display("p=1200, 1330");
    }
    router60 : <routerType> like Router_Ifc {
      parameters:
        id = 60;
        numPorts = 2;
        @display("p=1200, 1300");
      gates:
        in[2];
        out[2];
    };

    core61 : <coreType> like NI_Ifc {
      parameters:
        id = 61;
        @display("p=1200, 1430");
    }
    router61 : <routerType> like Router_Ifc {
      parameters:
        id = 61;
        numPorts = 2;
        @display("p=1200, 1400");
      gates:
        in[2];
        out[2];
    };

    core62 : <coreType> like NI_Ifc {
      parameters:
        id = 62;
        @display("p=1200, 1530");
    }
    router62 : <routerType> like Router_Ifc {
      parameters:
        id = 62;
        numPorts = 2;
        @display("p=1200, 1500");
      gates:
        in[2];
        out[2];
    };

    core63 : <coreType> like NI_Ifc {
      parameters:
        id = 63;
        @display("p=1200, 1630");
    }
    router63 : <routerType> like Router_Ifc {
      parameters:
        id = 63;
        numPorts = 2;
        @display("p=1200, 1600");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router16.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router16.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router17.in[0];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router17.in[1];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router18.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router19.in[0];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router19.in[1];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router20.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router20.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router21.in[0];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router21.in[1];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router22.in[0];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router22.in[1];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router23.in[0];
      router14.in[1] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[1] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router23.in[1];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router16.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router16.out[2] <--> VariableBandWidthLink <--> router24.in[0];
      router16.out[3] <--> VariableBandWidthLink <--> router28.in[0];
      router17.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router17.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router17.out[2] <--> VariableBandWidthLink <--> router25.in[0];
      router17.out[3] <--> VariableBandWidthLink <--> router29.in[0];
      router18.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router18.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router18.out[2] <--> VariableBandWidthLink <--> router26.in[0];
      router18.out[3] <--> VariableBandWidthLink <--> router30.in[0];
      router19.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router19.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router19.out[2] <--> VariableBandWidthLink <--> router27.in[0];
      router19.out[3] <--> VariableBandWidthLink <--> router31.in[0];
      router20.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router20.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router20.out[2] <--> VariableBandWidthLink <--> router28.in[1];
      router20.out[3] <--> VariableBandWidthLink <--> router24.in[1];
      router21.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router21.out[1] <--> VariableBandWidthLink <--> router11.in[0];
      router21.out[2] <--> VariableBandWidthLink <--> router29.in[1];
      router21.out[3] <--> VariableBandWidthLink <--> router25.in[1];
      router22.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router22.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router22.out[2] <--> VariableBandWidthLink <--> router30.in[1];
      router22.out[3] <--> VariableBandWidthLink <--> router26.in[1];
      router23.out[0] <--> VariableBandWidthLink <--> router14.in[0];
      router23.out[1] <--> VariableBandWidthLink <--> router15.in[0];
      router23.out[2] <--> VariableBandWidthLink <--> router31.in[1];
      router23.out[3] <--> VariableBandWidthLink <--> router27.in[1];
      router24.out[0] <--> VariableBandWidthLink <--> router16.in[2];
      router24.out[1] <--> VariableBandWidthLink <--> router20.in[3];
      router24.out[2] <--> VariableBandWidthLink <--> router32.in[0];
      router24.out[3] <--> VariableBandWidthLink <--> router34.in[0];
      router25.out[0] <--> VariableBandWidthLink <--> router17.in[2];
      router25.out[1] <--> VariableBandWidthLink <--> router21.in[3];
      router25.out[2] <--> VariableBandWidthLink <--> router33.in[0];
      router25.out[3] <--> VariableBandWidthLink <--> router35.in[0];
      router26.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router26.out[1] <--> VariableBandWidthLink <--> router22.in[3];
      router26.out[2] <--> VariableBandWidthLink <--> router34.in[1];
      router26.out[3] <--> VariableBandWidthLink <--> router32.in[1];
      router27.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router27.out[1] <--> VariableBandWidthLink <--> router23.in[3];
      router27.out[2] <--> VariableBandWidthLink <--> router35.in[1];
      router27.out[3] <--> VariableBandWidthLink <--> router33.in[1];
      router28.out[0] <--> VariableBandWidthLink <--> router16.in[3];
      router28.out[1] <--> VariableBandWidthLink <--> router20.in[2];
      router28.out[2] <--> VariableBandWidthLink <--> router36.in[0];
      router28.out[3] <--> VariableBandWidthLink <--> router38.in[0];
      router29.out[0] <--> VariableBandWidthLink <--> router17.in[3];
      router29.out[1] <--> VariableBandWidthLink <--> router21.in[2];
      router29.out[2] <--> VariableBandWidthLink <--> router37.in[0];
      router29.out[3] <--> VariableBandWidthLink <--> router39.in[0];
      router30.out[0] <--> VariableBandWidthLink <--> router18.in[3];
      router30.out[1] <--> VariableBandWidthLink <--> router22.in[2];
      router30.out[2] <--> VariableBandWidthLink <--> router38.in[1];
      router30.out[3] <--> VariableBandWidthLink <--> router36.in[1];
      router31.out[0] <--> VariableBandWidthLink <--> router19.in[3];
      router31.out[1] <--> VariableBandWidthLink <--> router23.in[2];
      router31.out[2] <--> VariableBandWidthLink <--> router39.in[1];
      router31.out[3] <--> VariableBandWidthLink <--> router37.in[1];
      router32.out[0] <--> VariableBandWidthLink <--> router24.in[2];
      router32.out[1] <--> VariableBandWidthLink <--> router26.in[3];
      router32.out[2] <--> VariableBandWidthLink <--> router40.in[0];
      router32.out[3] <--> VariableBandWidthLink <--> router41.in[0];
      router33.out[0] <--> VariableBandWidthLink <--> router25.in[2];
      router33.out[1] <--> VariableBandWidthLink <--> router27.in[3];
      router33.out[2] <--> VariableBandWidthLink <--> router41.in[1];
      router33.out[3] <--> VariableBandWidthLink <--> router40.in[1];
      router34.out[0] <--> VariableBandWidthLink <--> router24.in[3];
      router34.out[1] <--> VariableBandWidthLink <--> router26.in[2];
      router34.out[2] <--> VariableBandWidthLink <--> router42.in[0];
      router34.out[3] <--> VariableBandWidthLink <--> router43.in[0];
      router35.out[0] <--> VariableBandWidthLink <--> router25.in[3];
      router35.out[1] <--> VariableBandWidthLink <--> router27.in[2];
      router35.out[2] <--> VariableBandWidthLink <--> router43.in[1];
      router35.out[3] <--> VariableBandWidthLink <--> router42.in[1];
      router36.out[0] <--> VariableBandWidthLink <--> router28.in[2];
      router36.out[1] <--> VariableBandWidthLink <--> router30.in[3];
      router36.out[2] <--> VariableBandWidthLink <--> router44.in[0];
      router36.out[3] <--> VariableBandWidthLink <--> router45.in[0];
      router37.out[0] <--> VariableBandWidthLink <--> router29.in[2];
      router37.out[1] <--> VariableBandWidthLink <--> router31.in[3];
      router37.out[2] <--> VariableBandWidthLink <--> router45.in[1];
      router37.out[3] <--> VariableBandWidthLink <--> router44.in[1];
      router38.out[0] <--> VariableBandWidthLink <--> router28.in[3];
      router38.out[1] <--> VariableBandWidthLink <--> router30.in[2];
      router38.out[2] <--> VariableBandWidthLink <--> router46.in[0];
      router38.out[3] <--> VariableBandWidthLink <--> router47.in[0];
      router39.out[0] <--> VariableBandWidthLink <--> router29.in[3];
      router39.out[1] <--> VariableBandWidthLink <--> router31.in[2];
      router39.out[2] <--> VariableBandWidthLink <--> router47.in[1];
      router39.out[3] <--> VariableBandWidthLink <--> router46.in[1];
      router40.out[0] <--> VariableBandWidthLink <--> router32.in[2];
      router40.out[1] <--> VariableBandWidthLink <--> router33.in[3];
      router40.out[2] <--> VariableBandWidthLink <--> router48.in[0];
      router40.out[3] <--> VariableBandWidthLink <--> router49.in[0];
      router41.out[0] <--> VariableBandWidthLink <--> router32.in[3];
      router41.out[1] <--> VariableBandWidthLink <--> router33.in[2];
      router41.out[2] <--> VariableBandWidthLink <--> router50.in[0];
      router41.out[3] <--> VariableBandWidthLink <--> router51.in[0];
      router42.out[0] <--> VariableBandWidthLink <--> router34.in[2];
      router42.out[1] <--> VariableBandWidthLink <--> router35.in[3];
      router42.out[2] <--> VariableBandWidthLink <--> router52.in[0];
      router42.out[3] <--> VariableBandWidthLink <--> router53.in[0];
      router43.out[0] <--> VariableBandWidthLink <--> router34.in[3];
      router43.out[1] <--> VariableBandWidthLink <--> router35.in[2];
      router43.out[2] <--> VariableBandWidthLink <--> router54.in[0];
      router43.out[3] <--> VariableBandWidthLink <--> router55.in[0];
      router44.out[0] <--> VariableBandWidthLink <--> router36.in[2];
      router44.out[1] <--> VariableBandWidthLink <--> router37.in[3];
      router44.out[2] <--> VariableBandWidthLink <--> router56.in[0];
      router44.out[3] <--> VariableBandWidthLink <--> router57.in[0];
      router45.out[0] <--> VariableBandWidthLink <--> router36.in[3];
      router45.out[1] <--> VariableBandWidthLink <--> router37.in[2];
      router45.out[2] <--> VariableBandWidthLink <--> router58.in[0];
      router45.out[3] <--> VariableBandWidthLink <--> router59.in[0];
      router46.out[0] <--> VariableBandWidthLink <--> router38.in[2];
      router46.out[1] <--> VariableBandWidthLink <--> router39.in[3];
      router46.out[2] <--> VariableBandWidthLink <--> router60.in[0];
      router46.out[3] <--> VariableBandWidthLink <--> router61.in[0];
      router47.out[0] <--> VariableBandWidthLink <--> router38.in[3];
      router47.out[1] <--> VariableBandWidthLink <--> router39.in[2];
      router47.out[2] <--> VariableBandWidthLink <--> router62.in[0];
      router47.out[3] <--> VariableBandWidthLink <--> router63.in[0];
      router48.out[0] <--> VariableBandWidthLink <--> router40.in[2];
      router48.in[1] <--> VariableBandWidthLink <--> core48.out; 
      router48.out[1] <--> VariableBandWidthLink <--> core48.in; 
      router49.out[0] <--> VariableBandWidthLink <--> router40.in[3];
      router49.in[1] <--> VariableBandWidthLink <--> core49.out; 
      router49.out[1] <--> VariableBandWidthLink <--> core49.in; 
      router50.out[0] <--> VariableBandWidthLink <--> router41.in[2];
      router50.in[1] <--> VariableBandWidthLink <--> core50.out; 
      router50.out[1] <--> VariableBandWidthLink <--> core50.in; 
      router51.out[0] <--> VariableBandWidthLink <--> router41.in[3];
      router51.in[1] <--> VariableBandWidthLink <--> core51.out; 
      router51.out[1] <--> VariableBandWidthLink <--> core51.in; 
      router52.out[0] <--> VariableBandWidthLink <--> router42.in[2];
      router52.in[1] <--> VariableBandWidthLink <--> core52.out; 
      router52.out[1] <--> VariableBandWidthLink <--> core52.in; 
      router53.out[0] <--> VariableBandWidthLink <--> router42.in[3];
      router53.in[1] <--> VariableBandWidthLink <--> core53.out; 
      router53.out[1] <--> VariableBandWidthLink <--> core53.in; 
      router54.out[0] <--> VariableBandWidthLink <--> router43.in[2];
      router54.in[1] <--> VariableBandWidthLink <--> core54.out; 
      router54.out[1] <--> VariableBandWidthLink <--> core54.in; 
      router55.out[0] <--> VariableBandWidthLink <--> router43.in[3];
      router55.in[1] <--> VariableBandWidthLink <--> core55.out; 
      router55.out[1] <--> VariableBandWidthLink <--> core55.in; 
      router56.out[0] <--> VariableBandWidthLink <--> router44.in[2];
      router56.in[1] <--> VariableBandWidthLink <--> core56.out; 
      router56.out[1] <--> VariableBandWidthLink <--> core56.in; 
      router57.out[0] <--> VariableBandWidthLink <--> router44.in[3];
      router57.in[1] <--> VariableBandWidthLink <--> core57.out; 
      router57.out[1] <--> VariableBandWidthLink <--> core57.in; 
      router58.out[0] <--> VariableBandWidthLink <--> router45.in[2];
      router58.in[1] <--> VariableBandWidthLink <--> core58.out; 
      router58.out[1] <--> VariableBandWidthLink <--> core58.in; 
      router59.out[0] <--> VariableBandWidthLink <--> router45.in[3];
      router59.in[1] <--> VariableBandWidthLink <--> core59.out; 
      router59.out[1] <--> VariableBandWidthLink <--> core59.in; 
      router60.out[0] <--> VariableBandWidthLink <--> router46.in[2];
      router60.in[1] <--> VariableBandWidthLink <--> core60.out; 
      router60.out[1] <--> VariableBandWidthLink <--> core60.in; 
      router61.out[0] <--> VariableBandWidthLink <--> router46.in[3];
      router61.in[1] <--> VariableBandWidthLink <--> core61.out; 
      router61.out[1] <--> VariableBandWidthLink <--> core61.in; 
      router62.out[0] <--> VariableBandWidthLink <--> router47.in[2];
      router62.in[1] <--> VariableBandWidthLink <--> core62.out; 
      router62.out[1] <--> VariableBandWidthLink <--> core62.in; 
      router63.out[0] <--> VariableBandWidthLink <--> router47.in[3];
      router63.in[1] <--> VariableBandWidthLink <--> core63.out; 
      router63.out[1] <--> VariableBandWidthLink <--> core63.in; 
}
