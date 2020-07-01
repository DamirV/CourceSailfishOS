import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaListView {
        id: listView
        model: 20
        anchors.fill: parent
        PullDownMenu{
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
        }

        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Item") + " " + index
                //anchors.verticalCenter: parent.verticalCenter
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                        MenuLabel { text: "Context Menu" }
                        MenuItem {
                            text: "Menu Item 1"
                            onClicked: console.log("Menu Item 1 is clicked" +" " + index)
                        }
                        MenuItem {
                            text: "Menu Item 2"
                            onClicked: console.log("Menu Item 2 is clicked" + " " + index)
                        }
                    }


        }

    }
}
