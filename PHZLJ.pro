QT       += core gui network xml sql printsupport serialport

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

INCLUDEPATH += $$PWD/Src/MainWindow \
               $$PWD/Src/Communication \
               $$PWD/Src/DataFormate \
               $$PWD/Src/LogIn

SOURCES += \
    Src/Communication/ccommunicateapi.cpp \
    Src/Communication/ccommunicationinterface.cpp \
    Src/Communication/cserialportinterface.cpp \
    Src/Communication/ctcpsocketinterface.cpp \
    Src/Communication/cudpinterface.cpp \
    Src/Communication/globalqueue.cpp \
    Src/Communication/readconfig.cpp \
    Src/DataBaseControl/cdatabaseinterface.cpp \
    Src/DataBaseControl/mysqldatabase.cpp \
    Src/DataFormate/dataformate.cpp \
    Src/DataFormate/dbforrmate.cpp \
    Src/LogIn/logindialog.cpp \
    Src/MainWindow/main.cpp \
    Src/MainWindow/mainwindow.cpp \
    Src/Setting/settingpage.cpp

HEADERS += \
    Src/Communication/ccommunicateapi.h \
    Src/Communication/ccommunicationinterface.h \
    Src/Communication/cserialportinterface.h \
    Src/Communication/ctcpsocketinterface.h \
    Src/Communication/cudpinterface.h \
    Src/Communication/globalqueue.h \
    Src/Communication/readconfig.h \
    Src/DataBaseControl/cdatabaseinterface.h \
    Src/DataBaseControl/mysqldatabase.h \
    Src/DataFormate/dataformate.h \
    Src/DataFormate/dbforrmate.h \
    Src/LogIn/logindialog.h \
    Src/MainWindow/mainwindow.h \
    Src/Setting/settingpage.h

FORMS += \
    Src/LogIn/logindialog.ui \
    Src/MainWindow/mainwindow.ui \
    Src/Setting/settingpage.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    image.qrc
