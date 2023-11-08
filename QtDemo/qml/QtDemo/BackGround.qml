import QtQuick 2.9
import QtQuick.Controls 2.5


Item {

    id:backGroundPNG
    width: 480
    height: 800


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















