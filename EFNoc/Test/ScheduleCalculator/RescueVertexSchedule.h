#pragma once
#include "ScheduleItem.h"

class RescueVertexSchedule
{
public:
	RescueVertexSchedule();
	RescueVertexSchedule(int i_VertexNum);
	~RescueVertexSchedule(void);

	int GetVertexNum () const;
	int GetNumElementsInSchedule () const;
	ScheduleItem * GetSchedule();
	bool AddItemToSchedule(ScheduleItem * pItemToAdd);
	void SetVertexNum (int i_VertexNum);


protected:
	ScheduleItem * scheduleArray;
	int nElementsInSchedule;
	int nAllocatedItems;
	int vertexNum;
};



