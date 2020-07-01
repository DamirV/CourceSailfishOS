import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        ListElement { color: "white"; text: "Белый"; textColor: "black";}
        ListElement { color: "black";  text: "Черный"; textColor: "white";}
        ListElement { color: "blue";  text: "Синий"; textColor: "white";}
        ListElement { color: "orange";  text: "Оранжевый"; textColor: "black";}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Color List" }
        model: dataModel

        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.textColor
            }
        }
    }
}
