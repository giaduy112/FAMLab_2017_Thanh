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

#ifndef FILTERS_H_
#define FILTERS_H_
Matrix<double> getGaussianKernel(int ksize, double sigma);
Matrix<int> gaussianBlur(Matrix<int> inputMatrix, Matrix<double> kernel);
Matrix<int> RobertOperation(ptr_IntMatrix grayMatrix);
Matrix<int> SobelOperation(ptr_IntMatrix grayMatrix);
Matrix<int> postSobel(Matrix<int> sobelResult);
ptr_IntMatrix erode(ptr_IntMatrix binMatrix, int kernelSize);
ptr_IntMatrix dilate(ptr_IntMatrix binMatrix, int kernelSize);
ptr_IntMatrix openBinary(ptr_IntMatrix binMatrix, int kernelSize);
ptr_IntMatrix closeBinary(ptr_IntMatrix binMatrix, int kernelSize);
int thresholdOtsu(Matrix<int> sobelResult);
#endif /* FILTERS_H_ */
