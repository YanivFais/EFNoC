#include "SmartScheduler.h"
#include "CommunicationEdge.h"

#include <math.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <set>
#include <algorithm>    // std::min

using namespace std;

SmartScheduler::SmartScheduler(void)
{
}

SmartScheduler::~SmartScheduler(void)
{
}

bool SmartScheduler::CalcSchedule(CommunicationGraph & commGraph, 
		vector<FlowPath> & paths, SchedulingParams & params, double & o_finalRoundingFactor,
		Schedule & o_schedule)
{
	o_finalRoundingFactor = 0.;
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;  // part of a second - doesn't change

	double virtualTimeUnitForAllocation = 
		min(1., ((double) params.SCHEDULE_BATCH_SIZE) / ((double) params.N_TIME_SLOTS));

	int counter = 0;

	// since we may get an infeasible flow (to high in case of multi-commodity flow, or suffers from rounding errors)
	// the number of slots may increase over the initial number
	int currentNumberOfSlotsInSchedule = params.N_TIME_SLOTS; 
	double currentRoundingFactor = params.ROUNDING_FACTOR;  // this is heuristic to avoid the rounding error

	int MAX_ITERATIONS = 200;
	while (counter < MAX_ITERATIONS)
	{
		bool success = CalcScheduleInternal(commGraph, paths, oneTimeSlot, 
							currentNumberOfSlotsInSchedule, virtualTimeUnitForAllocation, 
							currentRoundingFactor, o_schedule);

		if (success)
			break;
		counter++;
		if (! params.ALLOW_ADDING_SLOTS)
			currentRoundingFactor *= 0.95;
		else
			currentNumberOfSlotsInSchedule += (params.N_TIME_SLOTS/10);

		cout << "Scheduler iteration number: " << counter << endl;
	}
	if (counter == MAX_ITERATIONS)
		return false;
	o_finalRoundingFactor = currentRoundingFactor;
	cout << "Rounding factor is: " << o_finalRoundingFactor << endl;

	ofstream summaryFile;
	summaryFile.open("rounding_factor.txt",ios_base::trunc);
    if (!summaryFile) 
	{
		cout << "Unable to open file rounding_factor.txt" << endl;
        return true;
    }
	summaryFile << "Oveall ratio is: " << o_finalRoundingFactor << endl;
	
	summaryFile.close();
 	return true;
}

bool SmartScheduler::CalcScheduleInternal(CommunicationGraph & commGraph, 
											vector<FlowPath> & paths, double oneTimeSlot, 
											int currentNumberOfSlotsInSchedule, double virtualTimeUnitForAllocation, 
											double roundingFactor, Schedule & o_schedule) 
{
	int nPaths = (int) paths.size();
	bool somePathsNotFinished = true;

	while (somePathsNotFinished)
	{
		// go over all the paths and take one "time slice" unit from each, 
		// until all paths are exhausted
		somePathsNotFinished = false;
		for (int i=0;i<nPaths;i++)
		{
			FlowPath & path = paths[i];
			int request = path.GetRequest();
			vector<int> & edges = path.GetEdges();
			vector<double> & times = path.GetTimesRequiredOnEdge();
			vector<double> & capacities = path.GetCapacities();

			int nEdgesInPath = (int) edges.size();
			double flowInPath = roundingFactor*path.GetFlow();

			double remainingFlow = flowInPath - path.GetAllocated();
			if (remainingFlow < 1e-3)
				continue;

			somePathsNotFinished = true;
			double allocationUnit = CalcAllocationUnit(flowInPath, remainingFlow, capacities, times, virtualTimeUnitForAllocation);
				int slotToStartFrom = 0;
				
			// now allocate the unit for the edges on the path
			for (int j=0;j<nEdgesInPath;j++)
			{
				int requiredTimeSlots = (int) ceil(allocationUnit / capacities[j] / oneTimeSlot); 
				int edgeId = edges[j];
				CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
				int from = pEdge->GetFrom();
				int to = pEdge->GetTo();
				double regularSlotFlow = oneTimeSlot*pEdge->GetCapacity();
				double lastSlotFlow = allocationUnit - regularSlotFlow*(requiredTimeSlots-1); 

/*				cout << i << " edge: " << edgeId << " ," << from 
					<< " ," << to << " freq: " << freq << " request: " << request 
					<< " ," << requiredTimeSlots << " ," << allocationUnit <<  endl;
*/			
				int nTimeSlotsAllocated = 0;
				int nextEdgeSlotToStartFrom = 0;
				for (int k=slotToStartFrom;k<(3*currentNumberOfSlotsInSchedule + slotToStartFrom);k++)
				{
					if (nTimeSlotsAllocated == requiredTimeSlots)
					{
						//cout << "Finished allocating time slots for var: " << i << endl;
						break;
					}
					int timeSlotIndex = k % currentNumberOfSlotsInSchedule;
					// TODO, change to be based on edges
					double remain;
					if (o_schedule.IsOccupied(from, timeSlotIndex, regularSlotFlow, remainingFlow,remain))
						continue;

					//if (o_schedule.IsOccupied(to, timeSlotIndex))
					//	continue;

					bool freeSlot = true;
					int edgeForInterference = edgeId;
					if (from > to)
						edgeForInterference = commGraph.GetReverseEdge(edgeId)->GetEdgeNum();


					if (freeSlot)
					{
						double flow = regularSlotFlow;
						if (nTimeSlotsAllocated == (requiredTimeSlots-1))
							flow = lastSlotFlow;
						ScheduleItem * pItem = 
							new ScheduleItem(from, to, edgeId, request, timeSlotIndex,flow,-1,-1); // TODO
//						cout << "Request: " << request << " edge: " << edgeId << " freq: " << freq << " index: " << timeSlotIndex << endl;
						o_schedule.AddItem(pItem);
						nTimeSlotsAllocated++;
						nextEdgeSlotToStartFrom = timeSlotIndex + 1;
						if (nextEdgeSlotToStartFrom >= currentNumberOfSlotsInSchedule)
							nextEdgeSlotToStartFrom -= currentNumberOfSlotsInSchedule;
					}
				}
				if (nTimeSlotsAllocated != requiredTimeSlots)
				{
					// clean the old results.
					o_schedule.CleanSchedule();
					for (int kk=0;kk<nPaths;kk++)
						paths[kk].SetAllocated(0.); 

					return false;
				}
				slotToStartFrom = nextEdgeSlotToStartFrom;
			}
			path.SetAllocated(allocationUnit + path.GetAllocated());
			//cout << "Adding to flow#: " << i << " amount of: " << allocationUnit << endl;
		}
	}

	return true;
}

double  SmartScheduler::CalcAllocationUnit(double flow, double remainingFlow, std::vector<double> & capacities, std::vector<double> & times, double virtualTimeUnitForAllocation)
{
	int idOfMax = 0;
	double maxCapacity = capacities[0];
	for (int i=0;i<(int) capacities.size(); i++)
	{
		if (capacities[i] > maxCapacity)
		{
			maxCapacity = capacities[i];
			idOfMax = i;
		}
	}

	// when a time unit is small the schedule "looses" more slots but the waiting time is reduced.
	// this is because we break each path to many small flows in the path. 
	double minFlowInAUnit = virtualTimeUnitForAllocation * maxCapacity;
	if (minFlowInAUnit > remainingFlow)
		minFlowInAUnit = remainingFlow;

	return minFlowInAUnit;
}
