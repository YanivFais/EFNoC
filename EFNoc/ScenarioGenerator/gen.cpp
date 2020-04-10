// gen.cpp : Defines the entry point for the console application.
//
#include <iostream>
#include "GenerationParams.h"
#include "GraphGenerator.h"
#include "RequestsCollection.h"

using namespace std;

int main(int argc, char * argv[])
{
	if (argc != 2)
	{
		cout << "Wrong number of parameters" << endl;
		cout << "ScenarioGenerator <config file name>" << endl;
		return 1;
	}

	try {
		// read configuration file
		GenerationParams params(argv[1]);
		if (params.mIsValid == false)
			return 1;


		GraphGenerator generator(params);

		cout << "Generating communication graph\n";
		CommunicationGraph * communicationGraph = generator.GenerateGraphs();

		cout << "Generating requests\n";
		RequestsCollection & requests = generator.GenerateRequests(*communicationGraph);

		generator.WriteGraphFiles(*communicationGraph);
		generator.WriteRequestsFile(requests);
	}
	catch (std::exception& e) {
		cerr << "Error:" << e.what() << endl;
		return 3;
	}
	catch (...) {
		cerr << "Error:unknown\n";
		return 2;
	}

	return 0;
}




