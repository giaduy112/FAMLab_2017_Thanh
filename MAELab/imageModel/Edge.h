/*
 Morphometry with Automatic Extraction of Landmarks (MAELab)
 Copyright (C) 2017  Le Van Linh (van-linh.le@u-bordeaux.fr)
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

#ifndef EDGE_H_
#define EDGE_H_

#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <string.h>
#include <fstream>
#include <time.h>
#include <istream>
#include <algorithm>

using namespace std;

#include "Point.h"
#include "Line.h"

bool checkPointInList(std::vector<Point>, Point);
class Edge
{

private:
    std::vector<Point> listOfPoints; // list of points in the edge
	std::vector<Point> listOfBreakPoints; // list of break points in edge. Break point is connection point between two lines on edge.
	void breakEdge(double);

public:
	struct comparex
	{
		bool operator()(Point p1, Point p2)
		{
			return p1.getX() < p2.getX();
		}
	} xComparation;
	struct comparey
	{
		bool operator()(Point p1, Point p2)
		{
			return p1.getY() < p2.getY();
		}
	} yComparation;
	Edge();
	Edge(const Edge &cpedge);
	virtual ~Edge();
	Edge(std::vector<Point>);

	std::vector<Point> getPoints();
	void setPoints(std::vector<Point>);
	std::vector<Point> segment(double);

	std::vector<Line> getLines(std::vector<Point>);

	void sortByX();
	void sortByY();

};
typedef Edge* ptr_Edge;
#endif /* EDGE_H_ */
