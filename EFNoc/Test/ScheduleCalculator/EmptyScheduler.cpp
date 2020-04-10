#include "EmptyScheduler.h"
#include "CommunicationEdge.h"

using namespace std;

EmptyScheduler::EmptyScheduler(void)
{
}

EmptyScheduler::~EmptyScheduler(void)
{
}

bool EmptyScheduler::CalcSchedule(CommunicationGraph & commGraph, std::vector<FlowPath> & paths, 
							SchedulingParams & params, Schedule & o_schedule)
{
	int nPaths = (int) paths.size();
	for (int p=0;p<nPaths;p++)
	{
		FlowPath & currPath = paths[p];
		int timeSlotIndex = 0;
		int request = currPath.GetRequest();
		double flow = currPath.GetFlow();

		vector<int> & frequencies = currPath.GetFrequencies();
		vector<int> & edges = currPath.GetEdges();
		for (size_t e=0; e<edges.size(); e++)
		{
			int edgeId = edges[e];
			int freq = frequencies[e];
			CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
			int from = pEdge->GetFrom();
			int to = pEdge->GetTo();
			int MCS = pEdge->GetMCS();

			ScheduleItem * pItem = new ScheduleItem(from, to, edgeId, request, freq, timeSlotIndex,MCS,flow);
			o_schedule.AddItem(pItem);
		}
	}
	return true;
}
