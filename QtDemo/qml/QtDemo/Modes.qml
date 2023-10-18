import QtQuick 2.2

Item {
    id:modesPNG
    width: 768
    height: 1024

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
        width: 150
        height: 80
        anchors.horizontalCenter: imgHotairBackGround.horizontalCenter
        anchors.verticalCenter: imgHotairBackGround.verticalCenter
        color: "transparent"
        radius: width / 15
        border.width: 2
        border.color: "#7d7a7a"
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

}
