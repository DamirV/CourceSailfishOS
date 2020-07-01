import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {

   Dao{
       id: dao
   }

    ListModel {
        id: dataModel
    }

    SilicaListView {
        anchors.fill: parent
        model: dataModel


        delegate: ListItem {
            Label{
            x: Theme.horizontalPageMargin
            text: model.text
            }
             onClicked: {
                 console.log(qsTr("" + model.index))
                 console.log(qsTr("" + model.id))
                 dao.deleteNoes(model.id)
                 selectNotes()
             }
        }

    }

    Button {
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                text: "Add item";
                onClicked:{
                    onClicked: {
                        dao.insertNotes(textLabel.text)
                        selectNotes()
                    }
                }
    }

    TextField{
        id: textLabel
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: addButton.top
        text: qsTr("")
    }

    function selectNotes() {
            dataModel.clear();
            dao.retrieveNotes(function(notes) {
                for (var i = 0; i < notes.length; i++) {
                    var note = notes.item(i);
                    dataModel.append({id: note.id, text: note.note});
                }
            });
        }

    Component.onCompleted: {
        //dao.insertNotes("Note 1")
        selectNotes()
    }

}
