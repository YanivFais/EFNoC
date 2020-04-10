#include "RequestsCollection.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <stdlib.h>

using namespace std;
RequestsCollection::RequestsCollection(void)
{}

RequestsCollection::~RequestsCollection(void)
{
	for (int i=0;i<(int) mRequests.size();i++)
	{
		delete mRequests[i];
	}
}

void RequestsCollection::AddRequest (CommunicationRequest * pRequest)
{
	mRequests.push_back(pRequest);
}

std::vector<CommunicationRequest *> RequestsCollection::GetRequests() 
{
	return mRequests;
}

bool RequestsCollection::InitFromFile (const char * requestsFileName)
{
	ifstream requestsFile;
    requestsFile.open(requestsFileName);
    if (!requestsFile) 
	{
		cout << "Unable to open input requests file" << requestsFileName << endl;
        return false;
    }
 
	bool firstLine = true;
	int nRequests;
	string line;
    while (getline(requestsFile,line)) 
    {
		if ( (line.size() == 0) || 
             ((line.size() >= 1) && (line[0] == '#') ))
        {
			continue;  // comment
        } 
        else 
        {
			stringstream ss (line);
			string token;
            if (firstLine) // header line - number of edges
            {
				getline (ss,token,',');
				nRequests = atoi(token.c_str());
                firstLine = false;
                continue;
            }
			CommunicationRequest * pRequest = CommunicationRequest::InitFromString(line); 
			if (pRequest != NULL)
				mRequests.push_back(pRequest);
		}
	}

	requestsFile.close();
	return true;
}

bool RequestsCollection::WriteToFile  (const char * requestsFileName) const
{
	FILE * fid = fopen(requestsFileName,"wt");
	if (fid == NULL)
	{
		cout << "Problems opening requests output file: " << requestsFileName << endl;
		return false;
	}

	int nRequests = mRequests.size();
	fprintf(fid,"%d\n",nRequests);
	fprintf(fid, "# Request number,Source,Demand,#Dest,Destination\n");
	for (int i = 0; i<nRequests; i++)
	{
		string Line = mRequests[i]->WriteRequestAsString();
		fprintf(fid, "%s\n",Line.c_str());
	}
	fclose(fid);

	return true;
}


