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

#ifndef IMAGE_H_
#define IMAGE_H_
#include "Edge.h"
#include "Matrix.h"
class Image
{
private:
	std::string fileName;
	vector<Line> listOfLines;
	vector<Point> manualLandmarks;
	vector<Point> autoLandmarks;
	ptr_IntMatrix grayMatrix;
	ptr_RGBMatrix imgMatrix;
	ptr_IntMatrix grayHistogram;
	ptr_RGBMatrix rgbHistogram;
	float medianHistogram;
	float meanHistogram;
	float thresholdValue;

	void calcGrayHistogram();
	void calThresholdValue();

public:
	Image();
	Image(const Image &cpimage);
	~Image();
	Image(std::string);
	void setFileName(std::string);
	std::string getFileName();
	string getName();
	void setMLandmarks(string);
	void setRGBMatrix(ptr_RGBMatrix);
	void setGrayMatrix(ptr_IntMatrix);
	void setAutoLandmarks(vector<Point>);
	ptr_IntMatrix getGrayMatrix();
	ptr_RGBMatrix getRGBMatrix();
	ptr_IntMatrix getGrayHistogram();
	ptr_RGBMatrix getRGBHistogram();
	float getMedianHistogram();
	float getMeanHistogram();
	float getThresholdValue();
	vector<Line> getListOfLines();
	vector<Point> getListOfManualLandmarks();
	vector<Point> getListOfAutoLandmarks();

	vector<Edge> cannyAlgorithm(vector<Point> &cPoints);
	vector<Line> getApproximateLines(double minDistance);
	vector<Point> readManualLandmarks(string fileName);
	vector<Matrix<int> > splitChannels();
	/*ptr_DoubleMatrix getRotationMatrix2D(Point center, double angle,
		double scale);*/
	void rotate(Point center, double angle, double scale);
};
typedef Image* ptr_Image;
#endif /* IMAGE_H_ */
