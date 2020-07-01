import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: 200
        Button{
            property int ang: 0
            x: 200
            y: 200
            id: btn
            color: "blue"
            //anchors.verticalCenter: parent.verticalCenter
            text: "HELLO WORLD!"
            transform: Rotation {
                        angle: btn.ang
                    }

            states:[
                State {
                    name: "top"
                    PropertyChanges {
                        target: btn
                        y: 200
                        ang: 0
                        color: "blue"
                    }
                },

                State {
                    name: "bottom"
                    PropertyChanges {
                        target: btn
                        y: 800
                        ang: 360
                        color: "red"
                    }
                }
            ]

            transitions:[
                Transition{
                    from: "*"
                    to: "*"
                    PropertyAnimation { target: btn; properties: "y"; duration: 3000 }
                    PropertyAnimation { target: btn; properties: "ang"; duration: 3000 }
                    PropertyAnimation { target: btn; properties: "color"; duration: 3000 }
                }
            ]

            onPressedButtonsChanged: {
            if(down)
               btn.state = "bottom"
            else
                 btn.state = "top"
             }



        }

    }
}
