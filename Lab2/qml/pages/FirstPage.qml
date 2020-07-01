import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {

            MenuItem {
                text: qsTr("Сумма")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            property int sizeRect: 200
            spacing: Theme.paddingLarge

            Rectangle {
                width: page.width
                height: column.sizeRect * 2.4
                color: "transparent"
                Rectangle {
                    width: column.sizeRect
                    height: column.sizeRect
                    x: column.sizeRect/2
                    y: column.sizeRect/2
                    color: "red"
                    Rectangle {
                        width: column.sizeRect
                        height: column.sizeRect
                        x: column.sizeRect
                        y: column.sizeRect/2
                        color: "green"
                        Rectangle {
                            id: blueRect
                            width: column.sizeRect
                            height: column.sizeRect
                            x: column.sizeRect/2
                            y: -column.sizeRect/2
                            color: "blue"
                            Text {
                                text: "Square"
                                color: "white"
                                anchors.centerIn: blueRect
                            }
                        }
                    }
                }
            }
            Rectangle {
                            width: parent.width
                            height: column.sizeRect + column.sizeRect/12
                            color: "transparent"

                            Row {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                spacing: column.sizeRect / 6;

                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "red"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "green"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "blue"
                                }
                            }
                        }

                        Rectangle {
                            width: parent.width
                            height: column.sizeRect + column.sizeRect/12
                            color: "transparent"

                            Row {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                spacing: column.sizeRect / 6;

                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "magenta"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "transparent"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "black"
                                }
                            }
                        }

                        Rectangle {
                            width: parent.width
                            height: column.sizeRect * 2 + column.sizeRect/6
                            color: "transparent"

                            Grid{
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                columns: 3
                                rows: 2
                                spacing: column.sizeRect / 6
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "red"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "green"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "blue"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "magenta"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "transparent"
                                }
                                Rectangle {
                                    width: column.sizeRect;
                                    height: column.sizeRect
                                    color: "black"
                                }

                            }
                        }

                        Rectangle {
                            width: parent.width
                            height : column.sizeRect*1.5
                            color: "transparent"
                            Rectangle {
                                id: startRect
                                width: column.sizeRect*1.5
                                height: column.sizeRect*1.5
                                x: width/18
                                y: height/18
                                color: "black"
                                Rectangle {
                                    width: parent.width
                                    height: parent.height
                                    color: parent.color
                                    z: 1
                                    transform: [Scale { xScale: 0.5; yScale: 1 }, Rotation { angle: 45}, Translate {x: column.sizeRect * 2.8} ]
                                }
                            }
                        }

                        Rectangle {
                            width: parent.width
                            height: column.sizeRect * 4;
                            color: "transparent"
                            Rectangle {
                                id: orangeBox;
                                y: 50;
                                anchors.horizontalCenter: parent.horizontalCenter;
                                width: 0;
                                height: 0;
                                color: "orange";
                                SequentialAnimation {
                                    loops: Animation.Infinite;
                                    id: animation;
                                    running: true
                                    ParallelAnimation {
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "y";
                                            from: 50; to: page.width - column.sizeRect - 25; duration: 2000;
                                        }
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "width";
                                            from: 0; to: column.sizeRect; duration: 2000;
                                        }
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "height";
                                            from: 0; to: column.sizeRect; duration: 2000;
                                        }
                                    }
                                    ParallelAnimation {
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "y";
                                            from: parent.width - column.sizeRect - 50; to: 50; duration: 2000;

                                        }
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "width";
                                            from: column.sizeRect; to: 0; duration: 2000;
                                        }
                                        PropertyAnimation {
                                            target: orangeBox;
                                            property: "height";
                                            from: column.sizeRect; to: 0; duration: 2000;
                                        }
                                    }
                                }
                            }
                        }
                   }
               }
            }
