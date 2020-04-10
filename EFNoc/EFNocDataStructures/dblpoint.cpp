#include "dblpoint.h"

DblPoint::DblPoint(void)
{
	x = 0.;
	y = 0.;
}

DblPoint::DblPoint(double i_x, double i_y)
{
	x = i_x;
	y = i_y;
}

double DblPoint::calcSqaureDist(DblPoint & other)
{
	double dx = (x - other.x);
	double dy = (y - other.y);
	return dx*dx + dy*dy;
}

int pointsComparer(const void * p1, const void * p2)
{
	const DblPoint * p1_ = (const DblPoint *) p1;
	const DblPoint * p2_ = (const DblPoint *) p2;

	if (p1_->x < p2_->x)
		return -1;
	if (p1_->x > p2_->x)
		return 1;
	if (p1_->y < p2_->y)
		return -1;
	if (p1_->y > p2_->y)
		return 1;
	return 0;
}
