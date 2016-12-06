QT += qml quick

android {
    QT += androidextras
}

CONFIG += c++11

SOURCES += main.cc

RESOURCES += qml.qrc \
    vendor/font/awesome/pri/fontawesome.qrc \
    material.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES +=
