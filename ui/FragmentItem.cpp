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

#include "FragmentItem.h"

FragmentItem::FragmentItem()
{

}

FragmentItem::FragmentItem(string name, int locationX, int locationY, Edge border, ptrRGBAMatrix objectRGBAMatrix, const QPixmap &pixmap, QMenu *contextMenu, QGraphicsItem *parent, QGraphicsScene *scene)
    : QGraphicsPixmapItem(pixmap, parent, scene)
{
    this->name = name;
    this->imageX = locationX;
    this->imageY = locationY;
    this->border = border;
    this->objectRGBAMatrix = objectRGBAMatrix;
    this->myContextMenu = contextMenu;
    setFlags(QGraphicsItem::ItemIsMovable | QGraphicsItem::ItemIsSelectable | QGraphicsItem::ItemSendsScenePositionChanges);
}

FragmentItem::~FragmentItem()
{
    delete myContextMenu;
//    delete connectedLines;
}

void FragmentItem::setName(string name)
{
    this->name = name;
}

string FragmentItem::getName()
{
    return this->name;
}

void FragmentItem::setImageX(int x)
{
    this->imageX = x;
}

int FragmentItem::getImageX()
{
    return this->imageX;
}

void FragmentItem::setImageY(int y)
{
    this->imageY = y;
}

int FragmentItem::getImageY()
{
    return this->imageY;
}

void FragmentItem::setBorder(Edge border)
{
    this->border = border;
}

Edge FragmentItem::getBorder()
{
    return this->border;
}

void FragmentItem::setObjectRGBAMatrix(ptrRGBAMatrix objectRGBAMatrix)
{
    this->objectRGBAMatrix = objectRGBAMatrix;
}

ptrRGBAMatrix FragmentItem::getObjectRGBAMatrix()
{
    return this->objectRGBAMatrix;
}

void FragmentItem::setListConnectedPoints(vector<Point> listConnectedPoints)
{
    this->listConnectedPoints = listConnectedPoints;
}

vector<Point> FragmentItem::getListConnectedPoints()
{
    return this->listConnectedPoints;
}

void FragmentItem::setconnectedLines(QVector<QGraphicsLineItem *> connectedLines, bool isFragment1)
{
    this->connectedLines = connectedLines;
    this->isFragment1 = isFragment1;
}

QVector<QGraphicsLineItem *> FragmentItem::getConnectedLines()
{
    return this->connectedLines;
}

void FragmentItem::updatePosition(QPointF newPosition)
{
    vector<Point> vectorPoints = this->getListConnectedPoints();
    for(size_t i=0;i<vectorPoints.size();i++)
    {
        // Converts the position (top-left) to the position of point
        Point pointI = vectorPoints.at(i);
        int xOffset = boundingRect().x() + pointI.getX();
        int yOffset = boundingRect().y() + pointI.getY();

        QPointF newPoint = QPointF(newPosition.x() + xOffset, newPosition.y() + yOffset);

        // Move the required point of the line
        QPointF p1 = isFragment1 ? newPoint : connectedLines.at(i)->line().p1();
        QPointF p2 = isFragment1 ? connectedLines.at(i)->line().p2() : newPoint;

        connectedLines.at(i)->setLine(QLineF(p1, p2));
    }
}

void FragmentItem::contextMenuEvent(QGraphicsSceneContextMenuEvent *event)
{
    scene()->clearSelection();
    setSelected(true);
    myContextMenu->exec(event->screenPos());
}

QVariant FragmentItem::itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant &value)
{
    if(change == ItemPositionHasChanged)
    {
        // value is the new position.
        QPointF newPos = value.toPointF();

        updatePosition(newPos);
    }
    return QGraphicsItem::itemChange(change,value);
}


