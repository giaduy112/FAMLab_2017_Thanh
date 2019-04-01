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


#include "ui/WindowFragments.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    WindowFragments window;
    window.setGeometry(100, 100, 800, 500);
    window.show();

    return a.exec();
}
