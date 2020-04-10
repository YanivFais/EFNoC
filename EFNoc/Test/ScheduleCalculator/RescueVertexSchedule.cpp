#include "stdafx.h"
#include "RescueVertexSchedule.h"

#include <iostream>
using namespace std;


RescueVertexSchedule::RescueVertexSchedule()
{
	scheduleArray = NULL;
	nElementsInSchedule = 0;
	nAllocatedItems = 0;
	vertexNum = 0;
}

RescueVertexSchedule::RescueVertexSchedule(int i_VertexNum)
{
	scheduleArray = NULL;
	nElementsInSchedule = 0;
	nAllocatedItems = 0;
	vertexNum = i_VertexNum;
}

RescueVertexSchedule::~RescueVertexSchedule(void)
{
	if (scheduleArray != NULL)
		delete [] scheduleArray;
}


int RescueVertexSchedule::GetVertexNum () const
{
	return vertexNum;
}

void RescueVertexSchedule::SetVertexNum (int i_VertexNum)
{
	vertexNum = i_VertexNum;
}

int RescueVertexSchedule::GetNumElementsInSchedule () const
{
	return nElementsInSchedule;
}

ScheduleItem * RescueVertexSchedule::GetSchedule()
{
	return scheduleArray;
}

bool RescueVertexSchedule::AddItemToSchedule(ScheduleItem * pItemToAdd)
{
	if (nAllocatedItems == nElementsInSchedule)
	{
		nAllocatedItems += 100;
		ScheduleItem * newArray = new ScheduleItem[nAllocatedItems];
		for (int j=0;j<nElementsInSchedule;j++)
		{
			newArray[j] = scheduleArray[j];
		}
		delete [] scheduleArray;
		scheduleArray = newArray;
	}
	scheduleArray[nElementsInSchedule] = *pItemToAdd;
	nElementsInSchedule++;
	return true;
}

