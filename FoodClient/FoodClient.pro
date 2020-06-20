QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG  += c++11

DEFINES += QT_DEPRECATED_WARNINGS

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwidget.cpp \
    order.cpp \
    orderform.cpp \
    product.cpp \
    productform.cpp \
    user.cpp \
    userform.cpp \
    usertodoform.cpp \
    viewwidget.cpp

HEADERS += \
    mainwidget.h \
    order.h \
    orderform.h \
    product.h \
    productform.h \
    user.h \
    userform.h \
    usertodoform.h \
    viewwidget.h

FORMS += \
    orderform.ui \
    productform.ui \
    userform.ui \
    usertodoform.ui \
    viewwidget.ui

RESOURCES += \
    image.qrc

msvc {
    # RC_ICONS = img/win.ico
    QMAKE_CFLAGS += /utf-8
    QMAKE_CXXFLAGS += /utf-8
}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

