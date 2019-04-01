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
#include "Edge.h"

//=================================================== Constructor ===========================================

Edge::Edge() {
	//listOfLines = NULL;
	//listOfPoints = NULL;
	//listOfBreakPoints = NULL;

}
Edge::Edge(const Edge &cpedge) {
	listOfPoints = cpedge.listOfPoints;
	listOfBreakPoints = cpedge.listOfBreakPoints;
}
Edge::~Edge() {
	//listOfPoints.clear();
	//listOfBreakPoints.clear();
}

Edge::Edge(std::vector<Point> points) {
	listOfPoints = points;
}
//=================================================== Get and set methods ===========================================

std::vector<Point> Edge::getPoints() {
	return listOfPoints;
}

void Edge::setPoints(std::vector<Point> points) {
	listOfPoints = points;
}

//=================================================== Private methods ===========================================

/*
 *
 * Check a point is exist in list of Break Point or not.
 *
 */
bool checkPointInList(std::vector<Point> listPoints, Point point) {
	Point p;
	for (size_t i = 0; i < listPoints.size(); i++) {
		p = listPoints.at(i);
		if (point.getX() == p.getX() && point.getY() == p.getY())
			return true;
	}
	return false;
}

static std::vector<Point> vvp; // used to keep the break points after recursive time
void Edge::breakEdge(double minDistance) { // in old program, minDistance is constant with value is 3
	if (listOfPoints.size() <= 0)
		return;
	Point p0;
	Point pend;
	int size = listOfPoints.size();

	p0 = listOfPoints.at(0);
	pend = listOfPoints.at(size - 1);

	if (size > 2) {
		Line line(p0, pend);
		double distance = 0, maxDistance = 0;
		size_t imax = 0;
		Point pi;
		for (int i = 1; i < size - 1; i++) {
			pi = listOfPoints.at(i);
			distance = line.perpendicularDistance(pi);
			if (distance > maxDistance) {
				maxDistance = distance;
				imax = i;
			}
		}
		if (maxDistance > minDistance) { // continue break the edge
			std::vector<Point> part1(listOfPoints.begin(),
					listOfPoints.begin() + imax + 1);
			std::vector<Point> part2(listOfPoints.begin() + imax,
					listOfPoints.end());
			Edge edge1(part1);
			Edge edge2(part2);
			edge1.breakEdge(minDistance);
			edge2.breakEdge(minDistance);
		}
	}

	if (!checkPointInList(vvp, p0))
		vvp.push_back(p0);
	if (!checkPointInList(vvp, pend))
		vvp.push_back(pend);

}

//=================================================== Public methods ===========================================
std::vector<Point> Edge::segment(double minDistance) {
	listOfBreakPoints.clear();
	vvp.clear();
	breakEdge(minDistance);
	listOfBreakPoints = vvp;

	return listOfBreakPoints;
}
vector<Line> Edge::getLines(vector<Point> listPoints) {
	vector<Line> listLines;

	if (listPoints.size() > 0) {
		Point p0 = listPoints.at(0);
		Point p1;
		for (size_t i = 1; i < listPoints.size(); i++) {
			p1 = listPoints.at(i);
			Line l(p0, p1);
			listLines.push_back(l);
			p0 = p1;
		}

	}
	return listLines;
}
void Edge::sortByX() {
	std::sort(listOfPoints.begin(), listOfPoints.end(), xComparation);
}
void Edge::sortByY() {
	std::sort(listOfPoints.begin(), listOfPoints.end(), yComparation);
}

