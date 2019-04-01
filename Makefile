#############################################################################
# Makefile for building: FAMLab
# Generated by qmake (2.01a) (Qt 4.8.7) on: Wed Mar 7 14:23:57 2018
# Project:  FAMLab_2017.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -o Makefile FAMLab_2017.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = MAELab/imageModel/Edge.cpp \
		MAELab/imageModel/Image.cpp \
		MAELab/imageModel/Line.cpp \
		MAELab/imageModel/Matrix.cpp \
		MAELab/imageModel/Point.cpp \
		MAELab/io/JPEGReader.cpp \
		MAELab/io/PNGReader.cpp \
		MAELab/io/Reader.cpp \
		MAELab/io/TPSReader.cpp \
		MAELab/io/LibJpeg/jaricom.c \
		MAELab/io/LibJpeg/jcapimin.c \
		MAELab/io/LibJpeg/jcapistd.c \
		MAELab/io/LibJpeg/jcarith.c \
		MAELab/io/LibJpeg/jccoefct.c \
		MAELab/io/LibJpeg/jccolor.c \
		MAELab/io/LibJpeg/jcdctmgr.c \
		MAELab/io/LibJpeg/jchuff.c \
		MAELab/io/LibJpeg/jcinit.c \
		MAELab/io/LibJpeg/jcmainct.c \
		MAELab/io/LibJpeg/jcmarker.c \
		MAELab/io/LibJpeg/jcmaster.c \
		MAELab/io/LibJpeg/jcomapi.c \
		MAELab/io/LibJpeg/jcparam.c \
		MAELab/io/LibJpeg/jcprepct.c \
		MAELab/io/LibJpeg/jcsample.c \
		MAELab/io/LibJpeg/jctrans.c \
		MAELab/io/LibJpeg/jdapimin.c \
		MAELab/io/LibJpeg/jdapistd.c \
		MAELab/io/LibJpeg/jdarith.c \
		MAELab/io/LibJpeg/jdatadst.c \
		MAELab/io/LibJpeg/jdatasrc.c \
		MAELab/io/LibJpeg/jdcoefct.c \
		MAELab/io/LibJpeg/jdcolor.c \
		MAELab/io/LibJpeg/jddctmgr.c \
		MAELab/io/LibJpeg/jdhuff.c \
		MAELab/io/LibJpeg/jdinput.c \
		MAELab/io/LibJpeg/jdmainct.c \
		MAELab/io/LibJpeg/jdmarker.c \
		MAELab/io/LibJpeg/jdmaster.c \
		MAELab/io/LibJpeg/jdmerge.c \
		MAELab/io/LibJpeg/jdpostct.c \
		MAELab/io/LibJpeg/jdsample.c \
		MAELab/io/LibJpeg/jdtrans.c \
		MAELab/io/LibJpeg/jerror.c \
		MAELab/io/LibJpeg/jfdctflt.c \
		MAELab/io/LibJpeg/jfdctfst.c \
		MAELab/io/LibJpeg/jfdctint.c \
		MAELab/io/LibJpeg/jidctflt.c \
		MAELab/io/LibJpeg/jidctfst.c \
		MAELab/io/LibJpeg/jidctint.c \
		MAELab/io/LibJpeg/jmemmgr.c \
		MAELab/io/LibJpeg/jmemnobs.c \
		MAELab/io/LibJpeg/jquant1.c \
		MAELab/io/LibJpeg/jquant2.c \
		MAELab/io/LibJpeg/jutils.c \
		MAELab/segmentation/Canny.cpp \
		MAELab/segmentation/Filters.cpp \
		MAELab/segmentation/Suzuki.cpp \
		MAELab/segmentation/Thresholds.cpp \
		MAELab/utils/Converter.cpp \
		MAELab/utils/ImageConvert.cpp \
		matching/MatchingAlgorithm.cpp \
		segmentation/RegionGrowing.cpp \
		ui/FragmentItem.cpp \
		ui/ImageLabel.cpp \
		ui/ImageViewer.cpp \
		ui/SceneFragments.cpp \
		ui/WindowFragments.cpp \
		main.cpp moc_FragmentItem.cpp \
		moc_ImageLabel.cpp \
		moc_ImageViewer.cpp \
		moc_SceneFragments.cpp \
		moc_WindowFragments.cpp
