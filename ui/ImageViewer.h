/*
 Fragments Automatic Matching Laboratory (FAMLab)
 Copyright (C) 2017  Pham Xuan Thanh (xuan-thanh.pham@etu.u-bordeaux.fr)
 Version: 1.1
 Created on: December, 2017

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


#ifndef IMAGEVIEWER_H_
#define IMAGEVIEWER_H_

#include <iostream>
#include <fstream>
#include <vector>
#include <math.h>
#include <cmath>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <float.h>
using namespace std;

#include "../MAELab/imageModel/Point.h"
#include "../MAELab/imageModel/Line.h"
#include "../MAELab/imageModel/Edge.h"
#include "../MAELab/imageModel/Matrix.h"
#include "../MAELab/imageModel/Image.h"
#include "../MAELab/io/Reader.h"
#include "../MAELab/segmentation/Thresholds.h"
#include "../MAELab/segmentation/Canny.h"
#include "../MAELab/segmentation/Suzuki.h"
#include "../MAELab/segmentation/Filters.h"
#include "../segmentation/RegionGrowing.h"
#include "ImageLabel.h"

#include <QtWidgets/qlabel.h>
#include <QtWidgets/qscrollarea.h>
#include <QtWidgets/QMainWindow>
#include <QPrinter>
#include <QtWidgets/QApplication>
#include <QtWidgets/QScrollBar>
#include <QtWidgets/QFileDialog>
#include <QtWidgets/QMessageBox>
#include <QPrintDialog>
#include <QtWidgets/QAction>
#include <QtWidgets/QMenuBar>
#include <QPainter>
#include <QCloseEvent>
#include <QtCore/QSettings>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QMessageBox>
#include <QtCore/QDebug>
#include <QIcon>
#include <QtWidgets/qwidget.h>

class Image;

class ImageViewer: public QMainWindow
{
Q_OBJECT
public:
	ImageViewer();
	~ImageViewer();

	QString fileName;
	QImage qImage;
        Image *matImage;

	void loadImage(QString fn);
	void loadImage(Image *_matImage, QImage _qImage, QString tt);

signals:
    void sendObjectRGBA(string imageName, int locationX, int locationY, ptrRGBAMatrix objectRGBAMatrix, Edge border);

private slots:
    void open();
    void extractObject(int x, int y);

private:

    ImageLabel *imageLabel;
    QScrollArea *scrollArea;

	// menu
        QMenu *fileMenu;

	// toolbar
        QToolBar *fileToolBar;

	//menu action
	QAction *openAct;

	// private methods

	void createMenus();
	void createToolBars();
	void createStatusBar();
	void createFileMenu();


};

#endif /* IMAGEVIEWER_H_ */
