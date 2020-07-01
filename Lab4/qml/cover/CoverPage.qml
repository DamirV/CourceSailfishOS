import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("" + count)
        property int count : 0
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-next"
            onTriggered: label.count++;

        }

        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
            onTriggered: label.count = 0;

        }
    }
}