OBJECTS       = Edge.o \
		Image.o \
		Line.o \
		Matrix.o \
		Point.o \
		JPEGReader.o \
		PNGReader.o \
		Reader.o \
		TPSReader.o \
		jaricom.o \
		jcapimin.o \
		jcapistd.o \
		jcarith.o \
		jccoefct.o \
		jccolor.o \
		jcdctmgr.o \
		jchuff.o \
		jcinit.o \
		jcmainct.o \
		jcmarker.o \
		jcmaster.o \
		jcomapi.o \
		jcparam.o \
		jcprepct.o \
		jcsample.o \
		jctrans.o \
		jdapimin.o \
		jdapistd.o \
		jdarith.o \
		jdatadst.o \
		jdatasrc.o \
		jdcoefct.o \
		jdcolor.o \
		jddctmgr.o \
		jdhuff.o \
		jdinput.o \
		jdmainct.o \
		jdmarker.o \
		jdmaster.o \
		jdmerge.o \
		jdpostct.o \
		jdsample.o \
		jdtrans.o \
		jerror.o \
		jfdctflt.o \
		jfdctfst.o \
		jfdctint.o \
		jidctflt.o \
		jidctfst.o \
		jidctint.o \
		jmemmgr.o \
		jmemnobs.o \
		jquant1.o \
		jquant2.o \
		jutils.o \
		Canny.o \
		Filters.o \
		Suzuki.o \
		Thresholds.o \
		Converter.o \
		ImageConvert.o \
		MatchingAlgorithm.o \
		RegionGrowing.o \
		FragmentItem.o \
		ImageLabel.o \
		ImageViewer.o \
		SceneFragments.o \
		WindowFragments.o \
		main.o \
		moc_FragmentItem.o \
		moc_ImageLabel.o \
		moc_ImageViewer.o \
		moc_SceneFragments.o \
		moc_WindowFragments.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		FAMLab_2017.pro
