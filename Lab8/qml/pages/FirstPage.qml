import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Filter")
                onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml"))
            }

       }
      }
  }
