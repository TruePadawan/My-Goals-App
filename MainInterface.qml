import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    width: 500
    height: 250
    property string textValue: textField.text
    property alias addButton: button
    property alias _textField: textField


    Rectangle {
        radius: 10
        anchors.fill: parent
        color: "bisque"

        Column {
            id: column
            anchors.fill: parent
            spacing: 30
            padding: 30

            Label {
                width: 100
                height: 25
                text: "My Goals"
                font.bold: true
                font.pixelSize: 20

            }

            TextField {
                id: textField
                width: (0.9 * column.width)
                height: 40
                focus: true
                font.pixelSize: 22
                placeholderText: qsTr("")
                background: Rectangle {
                    border.color: "skyblue"
                }
            }

            Button {
                id: button
                width: 130
                height: 50
                text: qsTr("Add")
                font.pixelSize: 14

                background: Rectangle {
                    border.width: 1
                    border.color: "skyblue"
                    color: button.down ? "transparent" : "skyblue"
                    radius: 2
                }
            }
        }
    }

//    states: [
//        State {
//            name: "invalid"

//            PropertyChanges {
//                target: textField
//                background: Rectangle {
//                    border.color: "red"
//                }
//            }
//        }
//    ]

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
