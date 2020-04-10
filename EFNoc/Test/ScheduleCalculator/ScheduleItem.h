#pragma once

#include <string>

class ScheduleItem
{
public:
	ScheduleItem();
	ScheduleItem(int i_vertexNum1, int i_vertexNum2, int i_edgeNum, int i_requestNum, int i_freqNum, 
					int i_timeSlot, int i_MCS, double i_flowInSlot);
	ScheduleItem(const ScheduleItem & oItem); 
	~ScheduleItem(void);

	std::string ToString() const;
	int GetEdgeNum () const;
	int GetRequestNum () const;
	int GetFreqNum () const;
	int GetSender  () const;
	int GetReciever () const;
	int GetTimeSlot () const;
	int GetMCS() const;
	double GetFlowInSlot() const;

protected:
	int edgeNum;
	int requestNum;
	int freqNum;
	int vertexNum1;
	int vertexNum2;
	int timeSlot;
	int MCS;
	double flowInSlot;
};



