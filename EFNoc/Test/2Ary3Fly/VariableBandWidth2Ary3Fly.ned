// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;

channel VariableBandWidthLink extends ned.DelayChannel
{
  delay = 2ns;
}

network VariableBandWidth2Ary3Fly
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

    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 4;
        @display("p=400, 400");
      gates:
        in[5];
        out[5];
    };

    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 4;
        @display("p=400, 600");
      gates:
        in[5];
        out[5];
    };

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 4;
        @display("p=400, 800");
      gates:
        in[5];
        out[5];
    };

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 4;
        @display("p=600, 200");
      gates:
        in[5];
        out[5];
    };

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 4;
        @display("p=600, 400");
      gates:
        in[5];
        out[5];
    };

    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=600, 600");
      gates:
        in[5];
        out[5];
    };

    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 4;
        @display("p=600, 800");
      gates:
        in[5];
        out[5];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 4;
        @display("p=800, 200");
      gates:
        in[5];
        out[5];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 4;
        @display("p=800, 400");
      gates:
        in[5];
        out[5];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 4;
        @display("p=800, 600");
      gates:
        in[5];
        out[5];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 4;
        @display("p=800, 800");
      gates:
        in[5];
        out[5];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=1000, 130");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=1000, 100");
      gates:
        in[2];
        out[2];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=1000, 230");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=1000, 200");
      gates:
        in[2];
        out[2];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=1000, 330");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 2;
        @display("p=1000, 300");
      gates:
        in[2];
        out[2];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=1000, 430");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=1000, 400");
      gates:
        in[2];
        out[2];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=1000, 530");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=1000, 500");
      gates:
        in[2];
        out[2];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=1000, 630");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=1000, 600");
      gates:
        in[2];
        out[2];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=1000, 730");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 2;
        @display("p=1000, 700");
      gates:
        in[2];
        out[2];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=1000, 830");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 2;
        @display("p=1000, 800");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router8.in[0];
      router0.in[1] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[1] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router8.in[1];
      router1.in[1] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[1] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router9.in[0];
      router2.in[1] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[1] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router9.in[1];
      router3.in[1] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[1] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router4.in[1] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[1] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router5.in[1] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[1] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router11.in[0];
      router6.in[1] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[1] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router11.in[1];
      router7.in[1] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[1] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router8.out[1] <--> VariableBandWidthLink <--> router1.in[0];
      router8.out[2] <--> VariableBandWidthLink <--> router12.in[0];
      router8.out[3] <--> VariableBandWidthLink <--> router14.in[0];
      router9.out[0] <--> VariableBandWidthLink <--> router2.in[0];
      router9.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router9.out[2] <--> VariableBandWidthLink <--> router13.in[0];
      router9.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router10.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router10.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router14.in[1];
      router10.out[3] <--> VariableBandWidthLink <--> router12.in[1];
      router11.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router11.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router11.out[2] <--> VariableBandWidthLink <--> router15.in[1];
      router11.out[3] <--> VariableBandWidthLink <--> router13.in[1];
      router12.out[0] <--> VariableBandWidthLink <--> router8.in[2];
      router12.out[1] <--> VariableBandWidthLink <--> router10.in[3];
      router12.out[2] <--> VariableBandWidthLink <--> router16.in[0];
      router12.out[3] <--> VariableBandWidthLink <--> router17.in[0];
      router13.out[0] <--> VariableBandWidthLink <--> router9.in[2];
      router13.out[1] <--> VariableBandWidthLink <--> router11.in[3];
      router13.out[2] <--> VariableBandWidthLink <--> router17.in[1];
      router13.out[3] <--> VariableBandWidthLink <--> router16.in[1];
      router14.out[0] <--> VariableBandWidthLink <--> router8.in[3];
      router14.out[1] <--> VariableBandWidthLink <--> router10.in[2];
      router14.out[2] <--> VariableBandWidthLink <--> router18.in[0];
      router14.out[3] <--> VariableBandWidthLink <--> router19.in[0];
      router15.out[0] <--> VariableBandWidthLink <--> router9.in[3];
      router15.out[1] <--> VariableBandWidthLink <--> router11.in[2];
      router15.out[2] <--> VariableBandWidthLink <--> router19.in[1];
      router15.out[3] <--> VariableBandWidthLink <--> router18.in[1];
      router16.out[0] <--> VariableBandWidthLink <--> router12.in[2];
      router16.out[1] <--> VariableBandWidthLink <--> router13.in[3];
      router16.out[2] <--> VariableBandWidthLink <--> router20.in[0];
      router16.out[3] <--> VariableBandWidthLink <--> router21.in[0];
      router17.out[0] <--> VariableBandWidthLink <--> router12.in[3];
      router17.out[1] <--> VariableBandWidthLink <--> router13.in[2];
      router17.out[2] <--> VariableBandWidthLink <--> router22.in[0];
      router17.out[3] <--> VariableBandWidthLink <--> router23.in[0];
      router18.out[0] <--> VariableBandWidthLink <--> router14.in[2];
      router18.out[1] <--> VariableBandWidthLink <--> router15.in[3];
      router18.out[2] <--> VariableBandWidthLink <--> router24.in[0];
      router18.out[3] <--> VariableBandWidthLink <--> router25.in[0];
      router19.out[0] <--> VariableBandWidthLink <--> router14.in[3];
      router19.out[1] <--> VariableBandWidthLink <--> router15.in[2];
      router19.out[2] <--> VariableBandWidthLink <--> router26.in[0];
      router19.out[3] <--> VariableBandWidthLink <--> router27.in[0];
      router20.out[0] <--> VariableBandWidthLink <--> router16.in[2];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router16.in[3];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router17.in[2];
      router22.in[1] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[1] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router17.in[3];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router18.in[3];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router26.in[1] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[1] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router19.in[3];
      router27.in[1] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[1] <--> VariableBandWidthLink <--> core27.in; 
}
