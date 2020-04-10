#include "CommunicationRequest.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;

CommunicationRequest::CommunicationRequest(int requestNum, int source, int destination, double demand) 
{
	mRequestNum = requestNum;
	mSource = source;
	mDestinations.push_back(destination);
	mDemand = demand;
}

CommunicationRequest::CommunicationRequest(int requestNum, int source, std::vector<int> destinations, double demand)
{
	mRequestNum = requestNum;
	mSource = source;
	mDestinations = destinations;
	mDemand = demand;
}

CommunicationRequest::CommunicationRequest(const CommunicationRequest & otherRequest)
{
	mRequestNum = otherRequest.mRequestNum;
	mSource = otherRequest.mSource;
	mDestinations = otherRequest.mDestinations;
	mDemand = otherRequest.mDemand;
}

CommunicationRequest::~CommunicationRequest(void)
{}

int    CommunicationRequest::GetRequestNum () const
{
	return mRequestNum;
}

int    CommunicationRequest::GetSource () const
{
	return mSource;
}

double CommunicationRequest::GetDemand () const
{
	return mDemand;
}

const std::vector<int> & CommunicationRequest::GetDestinations() const
{
	return mDestinations;
}

int    CommunicationRequest::GetFirstDestination () const
{
	return mDestinations[0];
}


string CommunicationRequest::WriteRequestAsString() const
{
	char Line[256];
	int nDest = mDestinations.size();
	sprintf_s(Line,"%d,%d,%8.8f,%d", mRequestNum, mSource, mDemand, nDest);

	for (int i=0;i<nDest;i++)
	{
		sprintf_s(Line,"%s,%d",Line, mDestinations[i]);
	}
	string req(Line);

	return req;
}

CommunicationRequest * CommunicationRequest::InitFromString(string requestStr) 
{
	stringstream ss (requestStr);
	string token;
    getline(ss, token, ',');
    int requestNum = atoi(token.c_str());
    getline(ss, token, ',');
    int source = atoi(token.c_str());
    getline(ss, token, ',');
	double demand = atof(token.c_str());
	if (demand < MIN_DEMAND)
		demand = MIN_DEMAND;
    getline(ss, token, ',');
    int nDest = atoi(token.c_str());
    getline(ss, token, ',');
	int dest = atoi(token.c_str());	
	CommunicationRequest * pRequest = new CommunicationRequest(requestNum, source,dest,demand);
	return pRequest;
}