QMAKE_TARGET  = FAMLab
DESTDIR       = 
TARGET        = FAMLab

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: FAMLab_2017.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile FAMLab_2017.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile FAMLab_2017.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/FAMLab1.0.0 || $(MKDIR) .tmp/FAMLab1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/FAMLab1.0.0/ && $(COPY_FILE) --parents MAELab/imageModel/Edge.h MAELab/imageModel/Image.h MAELab/imageModel/Line.h MAELab/imageModel/Matrix.h MAELab/imageModel/Point.h MAELab/io/JPEGReader.h MAELab/io/PNGReader.h MAELab/io/Reader.h MAELab/io/TPSReader.h MAELab/io/LibJpeg/jconfig.h MAELab/io/LibJpeg/jdct.h MAELab/io/LibJpeg/jerror.h MAELab/io/LibJpeg/jinclude.h MAELab/io/LibJpeg/jmemsys.h MAELab/io/LibJpeg/jmorecfg.h MAELab/io/LibJpeg/jpegint.h MAELab/io/LibJpeg/jpeglib.h MAELab/io/LibJpeg/jversion.h MAELab/segmentation/Canny.h MAELab/segmentation/Filters.h MAELab/segmentation/Suzuki.h MAELab/segmentation/Thresholds.h MAELab/utils/Converter.h MAELab/utils/ImageConvert.h matching/MatchingAlgorithm.h segmentation/RegionGrowing.h ui/FragmentItem.h ui/ImageLabel.h ui/ImageViewer.h ui/SceneFragments.h ui/WindowFragments.h .tmp/FAMLab1.0.0/ && $(COPY_FILE) --parents MAELab/imageModel/Edge.cpp MAELab/imageModel/Image.cpp MAELab/imageModel/Line.cpp MAELab/imageModel/Matrix.cpp MAELab/imageModel/Point.cpp MAELab/io/JPEGReader.cpp MAELab/io/PNGReader.cpp MAELab/io/Reader.cpp MAELab/io/TPSReader.cpp MAELab/io/LibJpeg/jaricom.c MAELab/io/LibJpeg/jcapimin.c MAELab/io/LibJpeg/jcapistd.c MAELab/io/LibJpeg/jcarith.c MAELab/io/LibJpeg/jccoefct.c MAELab/io/LibJpeg/jccolor.c MAELab/io/LibJpeg/jcdctmgr.c MAELab/io/LibJpeg/jchuff.c MAELab/io/LibJpeg/jcinit.c MAELab/io/LibJpeg/jcmainct.c MAELab/io/LibJpeg/jcmarker.c MAELab/io/LibJpeg/jcmaster.c MAELab/io/LibJpeg/jcomapi.c MAELab/io/LibJpeg/jcparam.c MAELab/io/LibJpeg/jcprepct.c MAELab/io/LibJpeg/jcsample.c MAELab/io/LibJpeg/jctrans.c MAELab/io/LibJpeg/jdapimin.c MAELab/io/LibJpeg/jdapistd.c MAELab/io/LibJpeg/jdarith.c MAELab/io/LibJpeg/jdatadst.c MAELab/io/LibJpeg/jdatasrc.c MAELab/io/LibJpeg/jdcoefct.c MAELab/io/LibJpeg/jdcolor.c MAELab/io/LibJpeg/jddctmgr.c MAELab/io/LibJpeg/jdhuff.c MAELab/io/LibJpeg/jdinput.c MAELab/io/LibJpeg/jdmainct.c MAELab/io/LibJpeg/jdmarker.c MAELab/io/LibJpeg/jdmaster.c MAELab/io/LibJpeg/jdmerge.c MAELab/io/LibJpeg/jdpostct.c MAELab/io/LibJpeg/jdsample.c MAELab/io/LibJpeg/jdtrans.c MAELab/io/LibJpeg/jerror.c MAELab/io/LibJpeg/jfdctflt.c MAELab/io/LibJpeg/jfdctfst.c MAELab/io/LibJpeg/jfdctint.c MAELab/io/LibJpeg/jidctflt.c MAELab/io/LibJpeg/jidctfst.c MAELab/io/LibJpeg/jidctint.c MAELab/io/LibJpeg/jmemmgr.c MAELab/io/LibJpeg/jmemnobs.c MAELab/io/LibJpeg/jquant1.c MAELab/io/LibJpeg/jquant2.c MAELab/io/LibJpeg/jutils.c MAELab/segmentation/Canny.cpp MAELab/segmentation/Filters.cpp MAELab/segmentation/Suzuki.cpp MAELab/segmentation/Thresholds.cpp MAELab/utils/Converter.cpp MAELab/utils/ImageConvert.cpp matching/MatchingAlgorithm.cpp segmentation/RegionGrowing.cpp ui/FragmentItem.cpp ui/ImageLabel.cpp ui/ImageViewer.cpp ui/SceneFragments.cpp ui/WindowFragments.cpp main.cpp .tmp/FAMLab1.0.0/ && (cd `dirname .tmp/FAMLab1.0.0` && $(TAR) FAMLab1.0.0.tar FAMLab1.0.0 && $(COMPRESS) FAMLab1.0.0.tar) && $(MOVE) `dirname .tmp/FAMLab1.0.0`/FAMLab1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/FAMLab1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_FragmentItem.cpp moc_ImageLabel.cpp moc_ImageViewer.cpp moc_SceneFragments.cpp moc_WindowFragments.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_FragmentItem.cpp moc_ImageLabel.cpp moc_ImageViewer.cpp moc_SceneFragments.cpp moc_WindowFragments.cpp
moc_FragmentItem.cpp: MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		ui/FragmentItem.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) ui/FragmentItem.h -o moc_FragmentItem.cpp

moc_ImageLabel.cpp: ui/ImageLabel.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) ui/ImageLabel.h -o moc_ImageLabel.cpp

moc_ImageViewer.cpp: MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/segmentation/Filters.h \
		segmentation/RegionGrowing.h \
		ui/ImageLabel.h \
		ui/ImageViewer.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) ui/ImageViewer.h -o moc_ImageViewer.cpp

moc_SceneFragments.cpp: ui/SceneFragments.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) ui/SceneFragments.h -o moc_SceneFragments.cpp

