import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All
    ListModel{
        id: myModel
        ListElement{ name: "Learn"; dateText: "1 Feb 2018";}
        ListElement{ name: "Learn"; dateText: "2 Feb 2018";}
        ListElement{ name: "Sleep"; dateText: "3 Feb 2018";}
        ListElement{ name: "Learn"; dateText: "4 Feb 2018";}
    }

    SilicaListView {
        anchors.fill: parent
        model: myModel

        PullDownMenu {
            MenuItem {
                text: qsTr("FirstPage")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }

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

        header: PageHeader{title: "Задачи"}
        section{
            property: 'dateText'
            delegate: SectionHeader{text: section}
        }

        delegate: Text{
            text: name
            color: Theme.secondaryHighlightColor
        }
    }
}
