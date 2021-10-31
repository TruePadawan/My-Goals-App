import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    width: _width
    height: 50
    property int _width: 0
    property string goalText: ""
    Rectangle {
        anchors.fill: parent
        color: "skyblue"

        Text {
            text: goalText
            font.pixelSize: 18
            anchors.centerIn: parent
        }
    }
}
