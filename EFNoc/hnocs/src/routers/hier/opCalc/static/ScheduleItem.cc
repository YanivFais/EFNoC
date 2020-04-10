#include "ScheduleItem.h"	
#include <sstream>

using namespace std;

ScheduleItem::ScheduleItem()
{
	edgeNum = -1;
	requestNum = -1;
	vertexNum1 = -1;
	vertexNum2 = -1;
	timeSlot = -1;
	flowInSlot = 0.;
	inPort = 0;
	outPort = 0;
}

ScheduleItem::ScheduleItem(int i_vertexNum1, int i_vertexNum2, int i_edgeNum, int i_requestNum, 
					int i_timeSlot, double i_flowInSlot,int i_inPort,int i_outPort)
{
	edgeNum = i_edgeNum;
	vertexNum1 = i_vertexNum1;
	vertexNum2 = i_vertexNum2;
	requestNum = i_requestNum;
	timeSlot = i_timeSlot;
	flowInSlot = i_flowInSlot;
	inPort = i_inPort;
	outPort = i_outPort;
}

ScheduleItem * ScheduleItem::InitFromString(const std::string& line)
{
	stringstream ss (line); 
	string token;
    getline(ss, token, ',');
    int timeSlot = atoi(token.c_str());
    getline(ss, token, ',');
    int requestNum = atoi(token.c_str());
    getline(ss, token, ',');
	int vertexNum1 = atof(token.c_str());	
    getline(ss, token, ',');
    int vertexNum2 = atoi(token.c_str());
    getline(ss, token, ',');
	int edgeNum = atoi(token.c_str());	
    getline(ss, token, ',');
	double flowInSlot = atof(token.c_str());	
    getline(ss, token, ',');
	int enterPort = atoi(token.c_str());	
    getline(ss, token, ',');
	int exitPort = atoi(token.c_str());	
	ScheduleItem * pSched = new ScheduleItem(vertexNum1,vertexNum2,edgeNum,requestNum,timeSlot,flowInSlot,enterPort,exitPort);
	return pSched;
}

ScheduleItem::~ScheduleItem(void)
{}

int ScheduleItem::GetEdgeNum () const
{
	return edgeNum;
}

int ScheduleItem::GetRequestNum () const
{
	return requestNum;
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
	sprintf(Line,"%d,%d,%d,%d,%d,%f,%d,%d", timeSlot, requestNum , vertexNum1, 
		vertexNum2,  edgeNum,flowInSlot,inPort,outPort);
	string str;
	str.append(Line);
	return str;
}

int ScheduleItem::GetInPortId() const 
{
	return inPort;
}

int ScheduleItem::GetOutPortId() const
{
	return outPort;
}
