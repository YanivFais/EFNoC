#include "EFNocEdge.h"

EFNocEdge::EFNocEdge(int i_edgeNum, int i_from, int i_to, bool i_isDirected, double i_price) 
{
	mEdgeNum = i_edgeNum;
	mFrom = i_from;
	mTo = i_to;
	mIsDirected = i_isDirected;
	mCapacity = mOrigCapacity = mGapCapacity = 0;
	mPrice = i_price;
}

bool EFNocEdge::GetIsDirected () const
{
	return mIsDirected;
}

int EFNocEdge::GetEdgeNum() const
{
	return mEdgeNum;
}

double EFNocEdge::GetCapacity() const
{
	return mCapacity;
}

double EFNocEdge::GetOrigCapacity() const
{
	return mOrigCapacity;
}

void EFNocEdge::SetCapacity(double c)
{
	mCapacity = c;
}

double EFNocEdge::GetPrice() const
{
	return mPrice;
}

int EFNocEdge::GetFrom () const
{
	return mFrom;
}

int EFNocEdge::GetTo   () const
{
	return mTo;
}

void EFNocEdge::RenameVertices(const map<int, int>& v2v)
{
	map<int, int>::const_iterator it = v2v.find(mFrom);
	if (it != v2v.end())
		mFrom = it->second;
	it = v2v.find(mTo);
	if (it != v2v.end())
		mTo = it->second;
}


void EFNocEdge::updateCapacityForFlitSize(int flitSize)
{
	mOrigCapacity = mGapCapacity = mCapacity;
	mCapacity = std::ceil(mCapacity / flitSize)*flitSize;
}

void EFNocEdge::IncreaseFlow(double flowGapOnEdge, int flitSize)
{
	if ((mCapacity - mGapCapacity) > flowGapOnEdge) {
		mGapCapacity += flowGapOnEdge;
	} 
	else {
		mGapCapacity += flowGapOnEdge;
		mCapacity = std::ceil(mGapCapacity / flitSize)*flitSize;
	}
}
