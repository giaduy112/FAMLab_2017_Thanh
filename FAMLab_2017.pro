#-------------------------------------------------
#
# Project created by QtCreator 2017-12-17T21:52:40
#
#-------------------------------------------------
QT += widgets
QT += printsupport

TARGET = FAMLab
TEMPLATE = app

HEADERS += \
        ./MAELab/imageModel/*.h \
        ./MAELab/io/*.h \
        ./MAELab/io/LibJpeg/*.h \
        ./MAELab/segmentation/*.h \
        ./MAELab/utils/*.h \
        ./matching/*.h \
        ./segmentation/*.h \
        ./ui/*.h

SOURCES += \
        ./MAELab/imageModel/*.cpp \
        ./MAELab/io/*.cpp \
        ./MAELab/io/LibJpeg/*.c \
        ./MAELab/segmentation/*.cpp \
        ./MAELab/utils/*.cpp \
        ./matching/*.cpp \
        ./segmentation/*.cpp \
        ./ui/*.cpp \
        ./main.cpp

RESOURCES += \
    resources.qrc

DISTFILES += \
    resources/ico/1downarrow.png \
    resources/ico/1uparrow.png \
    resources/ico/FAMLab.png \
    resources/ico/Information.png \
    resources/ico/bringtofront.png \
    resources/ico/copy.png \
    resources/ico/cut.png \
    resources/ico/delete.png \
    resources/ico/ip.ico \
    resources/ico/matching.png \
    resources/ico/new.png \
    resources/ico/open.png \
    resources/ico/paste.png \
    resources/ico/rotateleft.png \
    resources/ico/rotateright.png \
    resources/ico/save.png \
    resources/ico/sendtoback.png
