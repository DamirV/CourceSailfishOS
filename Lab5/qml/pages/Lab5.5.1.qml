import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    function loadNews() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'https://www.cbr-xml-daily.ru/daily_utf8.xml', true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlListModel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlListModel
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"}
        XmlRole { name: "Value"; query: "Value/string()"}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "News" }
        model: xmlListModel
        delegate: Column {
            x: 10; width: parent.width - 2 * x
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                text: qsTr(Name + " : " + Value)
            }
        }
    }
    Component.onCompleted: loadNews()


}

//http://www.cbr.ru/scripts/XML_daily.asp
