// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;


network VariableBandWidth4Ary2Fly
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=400, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=400, 100");
      gates:
        in[2];
        out[2];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=400, 230");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=400, 200");
      gates:
        in[2];
        out[2];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=400, 330");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=400, 300");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=400, 430");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=400, 400");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=400, 530");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=400, 500");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=400, 630");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=400, 600");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=400, 730");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=400, 700");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=400, 830");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=400, 800");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=400, 930");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=400, 900");
      gates:
        in[2];
        out[2];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=400, 1030");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 2;
        @display("p=400, 1000");
      gates:
        in[2];
        out[2];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=400, 1130");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 2;
        @display("p=400, 1100");
      gates:
        in[2];
        out[2];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=400, 1230");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 2;
        @display("p=400, 1200");
      gates:
        in[2];
        out[2];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=400, 1330");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 2;
        @display("p=400, 1300");
      gates:
        in[2];
        out[2];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=400, 1430");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 2;
        @display("p=400, 1400");
      gates:
        in[2];
        out[2];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=400, 1530");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 2;
        @display("p=400, 1500");
      gates:
        in[2];
        out[2];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=400, 1630");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=400, 1600");
      gates:
        in[2];
        out[2];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 8;
        @display("p=800, 400");
      gates:
        in[9];
        out[9];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 8;
        @display("p=800, 800");
      gates:
        in[9];
        out[9];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 8;
        @display("p=800, 1200");
      gates:
        in[9];
        out[9];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 8;
        @display("p=800, 1600");
      gates:
        in[9];
        out[9];
    };

    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 8;
        @display("p=1200, 400");
      gates:
        in[9];
        out[9];
    };

    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 8;
        @display("p=1200, 800");
      gates:
        in[9];
        out[9];
    };

    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 8;
        @display("p=1200, 1200");
      gates:
        in[9];
        out[9];
    };

    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 8;
        @display("p=1200, 1600");
      gates:
        in[9];
        out[9];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=1600, 130");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=1600, 100");
      gates:
        in[2];
        out[2];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=1600, 230");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=1600, 200");
      gates:
        in[2];
        out[2];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=1600, 330");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 2;
        @display("p=1600, 300");
      gates:
        in[2];
        out[2];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=1600, 430");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 2;
        @display("p=1600, 400");
      gates:
        in[2];
        out[2];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=1600, 530");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 2;
        @display("p=1600, 500");
      gates:
        in[2];
        out[2];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=1600, 630");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 2;
        @display("p=1600, 600");
      gates:
        in[2];
        out[2];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=1600, 730");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 2;
        @display("p=1600, 700");
      gates:
        in[2];
        out[2];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=1600, 830");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 2;
        @display("p=1600, 800");
      gates:
        in[2];
        out[2];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=1600, 930");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=1600, 900");
      gates:
        in[2];
        out[2];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=1600, 1030");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 2;
        @display("p=1600, 1000");
      gates:
        in[2];
        out[2];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=1600, 1130");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 2;
        @display("p=1600, 1100");
      gates:
        in[2];
        out[2];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=1600, 1230");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 2;
        @display("p=1600, 1200");
      gates:
        in[2];
        out[2];
    };

    core36 : <coreType> like NI_Ifc {
      parameters:
        id = 36;
        @display("p=1600, 1330");
    }
    router36 : <routerType> like Router_Ifc {
      parameters:
        id = 36;
        numPorts = 2;
        @display("p=1600, 1300");
      gates:
        in[2];
        out[2];
    };

    core37 : <coreType> like NI_Ifc {
      parameters:
        id = 37;
        @display("p=1600, 1430");
    }
    router37 : <routerType> like Router_Ifc {
      parameters:
        id = 37;
        numPorts = 2;
        @display("p=1600, 1400");
      gates:
        in[2];
        out[2];
    };

    core38 : <coreType> like NI_Ifc {
      parameters:
        id = 38;
        @display("p=1600, 1530");
    }
    router38 : <routerType> like Router_Ifc {
      parameters:
        id = 38;
        numPorts = 2;
        @display("p=1600, 1500");
      gates:
        in[2];
        out[2];
    };

    core39 : <coreType> like NI_Ifc {
      parameters:
        id = 39;
        @display("p=1600, 1630");
    }
    router39 : <routerType> like Router_Ifc {
      parameters:
        id = 39;
        numPorts = 2;
        @display("p=1600, 1600");
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
      router2.out[0] <--> VariableBandWidthLink <--> router16.in[2];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router16.in[3];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router17.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router17.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router17.in[2];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router17.in[3];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router18.in[0];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router18.in[1];
      router9.in[1] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[1] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router10.in[1] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[1] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router18.in[3];
      router11.in[1] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[1] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router19.in[0];
      router12.in[1] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[1] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router19.in[1];
      router13.in[1] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[1] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router14.in[1] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[1] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router19.in[3];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router16.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router16.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router16.out[3] <--> VariableBandWidthLink <--> router3.in[0];
      router16.out[4] <--> VariableBandWidthLink <--> router20.in[0];
      router16.out[5] <--> VariableBandWidthLink <--> router21.in[0];
      router16.out[6] <--> VariableBandWidthLink <--> router22.in[0];
      router16.out[7] <--> VariableBandWidthLink <--> router23.in[0];
      router17.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router17.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router17.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router17.out[3] <--> VariableBandWidthLink <--> router7.in[0];
      router17.out[4] <--> VariableBandWidthLink <--> router21.in[1];
      router17.out[5] <--> VariableBandWidthLink <--> router20.in[1];
      router17.out[6] <--> VariableBandWidthLink <--> router23.in[1];
      router17.out[7] <--> VariableBandWidthLink <--> router22.in[1];
      router18.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router18.out[1] <--> VariableBandWidthLink <--> router9.in[0];
      router18.out[2] <--> VariableBandWidthLink <--> router10.in[0];
      router18.out[3] <--> VariableBandWidthLink <--> router11.in[0];
      router18.out[4] <--> VariableBandWidthLink <--> router22.in[2];
      router18.out[5] <--> VariableBandWidthLink <--> router23.in[2];
      router18.out[6] <--> VariableBandWidthLink <--> router20.in[2];
      router18.out[7] <--> VariableBandWidthLink <--> router21.in[2];
      router19.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router19.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router19.out[2] <--> VariableBandWidthLink <--> router14.in[0];
      router19.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router19.out[4] <--> VariableBandWidthLink <--> router23.in[3];
      router19.out[5] <--> VariableBandWidthLink <--> router22.in[3];
      router19.out[6] <--> VariableBandWidthLink <--> router21.in[3];
      router19.out[7] <--> VariableBandWidthLink <--> router20.in[3];
      router20.out[0] <--> VariableBandWidthLink <--> router16.in[4];
      router20.out[1] <--> VariableBandWidthLink <--> router17.in[5];
      router20.out[2] <--> VariableBandWidthLink <--> router18.in[6];
      router20.out[3] <--> VariableBandWidthLink <--> router19.in[7];
      router20.out[4] <--> VariableBandWidthLink <--> router24.in[0];
      router20.out[5] <--> VariableBandWidthLink <--> router25.in[0];
      router20.out[6] <--> VariableBandWidthLink <--> router26.in[0];
      router20.out[7] <--> VariableBandWidthLink <--> router27.in[0];
      router21.out[0] <--> VariableBandWidthLink <--> router16.in[5];
      router21.out[1] <--> VariableBandWidthLink <--> router17.in[4];
      router21.out[2] <--> VariableBandWidthLink <--> router18.in[7];
      router21.out[3] <--> VariableBandWidthLink <--> router19.in[6];
      router21.out[4] <--> VariableBandWidthLink <--> router28.in[0];
      router21.out[5] <--> VariableBandWidthLink <--> router29.in[0];
      router21.out[6] <--> VariableBandWidthLink <--> router30.in[0];
      router21.out[7] <--> VariableBandWidthLink <--> router31.in[0];
      router22.out[0] <--> VariableBandWidthLink <--> router16.in[6];
      router22.out[1] <--> VariableBandWidthLink <--> router17.in[7];
      router22.out[2] <--> VariableBandWidthLink <--> router18.in[4];
      router22.out[3] <--> VariableBandWidthLink <--> router19.in[5];
      router22.out[4] <--> VariableBandWidthLink <--> router32.in[0];
      router22.out[5] <--> VariableBandWidthLink <--> router33.in[0];
      router22.out[6] <--> VariableBandWidthLink <--> router34.in[0];
      router22.out[7] <--> VariableBandWidthLink <--> router35.in[0];
      router23.out[0] <--> VariableBandWidthLink <--> router16.in[7];
      router23.out[1] <--> VariableBandWidthLink <--> router17.in[6];
      router23.out[2] <--> VariableBandWidthLink <--> router18.in[5];
      router23.out[3] <--> VariableBandWidthLink <--> router19.in[4];
      router23.out[4] <--> VariableBandWidthLink <--> router36.in[0];
      router23.out[5] <--> VariableBandWidthLink <--> router37.in[0];
      router23.out[6] <--> VariableBandWidthLink <--> router38.in[0];
      router23.out[7] <--> VariableBandWidthLink <--> router39.in[0];
      router24.out[0] <--> VariableBandWidthLink <--> router20.in[4];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router20.in[5];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router20.in[6];
      router26.in[1] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[1] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router20.in[7];
      router27.in[1] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[1] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router21.in[4];
      router28.in[1] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[1] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router21.in[5];
      router29.in[1] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[1] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router21.in[6];
      router30.in[1] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[1] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router21.in[7];
      router31.in[1] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[1] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router22.in[4];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router22.in[5];
      router33.in[1] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[1] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router22.in[6];
      router34.in[1] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[1] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router22.in[7];
      router35.in[1] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[1] <--> VariableBandWidthLink <--> core35.in; 
      router36.out[0] <--> VariableBandWidthLink <--> router23.in[4];
      router36.in[1] <--> VariableBandWidthLink <--> core36.out; 
      router36.out[1] <--> VariableBandWidthLink <--> core36.in; 
      router37.out[0] <--> VariableBandWidthLink <--> router23.in[5];
      router37.in[1] <--> VariableBandWidthLink <--> core37.out; 
      router37.out[1] <--> VariableBandWidthLink <--> core37.in; 
      router38.out[0] <--> VariableBandWidthLink <--> router23.in[6];
      router38.in[1] <--> VariableBandWidthLink <--> core38.out; 
      router38.out[1] <--> VariableBandWidthLink <--> core38.in; 
      router39.out[0] <--> VariableBandWidthLink <--> router23.in[7];
      router39.in[1] <--> VariableBandWidthLink <--> core39.out; 
      router39.out[1] <--> VariableBandWidthLink <--> core39.in; 
}
