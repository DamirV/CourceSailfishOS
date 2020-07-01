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
                onClicked: myLabel.text = qsTr("Lab4.2")
            }

            MenuItem {
                text: qsTr("Lab4.3")
                onClicked: myLabel.text = qsTr("Lab4.3")
            }

            MenuItem {
                text: qsTr("Lab4.4")
                onClicked: myLabel.text = qsTr("Lab4.4")
            }
        }

        PushUpMenu {
            MenuItem {
                text: qsTr("Lab4.5")
                onClicked: myLabel.text = qsTr("Lab4.5")
            }

            MenuItem {
                text: qsTr("Lab4.6")
                onClicked: myLabel.text = qsTr("Lab4.6")
            }

            MenuItem {
                text: qsTr("Lab4.7")
                onClicked: myLabel.text = qsTr("Lab4.7")
            }
        }

        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge


            Label {
                id: myLabel
                x: Theme.horizontalPageMargin
                text: qsTr("")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}

