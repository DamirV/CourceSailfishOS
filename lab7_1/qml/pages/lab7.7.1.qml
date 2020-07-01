import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            Label {
                text: "Added: " + added
            }
            Label {
                text: "Removed " + removed
            }

            Button {
                text: "Add"
                onClicked: pageStack.push(Qt.resolvedUrl("lab7.7.1.qml"))
            }
        }
    }
}
