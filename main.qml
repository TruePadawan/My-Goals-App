import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("My Goals")

    Column {
        id: mainLayout
        x: (parent.width/2) - (mainInterface.width/2)
        y: 50
        spacing: 20

        MainInterface {
            id: mainInterface
            addButton.onClicked: {
                if (mainInterface.textValue.trim().length > 1)
                {
                    mainInterface._textField.background.border.color = "skyblue"
                    var newGoal = Qt.createComponent("GoalsOutput.qml")
                    newGoal.createObject(mainLayout, {_width: mainInterface.width, goalText: mainInterface.textValue.trim() })
                }else
                {
                    console.log("Text Field cannot contain less than 2 characters")
                    mainInterface._textField.background.border.color = "red"
                }
            }
        }
    }

}
