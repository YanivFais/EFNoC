/*******************************************************************************
 * Copyright 2012 Rasmus Bo Soerensen <rasmus@rbscloud.dk>
 * Copyright 2013 Technical University of Denmark, DTU Compute.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted (subject to the limitations in the
 * disclaimer below) provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE
 * GRANTED BY THIS LICENSE.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT
 * HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * The views and conclusions contained in the software and documentation
 * are those of the authors and should not be interpreted as representing
 * official policies, either expressed or implied, of the copyright holder.
 ******************************************************************************/

#include <string>
#include <streambuf>
#include <fstream>
#include <iostream>
#include <vector>
#include <utility>
#include <limits>
#include <cmath>
#include "pugixml.hpp"
#include "options.h"

//#define debugging

#ifdef debugging
#define debugf(x)	{std::cout << __FILE__ << ":" << __LINE__ << ":\t " #x " = '" << (x) << "'" << std::endl;}
#else
#define debugf(x)	{}
#endif

using namespace std;

typedef pair<int,int> coord;

/*
 *
 */
int main(int argc, char** argv) {

	global::opts = new options(argc, argv);
	cout << global::opts->input_file << endl;

	//std::ifstream in("../traffic_data/mesh/mesh_3x3/Sparse_mesh_3x3.stp");
	std::ifstream in(global::opts->input_file.c_str());

	if(in.fail()){
		cout << "File not found!1" << endl;
		return 0;
	}

    std::cin.rdbuf(in.rdbuf()); //redirect std::cin

	int trace = 0;
	int topo = 0;
	int pbs = 0;
	int rows = 0;
	int cols = 0;
	int tasks = 0;
	int edges = 0;
	int trash_count = 0;

	for(int i = 0; i < 14; i++){
		cin.ignore(200,'\n');
	}
	cin >> trace;
	debugf(trace);
	cin >> topo >> pbs >> rows >> cols;
	debugf(topo);
	debugf(pbs);
	debugf(rows);
	debugf(cols);
	cin >> tasks >> edges;
	debugf(tasks);
	debugf(edges);
	cin >> trash_count;
	for(int i = 0; i <= trash_count; i++){
		cin.ignore(20,'\t');
	}
	cin >> trash_count;
	for(int i = 0; i <= trash_count; i++){
		cin.ignore(20,'\t');
	}

	pugi::xml_document doc;

	pugi::xml_node platform = doc.append_child("platform");
	platform.append_attribute("width").set_value(rows);
	platform.append_attribute("height").set_value(cols);

	pugi::xml_node topology = platform.append_child("topology");
	if (topo == 1) { // b = "bitorus"
		topology.append_attribute("type").set_value("bitorus");
	}
	else if (topo == 0) { // m = "mesh"
		topology.append_attribute("type").set_value("mesh");
	}
	else {
		cout << "Wrong topology found." << std::endl;
		return 0;
	}


	vector<pair<coord,int> > task_list;
	for(int i = 0; i < tasks; i++){
		// Parse the tasks of the graph
		int id;
		int avg ;
		int x = 0;
		int y = 0;
		char trash;
		cin >> id;
		cin >> trash >> y >> trash >> x >> trash;
		debugf(id);
		//cout << "Coordinate: (" << x << "," << y << ")" << std::endl;
		cin.ignore(20,'\t');
		cin.ignore(20,'\t');
		cin >> avg;
		debugf(avg);
		cin.ignore(20,'\n');

		task_list.push_back(make_pair(make_pair(x,y),avg));
	}


	// Channels
	pugi::xml_node communication = doc.append_child("communication");
	communication.append_attribute("type").set_value("custom");


	vector<pair<coord,vector<pair<coord,double> > > > nodes(pbs) ;
	for(size_t i = 0; i < nodes.size(); i++){
		nodes[i].first = make_pair(-1,-1);
		nodes[i].second.resize(pbs,make_pair(make_pair(-1,-1),-1));
	}


	for(int i = 0; i < edges; i++){
		// Parse the edges of the graph
		int id, src, dest;
		double mean, devi, rate;
		cin >> id >> src >> dest;
		cin.ignore(20,'\t');
		cin.ignore(20,'\t');
		cin.ignore(20,'\t');
		cin >> mean >> devi >> rate;
		debugf(id);
		//debugf(src);
		//debugf(dest);
		//debugf(mean);
		//debugf(devi);
		debugf(rate);

		int src_x, src_y, dest_x, dest_y;
		int src_id, dest_id;
		src_x = task_list.at(src).first.first; // x
		src_y = task_list.at(src).first.second; // y
		src_id = src_x + src_y*rows;
		dest_x = task_list.at(dest).first.first; // x
		dest_y = task_list.at(dest).first.second; // y
		dest_id = dest_x + dest_y*rows;

		if (src_x == dest_x && src_y == dest_y)
			continue;

		nodes[src_id].first = make_pair(src_x,src_y);
		nodes[src_id].second[dest_id].first = make_pair(dest_x,dest_y);
		if(nodes[src_id].second[dest_id].second == -1){
			nodes[src_id].second[dest_id].second = 0;
		}

		if(global::opts->mean){
			nodes[src_id].second[dest_id].second += mean;
		} else {
			if(nodes[src_id].second[dest_id].second <= rate){
				nodes[src_id].second[dest_id].second = rate;
			}
		}
	}

	double min_bw = numeric_limits<double>::max();
	double max_bw = 0.0;
	for(int i = 0; i < pbs; i++){
		for(int j = 0; j < pbs; j++){
			if(nodes[i].second[j].second == -1){
				continue;
			}
			if(min_bw > nodes[i].second[j].second){
				min_bw = nodes[i].second[j].second;
			}
			if(max_bw < nodes[i].second[j].second){
				max_bw = nodes[i].second[j].second;
			}
		}
	}
	cout << "Min_bw: " << min_bw << endl;
	cout << "Max_bw: " << max_bw << endl;

	for(int i = 0; i < pbs; i++){
		for(int j = 0; j < pbs; j++){
			if(nodes[i].second[j].second != -1){
				char* from_node = new char[30];
				char* to_node = new char[30];
				int bw = ceil(nodes[i].second[j].second/(min_bw*global::opts->sigma));
				pugi::xml_node channel = communication.append_child("channel");
				//sprintf(from_node,"(%i,%i)",src_x,src_y);
				sprintf(from_node,"(%i,%i)",nodes[i].first.first,nodes[i].first.second);
				channel.append_attribute("from").set_value(from_node);
				//sprintf(to_node,"(%i,%i)",dest_x,dest_y);
				sprintf(to_node,"(%i,%i)",nodes[i].second[j].first.first,nodes[i].second[j].first.second);
				channel.append_attribute("to").set_value(to_node);
				channel.append_attribute("bandwidth").set_value(bw);
				channel.append_attribute("repsonse").set_value("false");
			}
		}
	}


	//char default_file_name [500] = "testout.xml";
	//sprintf(default_file_name,"%s%s%ix%i_cf%.2f_(%i_%i).xml");
	//doc.save_file(default_file_name);
	//doc.save_file(argv[2]);
	cout << global::opts->output_file.c_str() << endl;
	doc.save_file(global::opts->output_file.c_str());

	return 0;
}



