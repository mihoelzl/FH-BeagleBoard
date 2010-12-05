#-------------------------------------------------
#
# Project created by QtCreator 2010-11-24T04:39:19
#
#-------------------------------------------------

QT       += core gui dbus declarative

TARGET = MODBusProject
TEMPLATE = app
unix {
	BINDIR = $$PREFIX/bin
	INSTALLS += target
	target.path = $$BINDIR
}

SOURCES += main.cpp\
        mainwindow.cpp \
    OfonoVoiceCallManager.cpp \
    OfonoSimManager.cpp \
    OfonoModem.cpp \
    gsm.cpp \
    VoiceCall.cpp

HEADERS  += mainwindow.h \
    OfonoVoiceCallManager.h \
    OfonoSimManager.h \
    OfonoModem.h \
    gsm.h \
    VoiceCall.h

FORMS    += mainwindow.ui

OTHER_FILES += \
    qml/start.qml \
    qml/MediaButton.qml \
    qml/JavaScript.js \
    qml/Display.qml \
    qml/DialerForm.qml \
    qml/DialerButton.qml \
    qml/contacts.qml \
    qml/Button.qml \
    qml/images/Weather_58.png \
    qml/images/Settings_58.png \
    qml/images/Phone_58.png \
    qml/images/Notes_58.png \
    qml/images/mediabutton-pressed.png \
    qml/images/mediabutton.png \
    qml/images/Maps_58.png \
    qml/images/display.png \
    qml/images/Clock_58.png \
    qml/images/Chat_58.png \
    qml/images/Calendar_58.png \
    qml/images/button_grey.png \
    qml/images/Browser_58.png
