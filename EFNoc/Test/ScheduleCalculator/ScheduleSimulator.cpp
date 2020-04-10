#include "ScheduleSimulator.h"
#include "ScheduleItem.h"
#include <vector>
#include <map>
#include <tuple>
#include <algorithm>
#include <iostream>
#include <fstream>

#include "CommunicationRequest.h"

using namespace std;
using namespace tr1;

ScheduleSimulator::ScheduleSimulator(void)
{
}

ScheduleSimulator::~ScheduleSimulator(void)
{
}

void ScheduleSimulator::SimulateAndReport(SchedulingParams & params, Schedule & schedule, RequestsCollection & requests, int maxReq, vector<int> & reqNumToReqId)
{

	vector<vector<double>> maxQueueSizes;
	vector<int> vertexIds;
	SimulateQueues(schedule, requests, maxQueueSizes, vertexIds,maxReq, reqNumToReqId);
	ReportQueues(params.QUEUES_REPORT_FILENAME, maxQueueSizes, vertexIds,maxReq);
}

void ScheduleSimulator::ReportQueues(char * filename, const vector<vector<double>> & maxQueueSizes, const vector<int> & vertexIds, int maxReq)
{
	size_t nVertices = vertexIds.size();
	vector<pair<int,vector<double>>> idsAndSizes;
	for (size_t i=0;i<nVertices;i++)
	{
		pair<int,vector<double>> idAndSize(vertexIds[i], maxQueueSizes[i]);
		idsAndSizes.push_back(idAndSize);
	}
	sort(idsAndSizes.begin(), idsAndSizes.end());

	ofstream summaryFile;
	summaryFile.open(filename,ios_base::trunc);
    if (!summaryFile) 
	{
		cout << "Unable to open file " << filename << " << endl";
        return;
    }
 
	for (size_t i=0;i<nVertices;i++)
	{
		int id = idsAndSizes[i].first;
		vector<double> maxQueus = idsAndSizes[i].second;
		summaryFile << id;
		for (int j=0;j<(int) maxQueus.size();j++)
			summaryFile << "," << maxQueus[j]; 
		summaryFile << endl;
	}
	
	summaryFile.close();
}

