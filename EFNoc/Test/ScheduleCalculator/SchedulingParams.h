#pragma once

class SchedulingParams
{
public:
	SchedulingParams(const char * configFileName);
	~SchedulingParams(void);

	bool   mIsValid;

	char * COMMUNICATION_GRAPH_FILENAME;
	char * INTERFERENCE_GRAPH_FILENAME;
	char * COORDS_FILENAME;
	char * REQUESTS_FILENAME;
	char * SCHEDULE_FILENAME;
	char * LP_REPORT_FILENAME;
	char * QUEUES_REPORT_FILENAME;

	char * FILE_NAMES_EXTENSION;

	int    N_FREQS_FOR_SCHEDULE;
	int    N_TIME_SLOTS;

	int    SCHEDULE_BATCH_SIZE;
	double ROUNDING_FACTOR;

	bool   USE_SMART_SCHEDULER;
	bool   ALLOW_ADDING_SLOTS;

	int    ROUTER_TYPE;


private:
	static const char * DEFAULT_COMMUNICATION_GRAPH_FILENAME;
	static const char * DEFAULT_INTERFERENCE_GRAPH_FILENAME;
	static const char * DEFAULT_COORDS_FILENAME;
	static const char * DEFAULT_REQUESTS_FILENAME;
	static const char * DEFAULT_SCHEDULE_FILENAME;
	static const char * DEFAULT_LP_REPORT_FILENAME;
	static const char * DEFAULT_QUEUES_REPORT_FILENAME;

	static const int    DEFAULT_N_FREQS_FOR_SCHEDULE;
	static const int    DEFAULT_N_TIME_SLOTS;

	static const int    DEFAULT_USE_SMART_SCHEDULER;
	static const int    DEFAULT_SCHEDULE_BATCH_SIZE;
	static const double DEFAULT_ROUNDING_FACTOR;

	static const int    DEFAULT_ROUTER_TYPE;
	static const int    DEFAULT_ALLOW_ADDING_SLOTS;

	void GetExtension(const char * fileName);
	void ComposeFilename(size_t len, const char * name, char *& outName);

};
