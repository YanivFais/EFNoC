#
# OMNeT++/OMNEST Makefile for hnocs
#
# This file was generated with the command:
#  opp_makemake -f --deep
#

# Name of target to be created (-o option)
TARGET = hnocs$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I. \
    -Icores \
    -Icores/sinks \
    -Icores/sources \
    -Icores/sources/MCSL \
    -Irouters \
    -Irouters/hier \
    -Irouters/hier/inPort \
    -Irouters/hier/opCalc \
    -Irouters/hier/opCalc/static \
    -Irouters/hier/sched \
    -Irouters/hier/sched/Switch \
    -Irouters/hier/sched/wormhole \
    -Irouters/hier/vcCalc \
    -Irouters/hier/vcCalc/free \
    -Itopologies

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS =

# Output directory
PROJECT_OUTPUT_DIR = ../out
PROJECTRELATIVE_PATH = /src
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/cores/sinks/InfiniteBWMultiVCScheduledSink.o \
    $O/cores/sinks/InfiniteBWMultiVCSink.o \
    $O/cores/sinks/InfiniteBWMultiVCSinkperSrc.o \
    $O/cores/sources/CommunicationRequest.o \
    $O/cores/sources/PktFifoSrc.o \
    $O/cores/sources/RequestsCollection.o \
    $O/cores/sources/ScheduledSrc.o \
    $O/cores/sources/MCSL/mcsl_main.o \
    $O/cores/sources/MCSL/rec_edge.o \
    $O/cores/sources/MCSL/rec_noc_traffic.o \
    $O/cores/sources/MCSL/rec_proc.o \
    $O/cores/sources/MCSL/rec_task.o \
    $O/cores/sources/MCSL/stat_edge.o \
    $O/cores/sources/MCSL/stat_noc_traffic.o \
    $O/cores/sources/MCSL/stat_proc.o \
    $O/cores/sources/MCSL/stat_task.o \
    $O/routers/hier/inPort/InPortAsync.o \
    $O/routers/hier/inPort/InPortScheduledSync.o \
    $O/routers/hier/inPort/InPortSync.o \
    $O/routers/hier/opCalc/static/ScheduledCalc.o \
    $O/routers/hier/opCalc/static/ScheduleItem.o \
    $O/routers/hier/opCalc/static/XYOPCalc.o \
    $O/routers/hier/sched/Switch/SwitchSync.o \
    $O/routers/hier/sched/wormhole/SchedAsync.o \
    $O/routers/hier/sched/wormhole/SchedSync.o \
    $O/routers/hier/vcCalc/free/EmptyVCCalc.o \
    $O/routers/hier/vcCalc/free/FLUVCCalc.o \
    $O/NoCs_m.o

# Message files
MSGFILES = \
    NoCs.msg

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $(TARGET)

$(TARGET) : $O/$(TARGET)
	$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY:

.SUFFIXES: .cc

