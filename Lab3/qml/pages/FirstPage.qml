import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingMedium

            Label {
                id: numberLabel;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Enter the number:"
            }
            TextField {
                id: numberTextField;
                width: parent.width;
                inputMethodHints: Qt.ImhFormattedNumbersOnly;
                label: "Number"
                placeholderText: label
            }

            Button {
                id: pressedButton;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Нажми на меня"
                onClicked: {
                    pressedButton.color = "lightgreen";
                    pressedButton.text = "Готово";
                }
            }

            Button {
                id: holdButton;
                anchors.horizontalCenter: parent.horizontalCenter;
                highlightBackgroundColor: "lightblue"
                text: "Удерживай меня"
                onPressedButtonsChanged: {
                    if(down)
                        holdLabel.text = "Нажата"
                    else
                        holdLabel.text = "Отпущена"
                }
            }
            Label {
                id: holdLabel;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Отпущена"
            }

            ValueButton {
                width: parent.width;
                property int count: 0
                label: "Счетчик"
                description: "Считает количество нажатий"
                value: count;
                onClicked: count++;
            }

            DatePicker {
                date: new Date();
                daysVisible: true
                monthYearVisible: true
                onDateTextChanged:
                    console.log(dateText);
            }

            Item {
                height: timePicker.height;
                width: parent.width;
                TimePicker {
                    width: parent.width
                    id: timePicker;
                    hour: 3
                    minute: 0
                    onTimeTextChanged: console.log(timeText)
                }
                Label {
                    anchors.centerIn: timePicker;
                    text: timePicker.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }
            }

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Строка"
                description: "Выберите"
                menu: ContextMenu {
                    id: menu
                    MenuItem { text: "Первая" }
                    MenuItem { text: "Вторая" }
                    MenuItem { text: "Третья" }
                }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
            }

            Switch {
                anchors.horizontalCenter: parent.horizontalCenter;
                id: mute;
                iconSource: "image://theme/icon-m-speaker-mute?"
                             + (checked ? Theme.highlightColor : Theme.primaryColor);

            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: mute.checked?"Включен":"Выключен";
            }

            Slider {
                width: parent.width
                label: "Текущее значение = " + value;
                minimumValue: 0;
                maximumValue: 100;
                value: 0;
                stepSize: 1;
            }

            Rectangle {
                color: "transparent"
                width: parent.width;
                height: 200;
            }
        }
    }
}

