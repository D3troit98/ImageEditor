QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


   LIBS += -LC:/opencv/build/x64/vc15/lib-
   lopencv_world451-
   lopencv_world451d-
   lopencv_core451-
   lopencv_imgproc451-
   lopencv_highgi451-
   lopencv_imgcodecs451-
   lopencv_videoio451-
   lopencv_video451

INCLUDEPATH += C:\opencv\build\include\opencv2
DEPENDPATH += C:\opencv\build\include\opencv2



SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

