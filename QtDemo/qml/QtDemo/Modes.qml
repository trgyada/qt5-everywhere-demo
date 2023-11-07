import QtQuick 2.2
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.12
Item {
    id:modesPNG
    width: 768
    height: 1024
    property int sizeWidthandHeight: 70
    property int sizeWidth: 150
    property int sizeHeight: 80

    property int buttonTopMargin: 150
    property int radiusforButtonBg: 15
    property int currentMode: 1


    TabBar {
         id: tabbarModes
         spacing: 160
         anchors.left: parent.left
         anchors.leftMargin: 150
         background: Rectangle {
             color: "transparent" // TabBar'ın arka plan rengini belirler
         }
         TabButton {
             text: "SteamMode"
             anchors{
                 top: parent.top
                 topMargin: buttonTopMargin

             }
             id: steamModeId
             height: 60
             width: 60
             background: Rectangle {
                 color: "transparent"
                 radius: 20
             }
             contentItem: Rectangle {
                 color: "transparent"
                 Image {
                     id: steamimage
                     sourceSize.width: sizeWidthandHeight
                     sourceSize.height: sizeWidthandHeight
                     source: "qrc:/qml/QtDemo/images/steam.png"
                     z: 2
                 }
                 Rectangle {
                     id: tab1
                     width: sizeWidth
                     height: sizeHeight
                     color: "#0e5a69"
                     anchors.horizontalCenter: steamimage.horizontalCenter
                     anchors.verticalCenter: steamimage.verticalCenter
                     opacity: 0.4
                     radius: radiusforButtonBg
                     z:0
                     MouseArea {
                         anchors.fill: parent
                         onPressed: {
                             tab1.color = "#012b33"; // Basılı tutma başladığında renk değiştirme
                             currentMode: 0
                         }
                         onReleased: {
                             tab1.color = "#0e5a69"; // Basılı tutma bittiğinde renk eski haline dönsün
                         }
                     }
                     Rectangle {
                         width: 150
                         height: 80
                         color: "transparent"
                         radius: width / 15
                         border.width: 2
                         border.color: "#7d7a7a"
                         opacity: 0.45
                     }
                 }
             }
         }
         TabButton {
             text: "CombiMode"
             anchors{
                 top: parent.top
                 topMargin: buttonTopMargin

             }
             id: combiModeId
             height: 60
             width: 60

             background: Rectangle {
                 color: "transparent"
                 radius: 20
             }
             contentItem: Rectangle {
                 color: "transparent"
                 Image {
                     id: combimodecombineimage
                     source: "qrc:/qml/QtDemo/images/combimode.png"
                     sourceSize.width: 100// 50x50 boyutunda
                     sourceSize.height: 100
                     z: 2
                 }
                 Rectangle {
                     id: tab2
                     width: sizeWidth
                     height: sizeHeight
                     color: "#0e5a69"
                     anchors.horizontalCenter: combimodecombineimage.horizontalCenter
                     anchors.verticalCenter: combimodecombineimage.verticalCenter
                     opacity: 0.4
                     radius: radiusforButtonBg
                     z:0
                     MouseArea {
                         anchors.fill: parent
                         onPressed: {
                             tab2.color = "#012b33"; // Basılı tutma başladığında renk değiştirme
                             currentMode: 1
                         }
                         onReleased: {
                             tab2.color = "#0e5a69"; // Basılı tutma bittiğinde renk eski haline dönsün
                         }
                     }
                     Rectangle {
                         width: 150
                         height: 80
                         color: "transparent"
                         radius: width / 15
                         border.width: 2
                         border.color: "#7d7a7a"
                         opacity: 0.45
                     }
                 }
             }
         }
         TabButton {
             text: "HotAirMode"
             anchors{
                 top: parent.top
                 topMargin: buttonTopMargin
             }
             id: hotairModeId
             height: 60
             width: 60

             background: Rectangle {
                 color: "transparent"
                 radius: 20
             }
             contentItem: Rectangle {
                 color: "transparent"

                 Image {
                     id: hotairmodePng
                     source: "qrc:/qml/QtDemo/images/hotair.png"
                     sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                     sourceSize.height: sizeWidthandHeight
                     z:1
                 }
                 Rectangle {
                     id: tab3
                     width: sizeWidth
                     height: sizeHeight
                     color: "#0e5a69"
                     anchors.horizontalCenter: hotairmodePng.horizontalCenter
                     anchors.verticalCenter: hotairmodePng.verticalCenter
                     opacity: 0.4
                     radius: radiusforButtonBg
                     z:0
                     MouseArea {
                         anchors.fill: parent
                         onPressed: {
                             tab3.color = "#012b33"; // Basılı tutma başladığında renk değiştirme
                             currentMode: 2
                         }
                         onReleased: {
                             tab3.color = "#0e5a69"; // Basılı tutma bittiğinde renk eski haline dönsün
                         }
                     }
                     Rectangle {
                         width: 150
                         height: 80
                         color: "transparent"
                         radius: width / 15
                         border.width: 2
                         border.color: "#7d7a7a"
                         opacity: 0.45
                     }
                 }
             }
         }
    }
}
