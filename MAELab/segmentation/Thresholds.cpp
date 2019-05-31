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
#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <vector>
#include <string.h>
#include <fstream>
#include <time.h>
#include <float.h>

using namespace std;
#include "../imageModel/Point.h"
#include "../imageModel/Line.h"
#include "../imageModel/Edge.h"
#include "../imageModel/Matrix.h"

#include "Filters.h"

#include "Thresholds.h"

ptr_IntMatrix binaryThreshold(ptr_IntMatrix inputMatrix, int tValue,
	int maxValue)
{
	int rows = inputMatrix->getRows();
	int cols = inputMatrix->getCols();

	/*Matrix<double> kernel = getGaussianKernel(9,1);
	 *inputMatrix = gaussianBlur(*inputMatrix,kernel);*/

	ptr_IntMatrix result = new Matrix<int>(rows, cols, maxValue);
	for (int r = 0; r < rows; r++)
	{
		for (int c = 0; c < cols; c++)
		{
			if (inputMatrix->getAtPosition(r, c) > tValue)
				result->setAtPosition(r, c, maxValue);
			else
				result->setAtPosition(r, c, 0);
		}
	}

	return result;
}

int meanHistogram(Matrix<double> channel, double totalPixels, int &maxPosition)
{
	double total = 0;
	maxPosition = -1;
	double maxValue = -1;
	for (int c = 0; c < channel.getCols(); c++)
	{
		double cValue = channel.getAtPosition(0, c);
		total += (c * cValue);
		if (cValue > maxValue)
		{
			maxValue = cValue;
			maxPosition = c;
		}
	}
	return total / totalPixels;
}

ptr_RGBMatrix colorThreshold(ptr_RGBMatrix rgbImage,
	ptr_RGBMatrix colorHistogram)
{
	//ptr_RGBMatrix rgbImage = inputImage.getRGBMatrix();
	int rows = rgbImage->getRows();
	int cols = rgbImage->getCols();
	double totalPixels = rows * cols;

	//ptr_RGBMatrix colorHistogram = inputImage.getRGBHistogram(); // matrix with 1 row
	Matrix<double> redHistogram(1, colorHistogram->getCols(), 0);
	Matrix<double> greenHistogram(1, colorHistogram->getCols(), 0);
	Matrix<double> blueHistogram(1, colorHistogram->getCols(), 0);
	for (int c = 0; c < colorHistogram->getCols(); c++)
	{
		RGB color = colorHistogram->getAtPosition(0, c);
		redHistogram.setAtPosition(0, c, color.R);
		greenHistogram.setAtPosition(0, c, color.G);
		blueHistogram.setAtPosition(0, c, color.B);
	}
	int maxRed = -1, maxGreen = -1, maxBlue = -1;
	int meanRed = meanHistogram(redHistogram, totalPixels, maxRed);
	int meanGreen = meanHistogram(greenHistogram, totalPixels, maxGreen);
	int meanBlue = meanHistogram(blueHistogram, totalPixels, maxBlue);
	cout << "\nMean Red - Max Red: " << meanRed << "\t" << maxRed;
	cout << "\nMean Green - Max Green: " << meanGreen << "\t" << maxGreen;
	cout << "\nMean Blue - Max Blue: " << meanBlue << "\t" << maxBlue;

    size_t tRed = 0, tBlue = 0;
    size_t tGreen = meanGreen;
	tRed = maxRed - (maxRed * 0.2);
	tBlue = maxBlue - (maxBlue * 0.2);
	tGreen = maxGreen - (maxGreen * 0.2);
	cout << "\nThreshold: " << tRed << "\t" << tGreen << "\t" << tBlue << endl;
	RGB color;
	color.R = color.G = color.B = 0;
	ptr_RGBMatrix thresh = new Matrix<RGB>(rows, cols, color);
	for (int r = 0; r < rows; r++)
	{
		for (int c = 0; c < cols; c++)
		{
			color = rgbImage->getAtPosition(r, c);
			if (color.R >= tRed)
				color.R = 0;
			if (color.G >= tGreen)
				color.G = 0;
			if (color.B >= tBlue)
				color.B = 0;
			thresh->setAtPosition(r, c, color);
		}
	}
	ptr_RGBMatrix result(rgbImage);
	RGB bck;
	bck.R = bck.G = bck.B = 0;
	for (int r = 0; r < rows; r++)
	{
		for (int c = 0; c < cols; c++)
		{
			color = thresh->getAtPosition(r, c);
			if (color == 0)
				result->setAtPosition(r, c, bck);
		}
	}
	return result;
}
