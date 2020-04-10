#include "FlowChecker.h"

using namespace std;

FlowChecker::FlowChecker(void)
{
}

FlowChecker::~FlowChecker(void)
{
}

void FlowChecker::FilterUnconnectedRequests(CommunicationGraph & graph, RequestsCollection & request, RequestsCollection & activeRequests, vector<int> & reqNumToReqId)
{
	vector<CommunicationRequest*> reqVec = request.GetRequests();
	size_t nReq = reqVec.size();
	for (size_t i=0;i<nReq;i++)
	{
		CommunicationRequest * pReq = reqVec[i];
		vector<int> path;
		graph.FindBFSPath(pReq->GetSource(), pReq->GetFirstDestination(), path);
		if (path.size() != 0)
		{
			reqNumToReqId.push_back((int) activeRequests.GetRequests().size());
			CommunicationRequest * pReqCopy = new CommunicationRequest(*pReq);
			activeRequests.AddRequest(pReqCopy);
		}
		else
			reqNumToReqId.push_back(-1);
	}
}
