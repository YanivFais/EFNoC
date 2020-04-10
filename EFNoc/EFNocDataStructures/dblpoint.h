#pragma once

class DblPoint {
public:
	double x;
	double y;
	DblPoint(void);
	DblPoint(double i_x, double i_y);
	double calcSqaureDist(DblPoint & other);
};
int pointsComparer(const void * p1, const void * p2);
