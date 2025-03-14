QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

CONFIG += c++17

win32:LIBS+= -lopengl32
QMAKE_CFLAGS += -Wa,-mbig-obj
QMAKE_CXXFLAGS += -Wa,-mbig-obj

DEFINES += QCUSTOMPLOT_USE_OPENGL

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    qcustomplot.cpp \
    widget.cpp

HEADERS += \
    qcustomplot.h \
    widget.h

FORMS += \
    widget.ui

TRANSLATIONS += \
    QCustomPlotDemo_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
