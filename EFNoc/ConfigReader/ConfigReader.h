#include <string>
#include <map>


class ConfigReader
{  
public:
	ConfigReader(std::string fileName);
   int			findInt	  (std::string key,int defaultValue);
   double		findDouble(std::string key,double defaultValue);
   std::string	findString(std::string key,std::string defaultValue);

   bool         hasFoundFile() const;

private:
	std::map<std::string,std::string>	mStringMap;
	std::map<std::string,int>			mIntMap;
	std::map<std::string,double>		mDoubleMap;

	bool mFoundFile;

protected:

};