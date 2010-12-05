#include <QtGui/QApplication>
#include "mainwindow.h"
#include "gsm.h"
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>

/**
 * Creates declarativeview which displays qml ui. moreover it's passing the gsm wrapper to the ui.
 */
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QDeclarativeView view;
    view.setSource(QUrl("qrc:/qml/start.qml"));
    view.setSceneRect(0,0,240,320);
    view.show();
    view.rootContext()->setContextProperty("OfonoContext", new GSM());

    return a.exec();
}
