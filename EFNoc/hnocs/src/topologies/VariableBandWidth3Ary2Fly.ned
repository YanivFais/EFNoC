// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

network VariableBandWidth3Ary2Fly
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=300, 130");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 2;
        @display("p=300, 100");
      gates:
        in[2];
        out[2];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=300, 230");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 2;
        @display("p=300, 200");
      gates:
        in[2];
        out[2];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=300, 330");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 2;
        @display("p=300, 300");
      gates:
        in[2];
        out[2];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=300, 430");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 2;
        @display("p=300, 400");
      gates:
        in[2];
        out[2];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=300, 530");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 2;
        @display("p=300, 500");
      gates:
        in[2];
        out[2];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=300, 630");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 2;
        @display("p=300, 600");
      gates:
        in[2];
        out[2];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=300, 730");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 2;
        @display("p=300, 700");
      gates:
        in[2];
        out[2];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=300, 830");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 2;
        @display("p=300, 800");
      gates:
        in[2];
        out[2];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=300, 930");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 2;
        @display("p=300, 900");
      gates:
        in[2];
        out[2];
    };

    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 6;
        @display("p=600, 300");
      gates:
        in[7];
        out[7];
    };

    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 6;
        @display("p=600, 600");
      gates:
        in[7];
        out[7];
    };

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 6;
        @display("p=600, 900");
      gates:
        in[7];
        out[7];
    };

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 6;
        @display("p=900, 300");
      gates:
        in[7];
        out[7];
    };

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 6;
        @display("p=900, 600");
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

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=1200, 130");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 2;
        @display("p=1200, 100");
      gates:
        in[2];
        out[2];
    };

    core16 : <coreType> like NI_Ifc {
      parameters:
        id = 16;
        @display("p=1200, 230");
    }
    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 2;
        @display("p=1200, 200");
      gates:
        in[2];
        out[2];
    };

    core17 : <coreType> like NI_Ifc {
      parameters:
        id = 17;
        @display("p=1200, 330");
    }
    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 2;
        @display("p=1200, 300");
      gates:
        in[2];
        out[2];
    };

    core18 : <coreType> like NI_Ifc {
      parameters:
        id = 18;
        @display("p=1200, 430");
    }
    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 2;
        @display("p=1200, 400");
      gates:
        in[2];
        out[2];
    };

    core19 : <coreType> like NI_Ifc {
      parameters:
        id = 19;
        @display("p=1200, 530");
    }
    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 2;
        @display("p=1200, 500");
      gates:
        in[2];
        out[2];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=1200, 630");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=1200, 600");
      gates:
        in[2];
        out[2];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=1200, 730");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=1200, 700");
      gates:
        in[2];
        out[2];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=1200, 830");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 2;
        @display("p=1200, 800");
      gates:
        in[2];
        out[2];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=1200, 930");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=1200, 900");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router9.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router9.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router9.in[2];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router10.in[2];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router11.in[1];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router11.in[2];
      router8.in[1] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[1] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router9.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router9.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router9.out[3] <--> VariableBandWidthLink <--> router12.in[0];
      router9.out[4] <--> VariableBandWidthLink <--> router13.in[0];
      router9.out[5] <--> VariableBandWidthLink <--> router14.in[0];
      router10.out[0] <--> VariableBandWidthLink <--> router3.in[0];
      router10.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router5.in[0];
      router10.out[3] <--> VariableBandWidthLink <--> router13.in[1];
      router10.out[4] <--> VariableBandWidthLink <--> router12.in[1];
      router10.out[5] <--> VariableBandWidthLink <--> router14.in[1];
      router11.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router11.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router11.out[2] <--> VariableBandWidthLink <--> router8.in[0];
      router11.out[3] <--> VariableBandWidthLink <--> router14.in[2];
      router11.out[4] <--> VariableBandWidthLink <--> router12.in[2];
      router11.out[5] <--> VariableBandWidthLink <--> router13.in[2];
      router12.out[0] <--> VariableBandWidthLink <--> router9.in[3];
      router12.out[1] <--> VariableBandWidthLink <--> router10.in[4];
      router12.out[2] <--> VariableBandWidthLink <--> router11.in[4];
      router12.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router12.out[4] <--> VariableBandWidthLink <--> router16.in[0];
      router12.out[5] <--> VariableBandWidthLink <--> router17.in[0];
      router13.out[0] <--> VariableBandWidthLink <--> router9.in[4];
      router13.out[1] <--> VariableBandWidthLink <--> router10.in[3];
      router13.out[2] <--> VariableBandWidthLink <--> router11.in[5];
      router13.out[3] <--> VariableBandWidthLink <--> router18.in[0];
      router13.out[4] <--> VariableBandWidthLink <--> router19.in[0];
      router13.out[5] <--> VariableBandWidthLink <--> router20.in[0];
      router14.out[0] <--> VariableBandWidthLink <--> router9.in[5];
      router14.out[1] <--> VariableBandWidthLink <--> router10.in[5];
      router14.out[2] <--> VariableBandWidthLink <--> router11.in[3];
      router14.out[3] <--> VariableBandWidthLink <--> router21.in[0];
      router14.out[4] <--> VariableBandWidthLink <--> router22.in[0];
      router14.out[5] <--> VariableBandWidthLink <--> router23.in[0];
      router15.out[0] <--> VariableBandWidthLink <--> router12.in[3];
      router15.in[1] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[1] <--> VariableBandWidthLink <--> core15.in; 
      router16.out[0] <--> VariableBandWidthLink <--> router12.in[4];
      router16.in[1] <--> VariableBandWidthLink <--> core16.out; 
      router16.out[1] <--> VariableBandWidthLink <--> core16.in; 
      router17.out[0] <--> VariableBandWidthLink <--> router12.in[5];
      router17.in[1] <--> VariableBandWidthLink <--> core17.out; 
      router17.out[1] <--> VariableBandWidthLink <--> core17.in; 
      router18.out[0] <--> VariableBandWidthLink <--> router13.in[3];
      router18.in[1] <--> VariableBandWidthLink <--> core18.out; 
      router18.out[1] <--> VariableBandWidthLink <--> core18.in; 
      router19.out[0] <--> VariableBandWidthLink <--> router13.in[4];
      router19.in[1] <--> VariableBandWidthLink <--> core19.out; 
      router19.out[1] <--> VariableBandWidthLink <--> core19.in; 
      router20.out[0] <--> VariableBandWidthLink <--> router13.in[5];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router14.in[3];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router14.in[4];
      router22.in[1] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[1] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router14.in[5];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
}
