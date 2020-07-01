import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        //ListElement { text: "Белый"; index: 0;}
    }

    SilicaListView {
        anchors.fill: parent
        model: dataModel

        delegate: ListItem {
            Label{
            x: Theme.horizontalPageMargin
            text: model.text + model.textIndex
            }
             onClicked: {
                 dataModel.remove(model.index)
             }
        }
    }

    Button {
                id: addButton
                property int myIndex: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                text: "Add item";
                onClicked:{
                    onClicked: dataModel.append({"text": "index №", "textIndex": myIndex })
                    myIndex++;
                }
    }




}
