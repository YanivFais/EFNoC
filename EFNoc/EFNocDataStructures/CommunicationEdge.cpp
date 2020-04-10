#include "CommunicationEdge.h"
using namespace std;

// the communication graph is directed - therefore the flag is false.
CommunicationEdge::CommunicationEdge(int edgeNum, int from, int to, double price) :
				 EFNocEdge(edgeNum, from, to, true, price) 
{

}

