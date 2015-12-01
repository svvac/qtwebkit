CONFIG += console
CONFIG -= qt dylib
SOURCES = libxml2.cpp
mac {
    QMAKE_CXXFLAGS += -iwithsysroot /usr/include/libxml2
    LIBS += -lxml2
} msvc* {
    LIBS += -llibxml2 -lWs2_32
} else {
    PKGCONFIG += libxml-2.0
    CONFIG += link_pkgconfig
}

load(qt_build_config)