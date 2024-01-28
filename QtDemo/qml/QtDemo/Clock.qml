import QtQuick 2.15
import QtQuick.Controls 2.15


Item {

    id:subModesPNG
    width: 600
    height: 1024
    //rotation: 90
    Rectangle {
        id: imgclockGround
        width: 45
        height:45
        anchors.horizontalCenter: imgclock.horizontalCenter
        anchors.verticalCenter: imgclock.verticalCenter
        color: "#000000"
        opacity: 0.45
        radius: width / 15
    }

    Rectangle {
        id: imgclockBackGroundBorder
        width: 45
        height: 45
        anchors.horizontalCenter: imgclock.horizontalCenter
        anchors.verticalCenter: imgclock.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        opacity: 0.45

    }

    Image
   {

       id: imgclock
       source: "qrc:/qml/QtDemo/images/clock.png"
       anchors.left: parent.left
       anchors.leftMargin: 220
       anchors.top: parent.top
       anchors.topMargin: 400
       sourceSize.width: 35  // İtem'in genişliği
       sourceSize.height: 35 // İtem'in yüksekliği
       //opacity: 0.8
       z:1
       rotation: 0

   }

    Slider {
        id: valueSlider
        anchors.verticalCenter: imgclock.verticalCenter
        anchors.horizontalCenter: imgclock.horizontalCenter
        anchors.horizontalCenterOffset: 200
        anchors.verticalCenterOffset: 0
        from: 0
        to: 480 // 24 saat * 60 dakika
        stepSize: 1 // Dakika başına artış
        value: 0 // Başlangıç değeri (08:00)
        NumberAnimation {
            duration: 700 // Animasyon süresi (mS)
        }
         background: Rectangle {
             x: valueSlider.leftPadding
             y: valueSlider.topPadding + valueSlider.availableHeight / 2 - height / 2
             implicitWidth: 300
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
          id: timeBar
          anchors.top: valueSlider.top
          anchors.horizontalCenter: valueSlider.horizontalCenter
          anchors.topMargin: -40
          text: {
              var hours = Math.floor(valueSlider.value / 60);
              return (hours < 10 ? "0" : "") + hours + ":" + ("00" + (valueSlider.value % 60)).slice(-2);
          }
          color: "white"
          font.family: fontHelvetica.name
          font.pointSize: 30
      }

      Text {
          id: timeBarpercentminute
          anchors.left: timeBar.right  // tempBar'ın sağ tarafına hizala
          anchors.leftMargin: 0  // İstediğiniz boşluğu ayarlayabilirsiniz
          anchors.top: timeBar.top
          anchors.topMargin: -8
          text: "h:m"
          color: "white"
          font.family: fontHelvetica.name
          font.pointSize: 11
      }
}















