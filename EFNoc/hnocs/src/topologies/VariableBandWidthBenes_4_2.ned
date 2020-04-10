// Copyright Yaniv Fais,Tel Aviv University

package hnocs.topologies;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;


network VariableBandWidthBenes_4_2
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 4;
        @display("p=200, 100");
      gates:
        in[5];
        out[5];
    };

    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 4;
        @display("p=200, 200");
      gates:
        in[5];
        out[5];
    };

    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=200, 300");
      gates:
        in[5];
        out[5];
    };

    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 4;
        @display("p=200, 400");
      gates:
        in[5];
        out[5];
    };

    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 4;
        @display("p=300, 100");
      gates:
        in[5];
        out[5];
    };

    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 4;
        @display("p=300, 200");
      gates:
        in[5];
        out[5];
    };

    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 4;
        @display("p=400, 100");
      gates:
        in[5];
        out[5];
    };

    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 4;
        @display("p=400, 200");
      gates:
        in[5];
        out[5];
    };

    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 4;
        @display("p=500, 100");
      gates:
        in[5];
        out[5];
    };

    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 4;
        @display("p=500, 200");
      gates:
        in[5];
        out[5];
    };

    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 4;
        @display("p=300, 300");
      gates:
        in[5];
        out[5];
    };

    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 4;
        @display("p=300, 400");
      gates:
        in[5];
        out[5];
    };

    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 4;
        @display("p=400, 300");
      gates:
        in[5];
        out[5];
    };

    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 4;
        @display("p=400, 400");
      gates:
        in[5];
        out[5];
    };

    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=500, 300");
      gates:
        in[5];
        out[5];
    };

    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 4;
        @display("p=500, 400");
      gates:
        in[5];
        out[5];
    };

    router16 : <routerType> like Router_Ifc {
      parameters:
        id = 16;
        numPorts = 4;
        @display("p=700, 100");
      gates:
        in[5];
        out[5];
    };

    router17 : <routerType> like Router_Ifc {
      parameters:
        id = 17;
        numPorts = 4;
        @display("p=700, 200");
      gates:
        in[5];
        out[5];
    };

    router18 : <routerType> like Router_Ifc {
      parameters:
        id = 18;
        numPorts = 4;
        @display("p=700, 300");
      gates:
        in[5];
        out[5];
    };

    router19 : <routerType> like Router_Ifc {
      parameters:
        id = 19;
        numPorts = 4;
        @display("p=700, 400");
      gates:
        in[5];
        out[5];
    };

    core20 : <coreType> like NI_Ifc {
      parameters:
        id = 20;
        @display("p=100, 130");
    }
    router20 : <routerType> like Router_Ifc {
      parameters:
        id = 20;
        numPorts = 2;
        @display("p=100, 100");
      gates:
        in[2];
        out[2];
    };

    core21 : <coreType> like NI_Ifc {
      parameters:
        id = 21;
        @display("p=800, 130");
    }
    router21 : <routerType> like Router_Ifc {
      parameters:
        id = 21;
        numPorts = 2;
        @display("p=800, 100");
      gates:
        in[2];
        out[2];
    };

    core22 : <coreType> like NI_Ifc {
      parameters:
        id = 22;
        @display("p=100, 230");
    }
    router22 : <routerType> like Router_Ifc {
      parameters:
        id = 22;
        numPorts = 2;
        @display("p=100, 200");
      gates:
        in[2];
        out[2];
    };

    core23 : <coreType> like NI_Ifc {
      parameters:
        id = 23;
        @display("p=800, 230");
    }
    router23 : <routerType> like Router_Ifc {
      parameters:
        id = 23;
        numPorts = 2;
        @display("p=800, 200");
      gates:
        in[2];
        out[2];
    };

    core24 : <coreType> like NI_Ifc {
      parameters:
        id = 24;
        @display("p=100, 330");
    }
    router24 : <routerType> like Router_Ifc {
      parameters:
        id = 24;
        numPorts = 2;
        @display("p=100, 300");
      gates:
        in[2];
        out[2];
    };

    core25 : <coreType> like NI_Ifc {
      parameters:
        id = 25;
        @display("p=800, 330");
    }
    router25 : <routerType> like Router_Ifc {
      parameters:
        id = 25;
        numPorts = 2;
        @display("p=800, 300");
      gates:
        in[2];
        out[2];
    };

    core26 : <coreType> like NI_Ifc {
      parameters:
        id = 26;
        @display("p=100, 430");
    }
    router26 : <routerType> like Router_Ifc {
      parameters:
        id = 26;
        numPorts = 2;
        @display("p=100, 400");
      gates:
        in[2];
        out[2];
    };

    core27 : <coreType> like NI_Ifc {
      parameters:
        id = 27;
        @display("p=800, 430");
    }
    router27 : <routerType> like Router_Ifc {
      parameters:
        id = 27;
        numPorts = 2;
        @display("p=800, 400");
      gates:
        in[2];
        out[2];
    };

    core28 : <coreType> like NI_Ifc {
      parameters:
        id = 28;
        @display("p=100, 530");
    }
    router28 : <routerType> like Router_Ifc {
      parameters:
        id = 28;
        numPorts = 2;
        @display("p=100, 500");
      gates:
        in[2];
        out[2];
    };

    core29 : <coreType> like NI_Ifc {
      parameters:
        id = 29;
        @display("p=800, 530");
    }
    router29 : <routerType> like Router_Ifc {
      parameters:
        id = 29;
        numPorts = 2;
        @display("p=800, 500");
      gates:
        in[2];
        out[2];
    };

    core30 : <coreType> like NI_Ifc {
      parameters:
        id = 30;
        @display("p=100, 630");
    }
    router30 : <routerType> like Router_Ifc {
      parameters:
        id = 30;
        numPorts = 2;
        @display("p=100, 600");
      gates:
        in[2];
        out[2];
    };

    core31 : <coreType> like NI_Ifc {
      parameters:
        id = 31;
        @display("p=800, 630");
    }
    router31 : <routerType> like Router_Ifc {
      parameters:
        id = 31;
        numPorts = 2;
        @display("p=800, 600");
      gates:
        in[2];
        out[2];
    };

    core32 : <coreType> like NI_Ifc {
      parameters:
        id = 32;
        @display("p=100, 730");
    }
    router32 : <routerType> like Router_Ifc {
      parameters:
        id = 32;
        numPorts = 2;
        @display("p=100, 700");
      gates:
        in[2];
        out[2];
    };

    core33 : <coreType> like NI_Ifc {
      parameters:
        id = 33;
        @display("p=800, 730");
    }
    router33 : <routerType> like Router_Ifc {
      parameters:
        id = 33;
        numPorts = 2;
        @display("p=800, 700");
      gates:
        in[2];
        out[2];
    };

    core34 : <coreType> like NI_Ifc {
      parameters:
        id = 34;
        @display("p=100, 830");
    }
    router34 : <routerType> like Router_Ifc {
      parameters:
        id = 34;
        numPorts = 2;
        @display("p=100, 800");
      gates:
        in[2];
        out[2];
    };

    core35 : <coreType> like NI_Ifc {
      parameters:
        id = 35;
        @display("p=800, 830");
    }
    router35 : <routerType> like Router_Ifc {
      parameters:
        id = 35;
        numPorts = 2;
        @display("p=800, 800");
      gates:
        in[2];
        out[2];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router4.in[2];
      router0.out[1] <--> VariableBandWidthLink <--> router10.in[2];
      router0.out[2] <--> VariableBandWidthLink <--> router20.in[0];
      router0.out[3] <--> VariableBandWidthLink <--> router22.in[0];
      router1.out[0] <--> VariableBandWidthLink <--> router4.in[3];
      router1.out[1] <--> VariableBandWidthLink <--> router10.in[3];
      router1.out[2] <--> VariableBandWidthLink <--> router24.in[0];
      router1.out[3] <--> VariableBandWidthLink <--> router26.in[0];
      router2.out[0] <--> VariableBandWidthLink <--> router5.in[2];
      router2.out[1] <--> VariableBandWidthLink <--> router11.in[2];
      router2.out[2] <--> VariableBandWidthLink <--> router28.in[0];
      router2.out[3] <--> VariableBandWidthLink <--> router30.in[0];
      router3.out[0] <--> VariableBandWidthLink <--> router5.in[3];
      router3.out[1] <--> VariableBandWidthLink <--> router11.in[3];
      router3.out[2] <--> VariableBandWidthLink <--> router32.in[0];
      router3.out[3] <--> VariableBandWidthLink <--> router34.in[0];
      router4.out[0] <--> VariableBandWidthLink <--> router6.in[0];
      router4.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router4.out[2] <--> VariableBandWidthLink <--> router0.in[0];
      router4.out[3] <--> VariableBandWidthLink <--> router1.in[0];
      router5.out[0] <--> VariableBandWidthLink <--> router6.in[1];
      router5.out[1] <--> VariableBandWidthLink <--> router7.in[1];
      router5.out[2] <--> VariableBandWidthLink <--> router2.in[0];
      router5.out[3] <--> VariableBandWidthLink <--> router3.in[0];
      router6.out[0] <--> VariableBandWidthLink <--> router4.in[0];
      router6.out[1] <--> VariableBandWidthLink <--> router5.in[0];
      router6.out[2] <--> VariableBandWidthLink <--> router8.in[0];
      router6.out[3] <--> VariableBandWidthLink <--> router9.in[0];
      router7.out[0] <--> VariableBandWidthLink <--> router4.in[1];
      router7.out[1] <--> VariableBandWidthLink <--> router5.in[1];
      router7.out[2] <--> VariableBandWidthLink <--> router8.in[1];
      router7.out[3] <--> VariableBandWidthLink <--> router9.in[1];
      router8.out[0] <--> VariableBandWidthLink <--> router6.in[2];
      router8.out[1] <--> VariableBandWidthLink <--> router7.in[2];
      router8.out[2] <--> VariableBandWidthLink <--> router16.in[0];
      router8.out[3] <--> VariableBandWidthLink <--> router17.in[0];
      router9.out[0] <--> VariableBandWidthLink <--> router6.in[3];
      router9.out[1] <--> VariableBandWidthLink <--> router7.in[3];
      router9.out[2] <--> VariableBandWidthLink <--> router18.in[0];
      router9.out[3] <--> VariableBandWidthLink <--> router19.in[0];
      router10.out[0] <--> VariableBandWidthLink <--> router12.in[0];
      router10.out[1] <--> VariableBandWidthLink <--> router13.in[0];
      router10.out[2] <--> VariableBandWidthLink <--> router0.in[1];
      router10.out[3] <--> VariableBandWidthLink <--> router1.in[1];
      router11.out[0] <--> VariableBandWidthLink <--> router12.in[1];
      router11.out[1] <--> VariableBandWidthLink <--> router13.in[1];
      router11.out[2] <--> VariableBandWidthLink <--> router2.in[1];
      router11.out[3] <--> VariableBandWidthLink <--> router3.in[1];
      router12.out[0] <--> VariableBandWidthLink <--> router10.in[0];
      router12.out[1] <--> VariableBandWidthLink <--> router11.in[0];
      router12.out[2] <--> VariableBandWidthLink <--> router14.in[0];
      router12.out[3] <--> VariableBandWidthLink <--> router15.in[0];
      router13.out[0] <--> VariableBandWidthLink <--> router10.in[1];
      router13.out[1] <--> VariableBandWidthLink <--> router11.in[1];
      router13.out[2] <--> VariableBandWidthLink <--> router14.in[1];
      router13.out[3] <--> VariableBandWidthLink <--> router15.in[1];
      router14.out[0] <--> VariableBandWidthLink <--> router12.in[2];
      router14.out[1] <--> VariableBandWidthLink <--> router13.in[2];
      router14.out[2] <--> VariableBandWidthLink <--> router16.in[1];
      router14.out[3] <--> VariableBandWidthLink <--> router17.in[1];
      router15.out[0] <--> VariableBandWidthLink <--> router12.in[3];
      router15.out[1] <--> VariableBandWidthLink <--> router13.in[3];
      router15.out[2] <--> VariableBandWidthLink <--> router18.in[1];
      router15.out[3] <--> VariableBandWidthLink <--> router19.in[1];
      router16.out[0] <--> VariableBandWidthLink <--> router8.in[2];
      router16.out[1] <--> VariableBandWidthLink <--> router14.in[2];
      router16.out[2] <--> VariableBandWidthLink <--> router21.in[0];
      router16.out[3] <--> VariableBandWidthLink <--> router23.in[0];
      router17.out[0] <--> VariableBandWidthLink <--> router8.in[3];
      router17.out[1] <--> VariableBandWidthLink <--> router14.in[3];
      router17.out[2] <--> VariableBandWidthLink <--> router25.in[0];
      router17.out[3] <--> VariableBandWidthLink <--> router27.in[0];
      router18.out[0] <--> VariableBandWidthLink <--> router9.in[2];
      router18.out[1] <--> VariableBandWidthLink <--> router15.in[2];
      router18.out[2] <--> VariableBandWidthLink <--> router29.in[0];
      router18.out[3] <--> VariableBandWidthLink <--> router31.in[0];
      router19.out[0] <--> VariableBandWidthLink <--> router9.in[3];
      router19.out[1] <--> VariableBandWidthLink <--> router15.in[3];
      router19.out[2] <--> VariableBandWidthLink <--> router33.in[0];
      router19.out[3] <--> VariableBandWidthLink <--> router35.in[0];
      router20.out[0] <--> VariableBandWidthLink <--> router0.in[2];
      router20.in[1] <--> VariableBandWidthLink <--> core20.out; 
      router20.out[1] <--> VariableBandWidthLink <--> core20.in; 
      router21.out[0] <--> VariableBandWidthLink <--> router16.in[2];
      router21.in[1] <--> VariableBandWidthLink <--> core21.out; 
      router21.out[1] <--> VariableBandWidthLink <--> core21.in; 
      router22.out[0] <--> VariableBandWidthLink <--> router0.in[3];
      router22.in[1] <--> VariableBandWidthLink <--> core22.out; 
      router22.out[1] <--> VariableBandWidthLink <--> core22.in; 
      router23.out[0] <--> VariableBandWidthLink <--> router16.in[3];
      router23.in[1] <--> VariableBandWidthLink <--> core23.out; 
      router23.out[1] <--> VariableBandWidthLink <--> core23.in; 
      router24.out[0] <--> VariableBandWidthLink <--> router1.in[2];
      router24.in[1] <--> VariableBandWidthLink <--> core24.out; 
      router24.out[1] <--> VariableBandWidthLink <--> core24.in; 
      router25.out[0] <--> VariableBandWidthLink <--> router17.in[2];
      router25.in[1] <--> VariableBandWidthLink <--> core25.out; 
      router25.out[1] <--> VariableBandWidthLink <--> core25.in; 
      router26.out[0] <--> VariableBandWidthLink <--> router1.in[3];
      router26.in[1] <--> VariableBandWidthLink <--> core26.out; 
      router26.out[1] <--> VariableBandWidthLink <--> core26.in; 
      router27.out[0] <--> VariableBandWidthLink <--> router17.in[3];
      router27.in[1] <--> VariableBandWidthLink <--> core27.out; 
      router27.out[1] <--> VariableBandWidthLink <--> core27.in; 
      router28.out[0] <--> VariableBandWidthLink <--> router2.in[2];
      router28.in[1] <--> VariableBandWidthLink <--> core28.out; 
      router28.out[1] <--> VariableBandWidthLink <--> core28.in; 
      router29.out[0] <--> VariableBandWidthLink <--> router18.in[2];
      router29.in[1] <--> VariableBandWidthLink <--> core29.out; 
      router29.out[1] <--> VariableBandWidthLink <--> core29.in; 
      router30.out[0] <--> VariableBandWidthLink <--> router2.in[3];
      router30.in[1] <--> VariableBandWidthLink <--> core30.out; 
      router30.out[1] <--> VariableBandWidthLink <--> core30.in; 
      router31.out[0] <--> VariableBandWidthLink <--> router18.in[3];
      router31.in[1] <--> VariableBandWidthLink <--> core31.out; 
      router31.out[1] <--> VariableBandWidthLink <--> core31.in; 
      router32.out[0] <--> VariableBandWidthLink <--> router3.in[2];
      router32.in[1] <--> VariableBandWidthLink <--> core32.out; 
      router32.out[1] <--> VariableBandWidthLink <--> core32.in; 
      router33.out[0] <--> VariableBandWidthLink <--> router19.in[2];
      router33.in[1] <--> VariableBandWidthLink <--> core33.out; 
      router33.out[1] <--> VariableBandWidthLink <--> core33.in; 
      router34.out[0] <--> VariableBandWidthLink <--> router3.in[3];
      router34.in[1] <--> VariableBandWidthLink <--> core34.out; 
      router34.out[1] <--> VariableBandWidthLink <--> core34.in; 
      router35.out[0] <--> VariableBandWidthLink <--> router19.in[3];
      router35.in[1] <--> VariableBandWidthLink <--> core35.out; 
      router35.out[1] <--> VariableBandWidthLink <--> core35.in; 
}
