#pragma once
#include "ScheduleItem.h"

#include <map>
#include <vector>
#include <CommunicationGraph.h>

class Schedule
{
public:
	Schedule(void);
	~Schedule(void);

	void AddItem (ScheduleItem * pItem);
	bool WriteSchedule(const char * fileName);
	bool IsOccupied(int edgeNum, int timeSlot, double edgeCapacity, double& amount, double& remain);
	void CleanSchedule();
	Schedule & operator= (const Schedule & oSched);

	void UpdatePorts(CommunicationGraph& graph,int slots);

	double GetMaxFlowForEdge(int edgeNum);

	static const int NO_FREE_SLOT;
private:
	std::vector<ScheduleItem*> * GetItemsForEdge(int edgeNum);
	typedef std::map<int, std::vector<ScheduleItem*> > EdgesSchedule;
	EdgesSchedule edgesSchedule;
};
