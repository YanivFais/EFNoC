CC=g++
NAM="MCSL Traffic Loader"
VER="v1.6"
DIRSRC=./src
DIRHRD=$(DIRSRC)
DIROBJ=.
DIRTGT=./bin
HDR=$(DIRHRD)/stat_edge.h $(DIRHRD)/stat_task.h $(DIRHRD)/stat_proc.h $(DIRHRD)/stat_noc_traffic.h\
 $(DIRHRD)/rec_edge.h $(DIRHRD)/rec_task.h $(DIRHRD)/rec_proc.h $(DIRHRD)/rec_noc_traffic.h
SRC=$(DIRSRC)/main.cpp $(DIRSRC)/stat_edge.cpp $(DIRSRC)/stat_task.cpp $(DIRSRC)/stat_proc.cpp $(DIRSRC)/stat_noc_traffic.cpp\
 $(DIRSRC)/rec_edge.cpp $(DIRSRC)/rec_task.cpp $(DIRSRC)/rec_proc.cpp $(DIRSRC)/rec_noc_traffic.cpp
OBJ=$(DIROBJ)/main.o $(DIROBJ)/stat_edge.o $(DIROBJ)/stat_task.o $(DIROBJ)/stat_proc.o $(DIROBJ)/stat_noc_traffic.o\
 $(DIROBJ)/rec_edge.o $(DIROBJ)/rec_task.o $(DIROBJ)/rec_proc.o $(DIROBJ)/rec_noc_traffic.o
TGT=$(DIRTGT)/mcsl_traffic_loader

all:$(TGT)
$(TGT):$(OBJ)
	$(CC) $(OBJ) -o $(TGT)
	@-rm $(OBJ)
	@echo ""
	@echo ""
	@echo "Compiling "$(NAM)" "$(VER)" successfully finished!"
	@echo "----"
	@echo ""
	
$(OBJ):$(SRC)
	@echo ""
	@echo "----"
	@echo "Compiling "$(NAM)" "$(VER)"..."
	@echo ""
	@echo ""
	$(CC) -c $(SRC)

clean:
	@-rm $(TGT)
