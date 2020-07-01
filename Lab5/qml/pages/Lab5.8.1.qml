import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page{

    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property string text: "Default"
        property bool flag: true
    }


Column {


    TextField {
        id: textField
        text: settings.text
       onTextChanged:{
           settings.text = textField.text
       }
       }

    Switch{
        id: mySwitch
        checked: settings.flag
        onClicked:{
            settings.flag = mySwitch.checked
        }
    }
    }
}
