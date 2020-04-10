#include "Schedule.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;

const int Schedule::NO_FREE_SLOT = -1;


Schedule::Schedule(void)
{
}

Schedule::~Schedule(void)
{
	CleanSchedule();
}

void Schedule::CleanSchedule()
{
	vector<ScheduleItem *> items;
	std::map<int, std::vector<ScheduleItem *> >::iterator iter;
	for (iter = edgesSchedule.begin(); iter != edgesSchedule.end(); iter++)
	{
		int edgeNum = iter->first;
		vector<ScheduleItem *> & vec = iter->second;
		for (int i = 0; i<(int)vec.size(); i++)
		{
			ScheduleItem * pItem = vec[i];
		}
	}
	for (int i = 0; i<(int)items.size(); i++)
	{
		delete items[i];
	}
	edgesSchedule.clear();
}

Schedule & Schedule::operator= (const Schedule & oSched)
{
	this->CleanSchedule();
	std::map<int, std::vector<ScheduleItem *> >::const_iterator iter;
	for (iter = oSched.edgesSchedule.begin(); iter != oSched.edgesSchedule.end(); iter++)
	{
		int edgeNum = iter->first;
		const vector<ScheduleItem *> & vec = iter->second;
		for (int i = 0; i<(int)vec.size(); i++)
		{
			ScheduleItem * pItem = vec[i];
			ScheduleItem * pItemCopy = new ScheduleItem(*pItem);
			AddItem(pItemCopy);
		}
	}
	return *this;
}


void Schedule::AddItem (ScheduleItem * pItem)
{
	vector<ScheduleItem*> * pvec = GetItemsForEdge(pItem->GetEdgeNum());
	if (pvec == NULL)
	{
		vector<ScheduleItem *> vec; 
		edgesSchedule[pItem->GetEdgeNum()] = vec;
	}

	for (vector<ScheduleItem*>::const_iterator schedIter = edgesSchedule[pItem->GetEdgeNum()].begin(); schedIter != edgesSchedule[pItem->GetEdgeNum()].end(); schedIter++) {
		if ((*schedIter)->GetRequestNum() == pItem->GetRequestNum() &&
			(*schedIter)->GetTimeSlot() == pItem->GetTimeSlot() &&
			(*schedIter)->GetSender() == pItem->GetSender() &&
			(*schedIter)->GetReciever() == pItem->GetReciever()) {
			(*schedIter)->SetFlowInSlot(pItem->GetFlowInSlot() + (*schedIter)->GetFlowInSlot());
			delete pItem;
			return;
		}
	}
	edgesSchedule[pItem->GetEdgeNum()].push_back(pItem);

}

vector<ScheduleItem*> * Schedule::GetItemsForEdge(int edgeNum)
{
	std::map<int,std::vector<ScheduleItem *> >::iterator iter = edgesSchedule.find(edgeNum);
	if (iter != edgesSchedule.end())
		return &(iter->second);
	
	return NULL;
}

void Schedule::UpdatePorts(CommunicationGraph& graph,int slots)
{
	for (std::map<int, std::vector<ScheduleItem *> >::iterator iter = edgesSchedule.begin(); iter != edgesSchedule.end(); iter++) {
		for (vector<ScheduleItem*>::iterator sIter = iter->second.begin(); sIter != iter->second.end(); sIter++) {
			EFNocEdge * e = graph.GetEdge(iter->first);
			e->SetCapacity(std::ceil(e->GetCapacity()));
			EFNocVertex * vFrom = graph.GetVertex(e->GetFrom());
			int portOut = vFrom->GetOutPort(e->GetTo());
			(*sIter)->SetOutPortId(portOut);
		}
	}

}

double Schedule::GetMaxFlowForEdge(int edgeNum)
{
	double max = 0;
	map<int, double> timeSlots;
	for (vector<ScheduleItem*>::iterator sIter = edgesSchedule[edgeNum].begin(); sIter != edgesSchedule[edgeNum].end(); sIter++) {
		if (timeSlots.find((*sIter)->GetTimeSlot()) == timeSlots.end())
			timeSlots[(*sIter)->GetTimeSlot()] = 0;
		timeSlots[(*sIter)->GetTimeSlot()] += (*sIter)->GetFlowInSlot();
	}
	for (map<int, double>::iterator it = timeSlots.begin(); it != timeSlots.end(); it++) {
		if (it->second > max)
			max = it->second;
	}
	return max;
}

bool Schedule::WriteSchedule(const char * fileName)
{
	ofstream schedFile;
	schedFile.open(fileName,ios_base::trunc);
    if (!schedFile) 
	{
		cout << "Unable to open file" << fileName << endl;
        return false;
    }

	schedFile << "# time slot,request num,vertex1,vertex2,edge num,flow in slot,in port,out port\n";
	std::map<int,std::vector<ScheduleItem *>>::iterator iter;
	for (iter=edgesSchedule.begin(); iter != edgesSchedule.end(); iter++)
	{
		int edgeNum = iter->first;
		vector<ScheduleItem *> & vec = iter->second;
		for (int i=0;i<(int) vec.size();i++)
		{
			ScheduleItem * pItem = vec[i];
			if (pItem->GetEdgeNum() == edgeNum)
				schedFile << pItem->ToString() << endl;
		}
	}

	schedFile.close();
	return true;
}

bool Schedule::IsOccupied(int edgeNum, int timeSlot , double edgeCapacity,double& amount,double& remain)
{
	vector<ScheduleItem*> * p_edgeSchedule = GetItemsForEdge(edgeNum);
	if (p_edgeSchedule == NULL) {
		if (edgeCapacity<amount)
			amount = edgeCapacity;
		remain = edgeCapacity;
		return false;
	}

	double allocated = 0;
	for (int i=0;i<(int) p_edgeSchedule->size();i++)
	{
		ScheduleItem * pItem = (*p_edgeSchedule)[i];
		if (pItem->GetTimeSlot() == timeSlot)
		{
			allocated += pItem->GetFlowInSlot();
		}
	}
	bool full =  (allocated + amount - 1e-5 >= edgeCapacity);
	remain = edgeCapacity - allocated;
	if (remain<amount)
		amount = remain;
	return (amount<1);
}

