TEMPLATE = app

# QT += qml quick xmlpatterns sql svg multimedia widgets quickwidgets quickcontrols2 network core
QT += qml quick xmlpatterns sql svg multimedia

SOURCES += main.cpp \
    back.cpp

HEADERS += \
    back.h

RESOURCES += \
    qml/QtDemo/images \
    qml/QtDemo/fonts

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
QTPLUGIN += qsqlite
INCLUDEPATH += /home/turgay/YL/poky/meta-raspberrypi/recipes-devtools/raspi-gpio
DISTFILES +=
