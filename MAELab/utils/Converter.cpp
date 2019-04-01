/*
 *Morphometry with Automatic Extraction of Landmarks (MAELab)
 Copyright (C) 2016  Le Van Linh (van-linh.le@u-bordeaux.fr)
 Created on: Sep 15, 2016

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see http://www.gnu.org/licenses/.
 */
#include <cstdlib>
#include <ctime>
#include <string>
#include <cmath>
using namespace std;

#include "Converter.h"

// get a random number between min and max
int random(int min,int max)
{
	srand(time(NULL));
	return rand() % (max - min + 1) + min;
}

// get name from a full name
string getName(string fullPath,string split)
{
	int len = fullPath.length();
	int lIndex = fullPath.find_last_of(split);
	string temp = fullPath.substr(lIndex+1,len - lIndex-1);
	return temp.replace(3,1,"_");
}
int roundToDegree(double value)
{
    int deg = (int)value;
    value = abs(value - deg);
    int min = (int)(value * 60);
    value = value - (double)min / 60;
    int sec = (int)(value * 3600);
    value = value - (double)sec / 3600;
    if(sec >= 30)
    	min += 1;
    if(min >= 30)
    	deg += 1;
    return deg;
}
