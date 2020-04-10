#include <iostream>
#include "SchedulingParams.h"
#include "ConfigReader.h"

#include <string.h>

using namespace std;

const char * SchedulingParams::DEFAULT_COMMUNICATION_GRAPH_FILENAME = "CommGraph.txt";
const char * SchedulingParams::DEFAULT_INTERFERENCE_GRAPH_FILENAME = "InterfGraph.txt";
const char * SchedulingParams::DEFAULT_COORDS_FILENAME = "Coords.txt";
const char * SchedulingParams::DEFAULT_REQUESTS_FILENAME = "Requests.txt";
const char * SchedulingParams::DEFAULT_SCHEDULE_FILENAME = "Schedule.txt";

const char * SchedulingParams::DEFAULT_LP_REPORT_FILENAME = "flow_summary.txt";
const char * SchedulingParams::DEFAULT_QUEUES_REPORT_FILENAME = "queues_summary.txt";

const int    SchedulingParams::DEFAULT_N_FREQS_FOR_SCHEDULE = 3;
const int    SchedulingParams::DEFAULT_N_TIME_SLOTS = 1000;

const int    SchedulingParams::DEFAULT_USE_SMART_SCHEDULER = 0;
const int    SchedulingParams::DEFAULT_ALLOW_ADDING_SLOTS = 0;
const int    SchedulingParams::DEFAULT_SCHEDULE_BATCH_SIZE = 1;
const double SchedulingParams::DEFAULT_ROUNDING_FACTOR = 0.98;

// 1 - shortest path routing, 2 - max capacity in a single path routing, 3 - multicommodity flow routing, 4 - LP with conflicts  
const int    SchedulingParams::DEFAULT_ROUTER_TYPE = 4;

SchedulingParams::SchedulingParams(const char * configFileName)
{
	ConfigReader params(configFileName);
	if (params.hasFoundFile() == false)
	{
		cout << "Problem reading the scenario parameters file" << configFileName << endl;
		return;
	}

	GetExtension(configFileName);

	N_FREQS_FOR_SCHEDULE = params.findInt("N_FREQS_FOR_SCHEDULE",DEFAULT_N_FREQS_FOR_SCHEDULE);
	N_TIME_SLOTS = params.findInt("N_TIME_SLOTS",DEFAULT_N_TIME_SLOTS);
	SCHEDULE_BATCH_SIZE = params.findInt("SCHEDULE_BATCH_SIZE",DEFAULT_SCHEDULE_BATCH_SIZE);
	ROUNDING_FACTOR = params.findDouble("ROUNDING_FACTOR",DEFAULT_ROUNDING_FACTOR);
	ROUTER_TYPE = params.findInt("ROUTER_TYPE",DEFAULT_ROUTER_TYPE);
	if ( (ROUTER_TYPE < 1) || (ROUTER_TYPE > 4) )
		ROUTER_TYPE = DEFAULT_ROUTER_TYPE;

	USE_SMART_SCHEDULER = (params.findInt("USE_SMART_SCHEDULER",DEFAULT_USE_SMART_SCHEDULER) != 0);
	ALLOW_ADDING_SLOTS = (params.findInt("ALLOW_ADDING_SLOTS",DEFAULT_ALLOW_ADDING_SLOTS) != 0);

	string DEFAULT_COMMUNICATION_GRAPH_FILENAME_(DEFAULT_COMMUNICATION_GRAPH_FILENAME);
	string helper = params.findString("COMMUNICATION_GRAPH_FILENAME",DEFAULT_COMMUNICATION_GRAPH_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), COMMUNICATION_GRAPH_FILENAME);

	string DEFAULT_INTERFERENCE_GRAPH_FILENAME_(DEFAULT_INTERFERENCE_GRAPH_FILENAME);
	helper = params.findString("INTERFERENCE_GRAPH_FILENAME",DEFAULT_INTERFERENCE_GRAPH_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), INTERFERENCE_GRAPH_FILENAME);

	string DEFAULT_COORDS_FILENAME_(DEFAULT_COORDS_FILENAME);
	helper = params.findString("COORDS_FILENAME",DEFAULT_COORDS_FILENAME_);
	COORDS_FILENAME = new char[helper.size()+1];
	COORDS_FILENAME[helper.size()] = 0x00;
	strcpy(COORDS_FILENAME, helper.c_str());

	string DEFAULT_REQUESTS_FILENAME_(DEFAULT_REQUESTS_FILENAME);
	helper = params.findString("REQUESTS_FILENAME",DEFAULT_REQUESTS_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), REQUESTS_FILENAME);

	string DEFAULT_SCHEDULE_FILENAME_(DEFAULT_SCHEDULE_FILENAME);
	helper = params.findString("SCHEDULE_FILENAME",DEFAULT_SCHEDULE_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), SCHEDULE_FILENAME);

	string DEFAULT_LP_REPORT_FILENAME_(DEFAULT_LP_REPORT_FILENAME);
	helper = params.findString("LP_REPORT_FILENAME",DEFAULT_LP_REPORT_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), LP_REPORT_FILENAME);

	string DEFAULT_QUEUES_REPORT_FILENAME_(DEFAULT_QUEUES_REPORT_FILENAME);
	helper = params.findString("QUEUES_REPORT_FILENAME",DEFAULT_LP_REPORT_FILENAME_);
	ComposeFilename(helper.size(), helper.c_str(), QUEUES_REPORT_FILENAME);

	mIsValid = true;

}

