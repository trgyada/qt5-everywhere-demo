import QtQuick 2.9
import QtQuick.Controls 2.5




Item {

    id:subModesPNG
    width: 1024
    height: 768
    rotation: 270
    Rectangle {
        id: thermometerGround
        width: 75
        height:75
        anchors.horizontalCenter: imgthermometer.horizontalCenter
        anchors.verticalCenter: imgthermometer.verticalCenter
        color: "#000000"
        opacity: 0.45
        radius: width / 15
    }

    Rectangle {
        id: thermometerBackGroundBorder
        width: 75
        height: 75
        anchors.horizontalCenter: imgthermometer.horizontalCenter
        anchors.verticalCenter: imgthermometer.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        opacity: 0.45

    }


    Image
   {

       id: imgthermometer
       source: "qrc:/qml/QtDemo/images/thermometer.png"
       anchors.left: parent.left
       anchors.leftMargin: 220
       anchors.top: parent.top
       anchors.topMargin: 350
       sourceSize.width: 65  // İtem'in genişliği
       sourceSize.height: 65 // İtem'in yüksekliği
       //opacity: 0.8
       z:1
       rotation: 0

   }


       Slider {
            id: valueSlider
            anchors.verticalCenter: imgthermometer.verticalCenter
            anchors.horizontalCenter: imgthermometer.horizontalCenter
            anchors.horizontalCenterOffset: 250


            from: 30
            to: 300
            value: 160 // Başlangıç değeri
            NumberAnimation {
                duration: 900 // Animasyon süresi (mS)
            }

            background: Rectangle {
                x: valueSlider.leftPadding
                y: valueSlider.topPadding + valueSlider.availableHeight / 2 - height / 2
                implicitWidth: 300
                implicitHeight: 50
                width: valueSlider.availableWidth
                height: 5
                radius: 2
                color: "#bdbebf"

                Rectangle {
                    width: valueSlider.availableWidth
                    height: 5
                    color: "#7d7a7a"
                    radius: 2
                }

            }

            handle: Rectangle {
                x: valueSlider.leftPadding + valueSlider.visualPosition * (valueSlider.availableWidth - width)
                y: valueSlider.topPadding + valueSlider.availableHeight / 2 - height / 2
                implicitWidth: 26
                implicitHeight: 26
                radius: 13
                color: valueSlider.pressed ? "#233343" : "#233343"
                border.color: "#7d7a7a"
                opacity: 0.7
            }

        }


       Text {
           id: tempBar
           anchors.top: valueSlider.top
           anchors.horizontalCenter: valueSlider.horizontalCenter
           anchors.topMargin: -40
           text: valueSlider.value.toFixed(0)
           color: "white"
           font.family: fontHelvetica.name
           font.pointSize: 20
       }

       Text {
           id: tempBarpercent
           anchors.left: tempBar.right  // tempBar'ın sağ tarafına hizala
           anchors.leftMargin: 5
           anchors.top: tempBar.top
           anchors.topMargin: 0
           text: "°C"
           color: "white"
           font.family: fontHelvetica.name
           font.pointSize: 8
       }

}















