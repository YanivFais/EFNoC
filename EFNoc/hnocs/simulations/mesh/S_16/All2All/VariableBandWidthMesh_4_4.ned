// Copyright Yaniv Fais,Tel Aviv University

package efnoc.mesh.S_16.All2All;

import hnocs.routers.Router_Ifc;
import hnocs.cores.NI_Ifc;

import ned.DelayChannel;
import hnocs.topologies.VariableBandWidthLink;

network VariableBandWidthMesh_4_4
{
  parameters:
    string routerType;
    string coreType;
  submodules:
    core0 : <coreType> like NI_Ifc {
      parameters:
        id = 0;
        @display("p=0, 30");
    }
    router0 : <routerType> like Router_Ifc {
      parameters:
        id = 0;
        numPorts = 3;
        @display("p=0, 0");
      gates:
        in[3];
        out[3];
    };

    core1 : <coreType> like NI_Ifc {
      parameters:
        id = 1;
        @display("p=100, 30");
    }
    router1 : <routerType> like Router_Ifc {
      parameters:
        id = 1;
        numPorts = 4;
        @display("p=100, 0");
      gates:
        in[4];
        out[4];
    };

    core2 : <coreType> like NI_Ifc {
      parameters:
        id = 2;
        @display("p=200, 30");
    }
    router2 : <routerType> like Router_Ifc {
      parameters:
        id = 2;
        numPorts = 4;
        @display("p=200, 0");
      gates:
        in[4];
        out[4];
    };

    core3 : <coreType> like NI_Ifc {
      parameters:
        id = 3;
        @display("p=300, 30");
    }
    router3 : <routerType> like Router_Ifc {
      parameters:
        id = 3;
        numPorts = 3;
        @display("p=300, 0");
      gates:
        in[3];
        out[3];
    };

    core4 : <coreType> like NI_Ifc {
      parameters:
        id = 4;
        @display("p=0, 130");
    }
    router4 : <routerType> like Router_Ifc {
      parameters:
        id = 4;
        numPorts = 4;
        @display("p=0, 100");
      gates:
        in[4];
        out[4];
    };

    core5 : <coreType> like NI_Ifc {
      parameters:
        id = 5;
        @display("p=100, 130");
    }
    router5 : <routerType> like Router_Ifc {
      parameters:
        id = 5;
        numPorts = 5;
        @display("p=100, 100");
      gates:
        in[5];
        out[5];
    };

    core6 : <coreType> like NI_Ifc {
      parameters:
        id = 6;
        @display("p=200, 130");
    }
    router6 : <routerType> like Router_Ifc {
      parameters:
        id = 6;
        numPorts = 5;
        @display("p=200, 100");
      gates:
        in[5];
        out[5];
    };

    core7 : <coreType> like NI_Ifc {
      parameters:
        id = 7;
        @display("p=300, 130");
    }
    router7 : <routerType> like Router_Ifc {
      parameters:
        id = 7;
        numPorts = 4;
        @display("p=300, 100");
      gates:
        in[4];
        out[4];
    };

    core8 : <coreType> like NI_Ifc {
      parameters:
        id = 8;
        @display("p=0, 230");
    }
    router8 : <routerType> like Router_Ifc {
      parameters:
        id = 8;
        numPorts = 4;
        @display("p=0, 200");
      gates:
        in[4];
        out[4];
    };

    core9 : <coreType> like NI_Ifc {
      parameters:
        id = 9;
        @display("p=100, 230");
    }
    router9 : <routerType> like Router_Ifc {
      parameters:
        id = 9;
        numPorts = 5;
        @display("p=100, 200");
      gates:
        in[5];
        out[5];
    };

    core10 : <coreType> like NI_Ifc {
      parameters:
        id = 10;
        @display("p=200, 230");
    }
    router10 : <routerType> like Router_Ifc {
      parameters:
        id = 10;
        numPorts = 5;
        @display("p=200, 200");
      gates:
        in[5];
        out[5];
    };

    core11 : <coreType> like NI_Ifc {
      parameters:
        id = 11;
        @display("p=300, 230");
    }
    router11 : <routerType> like Router_Ifc {
      parameters:
        id = 11;
        numPorts = 4;
        @display("p=300, 200");
      gates:
        in[4];
        out[4];
    };

    core12 : <coreType> like NI_Ifc {
      parameters:
        id = 12;
        @display("p=0, 330");
    }
    router12 : <routerType> like Router_Ifc {
      parameters:
        id = 12;
        numPorts = 3;
        @display("p=0, 300");
      gates:
        in[3];
        out[3];
    };

    core13 : <coreType> like NI_Ifc {
      parameters:
        id = 13;
        @display("p=100, 330");
    }
    router13 : <routerType> like Router_Ifc {
      parameters:
        id = 13;
        numPorts = 4;
        @display("p=100, 300");
      gates:
        in[4];
        out[4];
    };

    core14 : <coreType> like NI_Ifc {
      parameters:
        id = 14;
        @display("p=200, 330");
    }
    router14 : <routerType> like Router_Ifc {
      parameters:
        id = 14;
        numPorts = 4;
        @display("p=200, 300");
      gates:
        in[4];
        out[4];
    };

    core15 : <coreType> like NI_Ifc {
      parameters:
        id = 15;
        @display("p=300, 330");
    }
    router15 : <routerType> like Router_Ifc {
      parameters:
        id = 15;
        numPorts = 3;
        @display("p=300, 300");
      gates:
        in[3];
        out[3];
    };

  connections allowunconnected :
      router0.out[0] <--> VariableBandWidthLink <--> router1.in[0];
      router0.out[1] <--> VariableBandWidthLink <--> router4.in[0];
      router0.in[2] <--> VariableBandWidthLink <--> core0.out; 
      router0.out[2] <--> VariableBandWidthLink <--> core0.in; 
      router1.out[0] <--> VariableBandWidthLink <--> router0.in[0];
      router1.out[1] <--> VariableBandWidthLink <--> router2.in[0];
      router1.out[2] <--> VariableBandWidthLink <--> router5.in[0];
      router1.in[3] <--> VariableBandWidthLink <--> core1.out; 
      router1.out[3] <--> VariableBandWidthLink <--> core1.in; 
      router2.out[0] <--> VariableBandWidthLink <--> router1.in[1];
      router2.out[1] <--> VariableBandWidthLink <--> router3.in[0];
      router2.out[2] <--> VariableBandWidthLink <--> router6.in[0];
      router2.in[3] <--> VariableBandWidthLink <--> core2.out; 
      router2.out[3] <--> VariableBandWidthLink <--> core2.in; 
      router3.out[0] <--> VariableBandWidthLink <--> router2.in[1];
      router3.out[1] <--> VariableBandWidthLink <--> router7.in[0];
      router3.in[2] <--> VariableBandWidthLink <--> core3.out; 
      router3.out[2] <--> VariableBandWidthLink <--> core3.in; 
      router4.out[0] <--> VariableBandWidthLink <--> router0.in[1];
      router4.out[1] <--> VariableBandWidthLink <--> router5.in[1];
      router4.out[2] <--> VariableBandWidthLink <--> router8.in[0];
      router4.in[3] <--> VariableBandWidthLink <--> core4.out; 
      router4.out[3] <--> VariableBandWidthLink <--> core4.in; 
      router5.out[0] <--> VariableBandWidthLink <--> router1.in[2];
      router5.out[1] <--> VariableBandWidthLink <--> router4.in[1];
      router5.out[2] <--> VariableBandWidthLink <--> router6.in[1];
      router5.out[3] <--> VariableBandWidthLink <--> router9.in[0];
      router5.in[4] <--> VariableBandWidthLink <--> core5.out; 
      router5.out[4] <--> VariableBandWidthLink <--> core5.in; 
      router6.out[0] <--> VariableBandWidthLink <--> router2.in[2];
      router6.out[1] <--> VariableBandWidthLink <--> router5.in[2];
      router6.out[2] <--> VariableBandWidthLink <--> router7.in[1];
      router6.out[3] <--> VariableBandWidthLink <--> router10.in[0];
      router6.in[4] <--> VariableBandWidthLink <--> core6.out; 
      router6.out[4] <--> VariableBandWidthLink <--> core6.in; 
      router7.out[0] <--> VariableBandWidthLink <--> router3.in[1];
      router7.out[1] <--> VariableBandWidthLink <--> router6.in[2];
      router7.out[2] <--> VariableBandWidthLink <--> router11.in[0];
      router7.in[3] <--> VariableBandWidthLink <--> core7.out; 
      router7.out[3] <--> VariableBandWidthLink <--> core7.in; 
      router8.out[0] <--> VariableBandWidthLink <--> router4.in[2];
      router8.out[1] <--> VariableBandWidthLink <--> router9.in[1];
      router8.out[2] <--> VariableBandWidthLink <--> router12.in[0];
      router8.in[3] <--> VariableBandWidthLink <--> core8.out; 
      router8.out[3] <--> VariableBandWidthLink <--> core8.in; 
      router9.out[0] <--> VariableBandWidthLink <--> router5.in[3];
      router9.out[1] <--> VariableBandWidthLink <--> router8.in[1];
      router9.out[2] <--> VariableBandWidthLink <--> router10.in[1];
      router9.out[3] <--> VariableBandWidthLink <--> router13.in[0];
      router9.in[4] <--> VariableBandWidthLink <--> core9.out; 
      router9.out[4] <--> VariableBandWidthLink <--> core9.in; 
      router10.out[0] <--> VariableBandWidthLink <--> router6.in[3];
      router10.out[1] <--> VariableBandWidthLink <--> router9.in[2];
      router10.out[2] <--> VariableBandWidthLink <--> router11.in[1];
      router10.out[3] <--> VariableBandWidthLink <--> router14.in[0];
      router10.in[4] <--> VariableBandWidthLink <--> core10.out; 
      router10.out[4] <--> VariableBandWidthLink <--> core10.in; 
      router11.out[0] <--> VariableBandWidthLink <--> router7.in[2];
      router11.out[1] <--> VariableBandWidthLink <--> router10.in[2];
      router11.out[2] <--> VariableBandWidthLink <--> router15.in[0];
      router11.in[3] <--> VariableBandWidthLink <--> core11.out; 
      router11.out[3] <--> VariableBandWidthLink <--> core11.in; 
      router12.out[0] <--> VariableBandWidthLink <--> router8.in[2];
      router12.out[1] <--> VariableBandWidthLink <--> router13.in[1];
      router12.in[2] <--> VariableBandWidthLink <--> core12.out; 
      router12.out[2] <--> VariableBandWidthLink <--> core12.in; 
      router13.out[0] <--> VariableBandWidthLink <--> router9.in[3];
      router13.out[1] <--> VariableBandWidthLink <--> router12.in[1];
      router13.out[2] <--> VariableBandWidthLink <--> router14.in[1];
      router13.in[3] <--> VariableBandWidthLink <--> core13.out; 
      router13.out[3] <--> VariableBandWidthLink <--> core13.in; 
      router14.out[0] <--> VariableBandWidthLink <--> router10.in[3];
      router14.out[1] <--> VariableBandWidthLink <--> router13.in[2];
      router14.out[2] <--> VariableBandWidthLink <--> router15.in[1];
      router14.in[3] <--> VariableBandWidthLink <--> core14.out; 
      router14.out[3] <--> VariableBandWidthLink <--> core14.in; 
      router15.out[0] <--> VariableBandWidthLink <--> router11.in[2];
      router15.out[1] <--> VariableBandWidthLink <--> router14.in[2];
      router15.in[2] <--> VariableBandWidthLink <--> core15.out; 
      router15.out[2] <--> VariableBandWidthLink <--> core15.in; 
}
