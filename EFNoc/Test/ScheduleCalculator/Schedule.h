#pragma once
#include "ScheduleItem.h"

#include <map>
#include <vector>

class Schedule
{
public:
	Schedule(void);
	Schedule & operator= (const Schedule & oSched);
	~Schedule(void);

	void AddItem (ScheduleItem * pItem);
	bool WriteSchedule(const char * fileName);
	std::vector<ScheduleItem*> * GetItemsForVertex(int vertexNum);
	bool IsOccupied(int vertexNum, int freqNum, int timeSlot);
	std::map<int,std::vector<ScheduleItem *>> & GetVerticesSchedule();

	void Schedule::CleanSchedule();

	static const int NO_FREE_SLOT;
	static const int DUMMY_FREQUENCY;
private:
	std::map<int,std::vector<ScheduleItem *>> verticesSchedule;
};