moc_WindowFragments.cpp: MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/segmentation/Filters.h \
		MAELab/utils/ImageConvert.h \
		matching/MatchingAlgorithm.h \
		ui/ImageViewer.h \
		segmentation/RegionGrowing.h \
		ui/ImageLabel.h \
		ui/FragmentItem.h \
		ui/SceneFragments.h \
		ui/WindowFragments.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) ui/WindowFragments.h -o moc_WindowFragments.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

Edge.o: MAELab/imageModel/Edge.cpp MAELab/imageModel/Edge.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Edge.o MAELab/imageModel/Edge.cpp

Image.o: MAELab/imageModel/Image.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/imageModel/Image.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Image.o MAELab/imageModel/Image.cpp

Line.o: MAELab/imageModel/Line.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Line.o MAELab/imageModel/Line.cpp

Matrix.o: MAELab/imageModel/Matrix.cpp MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Point.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Matrix.o MAELab/imageModel/Matrix.cpp

Point.o: MAELab/imageModel/Point.cpp MAELab/imageModel/Point.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Point.o MAELab/imageModel/Point.cpp

JPEGReader.o: MAELab/io/JPEGReader.cpp MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/JPEGReader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o JPEGReader.o MAELab/io/JPEGReader.cpp

PNGReader.o: MAELab/io/PNGReader.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/PNGReader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o PNGReader.o MAELab/io/PNGReader.cpp

Reader.o: MAELab/io/Reader.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/TPSReader.h \
		MAELab/io/JPEGReader.h \
		MAELab/io/Reader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Reader.o MAELab/io/Reader.cpp

TPSReader.o: MAELab/io/TPSReader.cpp MAELab/imageModel/Point.h \
		MAELab/io/TPSReader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o TPSReader.o MAELab/io/TPSReader.cpp

jaricom.o: MAELab/io/LibJpeg/jaricom.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jaricom.o MAELab/io/LibJpeg/jaricom.c

jcapimin.o: MAELab/io/LibJpeg/jcapimin.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcapimin.o MAELab/io/LibJpeg/jcapimin.c

jcapistd.o: MAELab/io/LibJpeg/jcapistd.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcapistd.o MAELab/io/LibJpeg/jcapistd.c

jcarith.o: MAELab/io/LibJpeg/jcarith.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcarith.o MAELab/io/LibJpeg/jcarith.c

jccoefct.o: MAELab/io/LibJpeg/jccoefct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jccoefct.o MAELab/io/LibJpeg/jccoefct.c

jccolor.o: MAELab/io/LibJpeg/jccolor.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jccolor.o MAELab/io/LibJpeg/jccolor.c

jcdctmgr.o: MAELab/io/LibJpeg/jcdctmgr.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcdctmgr.o MAELab/io/LibJpeg/jcdctmgr.c

jchuff.o: MAELab/io/LibJpeg/jchuff.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jchuff.o MAELab/io/LibJpeg/jchuff.c

jcinit.o: MAELab/io/LibJpeg/jcinit.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcinit.o MAELab/io/LibJpeg/jcinit.c

jcmainct.o: MAELab/io/LibJpeg/jcmainct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcmainct.o MAELab/io/LibJpeg/jcmainct.c

jcmarker.o: MAELab/io/LibJpeg/jcmarker.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcmarker.o MAELab/io/LibJpeg/jcmarker.c

jcmaster.o: MAELab/io/LibJpeg/jcmaster.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcmaster.o MAELab/io/LibJpeg/jcmaster.c

jcomapi.o: MAELab/io/LibJpeg/jcomapi.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcomapi.o MAELab/io/LibJpeg/jcomapi.c

jcparam.o: MAELab/io/LibJpeg/jcparam.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcparam.o MAELab/io/LibJpeg/jcparam.c

jcprepct.o: MAELab/io/LibJpeg/jcprepct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcprepct.o MAELab/io/LibJpeg/jcprepct.c

jcsample.o: MAELab/io/LibJpeg/jcsample.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jcsample.o MAELab/io/LibJpeg/jcsample.c

jctrans.o: MAELab/io/LibJpeg/jctrans.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jctrans.o MAELab/io/LibJpeg/jctrans.c

jdapimin.o: MAELab/io/LibJpeg/jdapimin.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdapimin.o MAELab/io/LibJpeg/jdapimin.c

