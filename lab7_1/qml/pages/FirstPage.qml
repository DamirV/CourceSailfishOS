import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("1")
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.1.1.qml"))
            }



            MenuItem {
                text: qsTr("3")
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.3.1.qml"))
            }



            MenuItem {
                text: qsTr("5")
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.5.1.qml"))
            }



            MenuItem {
                text: qsTr("6")
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.6.1.qml"))
            }



            MenuItem {
                text: qsTr("7")
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.7.1.qml"))
            }
        }

        }
    }