void ScheduleSimulator::SimulateQueues(Schedule & schedule, RequestsCollection & requests, vector<vector<double>> & maxQueueSizesOut, vector<int> & vertexIdOut, int maxReq, vector<int> & reqNumToReqId)
{
	vector<CommunicationRequest*> & requestsVec = requests.GetRequests();
	size_t nRequests = maxReq;
	
	// 1. Prepare two matrices:
	//        A. vertices X requests for all relevant vertices (contains maximum q size)
	//        B. vertices X requests (contains current q condition)
	//    
	map<int,int> verticesToIdInVecMap;
	map<int,std::vector<ScheduleItem *>> & scheduleByVertices = schedule.GetVerticesSchedule();
	map<int,std::vector<ScheduleItem *>>::iterator vertexItems = scheduleByVertices.begin();
	for (; vertexItems != scheduleByVertices.end(); vertexItems++)
	{
		int key = vertexItems->first;
		map<int,int>::iterator iter;
		iter = verticesToIdInVecMap.find(key);
		if (iter == verticesToIdInVecMap.end())
		{
			verticesToIdInVecMap[key] = (int) vertexIdOut.size();
			vertexIdOut.push_back(key);
		}
	}
	size_t nVertices = vertexIdOut.size();
	vector<vector<double>> currentQueueCondition;
	for (size_t i=0;i<nVertices;i++)
	{
		vector<double> emptyQueuesForVertex(nRequests,0.);
		currentQueueCondition.push_back(emptyQueuesForVertex);
		vector<double> maxQueuesForVertex(nRequests+1,0.); // +1 because we need to keep the maximum sum as well
		maxQueueSizesOut.push_back(maxQueuesForVertex);
	}
		
	enum EdgeType {SOURCE_TO_TARGET, SOURCE_TO_REGULAR, 
		REGULAR_TO_TARGET, REGULAR_TO_REGULAR};


	// 2. sort the schedule by time slot so as to update the state of the system in each 
	//    time slot.
// timeSlotOfSend, sender, reciever, requestNum, edgeType, flow
	vector<tr1::tuple<int, int, int, int, EdgeType, double>> timeSlotsActions;
	for (vertexItems = scheduleByVertices.begin(); vertexItems != scheduleByVertices.end(); vertexItems++)
	{
		int key = vertexItems->first;
		vector<ScheduleItem*> itemsForVertex= vertexItems->second;
		int nItems = (int) itemsForVertex.size();
		for (int i=0;i<nItems;i++)
		{
			ScheduleItem * pItem = itemsForVertex[i];
			int timeSlotOfSend = pItem->GetTimeSlot();

			int requestNum = pItem->GetRequestNum();
			int reqId = reqNumToReqId[requestNum-1];

			CommunicationRequest * pReq = requestsVec[reqId]; 
			int reqSource = pReq->GetSource();
			int reqDest = pReq->GetFirstDestination();

			int sender = pItem->GetSender();
			int reciever = pItem->GetReciever();
			if (reciever == key)  // no need to write twice
				continue; 
			EdgeType type = REGULAR_TO_REGULAR;
			if (sender == reqSource)
			{
				if (reciever == reqDest)
					type = SOURCE_TO_TARGET;
				else
					type = SOURCE_TO_REGULAR;
			}
			else
			{
				if (reciever == reqDest)
					type = REGULAR_TO_TARGET;
			}

			tuple<int,int,int,int, EdgeType,double> detailsSender(timeSlotOfSend, sender, reciever, requestNum, type, pItem->GetFlowInSlot());
			timeSlotsActions.push_back(detailsSender);
		}
	}

	sort(timeSlotsActions.begin(), timeSlotsActions.end());
	
	int prevT = -1;
	int NUM_CYCLES = 100;  // should be maximum path length + 2
	for (int i=0;i<NUM_CYCLES;i++)
	{
		for (int actionId=0;actionId<(int) timeSlotsActions.size(); actionId++)
		{
			tuple<int,int,int,int, EdgeType, double> & action = timeSlotsActions[actionId];
			EdgeType type = get<4>(action);
			if (type == SOURCE_TO_TARGET)  // add nothing to the queues
				continue; 
			int timeSlot = get<0>(action);
			if (timeSlot != prevT)
			{
				UpdateMaxQLengths(currentQueueCondition, maxQueueSizesOut);
				prevT = timeSlot;
			}
			double flow = get<5>(action);
			int request = get<3>(action);
			int sender = get<1>(action);
			int reciever = get<2>(action);
			int senderId = verticesToIdInVecMap[sender];
			int receiverId = verticesToIdInVecMap[reciever];
			vector<double> & currQueuesSender = currentQueueCondition[senderId];
			vector<double> & currQueuesReciever = currentQueueCondition[receiverId];
			if (type == SOURCE_TO_REGULAR)  // the sender has no q only the reciever
				currQueuesReciever[request-1] += flow;
			else
			{
				double flowToSend = currQueuesSender[request-1]; 
				if (flowToSend > flow)
					flowToSend = flow;
				// this is common to REGULAR_TO_TARGET and REGULAR_TO_REGULAR
				currQueuesSender[request-1] -= flowToSend;

				if (type == REGULAR_TO_REGULAR)
					currQueuesReciever[request-1] += flowToSend;
			}
		}
	}
}

void ScheduleSimulator::UpdateMaxQLengths(const vector<vector<double>> &queueSize, vector<vector<double>> &maxQSizes)
{
	size_t nVertices = queueSize.size();
	for (size_t i=0;i<nVertices;i++)
	{
		double sum = 0.;
		const vector<double> & queuesForVertex = queueSize[i];
		vector<double> & maxQueuesForVertex = maxQSizes[i];
		for (int j=0;j<(int) queuesForVertex.size(); j++)
		{
			sum += queuesForVertex[j];
			if (queuesForVertex[j] > maxQueuesForVertex[j])
				maxQueuesForVertex[j] = queuesForVertex[j];
		}

		size_t overallSumIndex = queuesForVertex.size();
		if (sum > maxQueuesForVertex[overallSumIndex])
			maxQueuesForVertex[overallSumIndex] = sum;
	}
}

