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

#ifndef LINE_H_
#define LINE_H_

class Line
{

  private:
    Point begin;
    Point end;
    int dx; // slope of x
    int dy; // slope of y
    double length;
    std::vector<double> equation;

    bool isPoint();
    double lengthOfLine();
    std::vector<double> equationOfLine();

  public:
    Line();
    Line(const Line&);
    Line(Point, Point);
    virtual ~Line();
    Point getBegin();
    Point getEnd();
    double getLength();
    std::vector<double> getEquation();
    void setBegin(Point);
    void setEnd(Point);
    double perpendicularDistance(Point);
    double angleLines(Line);
    Point intersection(Line);
    bool checkBelongPoint(Point);
    vector<Point> interParallel(Line line1, Line line2, double distance1,
    	double distance2, int width, int height);
};
typedef Line* ptr_Line;

double distancePoints(Point p1, Point p2);
#endif /* LINE_H_ */
