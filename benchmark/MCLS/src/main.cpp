/*********************************************************************************
 *
 * File name:		main.cpp
 * Class name:		N/A
 * Version:			1.5
 *
 * Software:		MCSL Traffic Loader
 * Author:			Weichen Liu (HKUST), Jiang Xu (HKUST), Xiaowen Wu (HKUST), Zhe Wang (HKUST), 
 *					Yaoyao Ye (HKUST), Xuan Wang (HKUST), Wei Zhang (NTU), 
 *					Bin Li (Intel), Ravi Lyer (Intel), Ramesh Illikkal (Intel)
 * Website:			http://www.ece.ust.hk/~eexu
 *
 * The copyright information of this program can be found in the file COPYRIGHT.
 *
 *********************************************************************************/

#include "stat_noc_traffic.h"
#include "rec_noc_traffic.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

using namespace std;
const char software[] = "MCSL Traffic Loader";
const char version[] = " v1.5";
const char param[] = "NO_PRINT_OUT";
int num_line_header = 14;

bool TO_PRINT_STAT;
bool TO_PRINT_REC;

int main(int argc, char **argv)
{	
	cout << endl << "******************************************" << endl;
	cout << "*        " << software << version << "        *" << endl;
	cout << "******************************************" << endl;
	TO_PRINT_STAT = true;
	TO_PRINT_REC = true;

	string file;
	if (argc == 1) {
		cout << endl << "Error: please specify the traffic file" << endl;
		cout << "Usage: ./bin/mcsl_traffic_loader <traffic_file_name>" << endl << endl;
		return -1;
	}
	else if (argc == 2) {
		assert (argc == 2);
		file = argv[1];
	}
	else {
		if ( !strcmp(argv[2], param) ) {
			TO_PRINT_STAT = false;
			TO_PRINT_REC = false;
			file = argv[1];
		}
		else {
			cout << endl << "Error: too many parameters" << endl;
			cout << "Usage: ./bin/mcsl_traffic_loader <traffic_file_name>" << endl << endl;
			return -1;
		}
	}

	FILE *fp = fopen(file.c_str() ,"r");
	if (fp == NULL) {
		cout << endl << "Error: cannot open the traffic file \"" << file << "\"" << endl << endl;
		return -1;
	}
	
	// ignore the copyright information
	int num_line = 0;
	while (num_line < num_line_header) {
		int c = fgetc(fp);
		if (c == '\n')
			num_line ++;
	}
	int trace_type;
	fscanf(fp, "%d", &trace_type);
	fclose(fp);

	if (trace_type == 0) {
		StatNOCTraffic stat_noc;
		stat_noc.load_traffic(file);
		cout << endl << "Traffic loaded from \"" << file << "\"" << endl << endl;
		stat_noc.print_traffic();
	}
	else if (trace_type == 1) {
		RecNOCTraffic rec_noc;
		rec_noc.load_traffic(file);
		cout << endl << "Traffic loaded from \"" << file << "\"" << endl << endl;
		rec_noc.print_traffic();
	}
	else
		assert(0);

	return 0;
}
