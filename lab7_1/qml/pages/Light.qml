import QtQuick 2.0

Item {
 property string clr: "gray"

        Rectangle {
            id: circle
            width: 200
            height: 200
            radius: 200
            x: 200
            y: 100
            state: "false"
            color: "gray"
        }

        states: [
            State {
                name: "true"
                PropertyChanges {
                    target: circle
                    color: clr
                }
            },
            State {
                name: "false"
                PropertyChanges {
                    target: circle
                   color: "gray"
                }
            }
        ]
}