jdapistd.o: MAELab/io/LibJpeg/jdapistd.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdapistd.o MAELab/io/LibJpeg/jdapistd.c

jdarith.o: MAELab/io/LibJpeg/jdarith.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdarith.o MAELab/io/LibJpeg/jdarith.c

jdatadst.o: MAELab/io/LibJpeg/jdatadst.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdatadst.o MAELab/io/LibJpeg/jdatadst.c

jdatasrc.o: MAELab/io/LibJpeg/jdatasrc.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdatasrc.o MAELab/io/LibJpeg/jdatasrc.c

jdcoefct.o: MAELab/io/LibJpeg/jdcoefct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdcoefct.o MAELab/io/LibJpeg/jdcoefct.c

jdcolor.o: MAELab/io/LibJpeg/jdcolor.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdcolor.o MAELab/io/LibJpeg/jdcolor.c

jddctmgr.o: MAELab/io/LibJpeg/jddctmgr.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jddctmgr.o MAELab/io/LibJpeg/jddctmgr.c

jdhuff.o: MAELab/io/LibJpeg/jdhuff.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdhuff.o MAELab/io/LibJpeg/jdhuff.c

jdinput.o: MAELab/io/LibJpeg/jdinput.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdinput.o MAELab/io/LibJpeg/jdinput.c

jdmainct.o: MAELab/io/LibJpeg/jdmainct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdmainct.o MAELab/io/LibJpeg/jdmainct.c

jdmarker.o: MAELab/io/LibJpeg/jdmarker.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdmarker.o MAELab/io/LibJpeg/jdmarker.c

jdmaster.o: MAELab/io/LibJpeg/jdmaster.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdmaster.o MAELab/io/LibJpeg/jdmaster.c

jdmerge.o: MAELab/io/LibJpeg/jdmerge.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdmerge.o MAELab/io/LibJpeg/jdmerge.c

jdpostct.o: MAELab/io/LibJpeg/jdpostct.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdpostct.o MAELab/io/LibJpeg/jdpostct.c

jdsample.o: MAELab/io/LibJpeg/jdsample.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdsample.o MAELab/io/LibJpeg/jdsample.c

jdtrans.o: MAELab/io/LibJpeg/jdtrans.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jdtrans.o MAELab/io/LibJpeg/jdtrans.c

jerror.o: MAELab/io/LibJpeg/jerror.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jversion.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jerror.o MAELab/io/LibJpeg/jerror.c

jfdctflt.o: MAELab/io/LibJpeg/jfdctflt.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jfdctflt.o MAELab/io/LibJpeg/jfdctflt.c

jfdctfst.o: MAELab/io/LibJpeg/jfdctfst.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jfdctfst.o MAELab/io/LibJpeg/jfdctfst.c

jfdctint.o: MAELab/io/LibJpeg/jfdctint.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jfdctint.o MAELab/io/LibJpeg/jfdctint.c

jidctflt.o: MAELab/io/LibJpeg/jidctflt.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jidctflt.o MAELab/io/LibJpeg/jidctflt.c

jidctfst.o: MAELab/io/LibJpeg/jidctfst.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jidctfst.o MAELab/io/LibJpeg/jidctfst.c

jidctint.o: MAELab/io/LibJpeg/jidctint.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jdct.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jidctint.o MAELab/io/LibJpeg/jidctint.c

jmemmgr.o: MAELab/io/LibJpeg/jmemmgr.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jmemsys.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jmemmgr.o MAELab/io/LibJpeg/jmemmgr.c

jmemnobs.o: MAELab/io/LibJpeg/jmemnobs.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h \
		MAELab/io/LibJpeg/jmemsys.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jmemnobs.o MAELab/io/LibJpeg/jmemnobs.c

jquant1.o: MAELab/io/LibJpeg/jquant1.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jquant1.o MAELab/io/LibJpeg/jquant1.c

jquant2.o: MAELab/io/LibJpeg/jquant2.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jquant2.o MAELab/io/LibJpeg/jquant2.c

