import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu{
            MenuItem {
                 text: qsTr("Page 1")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.1.1.qml"))
            }
            MenuItem {
                 text: qsTr("Page 2")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.2.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 3")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.3.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 4")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.4.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 5")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.5.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 6")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.6.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 7")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.7.1.qml"))
            }

            MenuItem {
                 text: qsTr("Page 8")
                  onClicked: pageStack.push(Qt.resolvedUrl("Lab5.8.1.qml"))
            }
        }
    }
}
