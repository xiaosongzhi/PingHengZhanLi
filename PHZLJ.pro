QT       += core gui network xml sql printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#Qt5.15.2 mingw64
CONFIG += c++17

#指定UI文件生成的位置
UI_DIR = ./UI

MOC_DIR = tmp/moc

OBJECTS_DIR = tmp/obj

RCC_DIR = tmp/rcc
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/Src/MainWindow

SOURCES += \
    Src/MainWindow/main.cpp \
    Src/MainWindow/mainwindow.cpp

HEADERS += \
    Src/MainWindow/mainwindow.h

FORMS += \
    Src/MainWindow/mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    image.qrc
