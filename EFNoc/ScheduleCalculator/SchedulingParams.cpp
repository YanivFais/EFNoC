#include <iostream>
#include "SchedulingParams.h"
#include "ConfigReader.h"

#include <string.h>

using namespace std;

const char * SchedulingParams::DEFAULT_COMMUNICATION_GRAPH_FILENAME = "CommGraph.txt";
const char * SchedulingParams::DEFAULT_OMNET_CONFIG_FILENAME = "omnetpp.ini.include";
const char * SchedulingParams::DEFAULT_COORDS_FILENAME = "Coords.txt";
const char * SchedulingParams::DEFAULT_REQUESTS_FILENAME = "Requests.txt";
const char * SchedulingParams::DEFAULT_SCHEDULE_FILENAME = "Schedule.txt";

const int    SchedulingParams::DEFAULT_N_TIME_SLOTS = 4;

SchedulingParams::SchedulingParams(const char * configFileName)
{
	ConfigReader params(configFileName);
	COMMUNICATION_GRAPH_FILENAME = COORDS_FILENAME = OMNET_CONFIG_FILENAME = OMNET_PACKAGE_NAME = REQUESTS_FILENAME = SCHEDULE_FILENAME = NULL;
	if (params.hasFoundFile() == false)
	{
		cout << "Problem reading the scenario parameters file" << configFileName << endl;
		mIsValid = false;
		return;
	}

	N_TIME_SLOTS = params.findInt("N_TIME_SLOTS",DEFAULT_N_TIME_SLOTS);
	FLIT_SIZE = params.findInt("FLIT_SIZE", 4);
	ROUTER_TYPE = params.findInt("ROUTER_TYPE", 1);
	SCHEDULER_TYPE = params.findInt("SCHEDULER_TYPE", 1);
	ALLOW_ADDING_SLOTS = params.findInt("ALLOW_ADDING_SLOTS", 1);
	SCHEDULE_BATCH_SIZE = params.findInt("SCHEDULE_BATCH_SIZE", 1);
	ROUNDING_FACTOR = params.findDouble("ROUNDING_FACTOR", 1);
	SLOTS_ROUNDING_FACTOR = params.findDouble("SLOTS_ROUNDING_FACTOR", 0);
	WIDTH_PERCENTAGE_ALLOW_INCREASE = params.findDouble("WIDTH_PERCENTAGE_ALLOW_INCREASE", 1.25);


	
	string DEFAULT_COMMUNICATION_GRAPH_FILENAME_(DEFAULT_COMMUNICATION_GRAPH_FILENAME);
	string helper = params.findString("COMMUNICATION_GRAPH_FILENAME",DEFAULT_COMMUNICATION_GRAPH_FILENAME_);
	COMMUNICATION_GRAPH_FILENAME  = new char[helper.size()+1];
	strcpy(COMMUNICATION_GRAPH_FILENAME, helper.c_str()); 

	string DEFAULT_OMNET_CONFIG_FILENAME_(DEFAULT_OMNET_CONFIG_FILENAME);
	helper = params.findString("OMNET_CONFIG_FILENAME", DEFAULT_OMNET_CONFIG_FILENAME_);
	OMNET_CONFIG_FILENAME = new char[helper.size() + 1];
	strcpy(OMNET_CONFIG_FILENAME, helper.c_str());

	string DEFAULT_COORDS_FILENAME_(DEFAULT_COORDS_FILENAME);
	helper = params.findString("COORDS_FILENAME",DEFAULT_COORDS_FILENAME_);
	COORDS_FILENAME = new char[helper.size()+1];
	strcpy(COORDS_FILENAME,  helper.c_str()); 

	string DEFAULT_REQUESTS_FILENAME_(DEFAULT_REQUESTS_FILENAME);
	helper = params.findString("REQUESTS_FILENAME",DEFAULT_REQUESTS_FILENAME_);
	REQUESTS_FILENAME = new char[helper.size()+1];
	strcpy(REQUESTS_FILENAME,  helper.c_str()); 

	string DEFAULT_SCHEDULE_FILENAME_(DEFAULT_SCHEDULE_FILENAME);
	helper = params.findString("SCHEDULE_FILENAME",DEFAULT_SCHEDULE_FILENAME_);
	SCHEDULE_FILENAME = new char[helper.size()+1];
	strcpy(SCHEDULE_FILENAME,  helper.c_str()); 

	string DEFAULT_OMNET_PKGNAME_("mesh.S_4");
	helper = params.findString("OMNET_PACKAGE_NAME", DEFAULT_OMNET_PKGNAME_);
	OMNET_PACKAGE_NAME = new char[helper.size() + 1];
	strcpy(OMNET_PACKAGE_NAME, helper.c_str());

	mIsValid = true;

}

SchedulingParams::~SchedulingParams(void)
{
	if (COORDS_FILENAME != NULL)
	{
		delete [] COORDS_FILENAME;
	}
	if (COMMUNICATION_GRAPH_FILENAME != NULL)
	{
		delete [] COMMUNICATION_GRAPH_FILENAME;
	}
	if (OMNET_CONFIG_FILENAME != NULL)
	{
		delete[] OMNET_CONFIG_FILENAME;
	}
	if (REQUESTS_FILENAME != NULL)
	{
		delete [] REQUESTS_FILENAME;
	}
	if (SCHEDULE_FILENAME != NULL)
	{
		delete [] SCHEDULE_FILENAME;
	}
}
