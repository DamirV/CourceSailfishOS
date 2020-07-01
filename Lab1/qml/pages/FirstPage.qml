import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        Column
        {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Cчетчик")
            }
            Label
            {
                id:label
                text: count
                x: Theme.horizontalPageMargin
                property int count: 0
            }
            Button
            {
                id: button
                text: qsTr("Увеличить число")
                width: 300
                x: Theme.horizontalPageMargin

                onClicked:
                  label.count++;
            }
        }
    }
}

