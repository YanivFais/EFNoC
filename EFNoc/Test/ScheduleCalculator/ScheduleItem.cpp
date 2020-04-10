#include "ScheduleItem.h"	

using namespace std;

ScheduleItem::ScheduleItem()
{
	edgeNum = -1;
	requestNum = -1;
	freqNum = -1;
	vertexNum1 = -1;
	vertexNum2 = -1;
	timeSlot = -1;
	MCS = 0;
	flowInSlot = 0.;
}

ScheduleItem::ScheduleItem(const ScheduleItem & oItem)
{
	edgeNum    = oItem.edgeNum;
	requestNum = oItem.requestNum;
	freqNum    = oItem.freqNum;
	vertexNum1 = oItem.vertexNum1;
	vertexNum2 = oItem.vertexNum2;
	timeSlot   = oItem.timeSlot;
	MCS        = oItem.MCS;
	flowInSlot = oItem.flowInSlot;
}

ScheduleItem::ScheduleItem(int i_vertexNum1, int i_vertexNum2, int i_edgeNum, int i_requestNum, int i_freqNum, 
					int i_timeSlot, int i_MCS, double i_flowInSlot)
{
	edgeNum = i_edgeNum;
	vertexNum1 = i_vertexNum1;
	vertexNum2 = i_vertexNum2;
	requestNum = i_requestNum;
	freqNum = i_freqNum;
	timeSlot = i_timeSlot;
	MCS = i_MCS;
	flowInSlot = i_flowInSlot;
}

ScheduleItem::~ScheduleItem(void)
{}

int ScheduleItem::GetMCS () const
{
	return MCS;
}

int ScheduleItem::GetEdgeNum () const
{
	return edgeNum;
}

int ScheduleItem::GetRequestNum () const
{
	return requestNum;
}

int ScheduleItem::GetFreqNum () const
{
	return freqNum;
}

int ScheduleItem::GetSender () const
{
	return vertexNum1;
}

int ScheduleItem::GetReciever () const
{
	return vertexNum2;
}

int ScheduleItem::GetTimeSlot () const
{
	return timeSlot;
}

double ScheduleItem::GetFlowInSlot() const
{
	return flowInSlot;
}

string ScheduleItem::ToString() const
{
	char Line[256];
	sprintf(Line,"%d,%d,%d,%d,%d,%d,%d,%f", timeSlot+1, freqNum, vertexNum1, 
				requestNum,1,vertexNum2, MCS, flowInSlot);
	string str;
	str.append(Line);
	return str;
}
