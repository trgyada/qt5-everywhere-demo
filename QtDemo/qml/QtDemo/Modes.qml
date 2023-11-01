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
                     id: steammodePng
                     source: "qrc:/qml/QtDemo/images/steam.png"
                     sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                     sourceSize.height: sizeWidthandHeight
                     z:1
                 }

                 Rectangle {
                     id: tab1
                     width: sizeWidthandHeight+35
                     height: sizeWidthandHeight+22
                     color: "#0e5a69"
                     anchors.top: steammodePng.top
                     anchors.left: steammodePng.left
                     anchors.topMargin: -8
                     anchors.leftMargin: -8
                     opacity: 0.4
                     radius: radiusforButtonBg
                     z:0
                     MouseArea {
                         anchors.fill: parent
                         onPressed: {
                             tab1.color = "#012b33"; // Basılı tutma başladığında renk değiştirme
                         }
                         onReleased: {
                             tab1.color = "#0e5a69"; // Basılı tutma bittiğinde renk eski haline dönsün
                         }
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

                 Item {
                     id: combipng

                     Image {
                         id: combimodehotairPng
                         source: "qrc:/qml/QtDemo/images/hotair.png"
                         sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                         sourceSize.height: sizeWidthandHeight
                         anchors.left: parent.left
                         anchors.leftMargin: 7
                         opacity: 0.9
                     }

                     Image {
                         id: combimodePng
                         source: "qrc:/qml/QtDemo/images/steam.png"
                         sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                         sourceSize.height: sizeWidthandHeight
                         anchors.left: parent.left
                         anchors.leftMargin: -7
                     }


                     z:2
                 }


                 Rectangle {
                     id: tab2
                     width: sizeWidth
                     height: sizeHeight
                     color: "#0e5a69"
                     anchors.left: combipng.left
                     anchors.leftMargin: -40
                     opacity: 0.4
                     radius: radiusforButtonBg
                     z:0
                     MouseArea {
                         anchors.fill: parent
                         onPressed: {
                             tab2.color = "#012b33"; // Basılı tutma başladığında renk değiştirme
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
/*
    Rectangle {
        id: imgSteam1BackGround
        width: 150
        height: 80
        anchors.horizontalCenter: imgSteam1.horizontalCenter
        anchors.verticalCenter: imgSteam1.verticalCenter
        color: "#000000"
        opacity: 0.45
        radius: width / 15
    }

    Rectangle {
        id: imgSteam1BackGroundBorder
        width: 150
        height: 80
        anchors.horizontalCenter: imgSteam1.horizontalCenter
        anchors.verticalCenter: imgSteam1.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        opacity: 0.45
    }

    Image
   {
       id: imgSteam1
       source: "qrc:/qml/QtDemo/images/steam.png"
       anchors.left: parent.left
       anchors.leftMargin: 110
       anchors.top: parent.top
       anchors.topMargin: 180
       sourceSize.width: 50  // İtem'in genişliği
       sourceSize.height: 50 // İtem'in yüksekliği
       //opacity: 0.8
       rotation: 90
   }



    Rectangle {
        id: imgHotair1BackGround
        width: 150
        height: 80
        anchors.horizontalCenter: imgHotair1.horizontalCenter
        anchors.verticalCenter: imgHotair1.verticalCenter
        color: "#000000"
        opacity: 0.5
        radius: width / 15
    }

    Rectangle {
        id: imgHotair1BackGroundBorder
        width: 150
        height: 80
        anchors.horizontalCenter: imgHotair1.horizontalCenter
        anchors.verticalCenter: imgHotair1.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        opacity: 0.45
    }

    Image
   {
       id: imgHotair1
       source: "qrc:/qml/QtDemo/images/hotair.png"
       anchors.leftMargin: 590
       anchors.left: parent.left
       anchors.top: parent.top
       anchors.topMargin: 180
       sourceSize.width: 50  // İtem'in genişliği
       sourceSize.height: 50 // İtem'in yüksekliği
       //opacity: 0.8
   }


    Rectangle {
        id: imgHotairBackGround
        width: 150
        height: 80
        anchors.horizontalCenter: imgSteam.horizontalCenter
        anchors.verticalCenter: imgSteam.verticalCenter
        color: "#000000"
        opacity: 0.25
        radius: width / 15
        anchors.horizontalCenterOffset: 17
    }

    Rectangle {
        id: imgSteamBackGround
        width: 150
        height: 80
        anchors.horizontalCenter: imgHotair.horizontalCenter
        anchors.verticalCenter: imgHotair.verticalCenter
        color: "#000000"
        opacity: 0.25
        radius: width / 15
        anchors.horizontalCenterOffset: -17

    }

    Rectangle {
        id: imgHotairBackGroundBorder
        anchors.left: parent.left
        anchors.leftMargin: 335
        anchors.top: parent.top
        anchors.topMargin: 180
        sourceSize.width: 50  // İtem'in genişliği
        sourceSize.height: 50 // İtem'in yüksekliği
        //opacity: 0.8
        z:1
        rotation: 45

    }

     Image
    {
        id: imgHotair
        source: "qrc:/qml/QtDemo/images/hotair.png"
        anchors.leftMargin: 369
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 180
        sourceSize.width: 50  // İtem'in genişliği
        sourceSize.height: 50 // İtem'in yüksekliği
        //opacity: 0.8
    }
        width: 150
        height: 80
        anchors.horizontalCenter: imgHotairBackGround.horizontalCenter
        anchors.verticalCenter: imgHotairBackGround.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
        age
           {
               id: imgSteam
               source: "qrc:/qml/QtDemo/images/steam.png"
               anchors.left: parent.left
               anchors.leftMargin: 335
               anchors.top: parent.top
               anchors.topMargin: 180
               sourceSize.width: 50  // İtem'in genişliği
               sourceSize.height: 50 // İtem'in yüksekliği
               //opacity: 0.8
               z:1
               rotation: 45

           }

            Image
           {
               id: imgHotair
               source: "qrc:/qml/QtDemo/images/hotair.png"
               anchors.leftMargin: 369
               anchors.left: parent.left
               anchors.top: parent.top
               anchors.topMargin: 180
               sourceSize.width: 50  // İtem'in genişliği
               sourceSize.height: 50 // İtem'in yüksekliği
               //opacity: 0.8
           }
        opacity: 0.45
    }

    Image
   {
       id: imgSteam
       source: "qrc:/qml/QtDemo/images/steam.png"
       anchors.left: parent.left
       anchors.leftMargin: 335
       anchors.top: parent.top
       anchors.topMargin: 180
       sourceSize.width: 50  // İtem'in genişliği
       sourceSize.height: 50 // İtem'in yüksekliği
       //opacity: 0.8
       z:1
       rotation: 45

   }

    Image
   {
       id: imgHotair
       source: "qrc:/qml/QtDemo/images/hotair.png"
       anchors.leftMargin: 369
       anchors.left: parent.left
       anchors.top: parent.top
       anchors.topMargin: 180
       sourceSize.width: 50  // İtem'in genişliği
       sourceSize.height: 50 // İtem'in yüksekliği
       //opacity: 0.8
   }
*/
}
