import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top; bottom: urlField.top;
            left: parent.left; right: parent.right;
        }
        url: "https://www.youtube.com/"
    }
    TextField {
        id: urlField
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom
        }
        text: "https://www.youtube.com/"
        label: webView.title
        EnterKey.onClicked: webView.url = text
    }
}
