#include <QtGui/QApplication>
#include "mainwindow.h"
#include "gsm.h"
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QDeclarativeView view;
    view.setSource(QUrl::fromLocalFile("qml/start.qml"));
    view.setSceneRect(0,0,240,320);
    view.show();
    view.rootContext()->setContextProperty("OfonoContext", new GSM());

    /*QApplication a(argc, argv);

    MainWindow w;
    w.show();

    GSM gsm;
    gsm.SetPowerOn();
    gsm.outgoingCall("555000");*/



    return a.exec();
}
