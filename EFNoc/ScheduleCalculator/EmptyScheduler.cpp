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

		vector<int> & edges = currPath.GetEdges();
		for (size_t e=0; e<edges.size(); e++)
		{
			int edgeId = edges[e];
			CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
			int from = pEdge->GetFrom();
			int to = pEdge->GetTo();
			ScheduleItem * pItem = new ScheduleItem(from, to, edgeId, request, timeSlotIndex,flow,-1,-1); // TODO: in port,out port
			o_schedule.AddItem(pItem);
		}
	}
	return true;
}
