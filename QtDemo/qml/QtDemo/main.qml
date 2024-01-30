

import QtQuick 2.2
import QtQuick.Window 2.1
//import "engine.js" as Engine
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

ApplicationWindow
{


    id: coloredRect
    visible: true
    width: 1024
    height: 768
    color: "#233343"
    //visibility: "FullScreen"



    BackGround{
        anchors.top: parent.top
        anchors.topMargin: -127
        anchors.left: parent.left
        anchors.leftMargin: -127
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

        sourceComponent: {
            if (navigator.navigatorIndex === 0) {
                return combinedComponent
            } else if (navigator.navigatorIndex === 1) {

                return wifiComponent
            } else if (navigator.navigatorIndex === 2) {

                return settingsComponent
            } else {
                return emptyComponent
            }
        }

        Component {
            id: combinedComponent
            Item {
                anchors.fill: parent
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.top: parent.top
                anchors.topMargin: -110


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
                    rotation: 270

                }
            }
        }

        Component {
            id: wifiComponent
            Item {
                anchors.top: parent.top
                anchors.topMargin: -110
                //anchors.fill: parent
                visible: navigator.navigatorIndex === 1
                Wifi {
                    //anchors.fill: parent
                }
            }

        }


        Component {
            id: settingsComponent
            Item {
                //anchors.fill: parent
                visible: navigator.navigatorIndex === 2
                Settings {
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

 }


