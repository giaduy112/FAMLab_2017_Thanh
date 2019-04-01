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

#ifndef CANNY_H_
#define CANNY_H_
double getBorderValue(ptr_IntMatrix inputMatrix, int x, int y);
ptr_IntMatrix cannyProcess(ptr_IntMatrix binaryImage, int low, int high, vector<Point> &contourPoints);
//ptr_IntMatrix cannyProcess2(ptr_IntMatrix binaryImage, int lowThreshold,
//	int highThreshold, ptr_IntMatrix &gradDirection,vector<Point> &edgePoints);
ptr_IntMatrix postProcess(ptr_IntMatrix binaryMatrix, int maxValue);
#endif /* CANNY2_H_ */
