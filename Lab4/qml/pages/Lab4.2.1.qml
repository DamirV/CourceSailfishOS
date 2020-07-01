import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("FirstPage")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.3")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.3.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.4")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.4.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.5")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.5.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.6")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.6.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.7")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.7.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.8")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.8.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.9")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.9.1.qml"))
            }

            MenuItem {
                text: qsTr("Lab4.10")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.10.1.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Первая страница")
            }

            Button{
                x: Theme.horizontalPageMargin
                text: qsTr("Прикрепить страницу")
                color: Theme.secondaryHighlightColor
                onClicked: {
                     console.log(pageStack.depth);
                    pageStack.pushAttached(Qt.resolvedUrl("Lab4.2.2.qml"))
                }
            }

            Button{
                x: Theme.horizontalPageMargin
                text: qsTr("Открепить страницу")
                color: Theme.secondaryHighlightColor
                onClicked: pageStack.popAttached()
            }
        }
    }
}
