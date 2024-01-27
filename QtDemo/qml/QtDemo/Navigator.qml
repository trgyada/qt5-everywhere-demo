import QtQuick 2.2
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.12


Item {

    id:navigatorPNG
    width: 1024
    height: 600
    rotation: 90
    anchors.top: parent.top
    anchors.topMargin: 200
    anchors.right: parent.right
    anchors.rightMargin: -200

    property int topMargin: 15
    property int sizeWidthandHeight: 50
    property int buttontopMargin: 10

    Rectangle {
        id: navigatorBar
        width: 480
        height: 100
        anchors.top: parent.top
        anchors.topMargin: -20
        color: "#000000"
        radius: width / 50
    }


    property int currentIndex: 0
    property int navigatorIndex: 0
    TabBar {
         id: tabBar
         spacing: 100
         anchors.left: parent.left
         anchors.leftMargin: 50
         background: Rectangle {
             color: "transparent" // TabBar'ın arka plan rengini belirler
         }

         onCurrentIndexChanged: {
             tab1.visible = currentIndex === 0
             tab2.visible = currentIndex === 1
             tab3.visible = currentIndex === 2
             navigatorIndex = tabBar.currentIndex;
         }


         TabButton {
             text: "Tab 1"
             anchors{
                 top: parent.top
                 topMargin: buttontopMargin
                 left: parent.left
                 leftMargin: 50
             }
             onClicked: tabBar.currentIndex = 0
             id: cookingmode
             height: 60
             width: 60

             background: Rectangle {
                 color: "transparent"
                 radius: 20

                 GaussianBlur {
                     anchors.fill: parent
                     source: parent
                     radius: cookingmode.pressed ? 20 : 0 // Buton tıklandığında blur uygula
                 }
             }

             contentItem: Rectangle {
                 color: "transparent"
                 Image {
                     id: cookingmodePng
                     source: "qrc:/qml/QtDemo/images/cookingmode.png"
                     sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                     sourceSize.height: sizeWidthandHeight
                     anchors.fill: parent
                     z:1
                 }

                 Rectangle {
                     id: tab1
                     width: sizeWidthandHeight+15
                     height: sizeWidthandHeight+22
                     color: "#0e5a69"
                     anchors.top: cookingmodePng.top
                     anchors.left: cookingmodePng.left
                     anchors.topMargin: -8
                     anchors.leftMargin: -8
                     visible: currentIndex === 0
                     opacity: 0.4
                     radius: 3
                     z:0
                 }
             }
         }

         TabButton {
             text: "Tab 2"
             anchors{
                 top: parent.top
                 topMargin: buttontopMargin
                 left: parent.left
                 leftMargin: 220
             }
             onClicked: tabBar.currentIndex = 1
             id: wifiMode
             height: 60
             width: 60
             background: Rectangle {
                 color: "transparent"
                 radius: 20

                 GaussianBlur {
                     anchors.fill: parent
                     source: parent
                     radius: wifiMode.pressed ? 20 : 0 // Buton tıklandığında blur uygula
                 }
             }
             contentItem: Rectangle {
                 color: "transparent"
                 Image {
                     id: wifiModePng
                     source: "qrc:/qml/QtDemo/images/wifi.png"
                     sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                     sourceSize.height: sizeWidthandHeight
                     anchors.fill: parent
                     z:1
                 }

                 Rectangle {
                     id: tab2
                     width: sizeWidthandHeight+15
                     height: sizeWidthandHeight+22
                     color: "#0e5a69"
                     anchors.top: wifiModePng.top
                     anchors.left: wifiModePng.left
                     anchors.topMargin: -8
                     anchors.leftMargin: -8
                     visible: currentIndex === 1
                     opacity: 0.4
                     radius: 3
                     z:0
                 }
             }
         }

         TabButton {
             text: "Tab 3"
             anchors{
                 top: parent.top
                 topMargin: buttontopMargin
                 left: parent.left
                 leftMargin: 370
             }
             onClicked: tabBar.currentIndex = 2
             id: settingsMode
             height: 60
             width: 60
             background: Rectangle {
                 color: "transparent"
                 radius: 20

                 GaussianBlur {
                     anchors.fill: parent
                     source: parent
                     radius: settingsMode.pressed ? 20 : 0 // Buton tıklandığında blur uygula
                 }
             }
             contentItem: Rectangle {
                 color: "transparent"
                 Image {
                     id: settingsModePng
                     source: "qrc:/qml/QtDemo/images/settings.png"
                     sourceSize.width: sizeWidthandHeight // 50x50 boyutunda
                     sourceSize.height: sizeWidthandHeight
                     anchors.fill: parent
                     z:1
                 }
                 Rectangle {
                     id: tab3
                     width: sizeWidthandHeight+15
                     height: sizeWidthandHeight+22
                     color: "#0e5a69"
                     anchors.top: settingsModePng.top
                     anchors.left: settingsModePng.left
                     anchors.topMargin: -8
                     anchors.leftMargin: -8
                     visible: currentIndex === 2
                     opacity: 0.4
                     radius: 3
                     z:0
                 }
             }
         }
     }
}
