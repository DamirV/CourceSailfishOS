import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page{

ConfigurationValue {
    id: setting
    key: "/apps/app_name/setting_name"
    defaultValue: "Default"
    value: "Default"
}

ConfigurationValue {
    id: setting2
    key: "/apps/app_name/setting_name2"
    defaultValue: "true"
    value: "true"
}

Column {


    TextField {
        id: textField
        text: setting.value
       onTextChanged:{
           setting.value = textField.text
       }
       }

    Switch{
        id: mySwitch
        checked: setting2.value
        onClicked:{
            setting2.value = mySwitch.checked
        }

    }
    }
}
