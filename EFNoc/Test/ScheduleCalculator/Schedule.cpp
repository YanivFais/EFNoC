#include "Schedule.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;

const int Schedule::NO_FREE_SLOT = -1;
const int Schedule::DUMMY_FREQUENCY = -1;


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
	std::map<int,std::vector<ScheduleItem *>>::iterator iter;
	for (iter=verticesSchedule.begin(); iter != verticesSchedule.end(); iter++)
	{
		int vertexNum = iter->first;
		vector<ScheduleItem *> & vec = iter->second;
		for (int i=0;i<(int) vec.size(); i++)
		{
			ScheduleItem * pItem = vec[i];
			if (pItem->GetSender() == vertexNum)
			{
				items.push_back(pItem);
			}
		}
	}
	for (int i=0;i<(int)items.size();i++)
	{
		delete items[i];
	}
	verticesSchedule.clear();
}

Schedule & Schedule::operator= (const Schedule & oSched)
{
	this->CleanSchedule();
	std::map<int,std::vector<ScheduleItem *>>::const_iterator iter;
	for (iter=oSched.verticesSchedule.begin(); iter != oSched.verticesSchedule.end(); iter++)
	{
		int vertexNum = iter->first;
		const vector<ScheduleItem *> & vec = iter->second;
		for (int i=0;i<(int) vec.size(); i++)
		{
			ScheduleItem * pItem = vec[i];
			if (pItem->GetSender() == vertexNum)
			{
				ScheduleItem * pItemCopy = new ScheduleItem(*pItem);
				AddItem(pItemCopy);
			}
		}
	}
	return *this;
}

void Schedule::AddItem (ScheduleItem * pItem)
{
	vector<ScheduleItem*> * pvec = GetItemsForVertex(pItem->GetSender());
	if (pvec == NULL)
	{
		vector<ScheduleItem *> vec; 
		verticesSchedule[pItem->GetSender()] = vec;
	}

	verticesSchedule[pItem->GetSender()].push_back(pItem);

	pvec = GetItemsForVertex(pItem->GetReciever());
	if (pvec == NULL)
	{
		vector<ScheduleItem *> vec; 
		verticesSchedule[pItem->GetReciever()] = vec;
	}

	verticesSchedule[pItem->GetReciever()].push_back(pItem);
}

vector<ScheduleItem*> * Schedule::GetItemsForVertex(int vertexNum)
{
	std::map<int,std::vector<ScheduleItem *>>::iterator iter = verticesSchedule.find(vertexNum);
	if (iter != verticesSchedule.end())
		return &(iter->second);
	
	return NULL;
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

	std::map<int,std::vector<ScheduleItem *>>::iterator iter;
	for (iter=verticesSchedule.begin(); iter != verticesSchedule.end(); iter++)
	{
		int vertexNum = iter->first;
		vector<ScheduleItem *> & vec = iter->second;
		for (int i=0;i<(int) vec.size();i++)
		{
			ScheduleItem * pItem = vec[i];
			if (pItem->GetSender() == vertexNum)
				schedFile << pItem->ToString() << endl;
		}
	}

	schedFile.close();
	return true;
}

bool Schedule::IsOccupied(int vertexNum, int freqNum, int timeSlot)
{
	vector<ScheduleItem*> * p_vertexSchedule = GetItemsForVertex(vertexNum);
	if (p_vertexSchedule == NULL)
		return false;

	for (int i=0;i<(int) p_vertexSchedule->size();i++)
	{
		ScheduleItem * pItem = (*p_vertexSchedule)[i];
		if (pItem->GetTimeSlot() == timeSlot)
		{
			if ((freqNum == DUMMY_FREQUENCY) || (pItem->GetFreqNum() == freqNum) )
				return true;
		}
	}
	return false;
}

map<int,std::vector<ScheduleItem *>> & Schedule::GetVerticesSchedule() 
{
	return verticesSchedule;
}
