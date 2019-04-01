/*
 Morphometry with Automatic Extraction of Landmarks (MAELab)
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
#include <vector>
#include <stdio.h>
#include <string.h>
#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <dirent.h>
#include <algorithm>

using namespace std;

#include "../imageModel/Point.h"
#include "../imageModel/Matrix.h"

#include "TPSReader.h"
#include "JPEGReader.h"

#include "Reader.h"

//====================================================== JPEG File ==================================================

ptr_RGBMatrix readJPGToRGB(const char* filename,int &rows, int &cols)
{
	return decompressJPEG(filename,rows,cols);
}
void saveRGB(const char* filename, ptr_RGBMatrix rgbMatrix)
{
	RGB2JPEG(filename, rgbMatrix);
}
void saveGrayScale(const char* filename, ptr_IntMatrix grayMatrix)
{
	Gray2JPEG(filename, grayMatrix);
}
vector<string> readDirectory(const char* dirPath)
{
	vector<string> result;
	DIR *pDir;
	struct dirent *entry;
	string filePath;
	pDir = opendir(dirPath);
	if (pDir == NULL)
	{
		cout << "\n Error when reading the folder";
		result.clear();
		return result;
	}
    while ((entry = readdir(pDir)))
	{
		if (strcmp(entry->d_name, ".") != 0 && strcmp(entry->d_name, "..") != 0)
		{
			filePath = entry->d_name;
			result.push_back(filePath);
		}
	}
	closedir(pDir);
	std::sort(result.begin(),result.end());
	return result;
}
// ============================================================== TPS File =====================================================
vector<Point> readTPSFile(const char* filename)
{
	return readTPS(filename);
}

