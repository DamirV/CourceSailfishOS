import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.Filter 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Filter {
        id: filter
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            Image {
                id: image1
                source: "qrc:/images/image.jpg"
                width: parent.width
                height: parent.width
            }

            Button{
                text: qsTr("To black and wight")
                onClicked: {
                    filter.setUrl(image1.source);
                    image2.source = filter.reciveImage();
                }
            }

            Image{
                id: image2
                width: parent.width/2
                height: parent.width/2
            }

        }
    }
}
