#pragma once

#include <string>
#include <stdlib.h>
#include <stdio.h>

class ScheduleItem
{
public:
	ScheduleItem();
	ScheduleItem(int i_vertexNum1, int i_vertexNum2, int i_edgeNum, int i_requestNum,  
					int i_timeSlot,  double i_flowInSlot,int inPort,int outPort);
	~ScheduleItem(void);

	std::string ToString() const;
	int GetEdgeNum () const;
	int GetRequestNum () const;
	int GetSender  () const;
	int GetReciever () const;
	int GetTimeSlot () const;
	double GetFlowInSlot() const;
	int GetInPortId() const;
	int GetOutPortId() const;
	static ScheduleItem * InitFromString(const std::string& line);

protected:
	int edgeNum;
	int requestNum;
	int vertexNum1;
	int vertexNum2;
	int timeSlot;
	double flowInSlot;
	int inPort;
	int outPort;
};



