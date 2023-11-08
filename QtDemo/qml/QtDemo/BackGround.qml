import QtQuick 2.9
import QtQuick.Controls 2.5


Item {

    id:backGroundPNG
    width: 800
    height: 480
    rotation: 90
    anchors.top: parent.top
    anchors.topMargin: 40
    anchors.right: parent.right
    anchors.rightMargin: -150
    Image
   {

       id: imgthermometer
       source: "qrc:/qml/QtDemo/images/mbg.png"
       anchors.left: parent.left
       anchors.leftMargin: 0
       anchors.top: parent.top
       anchors.topMargin: 0
       width: 600  // İtem'in genişliği
       height: 1024 // İtem'in yüksekliği
       opacity: 0.7
       rotation: 0

   }



}















