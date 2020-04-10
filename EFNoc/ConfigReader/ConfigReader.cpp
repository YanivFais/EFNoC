#include "ConfigReader.h"
#include <iostream>
#include <fstream>

using namespace std;

void TrimSpaces( string& str)  
{  
// Trim Both leading and trailing spaces  
	size_t startpos = str.find_first_not_of(" \t"); // Find the first character position after excluding leading blank spaces  
	size_t endpos = str.find_last_not_of(" \t"); // Find the first character position from reverse af  
	// if all spaces or empty return an empty string  
	if(( string::npos == startpos ) || ( string::npos == endpos))  
	{  
		str.clear();  
	}  
	else
	{
		str = str.substr( startpos, endpos-startpos+1 );  
	}
}  


ConfigReader::ConfigReader(string fileName)
{
	mFoundFile = false;
	string line;
	ifstream myFile;

	myFile.open(fileName.c_str());
	if (! myFile.is_open()) 
	{
		cout << "Error opening file: " << fileName.c_str() << endl;
		return;
	}
	mFoundFile = true;
	while (! myFile.eof() )
	{
		getline(myFile,line);
		TrimSpaces(line);
		if (line.empty())
			continue;
		if(line[0]=='/')
			continue;
		char *dup = _strdup(line.c_str());
		char *tok = strtok(dup,",");
		string var(tok);
		TrimSpaces(var);
		tok = strtok(NULL,",");
		string type(tok);
		TrimSpaces(type);
		tok = strtok(NULL,",");
		string val(tok);
		TrimSpaces(val);
		if (!strcmp(type.c_str(),"int"))
		{
			//cout <<"int"<< endl;
			mIntMap.insert(pair<string,int>(var.c_str(),atoi(val.c_str())));
		}
		else
		if (!strcmp(type.c_str(),"double"))
			mDoubleMap.insert(pair<string,double> (var.c_str(),atof(val.c_str())));
		else
			if (!strcmp(type.c_str(),"string"))
				mStringMap.insert(pair<string,string> (var.c_str(),val.c_str()));
		else
		{
			cout << "error" << endl;
		}
		free(dup);
	}
	myFile.close();
}

bool ConfigReader::hasFoundFile() const
{
	return mFoundFile;
}

int ConfigReader::findInt(string key,int defaultValue)
{
	map<string,int>::iterator found = mIntMap.find(key.c_str());
	if (found != mIntMap.end())
		return found->second;
	else
		return defaultValue; 
}

double ConfigReader::findDouble(string key,double defaultValue)
{
	map<string,double>::iterator found = mDoubleMap.find(key.c_str());
	if (found != mDoubleMap.end())
		return found->second;
	else
		return defaultValue;
}
string ConfigReader::findString(string key,string defaultValue)
   {
	map<string,string>::iterator found = mStringMap.find(key.c_str());
	if (found != mStringMap.end())
		return found->second;
	else
		return defaultValue;
}
