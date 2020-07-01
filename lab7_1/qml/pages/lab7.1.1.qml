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
            property int timer: 0
            property int sizeRect: 200
            property bool flag: false
            spacing: Theme.paddingLarge

            Rectangle {
                width: page.width
                height: 200
                color: "transparent"
                Light{
                    id: redLight
                    clr: "red"
                }
            }
            Rectangle {
                width: page.width
                height: 200
                color: "transparent"
                Light{
                     id: yellowLight
                     clr: "yellow"
                }
            }
            Rectangle {
                width: page.width
                height: 200
                color: "transparent"
                Light{
                      id: greenLight
                      clr: "green"
                }
            }


            Rectangle {
                width: page.width
                height: column.sizeRect
                color: "transparent"
                Rectangle {
                    id:rect
                    width: 50
                    height: 50
                    x: 0
                    y: column.sizeRect/2
                    color: "black"

                    state: "DIFFERENT"
                        states: [
                            State {
                                name: "LEFT"
                                PropertyChanges {
                                    target: rect
                                    x:0
                                }

                            },
                            State {
                                name: "RIGHT"
                                PropertyChanges {
                                    target: rect
                                    x:650
                                }
                            }
                        ]
                        transitions:[
                            Transition{
                                from: "*"
                                to: "*"
                                PropertyAnimation { target: rect; properties: "x"; duration: 2000 }
                            }
                        ]


                }
            }

           Timer{
                id: timer1
                interval: 1000
                running: true
                repeat: false
                onTriggered: {
                    redLight.state = "true"
                    yellowLight.state = "false"
                    timer2.start()
                }
            }

            Timer{
                id: timer2
                interval: 1000
                running: false
                repeat: false
                onTriggered: {
                   redLight.state = "false"
                   yellowLight.state = "true"
                    timer3.start()
                }
            }

            Timer{
                id: timer3
                interval: 1000
                running: false
                repeat: false
                onTriggered: {
                  yellowLight.state = "false"
                    greenLight.state = "true"
                    rect.state = rect.state == "RIGHT" ? "LEFT" : "RIGHT"

                    timer4.start()
                }
            }

            Timer{
                id: timer4
                interval: 2000
                running: false
                repeat: false
                onTriggered: {
                   greenLight.state = "false"
                    yellowLight.state = "true"
                    timer1.start()
                }
            }

        }
    }
}
