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


#ifndef IMAGELABEL_H
#define IMAGELABEL_H

#include <QLabel>
#include <QMouseEvent>


class ImageLabel : public QLabel
{
    Q_OBJECT
public:
    ImageLabel();

    void mouseDoubleClickEvent(QMouseEvent *event);

signals:
    void sendMouseLocation(int x, int y);
};

#endif // IMAGELABEL_H
