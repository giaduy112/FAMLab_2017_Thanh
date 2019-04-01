/*
 Fragments Automatic Matching Laboratory (FAMLab)
 Copyright (C) 2016  Pham Xuan Thanh (xuan-thanh.pham@etu.u-bordeaux.fr)
 Version: 1.1
 Created on: December, 2017

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


#ifndef REGIONGROWING_H
#define REGIONGROWING_H
#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <vector>
#include <string.h>
#include <fstream>
#include <time.h>
#include <float.h>

using namespace std;
#include "../MAELab/imageModel/Point.h"
#include "../MAELab/imageModel/Line.h"
#include "../MAELab/imageModel/Edge.h"
#include "../MAELab/imageModel/Matrix.h"

void detectRegion(ptr_IntMatrix mask, float thresholdValue, Point startingPoint, int &minX, int &maxX, int &minY, int &maxY);
vector<Point> growRegion(ptr_IntMatrix mask, float thresholdValue, Point checkingPoint, int &minX, int &maxX, int &minY, int &maxY);



#endif // REGIONGROWING_H
