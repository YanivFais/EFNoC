#pragma once

#include <map>
using namespace std;

class EFNocEdge
{
public:
	 EFNocEdge(int i_edgeNum,int i_from, int i_to, bool i_isDirected, double i_price);
	 void IncreaseFlow(double flowGapOnEdge,int flitSize);

	int    GetEdgeNum    () const;
	double GetCapacity   () const;
	double GetOrigCapacity() const;
	double GetGapCapacity() const;
	void SetCapacity(double c);
	double GetPrice   () const;
	void SetPrice(double p) {
		mPrice = p;
	};
	int    GetFrom() const;
	int    GetTo         () const;
	bool   GetIsDirected () const;

	void RenameVertices(const map<int, int>& v2v);

	void updateCapacityForFlitSize(int flitSize);

protected:
	int     mEdgeNum;
	double  mCapacity;
	double mOrigCapacity;
	double mGapCapacity;
	double  mPrice;
	int		mFrom;
	int		mTo;
	bool    mIsDirected;
};
