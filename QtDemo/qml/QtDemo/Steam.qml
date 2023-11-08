import QtQuick 2.2
import QtQuick.Controls 2.2

Item {

    id:subModesPNG
    width: 600
    height: 1024

    Modes{
        anchors.centerIn: undefined
        id:modes
    }

    Rectangle {
        id: imgtearBackGround
        width: 60
        height:60
        anchors.horizontalCenter: imgtear.horizontalCenter
        anchors.verticalCenter: imgtear.verticalCenter
        color: "#000000"
        opacity: 0.45
        radius: width / 15
    }

    Rectangle {
        id: imgtearBackGroundBorder
        width: 60
        height: 60
        anchors.horizontalCenter: imgtear.horizontalCenter
        anchors.verticalCenter: imgtear.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        opacity: 0.45

    }

    Image
   {

       id: imgtear
       source: "qrc:/qml/QtDemo/images/tear.png"
       anchors.left: parent.left
       anchors.leftMargin: 20
       anchors.top: parent.top
       anchors.topMargin: 350
       sourceSize.width: 50  // İtem'in genişliği
       sourceSize.height: 50 // İtem'in yüksekliği
       //opacity: 0.8
       z:1
       rotation: 0

   }
//BURASI SİNYAL İLE OLACAK AMA HER MOD DEĞİŞTİĞİNDE NELER OLACAK ONA BAK BİRAZ DAHA

    Slider {
         id: valueSlider
         anchors.verticalCenter: imgtear.verticalCenter
         anchors.horizontalCenter: imgtear.horizontalCenter
         anchors.horizontalCenterOffset: 350
         from: 0
         to: 100
         value: modes.currentMode === 0 ? 100 : (modes.currentMode === 1 ? 0 : 0)

         NumberAnimation {
             duration: 500 // Animasyon süresi (mS)
         }
         background: Rectangle {
             x: valueSlider.leftPadding
             y: valueSlider.topPadding + valueSlider.availableHeight / 2 - height / 2
             implicitWidth: 500
             implicitHeight: 50
             width: valueSlider.availableWidth
             height: 2
             radius: 2
             color: "#bdbebf"

             Rectangle {
                 width: valueSlider.availableWidth
                 height: 2
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
           id: steamBar
           anchors.top: valueSlider.top
           anchors.horizontalCenter: valueSlider.horizontalCenter
           anchors.topMargin: -40
           text: valueSlider.value.toFixed(0)
           color: "white"
           font.family: fontHelvetica.name
           font.pointSize: 30
       }

       Text {
           id: steamBarpercent
           anchors.left: steamBar.right  // steamBar'ın sağ tarafına hizala
           anchors.leftMargin: 5  // İstediğiniz boşluğu ayarlayabilirsiniz
           anchors.top: steamBar.top
           anchors.topMargin: 0
           anchors.horizontalCenter: valueSlider.horizontalCenter
           text: "%"
           color: "white"
           font.family: fontHelvetica.name
           font.pointSize: 12
       }

}















