all: results/General-0.sca results/General-v.csv results/General.csv

run:
	./run -u $(ENV) 

ENV = Cmdenv

results/General-0.sca:
	./run -u $(ENV)

results/General-v.csv: results/General-0.sca
	scavetool  vector -O results/General-v.csv -F csv results/General-0.sca

results/General.csv: results/General-0.sca
	scavetool  scalar -O results/General.csv -F csv results/General-0.sca

clean:
	\rm results/*

.phony: run clean all

