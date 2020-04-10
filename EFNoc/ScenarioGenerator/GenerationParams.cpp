#include <iostream>
#include <math.h>

#include "GenerationParams.h"
#include "ConfigReader.h"

#include <string.h>

const int GenerationParams::DEFAULT_TIME_PERIOD = 60;
const int GenerationParams::DEFAULT_TIME_RESOLUTION = 1;
const int GenerationParams::DEFAULT_N_CLIENTS = 10;
const int GenerationParams::DEFAULT_N_NEAR_REQUEST = 2;
const int GenerationParams::DEFAULT_N_FAR_REQUEST = 1;
const int GenerationParams::DEFAULT_FAR_THRESHOLD = 5;

// in kilo-byte
const double GenerationParams::DEFAULT_PAYLOAD = 2.;

const char * GenerationParams::DEFAULT_COMMUNICATION_GRAPH_FILENAME = "CommGraph.txt";
const char * GenerationParams::DEFAULT_REQUESTS_FILENAME = "Requests.txt";
const char * GenerationParams::DEFAULT_OMNET_FILENAME = "omnetpp.ini";
const char * GenerationParams::DEFAULT_MCSL_FILENAME = "mcsl.rtp";

using namespace std;
GenerationParams::GenerationParams(const char * configFileName)
{
	mIsValid = false;
	ConfigReader params(configFileName);
	if (params.hasFoundFile() == false)
	{
		cout << "Problem reading the scenario parameters file" << configFileName << endl;
		return;
	}

	TOPOLOGY = params.findInt("TOPOLOGY", 1);
	N = params.findInt("N", 1);
	K = params.findInt("K", 1);
	M = params.findInt("M", 1);
	R = params.findInt("R", 1);
	FLIT_SIZE = params.findInt("FLIT_SIZE", 4);
	MCSL_REQ_PER_EDGE = params.findInt("MCSL_REQ_PER_EDGE", 0);
	LEVELS = params.findInt("LEVELS", 1);
	TIME_PERIOD              = params.findInt   ("TIME_PERIOD",DEFAULT_TIME_PERIOD);
	PAYLOAD = params.findDouble("PAYLOAD", DEFAULT_PAYLOAD);
	RATIO_CLIENTS = params.findDouble("RATIO_CLIENTS", 0.5);
	RATIO_PAYLOAD = params.findDouble("RATIO_PAYLOAD", 0.5);
	TASK_MSG_START = params.findDouble("TASK_MSG_START", 0.5);
	L = params.findInt("L", 0);
	ALPHA = params.findDouble("ALPHA", 1);	

	string DEFAULT_COMMUNICATION_GRAPH_FILENAME_(DEFAULT_COMMUNICATION_GRAPH_FILENAME);
	string helper = params.findString("COMMUNICATION_GRAPH_FILENAME",DEFAULT_COMMUNICATION_GRAPH_FILENAME_);
	COMMUNICATION_GRAPH_FILENAME  = new char[helper.size()+1];
	strcpy(COMMUNICATION_GRAPH_FILENAME, helper.c_str()); 

	string DEFAULT_REQUESTS_FILENAME_(DEFAULT_REQUESTS_FILENAME);
	helper = params.findString("REQUESTS_FILENAME",DEFAULT_REQUESTS_FILENAME_);
	REQUESTS_FILENAME = new char[helper.size()+1];
	strcpy(REQUESTS_FILENAME,  helper.c_str()); 

	string DEFAULT_OMNET_FILENAME_(DEFAULT_OMNET_FILENAME);
	helper = params.findString("OMNET_FILENAME", DEFAULT_OMNET_FILENAME_);
	OMNET_FILENAME = new char[helper.size() + 1];
	strcpy(OMNET_FILENAME, helper.c_str());

	string DEFAULT_OMNET_PKGNAME_("mesh.S_4");
	helper = params.findString("OMNET_PACKAGE_NAME", DEFAULT_OMNET_PKGNAME_);
	OMNET_PACKAGE_NAME = new char[helper.size() + 1];
	strcpy(OMNET_PACKAGE_NAME, helper.c_str());
	
	string DEFAULT_MCSL_FILENAME_(DEFAULT_MCSL_FILENAME);
	helper = params.findString("MCSL_FILENAME", DEFAULT_MCSL_FILENAME_);
	if (helper == "NULL")
		helper = "";
	MCSL_FILENAME = new char[helper.size() + 1];
	strcpy(MCSL_FILENAME, helper.c_str());	
	
	mIsValid = true;
}

GenerationParams::~GenerationParams()
{
	if (COMMUNICATION_GRAPH_FILENAME != NULL)
		delete [] COMMUNICATION_GRAPH_FILENAME;
	if (REQUESTS_FILENAME != NULL)
		delete [] REQUESTS_FILENAME;
	if (OMNET_FILENAME != NULL)
		delete [] OMNET_FILENAME;
	if (MCSL_FILENAME != NULL)
		delete[] MCSL_FILENAME;

}