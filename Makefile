#############################################################################
# Makefile for building: MODBusProject
# Generated by qmake (2.01a) (Qt 4.6.2) on: Sun Dec 5 11:21:59 2010
# Project:  MODBusProject.pro
# Template: app
# Command: /usr/bin/qmake -unix -o Makefile MODBusProject.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_DBUS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtDBus -I/usr/include/qt4/QtDeclarative -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib -lQtDeclarative -lQtDBus -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		OfonoVoiceCallManager.cpp \
		OfonoSimManager.cpp \
		OfonoModem.cpp \
		gsm.cpp \
		VoiceCall.cpp moc_mainwindow.cpp \
		moc_OfonoVoiceCallManager.cpp \
		moc_OfonoSimManager.cpp \
		moc_OfonoModem.cpp \
		moc_gsm.cpp \
		moc_VoiceCall.cpp \
		qrc_resources.cpp
OBJECTS       = main.o \
		mainwindow.o \
		OfonoVoiceCallManager.o \
		OfonoSimManager.o \
		OfonoModem.o \
		gsm.o \
		VoiceCall.o \
		moc_mainwindow.o \
		moc_OfonoVoiceCallManager.o \
		moc_OfonoSimManager.o \
		moc_OfonoModem.o \
		moc_gsm.o \
		moc_VoiceCall.o \
		qrc_resources.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/dbusinterfaces.prf \
		/usr/share/qt4/mkspecs/features/dbusadaptors.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		MODBusProject.pro
QMAKE_TARGET  = MODBusProject
DESTDIR       = 
TARGET        = MODBusProject

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: MODBusProject.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/dbusinterfaces.prf \
		/usr/share/qt4/mkspecs/features/dbusadaptors.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtDBus.prl \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -unix -o Makefile MODBusProject.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/dbusinterfaces.prf:
/usr/share/qt4/mkspecs/features/dbusadaptors.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtDBus.prl:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile MODBusProject.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/MODBusProject1.0.0 || $(MKDIR) .tmp/MODBusProject1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/MODBusProject1.0.0/ && $(COPY_FILE) --parents mainwindow.h OfonoVoiceCallManager.h OfonoSimManager.h OfonoModem.h gsm.h VoiceCall.h .tmp/MODBusProject1.0.0/ && $(COPY_FILE) --parents resources.qrc .tmp/MODBusProject1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp OfonoVoiceCallManager.cpp OfonoSimManager.cpp OfonoModem.cpp gsm.cpp VoiceCall.cpp .tmp/MODBusProject1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/MODBusProject1.0.0/ && (cd `dirname .tmp/MODBusProject1.0.0` && $(TAR) MODBusProject1.0.0.tar MODBusProject1.0.0 && $(COMPRESS) MODBusProject1.0.0.tar) && $(MOVE) `dirname .tmp/MODBusProject1.0.0`/MODBusProject1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/MODBusProject1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_OfonoVoiceCallManager.cpp moc_OfonoSimManager.cpp moc_OfonoModem.cpp moc_gsm.cpp moc_VoiceCall.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_OfonoVoiceCallManager.cpp moc_OfonoSimManager.cpp moc_OfonoModem.cpp moc_gsm.cpp moc_VoiceCall.cpp
moc_mainwindow.cpp: mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_OfonoVoiceCallManager.cpp: OfonoVoiceCallManager.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) OfonoVoiceCallManager.h -o moc_OfonoVoiceCallManager.cpp

moc_OfonoSimManager.cpp: OfonoSimManager.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) OfonoSimManager.h -o moc_OfonoSimManager.cpp

moc_OfonoModem.cpp: OfonoModem.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) OfonoModem.h -o moc_OfonoModem.cpp

moc_gsm.cpp: OfonoModem.h \
		OfonoVoiceCallManager.h \
		OfonoSimManager.h \
		VoiceCall.h \
		gsm.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) gsm.h -o moc_gsm.cpp

moc_VoiceCall.cpp: VoiceCall.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) VoiceCall.h -o moc_VoiceCall.cpp

compiler_dbus_interface_source_make_all:
compiler_dbus_interface_source_clean:
compiler_dbus_adaptor_source_make_all:
compiler_dbus_adaptor_source_clean:
compiler_rcc_make_all: qrc_resources.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_resources.cpp
qrc_resources.cpp: resources.qrc \
		qml/mcm440-phone-app-qml.qmlproject.user \
		qml/mcm440-phone-app-qml.qmlproject.user.2.1pre1 \
		qml/JavaScript.js \
		qml/DialerForm.qml \
		qml/mcm440-phone-app-qml.qmlproject \
		qml/start.qml \
		qml/contacts.qml \
		qml/DialerButton.qml \
		qml/Button.qml \
		qml/Display.qml \
		qml/MediaButton.qml \
		qml/images/Phone_58.png \
		qml/images/Clock_58.png \
		qml/images/mediabutton.png \
		qml/images/mediabutton-pressed.png \
		qml/images/Browser_58.png \
		qml/images/Weather_58.png \
		qml/images/display.png \
		qml/images/Settings_58.png \
		qml/images/Notes_58.png \
		qml/images/Calendar_58.png \
		qml/images/button_grey.png \
		qml/images/Chat_58.png \
		qml/images/Maps_58.png
	/usr/bin/rcc -name resources resources.qrc -o qrc_resources.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_dbus_interface_header_make_all:
compiler_dbus_interface_header_clean:
compiler_dbus_interface_moc_make_all:
compiler_dbus_interface_moc_clean:
compiler_dbus_adaptor_header_make_all:
compiler_dbus_adaptor_header_clean:
compiler_dbus_adaptor_moc_make_all:
compiler_dbus_adaptor_moc_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/usr/bin/uic-qt4 mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		gsm.h \
		OfonoModem.h \
		OfonoVoiceCallManager.h \
		OfonoSimManager.h \
		VoiceCall.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

OfonoVoiceCallManager.o: OfonoVoiceCallManager.cpp OfonoVoiceCallManager.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o OfonoVoiceCallManager.o OfonoVoiceCallManager.cpp

OfonoSimManager.o: OfonoSimManager.cpp OfonoSimManager.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o OfonoSimManager.o OfonoSimManager.cpp

OfonoModem.o: OfonoModem.cpp OfonoModem.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o OfonoModem.o OfonoModem.cpp

gsm.o: gsm.cpp gsm.h \
		OfonoModem.h \
		OfonoVoiceCallManager.h \
		OfonoSimManager.h \
		VoiceCall.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o gsm.o gsm.cpp

VoiceCall.o: VoiceCall.cpp VoiceCall.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o VoiceCall.o VoiceCall.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_OfonoVoiceCallManager.o: moc_OfonoVoiceCallManager.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_OfonoVoiceCallManager.o moc_OfonoVoiceCallManager.cpp

moc_OfonoSimManager.o: moc_OfonoSimManager.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_OfonoSimManager.o moc_OfonoSimManager.cpp

moc_OfonoModem.o: moc_OfonoModem.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_OfonoModem.o moc_OfonoModem.cpp

moc_gsm.o: moc_gsm.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_gsm.o moc_gsm.cpp

moc_VoiceCall.o: moc_VoiceCall.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_VoiceCall.o moc_VoiceCall.cpp

qrc_resources.o: qrc_resources.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_resources.o qrc_resources.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/bin/ || $(MKDIR) $(INSTALL_ROOT)/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/bin/$(QMAKE_TARGET)"
	-$(STRIP) "$(INSTALL_ROOT)/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/bin/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:

