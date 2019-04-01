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

#include "../imageModel/Point.h"
#include "../imageModel/Matrix.h"

#include "ImageConvert.h"

QImage ptrIntToQImage(ptr_IntMatrix inputMatrix)
{
	static QVector<QRgb> sColorTable;

	// only create our color table once
	if (sColorTable.isEmpty())
	{
		for (int i = 0; i < 256; i++)
			sColorTable.push_back(qRgb(i, i, i));
	}
	int width = inputMatrix->getCols();
	int height = inputMatrix->getRows();

	QImage image(width, height, QImage::Format_Indexed8);
	image.setColorTable(sColorTable);
	for (int r = 0; r < height; r++)
	{
		for (int c = 0; c < width; c++)
		{
			int value = inputMatrix->getAtPosition(r, c);
			image.setPixel(c, r, value);
		}
	}

	return image;
}

QImage ptrRGBToQImage(ptr_RGBMatrix inputMatrix)
{
	int width = inputMatrix->getCols();
	int height = inputMatrix->getRows();

	QImage image(width, height, QImage::Format_RGB888);
	for (int r = 0; r < height; r++)
	{
		for (int c = 0; c < width; c++)
		{
			RGB value = inputMatrix->getAtPosition(r, c);
			image.setPixel(c, r, qRgb(value.R,value.G,value.B));
		}
	}
	return image;
}

QImage ptrRGBAToQImage(ptrRGBAMatrix inputMatrix)
{
    int width = inputMatrix->getCols();
    int height = inputMatrix->getRows();

    QImage image(width, height, QImage::Format_ARGB32);
    for (int r = 0; r < height; r++)
    {
        for (int c = 0; c < width; c++)
        {
            RGBA value = inputMatrix->getAtPosition(r, c);
            image.setPixel(c, r, qRgba(value.R,value.G,value.B,value.A));
        }
    }
    return image;
}
