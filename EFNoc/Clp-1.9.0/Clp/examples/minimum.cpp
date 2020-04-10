// Copyright (C) 2002, International Business Machines
// Corporation and others.  All Rights Reserved.

#include "stdafx.h"
#include <CoinPackedMatrix.hpp>
#include "ClpSimplex.hpp"
#include "ClpPrimalColumnSteepest.hpp"
#include "ClpPrimalColumnDantzig.hpp"
#include "CommunicationGraph.h"
#include "UnicastList.h"
#include "RescueGraph.h"
#include "RescueScheduler.h"

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
using namespace std;
#include <time.h>


int main (int argc, const char *argv[])
{

	//InitTime
	time_t initTime;
	time(&initTime);
	cout << "Start time: " << initTime << endl;

	//Gloabl Parameters of the Algorithm
    int ncols_lp, nrows_lp;
	double value_lp;
    CommunicationGraph comm_graph_lp;
    //comm_graph_lp.initFromFile("D:/_Clp/Clp-1.9.0/Clp-1.9.0/Clp/MSVisualStudio/v7/comm_grph1.txt"); //Read the Communication Graph

    comm_graph_lp.initFromFile("D:/tmp/generator/gen/graph.txt"); //Read the Communication Graph

    CoinPackedMatrix matrix;
	UnicastList req;

//Fastest for Random Graph
//    ncols_lp = 25;
//    nrows_lp = 100;

    ncols_lp = 35000;
    nrows_lp = 3000;

	int * NCOLS;
	NCOLS = new int [1]; //A dynamic memory allocation of LP matrix dimensions
	*NCOLS = ncols_lp;
	int *NROWS;
	NROWS = new int [1]; //A dynamic memory allocation of LP matrix dimensions
	*NROWS = nrows_lp;


	matrix.setDimensions(*NROWS,*NCOLS); //have to ve set before the first element is loaded to the matrix!!! How can I know the dimesions before I read the files?!

	double * collb = new double [*NCOLS]; 
	double * colub = new double [*NCOLS]; 
	double * obj   = new double [*NCOLS];
	double * rowlb = new double [*NROWS];
	double * rowub = new double [*NROWS];


//req.initFromFile("D:/_Clp/Clp-1.9.0/Clp-1.9.0/Clp/MSVisualStudio/v7/stream_list1.txt", ncols_lp, nrows_lp, *collb, *colub, *obj, *rowlb, *rowub,  
//		matrix, comm_graph_lp); //Read the Requirements Graph and Return the CLP Matrix

req.initFromFile("D:/tmp/generator/gen/requests.txt", ncols_lp, nrows_lp, *collb, *colub, *obj, *rowlb, *rowub,  
		matrix, comm_graph_lp); //Read the Requirements Graph and Return the CLP Matrix


	time_t preloadTime;
	time(&preloadTime);
	cout << "End of preload: " << preloadTime << endl;

//ClpPrimalColumnSteepest steep(0); // 0 devex, 1 steepest
//ClpPrimalColumnDantzig steep;

//ClpPrimalColumnPivot steep(1);
	ClpSimplex  model;

//    ClpPrimalColumnSteepest steep(1); // 0 devex, 1 steepest
 //   model.setPrimalColumnPivotAlgorithm(steep);


	model.loadProblem (matrix, collb, colub, obj, rowlb, rowub); 
	model.primal();

	int numberRows = model.numberRows();
	double * rowPrimal = model.primalRowSolution();

/*
	for (int iRow=0;iRow<numberRows;iRow++) 	
		printf("Row %d, primal %g\n",iRow, rowPrimal[iRow]);
*/
		
	int numberColumns = model.numberColumns();
	double * columnPrimal = model.primalColumnSolution();

/*
The location of variables as follows:
[0,#number of edges] - by numbering which appears in graph.txt by direction from (from->to)
[#number of edges+1,2*#number of edges] - opposite direction of the edges (i+N).
Frequencies: for a first frequency, for a second, etc...
[frequency number * edge number]
Commodities:
Multipliing similarly for frequencies - external blocks.
[commodity number * frequency number * edge number]
*/


/*
	for (int iColumn=0;iColumn<numberColumns;iColumn++) 	
			printf("Column %d, primal %g\n",iColumn,columnPrimal[iColumn]);
*/

	time_t simplexTime;
	time(&simplexTime);

	cout << "End of execution: " << simplexTime << endl;
/*
	RescueScheduler scheduler(&comm_graph_lp,req.GetNumFreqs(), req.GetNumRequests());
	if (scheduler.IsOK() == false)
	{
		cout << "Problem initializing the scheduler" << endl;
	}
	else
	{
		if (scheduler.CalcSchedule(columnPrimal, numberColumns) == false)
		{
			cout << "Problem in scheduler " << endl;
		}
		else
		{
			RescueVertexSchedule * schedule = scheduler.getVerticesSchedule();


		}
	}
	time_t scheduleTime;
	time(&scheduleTime);

	cout << "End of schedule: " << scheduleTime << endl;
*/
	return 0;
}  

