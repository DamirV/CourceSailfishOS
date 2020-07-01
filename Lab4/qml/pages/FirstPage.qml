import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Lab4.2")
                onClicked: pageStack.push(Qt.resolvedUrl("Lab4.2.1.qml"))
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

        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Страница")
            }

            Button{
                x: Theme.horizontalPageMargin
                text: qsTr("Назад")
                color: Theme.secondaryHighlightColor
                onClicked: pageStack.pop()
            }

            Button{
                x: Theme.horizontalPageMargin
                text: qsTr("Вперед")
                color: Theme.secondaryHighlightColor

                onClicked: {
                     console.log(pageStack.depth);
                    pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
                }
            }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Глубина: " + pageStack.depth)
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}

