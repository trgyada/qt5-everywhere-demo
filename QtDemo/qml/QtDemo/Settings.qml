import QtQuick 2.9
import QtQuick.Controls 2.5
import CustomTypes 1.0



Item {
    visible: true
    width: 1024
    height: 768
    rotation: 270
    id:settingsPage

    Rectangle {
        width: 100
        height: 100
        color: "red"
    }


        Text {
            font.family: fontHelvetica.name
            font.pointSize: 12
            text: "Status:"
            anchors.centerIn: parent
            opacity: 0.7
             color: "white"

        }

}















