#pragma once

class SchedulingParams
{
public:
	SchedulingParams(const char * configFileName);
	~SchedulingParams(void);

	bool   mIsValid;

	char * COMMUNICATION_GRAPH_FILENAME;
	char * OMNET_CONFIG_FILENAME;
	char * COORDS_FILENAME;
	char * REQUESTS_FILENAME;
	char * SCHEDULE_FILENAME;
	char * OMNET_PACKAGE_NAME;

	int    FLIT_SIZE;
	int    N_TIME_SLOTS;
	int    ROUTER_TYPE;
	int ALLOW_ADDING_SLOTS;
	int SCHEDULE_BATCH_SIZE;
	double ROUNDING_FACTOR;
	int    SCHEDULER_TYPE;
	double SLOTS_ROUNDING_FACTOR;
	double WIDTH_PERCENTAGE_ALLOW_INCREASE;


private:
	static const char * DEFAULT_COMMUNICATION_GRAPH_FILENAME;
	static const char * DEFAULT_OMNET_CONFIG_FILENAME;
	static const char * DEFAULT_COORDS_FILENAME;
	static const char * DEFAULT_REQUESTS_FILENAME;
	static const char * DEFAULT_SCHEDULE_FILENAME;

	static const int    DEFAULT_N_TIME_SLOTS;
};
