/*// Copyright (C) 2002, International Business Machines
// Corporation and others.  All Rights Reserved.

#include "ClpSimplex.hpp"
int main (int argc, const char *argv[])
{
  ClpSimplex  model;
  int status;
  if (argc<2)
    status=model.readMps("../../Data/Sample/p0033.mps");
  else
    status=model.readMps(argv[1]);
  if (!status) {
    model.primal();
  }
  return 0;
} */   

// Copyright (C) 2002, International Business Machines
// Corporation and others.  All Rights Reserved.
#include <CoinPackedMatrix.hpp>
#include "ClpSimplex.hpp"
//int main (int argc, const char *argv[])
//{
//  ClpSimplex  model;
//  int status;
//  if (argc<2)
//    status=model.readMps("../../Data/Sample/p0033.mps");
//  else
//    status=model.readMps(argv[1]);
//  if (!status) {
//    model.primal();
//  }
//  return 0;
//}    

int main (int argc, const char *argv[])
{
	const int NCOLS = 3;
	const int NROWS = 3;
	const double HUGE_NUM = 1e8;
	CoinPackedMatrix matrix;
	matrix.setDimensions(NROWS,NCOLS);
	matrix.modifyCoefficient(0,0,1.);
	matrix.modifyCoefficient(0,1,1.);
	matrix.modifyCoefficient(1,1,1.);
	matrix.modifyCoefficient(1,2,1.);
	matrix.modifyCoefficient(2,0,1.);
	matrix.modifyCoefficient(2,2,1.);
 

	int i;
	double * collb = new double[NCOLS]; 
	double * colub = new double[NCOLS]; 
	double * obj   = new double [NCOLS];
	for (i=0;i<NCOLS;i++)
	{
		collb[i] = 0.;
		colub[i] = 1.;
		obj  [i] = 1.;
	}
	double * rowlb = new double [NROWS];
	double * rowub = new double [NROWS];
	for (i=0;i<NROWS;i++)
	{
		rowlb[i] = 1.;
		rowub[i] = 10.;
	}
	ClpSimplex  model;
	model.loadProblem (matrix, collb, colub, obj, rowlb, rowub); 
	model.primal();

	int numberRows = model.numberRows();
	double * rowPrimal = model.primalRowSolution();

	int iRow;

	for (iRow=0;iRow<numberRows;iRow++) 	
		printf("Row %d, primal %g\n",iRow, rowPrimal[iRow]);
	
	int numberColumns = model.numberColumns();
	double * columnPrimal = model.primalColumnSolution();

	int iColumn;

	for (iColumn=0;iColumn<numberColumns;iColumn++) 	
			printf("Column %d, primal %g\n",iColumn,columnPrimal[iColumn]);

	return 0;
}  

/*
// star graph
int main (int argc, const char *argv[])
{	// minimum edges's group covering all connections
	const int NCOLS = 5;
	const int NROWS = 5;
	const double HUGE_NUM = 1e8;
	CoinPackedMatrix matrix;
	matrix.setDimensions(NROWS,NCOLS);
	// create star graph by putting connections from all edges to edge number 1 only
	matrix.modifyCoefficient(1,2,1.);
	matrix.modifyCoefficient(2,1,1.);
	matrix.modifyCoefficient(3,1,1.);
	matrix.modifyCoefficient(1,3,1.); 
	matrix.modifyCoefficient(4,1,1.);  
	matrix.modifyCoefficient(1,4,1.);  
	matrix.modifyCoefficient(1,0,1.);  
	matrix.modifyCoefficient(0,1,1.); 

	int i;
	double * collb = new double[NCOLS]; 
	double * colub = new double[NCOLS]; 
	double * obj   = new double [NCOLS];
	for (i=0;i<NCOLS;i++)
	{
		collb[i] = 0.;
		colub[i] = 1.;
		obj  [i] = -1.;
	}
	double * rowlb = new double [NROWS];
	double * rowub = new double [NROWS];
	for (i=0;i<NROWS;i++)
	{
		rowlb[i] = 0.;
		rowub[i] = 1.;
	}
	ClpSimplex  model;
	model.loadProblem (matrix, collb, colub, obj, rowlb, rowub); 
	model.primal();

	int numberRows = model.numberRows();
	double * rowPrimal = model.primalRowSolution();

	int iRow;

	for (iRow=0;iRow<numberRows;iRow++) 	
		printf("Row %d, primal %g\n",iRow, rowPrimal[iRow]);
	
	int numberColumns = model.numberColumns();
	double * columnPrimal = model.primalColumnSolution();

	int iColumn;

	for (iColumn=0;iColumn<numberColumns;iColumn++) 	
			printf("Column %d, primal %g\n",iColumn,columnPrimal[iColumn]);

	return 0;
}  
*/