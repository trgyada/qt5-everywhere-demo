import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4




Item {

    id:backGroundPNG
    width: 768
    height: 1024



    Image
   {

       id: imgthermometer
       source: "qrc:/qml/QtDemo/images/mbg.png"
       anchors.left: parent.left
       anchors.leftMargin: 0
       anchors.top: parent.top
       anchors.topMargin: 0
       width: 768  // İtem'in genişliği
       height: 1024 // İtem'in yüksekliği
       opacity: 0.5
       rotation: 0

   }



}















