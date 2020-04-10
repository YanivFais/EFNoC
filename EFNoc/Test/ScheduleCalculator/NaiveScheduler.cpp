#include "NaiveScheduler.h"
#include "CommunicationEdge.h"

#include <math.h>
#include <iostream>

using namespace std;

NaiveScheduler::NaiveScheduler(void)
{
}

NaiveScheduler::~NaiveScheduler(void)
{
}

bool NaiveScheduler::CalcSchedule(CommunicationGraph & commGraph, std::map<int,std::vector<int>> & interferingVertices, 
					double *solution, VarRepository * vars, SchedulingParams & params, Schedule & o_schedule)
{
	double ROUNDING_FACTOR = params.ROUNDING_FACTOR;  // this is heuristic to avoid the rounding error
	int nVars = vars->GetNVars();
	int nEdgeVars = vars->GetNEdgeVars();
	double oneTimeSlot = 1./(double) params.N_TIME_SLOTS;
	for (int i=0;i<nEdgeVars;i++)
	{
		if (solution[i] > oneTimeSlot/10.)
		{
			int requiredTimeSlots = (int) ceil(solution[i]*ROUNDING_FACTOR / oneTimeSlot);
			
			VarTypes varType;
			int request, freq, from, to, edgeId;
			vars->IdToVar(i, varType, request, freq, from, to, edgeId);
			CommunicationEdge * pEdge = (CommunicationEdge *) commGraph.GetEdge(edgeId);
			int MCS = pEdge->GetMCS();
			double regularSlotFlow = oneTimeSlot*pEdge->GetCapacity();
			double lastSlotFlow = solution[i]*ROUNDING_FACTOR*pEdge->GetCapacity() -
				regularSlotFlow*(requiredTimeSlots-1); 
			cout << i << " edge: " << edgeId << " ," << from 
				<< " ," << to << " freq: " << freq << " request: " << request 
				<< " ," << solution[i] << " ," << solution[i]*pEdge->GetCapacity() <<  endl;
		
			int nTimeSlotsAllocated = 0;
			for (int j=0;j<params.N_TIME_SLOTS;j++)
			{
				if (nTimeSlotsAllocated == requiredTimeSlots)
				{
					//cout << "Finished allocating time slots for var: " << i << endl;
					break;
				}
				if (o_schedule.IsOccupied(from, Schedule::DUMMY_FREQUENCY, j))
					continue;

				if (o_schedule.IsOccupied(to, Schedule::DUMMY_FREQUENCY, j))
					continue;

				bool freeSlot = true;
				int edgeForInterference = edgeId;
				if (from > to)
					edgeForInterference = commGraph.GetReverseEdge(edgeId)->GetEdgeNum();

				map<int,vector<int>>::iterator iter = interferingVertices.find(edgeForInterference);
				if (iter != interferingVertices.end())
				{
					vector<int> & currInterferingVertices = iter->second;
					for (int k=0;k<(int) currInterferingVertices.size();k++)
					{
						if (o_schedule.IsOccupied(currInterferingVertices[k], freq, j))
						{
							freeSlot = false;
							break;
						}
					}
				}
				if (freeSlot)
				{
					double flow = regularSlotFlow;
					if (nTimeSlotsAllocated == (requiredTimeSlots-1))
						flow = lastSlotFlow;
					ScheduleItem * pItem = 
						new ScheduleItem(from, to, edgeId, request, freq, j,MCS,flow);
					o_schedule.AddItem(pItem);
					nTimeSlotsAllocated++;
				}
			}
			if (nTimeSlotsAllocated != requiredTimeSlots)
			{
				cout << "Error - Not enough space allocating time slots for var: " << i << endl;
			}

		}
	}
	return true;
}

