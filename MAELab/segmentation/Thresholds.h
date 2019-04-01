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

#ifndef THRESHOLDS_H_
#define THRESHOLDS_H_

ptr_IntMatrix binaryThreshold(ptr_IntMatrix inputMatrix, int tValue, int maxValue);
//ptr_IntMatrix postProcess(ptr_IntMatrix binaryMatrix, int maxValue);
ptr_RGBMatrix colorThreshold(ptr_RGBMatrix rgbImage, ptr_RGBMatrix colorHistogram);
#endif /* THRESHOLDS_H_ */