$O/%.o: %.cc
	@$(MKPATH) $(dir $@)
	$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	-rm -rf $O
	-rm -f hnocs hnocs.exe libhnocs.so libhnocs.a libhnocs.dll libhnocs.dylib
	-rm -f ./*_m.cc ./*_m.h
	-rm -f cores/*_m.cc cores/*_m.h
	-rm -f cores/sinks/*_m.cc cores/sinks/*_m.h
	-rm -f cores/sources/*_m.cc cores/sources/*_m.h
	-rm -f cores/sources/MCSL/*_m.cc cores/sources/MCSL/*_m.h
	-rm -f routers/*_m.cc routers/*_m.h
	-rm -f routers/hier/*_m.cc routers/hier/*_m.h
	-rm -f routers/hier/inPort/*_m.cc routers/hier/inPort/*_m.h
	-rm -f routers/hier/opCalc/*_m.cc routers/hier/opCalc/*_m.h
	-rm -f routers/hier/opCalc/static/*_m.cc routers/hier/opCalc/static/*_m.h
	-rm -f routers/hier/sched/*_m.cc routers/hier/sched/*_m.h
	-rm -f routers/hier/sched/Switch/*_m.cc routers/hier/sched/Switch/*_m.h
	-rm -f routers/hier/sched/wormhole/*_m.cc routers/hier/sched/wormhole/*_m.h
	-rm -f routers/hier/vcCalc/*_m.cc routers/hier/vcCalc/*_m.h
	-rm -f routers/hier/vcCalc/free/*_m.cc routers/hier/vcCalc/free/*_m.h
	-rm -f topologies/*_m.cc topologies/*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc cores/*.cc cores/sinks/*.cc cores/sources/*.cc cores/sources/MCSL/*.cc routers/*.cc routers/hier/*.cc routers/hier/inPort/*.cc routers/hier/opCalc/*.cc routers/hier/opCalc/static/*.cc routers/hier/sched/*.cc routers/hier/sched/Switch/*.cc routers/hier/sched/wormhole/*.cc routers/hier/vcCalc/*.cc routers/hier/vcCalc/free/*.cc topologies/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/NoCs_m.o: NoCs_m.cc \
  ./NoCs_m.h
$O/cores/sinks/InfiniteBWMultiVCScheduledSink.o: cores/sinks/InfiniteBWMultiVCScheduledSink.cc \
  cores/sources/RequestsCollection.h \
  cores/sources/MCSL\rec_noc_traffic.h \
  cores/sources/CommunicationRequest.h \
  cores/sources/ScheduledSrc.h \
  routers/hier/sched/Switch/SwitchSync.h \
  routers/hier/opCalc/static/ScheduleItem.h \
  routers/hier/FlitMsgCtrl.h \
  cores/sources/EFGlobals.h \
  cores/sources/MCSL/rec_task.h \
  cores/sinks/InfiniteBWMultiVCScheduledSink.h \
  routers/hier/opCalc/static/ScheduledCalc.h \
  routers/hier/HierRouter.h \
  cores/sources/MCSL/rec_edge.h \
  ./NoCs_m.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sinks/InfiniteBWMultiVCSink.o: cores/sinks/InfiniteBWMultiVCSink.cc \
  cores/sinks/InfiniteBWMultiVCSink.h \
  ./NoCs_m.h
$O/cores/sinks/InfiniteBWMultiVCSinkperSrc.o: cores/sinks/InfiniteBWMultiVCSinkperSrc.cc \
  cores/sinks/InfiniteBWMultiVCSinkperSrc.h \
  ./NoCs_m.h
$O/cores/sources/CommunicationRequest.o: cores/sources/CommunicationRequest.cc \
  cores/sources/CommunicationRequest.h
$O/cores/sources/PktFifoSrc.o: cores/sources/PktFifoSrc.cc \
  cores/sources/PktFifoSrc.h \
  ./NoCs_m.h
$O/cores/sources/RequestsCollection.o: cores/sources/RequestsCollection.cc \
  cores/sources/CommunicationRequest.h \
  cores/sources/RequestsCollection.h
$O/cores/sources/ScheduledSrc.o: cores/sources/ScheduledSrc.cc \
  cores/sources/RequestsCollection.h \
  cores/sources/MCSL\rec_noc_traffic.h \
  cores/sources/CommunicationRequest.h \
  cores/sources/ScheduledSrc.h \
  routers/hier/sched/Switch/SwitchSync.h \
  routers/hier/opCalc/static/ScheduleItem.h \
  routers/hier/FlitMsgCtrl.h \
  cores/sources/EFGlobals.h \
  cores/sources/MCSL/rec_task.h \
  routers/hier/opCalc/static/ScheduledCalc.h \
  routers/hier/HierRouter.h \
  ./NoCs_m.h \
  cores/sources/MCSL/rec_edge.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sources/MCSL/mcsl_main.o: cores/sources/MCSL/mcsl_main.cc \
  cores/sources/MCSL/stat_task.h \
  cores/sources/MCSL/rec_noc_traffic.h \
  cores/sources/MCSL/stat_edge.h \
  cores/sources/MCSL/stat_proc.h \
  cores/sources/MCSL/rec_task.h \
  cores/sources/MCSL/stat_noc_traffic.h \
  cores/sources/MCSL/rec_edge.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sources/MCSL/rec_edge.o: cores/sources/MCSL/rec_edge.cc \
  cores/sources/MCSL/rec_task.h \
  cores/sources/MCSL/rec_edge.h
$O/cores/sources/MCSL/rec_noc_traffic.o: cores/sources/MCSL/rec_noc_traffic.cc \
  cores/sources/MCSL/rec_noc_traffic.h \
  cores/sources/MCSL/rec_task.h \
  cores/sources/MCSL/rec_edge.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sources/MCSL/rec_proc.o: cores/sources/MCSL/rec_proc.cc \
  cores/sources/MCSL/rec_task.h \
  cores/sources/MCSL/rec_edge.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sources/MCSL/rec_task.o: cores/sources/MCSL/rec_task.cc \
  cores/sources/MCSL/rec_task.h \
  cores/sources/MCSL/rec_edge.h \
  cores/sources/MCSL/rec_proc.h
$O/cores/sources/MCSL/stat_edge.o: cores/sources/MCSL/stat_edge.cc \
  cores/sources/MCSL/stat_task.h \
  cores/sources/MCSL/stat_edge.h
$O/cores/sources/MCSL/stat_noc_traffic.o: cores/sources/MCSL/stat_noc_traffic.cc \
  cores/sources/MCSL/stat_task.h \
  cores/sources/MCSL/stat_edge.h \
  cores/sources/MCSL/stat_proc.h \
  cores/sources/MCSL/stat_noc_traffic.h
$O/cores/sources/MCSL/stat_proc.o: cores/sources/MCSL/stat_proc.cc \
  cores/sources/MCSL/stat_task.h \
  cores/sources/MCSL/stat_edge.h \
  cores/sources/MCSL/stat_proc.h
$O/cores/sources/MCSL/stat_task.o: cores/sources/MCSL/stat_task.cc \
  cores/sources/MCSL/stat_task.h \
  cores/sources/MCSL/stat_edge.h \
  cores/sources/MCSL/stat_proc.h
$O/routers/hier/inPort/InPortAsync.o: routers/hier/inPort/InPortAsync.cc \
  routers/hier/FlitMsgCtrl.h \
  ./NoCs_m.h \
  routers/hier/inPort/InPortAsync.h
$O/routers/hier/inPort/InPortScheduledSync.o: routers/hier/inPort/InPortScheduledSync.cc \
  routers/hier/inPort/InPortScheduledSync.h \
  routers/hier/FlitMsgCtrl.h \
  ./NoCs_m.h
$O/routers/hier/inPort/InPortSync.o: routers/hier/inPort/InPortSync.cc \
  routers/hier/inPort/InPortSync.h \
  routers/hier/FlitMsgCtrl.h \
  ./NoCs_m.h
$O/routers/hier/opCalc/static/ScheduleItem.o: routers/hier/opCalc/static/ScheduleItem.cc \
  routers/hier/opCalc/static/ScheduleItem.h
$O/routers/hier/opCalc/static/ScheduledCalc.o: routers/hier/opCalc/static/ScheduledCalc.cc \
  cores/sources/RequestsCollection.h \
  cores/sources/MCSL\rec_noc_traffic.h \
  cores/sources/CommunicationRequest.h \
  cores/sources/ScheduledSrc.h \
  routers/hier/sched/Switch/SwitchSync.h \
  routers/hier/opCalc/static/ScheduleItem.h \
  routers/hier/FlitMsgCtrl.h \
  cores/sources/EFGlobals.h \
  cores/sources/MCSL/rec_task.h \
  routers/hier/opCalc/static/ScheduledCalc.h \
  routers/hier/HierRouter.h \
  cores/sources/MCSL/rec_edge.h \
  ./NoCs_m.h \
  cores/sources/MCSL/rec_proc.h
$O/routers/hier/opCalc/static/XYOPCalc.o: routers/hier/opCalc/static/XYOPCalc.cc \
  routers/hier/FlitMsgCtrl.h \
  ./NoCs_m.h \
  routers/hier/opCalc/static/XYOPCalc.h
$O/routers/hier/sched/Switch/SwitchSync.o: routers/hier/sched/Switch/SwitchSync.cc \
  cores/sources/RequestsCollection.h \
  cores/sources/MCSL\rec_noc_traffic.h \
  cores/sources/CommunicationRequest.h \
  cores/sources/ScheduledSrc.h \
  routers/hier/sched/Switch/SwitchSync.h \
  routers/hier/opCalc/static/ScheduleItem.h \
  routers/hier/FlitMsgCtrl.h \
  cores/sources/EFGlobals.h \
  cores/sources/MCSL/rec_task.h \
  routers/hier/opCalc/static/ScheduledCalc.h \
  routers/hier/HierRouter.h \
  cores/sources/MCSL/rec_edge.h \
  ./NoCs_m.h \
  cores/sources/MCSL/rec_proc.h
$O/routers/hier/sched/wormhole/SchedAsync.o: routers/hier/sched/wormhole/SchedAsync.cc \
  routers/hier/sched/wormhole/SchedAsync.h \
  routers/hier/HierRouter.h \
  ./NoCs_m.h
$O/routers/hier/sched/wormhole/SchedSync.o: routers/hier/sched/wormhole/SchedSync.cc \
  routers/hier/sched/wormhole/SchedSync.h \
  routers/hier/HierRouter.h \
  ./NoCs_m.h
$O/routers/hier/vcCalc/free/EmptyVCCalc.o: routers/hier/vcCalc/free/EmptyVCCalc.cc \
  routers/hier/FlitMsgCtrl.h \
  routers/hier/vcCalc/free/EmptyVCCalc.h \
  routers/hier/HierRouter.h \
  ./NoCs_m.h
$O/routers/hier/vcCalc/free/FLUVCCalc.o: routers/hier/vcCalc/free/FLUVCCalc.cc \
  routers/hier/FlitMsgCtrl.h \
  routers/hier/vcCalc/free/FLUVCCalc.h \
  routers/hier/HierRouter.h \
  ./NoCs_m.h
