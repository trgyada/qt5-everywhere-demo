import QtQuick 2.9
import QtQuick.Controls 2.5


Item {

    id:backGroundPNG
    width: 800
    height: 480
    rotation: 90
    Image
   {

       id: imgthermometer
       source: "qrc:/qml/QtDemo/images/mbg.png"
       anchors.left: parent.left
       anchors.leftMargin: 0
       anchors.top: parent.top
       anchors.topMargin: 0
       width: 800  // İtem'in genişliği
       height: 480 // İtem'in yüksekliği
       opacity: 0.7
       rotation:90

   }



}














