#pragma once

class GenerationParams
{
public:
	GenerationParams(const char * configFileName);
	~GenerationParams();

	int TOPOLOGY;
	int N;
	int K;
	int M;
	int R;
	int LEVELS;
	int MCSL_REQ_PER_EDGE;
	double RATIO_CLIENTS;
	double RATIO_PAYLOAD;
	int    TIME_PERIOD;
	int FLIT_SIZE;
	double PAYLOAD;
	int L; // delay of execution start compared to optimal
	double TASK_MSG_START; // ratio when to start sending messages, 0.5 means after half execution
	double ALPHA; //ratio of delay depending on message size compared to optimal

	bool   mIsValid;

	char * COMMUNICATION_GRAPH_FILENAME;
	char * REQUESTS_FILENAME;
	char * OMNET_FILENAME;
	char * MCSL_FILENAME;
	char * OMNET_PACKAGE_NAME;

private:
	static const int DEFAULT_TIME_PERIOD;
	static const int DEFAULT_TIME_RESOLUTION;
// number of clients
	static const int DEFAULT_N_CLIENTS;
// number of requests from each type
	static const int DEFAULT_N_NEAR_REQUEST;
	static const int DEFAULT_N_FAR_REQUEST;
	static const int DEFAULT_FAR_THRESHOLD;
// definition of when a request is considered far
// in kilo-byte
	static const double DEFAULT_PAYLOAD;

// names used for output
	static const char * DEFAULT_COMMUNICATION_GRAPH_FILENAME;
	static const char * DEFAULT_COORDS_FILENAME;
	static const char * DEFAULT_REQUESTS_FILENAME;
	static const char * DEFAULT_OMNET_FILENAME;
	static const char * DEFAULT_MCSL_FILENAME;
};
