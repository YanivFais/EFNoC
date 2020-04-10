#include "NaiveScheduler.h"
#include "CommunicationEdge.h"
#include "RequestsCollection.h"

#include <math.h>
#include <iostream>

using namespace std;

NaiveScheduler::NaiveScheduler(void)
{
}

NaiveScheduler::~NaiveScheduler(void)
{
}

bool NaiveScheduler::CalcSchedule(CommunicationGraph & commGraph, 
					vector<FlowPath>& paths,
					RequestsCollection& requests,
					SchedulingParams & params, Schedule & o_schedule)
{

	double ROUNDING_FACTOR = params.ROUNDING_FACTOR;  // this is heuristic to avoid the rounding error
	int timeSlots = params.N_TIME_SLOTS;
	int nReqs = paths.size();
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;
	for (int v = 0; v < commGraph.GetNumVertices(); v++)
		commGraph.GetVertex(v)->InitMemory(timeSlots);
	vector<double> baggage(commGraph.GetNumEdges());
	for (int e = 0; e < commGraph.GetNumVertices(); e++)
		baggage[e] = 0.0;
	for (int r = 0; r<nReqs; r++)
	{
		int t = 0;
		paths[r].SetAllocated(0.);
		double totalReq = requests.GetRequests()[paths[r].GetRequest()]->GetDemand();
		totalReq *= timeSlots;
		double remain = std::ceil(paths[r].GetFlow()*timeSlots); // allocate flow for each slot
		if (remain>totalReq)
			remain = totalReq;
		while (remain>MIN_PRECISION) {
			double flow = 0;
			for (unsigned e = 0; e < paths[r].GetEdges().size() && remain>-1.0; e++) {
				int edgeId = paths[r].GetEdges()[e];
				CommunicationEdge * pEdge = (CommunicationEdge *)commGraph.GetEdge(edgeId);
				if (e == 0) {
					flow = pEdge->GetCapacity();
					if (flow>paths[r].GetFlow())
						flow = paths[r].GetFlow();
					if (flow > remain)
						flow = remain;
				}
				double edgeFlow = std::ceil(pEdge->GetCapacity());
				int startT = t;
				double preFlow = flow;
				flow = std::ceil(flow); // round
				// update to flit size
				flow = std::ceil(flow / params.FLIT_SIZE)*params.FLIT_SIZE;
				double eBaggage = flow - preFlow;
				if (eBaggage>baggage[edgeId])
					baggage[edgeId] = eBaggage;
				double flowKeep = flow;
				double edgeRemain;
				while (o_schedule.IsOccupied(edgeId, t, edgeFlow, flow, edgeRemain) && remain>-1.0) {
					commGraph.GetVertex(pEdge->GetTo())->AddMemory(t, flowKeep);
					t = (t + 1) % timeSlots;
					flow = flowKeep;
					if (t == startT) {
						for (int tt = 0; tt < params.N_TIME_SLOTS; tt++)
							commGraph.GetVertex(pEdge->GetTo())->RemoveMemory(tt, flowKeep);
						// We failed to allocated, try to increase edge capacity if not "that much"
						int newEdgeCapacity = edgeFlow - edgeRemain + flow;
						if ((newEdgeCapacity<=edgeFlow*1.25) || (newEdgeCapacity<=edgeFlow+1)) {
							edgeFlow = newEdgeCapacity;
							pEdge->SetCapacity(edgeFlow); // TODO- parameter
						}
						else {
							cout << " Error scheduling:edge: " << edgeId << " ," << pEdge->GetFrom()
								<< " - " << pEdge->GetTo() << " request: " << paths[r].GetRequest()
								<< " ," << paths[r].GetFlow() << " slot " << t << "," << pEdge->GetCapacity() << endl;
							return false;
						}
					}
				}
				if (e == 0) {
					//flow *= oneTimeSlot;
					paths[r].SetAllocated(paths[r].GetAllocated() + flow);
					remain -= flow;
				}
				if (flow >= 0) {
					cout << e << " edge: " << edgeId << " ," << pEdge->GetFrom()
						<< " - " << pEdge->GetTo() << " request: " << paths[r].GetRequest()
						<< " ,path=" << paths[r].GetFlow() << " flow=" << flow << " capacity=" << pEdge->GetCapacity() << " @" << t << endl;
					int from = pEdge->GetFrom();
					int to = pEdge->GetTo();
					int inPort = -1; // TODO
					int outPort = commGraph.GetVertex(from)->GetOutPort(to);
					ScheduleItem * pItem = new ScheduleItem(from, to, edgeId, paths[r].GetRequest(), t, flow, inPort, outPort);
					o_schedule.AddItem(pItem);
				}
				t = (t + 1) % timeSlots;
			}
		}
	}
	double totalMemory = 0;
	for (int v = 0; v < commGraph.GetNumVertices(); v++) {
		int mem = commGraph.GetVertex(v)->GetMaxMemory();
		totalMemory += mem;
		cout << "Node " << v << " : Memory=" << mem << endl;
	}
	cout << "Total Memory:" << totalMemory << " Average: " << totalMemory / commGraph.GetNumVertices() << endl;
	return true;
}

