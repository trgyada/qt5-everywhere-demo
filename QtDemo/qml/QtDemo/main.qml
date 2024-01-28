

import QtQuick 2.2
import QtQuick.Window 2.1
//import "engine.js" as Engine
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Window
{
    id: coloredRect
    visible: true
    width: 600
    height: 1024
    color: "#233343"

    BackGround{
        //anchors.centerIn: undefined
    }


         // Bir zamanlayıcı oluştur
         Timer {
             interval: 100 // Her saniye
             running: true
             repeat: true
             onTriggered: {
                 // Rastgele renk oluştur
                 coloredRect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
             }
         }







    FontLoader
    {
       id: fontHelvetica
       source: "qrc:/qml/QtDemo/fonts/helvetica.ttf"
    }

    Navigator{
        //anchors.centerIn: undefined
        id:navigator

    }

    Loader {
        id: contentLoader
        anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 150
        anchors.left: parent.left
        anchors.leftMargin: -180
        sourceComponent: {
            if (navigator.navigatorIndex === 0) {
                return combinedComponent
            } else if (navigator.navigatorIndex === 1) {

                return wifiComponent
            } else if (navigator.navigatorIndex === 2) {
                return emptyComponent
            } else {
                return emptyComponent
            }
        }

        Component {
            id: combinedComponent
            Item {
                //anchors.fill: parent
                visible: navigator.navigatorIndex === 0
                Steam {
                    //anchors.fill: parent
                }
                Temperature {
                    //anchors.fill: parent
                }
                Clock {
                    //anchors.fill: parent
                }
                Modes{
                    //anchors.fill:
                    rotation: 90

                }
            }
        }

        Component {
            id: wifiComponent
            Item {
                //anchors.fill: parent
                visible: navigator.navigatorIndex === 1
                Wifi {
                    //anchors.fill: parent
                }
            }
        }
        Component {
            id: emptyComponent
            Rectangle {
                color: "transparent"
            }
        }
    }


    Rectangle {
        id: movingBox
        width: 1500
        height: 800
        color: "red"

        // Animasyonu yönetmek için kullanılan x özelliğini tanımlayın
        property int targetX: 2000 - width // Kutunun hedef X konumu, ekranın sağına

        // X konumunu animasyonla değiştirmek için PropertyAnimation kullanın
        PropertyAnimation {
            id: animation
            target: movingBox
            property: "x"
            to: movingBox.targetX // Hedef X konumu
            duration: 850 // Animasyon süresi (ms)
            loops: Animation.Infinite // Sonsuz döngü
            running: true // Animasyonu başlat
        }
    }

    Rectangle {
        id: movingBox1
        width: 1500
        height: 800
        color: "red"

        // Animasyonu yönetmek için kullanılan x özelliğini tanımlayın
        property int targetY: 2000 - width // Kutunun hedef X konumu, ekranın sağına

        // X konumunu animasyonla değiştirmek için PropertyAnimation kullanın
        PropertyAnimation {
            id: animation1
            target: movingBox1
            property: "y"
            to: movingBox1.targetY // Hedef X konumu
            duration: 850 // Animasyon süresi (ms)
            loops: Animation.Infinite // Sonsuz döngü
            running: true // Animasyonu başlat
        }
    }

 }


