import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;
        ListModel{
            id: myModel
            ListElement{ name: "Learn"; dateText: "1 Feb 2018";}
            ListElement{ name: "Learn"; dateText: "2 Feb 2018";}
            ListElement{ name: "Sleep"; dateText: "3 Feb 2018";}
            ListElement{ name: "Learn"; dateText: "4 Feb 2018";}
        }
        model: myModel
        delegate: Rectangle {
            width: view.itemWidth;
            height: view.itemHeight;
            Text {
                anchors.centerIn: parent
                text: name + " " + dateText
            }
        }
    }
}
