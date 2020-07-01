#include <sailfishapp.h>
#include "filter.h"
#include "provider.h"

//#include <QtQuick>
//#include <QGuiApplication>
//#include <QQuickView>
#include "provider.h"

int main(int argc, char *argv[])
{
    QGuiApplication *app = SailfishApp::application(argc, argv);
    QQuickView *view = SailfishApp::createView();

    view->setSource(SailfishApp::pathTo("qml/Lab8.qml"));

    qmlRegisterType<Filter>("harbour.Filter", 1, 0, "Filter");
    view->show();

    return app->exec();
}