SchedulingParams::~SchedulingParams(void)
{
	if (FILE_NAMES_EXTENSION != NULL)
	{
		delete [] FILE_NAMES_EXTENSION;
	}
	if (COORDS_FILENAME != NULL)
	{
		delete [] COORDS_FILENAME;
	}
	if (COMMUNICATION_GRAPH_FILENAME != NULL)
	{
		delete [] COMMUNICATION_GRAPH_FILENAME;
	}
	if (INTERFERENCE_GRAPH_FILENAME != NULL)
	{
		delete [] INTERFERENCE_GRAPH_FILENAME;
	}
	if (REQUESTS_FILENAME != NULL)
	{
		delete [] REQUESTS_FILENAME;
	}
	if (SCHEDULE_FILENAME != NULL)
	{
		delete [] SCHEDULE_FILENAME;
	}
	if (LP_REPORT_FILENAME != NULL)
	{
		delete [] LP_REPORT_FILENAME;
	}
	if (QUEUES_REPORT_FILENAME != NULL)
	{
		delete [] QUEUES_REPORT_FILENAME;
	}

}

void SchedulingParams::GetExtension(const char * fileName)
{
	// The file format is A_B.C e.g., params_10_2_47.txt
	// we would like to get B (namely _10_2_47)

	const char * p = fileName;
	const char * pBeginning = fileName;
	// reach the end of the string
	while (*p)
		p++;

	// find C, e.g. .txt
	while ((p > pBeginning) && (*p != '.') )
		p--;

	if (p == pBeginning)
	{
		// no extension
		FILE_NAMES_EXTENSION = new char[1];
		FILE_NAMES_EXTENSION[0] = 0x00;
		return;
	}

	p--;
	// now we return until the last time we see _
	const char * pLastPlaceBeforeDot = p;
	const char * pStartOfExtension = NULL;
	while (p >= pBeginning)
	{
		if (*p == '_')
			pStartOfExtension = p;

		p--;
	}

	if (pStartOfExtension != NULL)
	{
		int len = pLastPlaceBeforeDot - pStartOfExtension + 1;
		FILE_NAMES_EXTENSION = new char[len+1];
		FILE_NAMES_EXTENSION[len] = 0x00;
		char * pCopy = FILE_NAMES_EXTENSION;
		while (pStartOfExtension <= pLastPlaceBeforeDot)
		{
			*pCopy = *pStartOfExtension;
			pCopy++;
			pStartOfExtension++;
		}
		return;
	}
	// no extension
	FILE_NAMES_EXTENSION = new char[1];
	FILE_NAMES_EXTENSION[0] = 0x00;
	return;
}

void SchedulingParams::ComposeFilename(size_t len, const char * name, char *& outName)

{
	size_t extensionLen = strlen(FILE_NAMES_EXTENSION);
	size_t totalLen = extensionLen + len;
	outName = new char[totalLen+1];
	outName[totalLen] = 0x00;
	if (strlen(FILE_NAMES_EXTENSION) == 0)
	{
		strcpy(outName, name);
		return;
	}


	// The file format is A.C (e.g., graph.ttt)
	// we would like to get AB.C where B is the extension obtained
	// from the param file name (namely graph_10_2_47.ttt)

	const char * p = name;
	const char * pBeginning = name;
	// reach the end of the string
	while (*p)
		p++;

	// find C, e.g. .txt
	while ((p > pBeginning) && (*p != '.') )
		p--;

	if (p == pBeginning) // the format is A without .C
	{
		strcpy(outName, name);
		strcpy(outName + len, FILE_NAMES_EXTENSION);
		return;
	}

	// copy the A (without .C), then copy FILE_NAMES_EXTENSION and then copy the .C
	char * pOut = outName;
	const char * pDot = p;
	p = pBeginning;
	while (p != pDot)
	{
		*pOut = *p;
		pOut++;p++;
	}
	strcpy(pOut,FILE_NAMES_EXTENSION);
	pOut += extensionLen;
	strcpy(pOut,pDot);

	return;
}
