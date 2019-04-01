/*
 Fragments Automatic Matching Laboratory (FAMLab)
 Copyright (C) 2016  Pham Xuan Thanh (xuan-thanh.pham@etu.u-bordeaux.fr)
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

#ifndef FRAGMENTITEM_H
#define FRAGMENTITEM_H
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
#include <QtCore>
#include <QGraphicsScene>
#include <QMenu>
#include <QGraphicsPixmapItem>
#include <QGraphicsSceneContextMenuEvent>

class FragmentItem : public QObject, public QGraphicsPixmapItem
{
    Q_OBJECT

public:
    FragmentItem();
    FragmentItem(string name, int locationX, int locationY, Edge border,
                 ptrRGBAMatrix objectRGBAMatrix, const QPixmap &pixmap,
                 QMenu *contextMenu, QGraphicsItem *parent = 0, QGraphicsScene *scene = 0);
    ~FragmentItem();

    void setName(string name);
    string getName();
    void setImageX(int x);
    int getImageX();
    void setImageY(int y);
    int getImageY();
    void setBorder(Edge border);
    Edge getBorder();
    void setObjectRGBAMatrix(ptrRGBAMatrix objectRGBAMatrix);
    ptrRGBAMatrix getObjectRGBAMatrix();

    void setListConnectedPoints(vector<Point> listConnectedPoints);
    vector<Point> getListConnectedPoints();
    void setconnectedLines(QVector<QGraphicsLineItem*> connectedLines, bool isFragment1);
    QVector<QGraphicsLineItem*> getConnectedLines();

    void updatePosition(QPointF newPosition);

protected:
    void contextMenuEvent(QGraphicsSceneContextMenuEvent *event);
    QVariant itemChange(GraphicsItemChange change, const QVariant &value);

private:
    // information of the image that fragment come from
    string name;
    int imageX;
    int imageY;

    Edge border;
    ptrRGBAMatrix objectRGBAMatrix;
    QMenu *myContextMenu;

    // attributes for drawing connected lines between Fragments
    vector<Point> listConnectedPoints;
    QVector<QGraphicsLineItem*> connectedLines;
    bool isFragment1;
    //----------------------------------------

};

#endif // FRAGMENTITEM_H
