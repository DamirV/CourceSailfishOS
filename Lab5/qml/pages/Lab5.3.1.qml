import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        { color: "white", text: "Белый", textColor: "black"},
        { color: "black",  text: "Черный", textColor: "white"},
        { color: "blue",  text: "Синий", textColor: "white"},
        { color: "orange",  text: "Оранжевый", textColor: "black"}
    ]

    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Simple List" }
        model: dataModel
        spacing: 10
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color

            Text {
                anchors.centerIn: parent
                text: modelData.text
                color: modelData.textColor
            }
        }
    }
}
