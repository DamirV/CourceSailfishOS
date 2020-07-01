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
            property var hr: 0
            property var min: 0
            property var sec: 0


                Timer {
                    id: timer
                    interval: 1000; running: false; repeat: true
                    onTriggered: {
                        column.sec++
                        if (column.sec >= 60) {
                            column.sec = 0
                            column.min = column.min + 1
                        }
                        if (column.min >= 60) {
                            column.min = 0
                            column.hr = column.hr + 1
                        }
                    }
                }

                      Row {
                          Label {
                              text: column.hr
                          }
                          Label {
                              text: ":"
                          }

                          Label {
                              text: column.min
                          }
                          Label {
                              text: ":"
                          }
                          Label {
                              text: column.sec
                          }
                      }

                Button {
                    y: 200
                    x: 50
                    text: timer.running ? "Pause" : "Start"
                    onClicked: timer.running = !timer.running
                }
            }
        }
    }
