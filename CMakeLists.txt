cmake_minimum_required(VERSION 3.14)
project(FAMLab_2017_Thanh)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

include_directories(MAELab/imageModel)
include_directories(MAELab/io)
include_directories(MAELab/io/LibJpeg)
include_directories(MAELab/segmentation)
include_directories(MAELab/utils)
include_directories(matching)
include_directories(segmentation)
include_directories(ui)

add_executable(FAMLab_2017_Thanh
        data/success_story/0252_a.JPG
        data/success_story/0252_e_g.JPG
        data/success_story/0252_f.JPG
        data/success_story/0252_j.JPG
        data/success_story/1338_c_b.JPG
        data/success_story/1338_i_f_g.JPG
        data/success_story/1339_b.JPG
        data/success_story/1339_c.JPG
        data/success_story/1339_e.JPG
        data/success_story/1339_f.JPG
        data/success_story/Success_Story_1.pdf
        data/1.JPG
        data/2.JPG
        data/3.JPG
        data/4.JPG
        data/5.JPG
        data/a.JPG
        data/test.jpg
        MAELab/imageModel/Edge.cpp
        MAELab/imageModel/Edge.h
        MAELab/imageModel/Image.cpp
        MAELab/imageModel/Image.h
        MAELab/imageModel/Line.cpp
        MAELab/imageModel/Line.h
        MAELab/imageModel/Matrix.cpp
        MAELab/imageModel/Matrix.h
        MAELab/imageModel/Point.cpp
        MAELab/imageModel/Point.h
        MAELab/io/LibJpeg/jaricom.c
        MAELab/io/LibJpeg/jcapimin.c
        MAELab/io/LibJpeg/jcapistd.c
        MAELab/io/LibJpeg/jcarith.c
        MAELab/io/LibJpeg/jccoefct.c
        MAELab/io/LibJpeg/jccolor.c
        MAELab/io/LibJpeg/jcdctmgr.c
        MAELab/io/LibJpeg/jchuff.c
        MAELab/io/LibJpeg/jcinit.c
        MAELab/io/LibJpeg/jcmainct.c
        MAELab/io/LibJpeg/jcmarker.c
        MAELab/io/LibJpeg/jcmaster.c
        MAELab/io/LibJpeg/jcomapi.c
        MAELab/io/LibJpeg/jconfig.h
        MAELab/io/LibJpeg/jcparam.c
        MAELab/io/LibJpeg/jcprepct.c
        MAELab/io/LibJpeg/jcsample.c
        MAELab/io/LibJpeg/jctrans.c
        MAELab/io/LibJpeg/jdapimin.c
        MAELab/io/LibJpeg/jdapistd.c
        MAELab/io/LibJpeg/jdarith.c
        MAELab/io/LibJpeg/jdatadst.c
        MAELab/io/LibJpeg/jdatasrc.c
        MAELab/io/LibJpeg/jdcoefct.c
        MAELab/io/LibJpeg/jdcolor.c
        MAELab/io/LibJpeg/jdct.h
        MAELab/io/LibJpeg/jddctmgr.c
        MAELab/io/LibJpeg/jdhuff.c
        MAELab/io/LibJpeg/jdinput.c
        MAELab/io/LibJpeg/jdmainct.c
        MAELab/io/LibJpeg/jdmarker.c
        MAELab/io/LibJpeg/jdmaster.c
        MAELab/io/LibJpeg/jdmerge.c
        MAELab/io/LibJpeg/jdpostct.c
        MAELab/io/LibJpeg/jdsample.c
        MAELab/io/LibJpeg/jdtrans.c
        MAELab/io/LibJpeg/jerror.c
        MAELab/io/LibJpeg/jerror.h
        MAELab/io/LibJpeg/jfdctflt.c
        MAELab/io/LibJpeg/jfdctfst.c
        MAELab/io/LibJpeg/jfdctint.c
        MAELab/io/LibJpeg/jidctflt.c
        MAELab/io/LibJpeg/jidctfst.c
        MAELab/io/LibJpeg/jidctint.c
        MAELab/io/LibJpeg/jinclude.h
        MAELab/io/LibJpeg/jmemmgr.c
        MAELab/io/LibJpeg/jmemnobs.c
        MAELab/io/LibJpeg/jmemsys.h
        MAELab/io/LibJpeg/jmorecfg.h
        MAELab/io/LibJpeg/jpegint.h
        MAELab/io/LibJpeg/jpeglib.h
        MAELab/io/LibJpeg/jquant1.c
        MAELab/io/LibJpeg/jquant2.c
        MAELab/io/LibJpeg/jutils.c
        MAELab/io/LibJpeg/jversion.h
        MAELab/io/JPEGReader.cpp
        MAELab/io/JPEGReader.h
        MAELab/io/PNGReader.cpp
        MAELab/io/PNGReader.h
        MAELab/io/Reader.cpp
        MAELab/io/Reader.h
        MAELab/io/TPSReader.cpp
        MAELab/io/TPSReader.h
        MAELab/segmentation/Canny.cpp
        MAELab/segmentation/Canny.h
        MAELab/segmentation/Filters.cpp
        MAELab/segmentation/Filters.h
        MAELab/segmentation/Suzuki.cpp
        MAELab/segmentation/Suzuki.h
        MAELab/segmentation/Thresholds.cpp
        MAELab/segmentation/Thresholds.h
        MAELab/utils/Converter.cpp
        MAELab/utils/Converter.h
        MAELab/utils/ImageConvert.cpp
        MAELab/utils/ImageConvert.h
        matching/MatchingAlgorithm.cpp
        matching/MatchingAlgorithm.h
        segmentation/RegionGrowing.cpp
        segmentation/RegionGrowing.h
        ui/FragmentItem.cpp
        ui/FragmentItem.h
        ui/ImageLabel.cpp
        ui/ImageLabel.h
        ui/ImageViewer.cpp
        ui/ImageViewer.h
        ui/SceneFragments.cpp
        ui/SceneFragments.h
        ui/WindowFragments.cpp
        ui/WindowFragments.h
        main.cpp
        README.md
        resources.qrc)

find_package(Qt5Core REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5PrintSupport REQUIRED)

target_link_libraries(FAMLab_2017_Thanh Qt5::Core)
target_link_libraries(FAMLab_2017_Thanh Qt5::Widgets)
target_link_libraries(FAMLab_2017_Thanh Qt5::Quick)
target_link_libraries(FAMLab_2017_Thanh Qt5::PrintSupport)