jutils.o: MAELab/io/LibJpeg/jutils.c MAELab/io/LibJpeg/jinclude.h \
		MAELab/io/LibJpeg/jconfig.h \
		MAELab/io/LibJpeg/jpeglib.h \
		MAELab/io/LibJpeg/jmorecfg.h \
		MAELab/io/LibJpeg/jpegint.h \
		MAELab/io/LibJpeg/jerror.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o jutils.o MAELab/io/LibJpeg/jutils.c

Canny.o: MAELab/segmentation/Canny.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/Reader.h \
		MAELab/utils/Converter.h \
		MAELab/segmentation/Filters.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Canny.o MAELab/segmentation/Canny.cpp

Filters.o: MAELab/segmentation/Filters.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Matrix.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Filters.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Filters.o MAELab/segmentation/Filters.cpp

Suzuki.o: MAELab/segmentation/Suzuki.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Suzuki.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Suzuki.o MAELab/segmentation/Suzuki.cpp

Thresholds.o: MAELab/segmentation/Thresholds.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/segmentation/Filters.h \
		MAELab/segmentation/Thresholds.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Thresholds.o MAELab/segmentation/Thresholds.cpp

Converter.o: MAELab/utils/Converter.cpp MAELab/utils/Converter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Converter.o MAELab/utils/Converter.cpp

ImageConvert.o: MAELab/utils/ImageConvert.cpp MAELab/imageModel/Point.h \
		MAELab/imageModel/Matrix.h \
		MAELab/utils/ImageConvert.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ImageConvert.o MAELab/utils/ImageConvert.cpp

MatchingAlgorithm.o: matching/MatchingAlgorithm.cpp matching/MatchingAlgorithm.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Line.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o MatchingAlgorithm.o matching/MatchingAlgorithm.cpp

RegionGrowing.o: segmentation/RegionGrowing.cpp segmentation/RegionGrowing.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o RegionGrowing.o segmentation/RegionGrowing.cpp

FragmentItem.o: ui/FragmentItem.cpp ui/FragmentItem.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o FragmentItem.o ui/FragmentItem.cpp

ImageLabel.o: ui/ImageLabel.cpp ui/ImageLabel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ImageLabel.o ui/ImageLabel.cpp

ImageViewer.o: ui/ImageViewer.cpp ui/ImageViewer.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/segmentation/Filters.h \
		segmentation/RegionGrowing.h \
		ui/ImageLabel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ImageViewer.o ui/ImageViewer.cpp

SceneFragments.o: ui/SceneFragments.cpp ui/SceneFragments.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SceneFragments.o ui/SceneFragments.cpp

WindowFragments.o: ui/WindowFragments.cpp ui/WindowFragments.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/segmentation/Filters.h \
		MAELab/utils/ImageConvert.h \
		matching/MatchingAlgorithm.h \
		ui/ImageViewer.h \
		segmentation/RegionGrowing.h \
		ui/ImageLabel.h \
		ui/FragmentItem.h \
		ui/SceneFragments.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o WindowFragments.o ui/WindowFragments.cpp

main.o: main.cpp ui/WindowFragments.h \
		MAELab/imageModel/Point.h \
		MAELab/imageModel/Line.h \
		MAELab/imageModel/Edge.h \
		MAELab/imageModel/Matrix.h \
		MAELab/imageModel/Image.h \
		MAELab/io/Reader.h \
		MAELab/segmentation/Thresholds.h \
		MAELab/segmentation/Canny.h \
		MAELab/segmentation/Suzuki.h \
		MAELab/segmentation/Filters.h \
		MAELab/utils/ImageConvert.h \
		matching/MatchingAlgorithm.h \
		ui/ImageViewer.h \
		segmentation/RegionGrowing.h \
		ui/ImageLabel.h \
		ui/FragmentItem.h \
		ui/SceneFragments.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

moc_FragmentItem.o: moc_FragmentItem.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_FragmentItem.o moc_FragmentItem.cpp

moc_ImageLabel.o: moc_ImageLabel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ImageLabel.o moc_ImageLabel.cpp

moc_ImageViewer.o: moc_ImageViewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ImageViewer.o moc_ImageViewer.cpp

moc_SceneFragments.o: moc_SceneFragments.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_SceneFragments.o moc_SceneFragments.cpp

moc_WindowFragments.o: moc_WindowFragments.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_WindowFragments.o moc_WindowFragments.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

