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
#include <iostream>
using namespace std;
#include "Point.h"

/*
 * Constructor the Point
 */
Point::Point()
{
	x = 0;
	y = 0;
	color.R = color.G = color.B = 0;
}
Point::Point(const Point &cpPoint)
{
	x = cpPoint.x;
	y = cpPoint.y;
	color = cpPoint.color;
}
Point::~Point()
{
	// TODO Auto-generated destructor stub
}

RGB Point::getColor()
{
	return color;
}
void Point::setColor(RGB rgb)
{
	color.R = rgb.R;
	color.G = rgb.G;
	color.B = rgb.B;
}

void Point::toString()
{
	cout << "\n" << x << "\t" << y << endl;
}

void Point::reset()
{
	x = y = 0;
}
bool Point::operator<(const Point &cPoint)
{
	if (this->x < cPoint.x && this->y < cPoint.y)
		return true;
	return false;
}
bool Point::operator>(const Point &cPoint)
{
	if (this->x > cPoint.x && this->y > cPoint.y)
		return true;
	return false;
}
bool Point::operator==(const Point &cPoint)
{
	if (this->x == cPoint.x && this->y == cPoint.y)
		return true;
	return false;
}
bool Point::operator!=(int value)
{
	if (this->x != value && this->y != value)
		return true;
	return false;
}
Point Point::operator-(const Point cPoint)
{
	return Point(this->x - cPoint.x, this->y - cPoint.y);
}
Point Point::operator+(const Point cPoint)
{
	return Point(this->x + cPoint.x, this->y + cPoint.y);
}
