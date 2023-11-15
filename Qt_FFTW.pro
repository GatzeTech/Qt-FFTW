QT       += core gui gui printsupport multimedia


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    qcustomplot.cpp

HEADERS += \
    fftw/fftw3.h \
    mainwindow.h \
    qcustomplot.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    fftw/fftw3.f \
    fftw/fftw3.f03 \
    fftw/fftw3l.f03 \
    fftw/fftw3q.f03 \
    fftw/ffwt_license-and-copyright.html \
    fftw/libfftw3-3.def \
    fftw/libfftw3-3.dll \
    fftw/libfftw3-3.exp \
    fftw/libfftw3-3.lib \
    fftw/libfftw3f-3.def \
    fftw/libfftw3f-3.dll \
    fftw/libfftw3f-3.exp \
    fftw/libfftw3f-3.lib \
    fftw/libfftw3l-3.def \
    fftw/libfftw3l-3.dll \
    fftw/libfftw3l-3.exp \
    fftw/libfftw3l-3.lib

INCLUDEPATH += $$PWD/fftw
DEPENDPATH += $$PWD/fftw

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/fftw/ -llibfftw3-3
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/fftw/ -llibfftw3-3d
#else:unix: LIBS += -L$$PWD/fftw/ -llibfftw3-3

unix|win32: LIBS += -L$$PWD/fftw/ -llibfftw3-3 -llibfftw3f-3 -llibfftw3l-3

