#pragma once

#include <vector>
#include <string>

class CommunicationRequest
{
public:
	CommunicationRequest(int requestNum, int source, int destination, double demand);
	CommunicationRequest(int requestNum, int source, std::vector<int> destinations, double demand);
	CommunicationRequest(const CommunicationRequest & otherRequest);
	~CommunicationRequest(void);

	std::string WriteRequestAsString() const;
	static CommunicationRequest * InitFromString(std::string requestStr);


	int    GetRequestNum () const;
	int    GetSource () const;
	double GetDemand () const; 

	const std::vector<int> & GetDestinations() const;
	int    GetFirstDestination () const;

private:
	int mRequestNum;
	int mSource;
	std::vector<int> mDestinations;
	double mDemand;
};
