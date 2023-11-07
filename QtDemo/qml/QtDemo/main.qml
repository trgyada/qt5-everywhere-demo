

import QtQuick 2.2
import QtQuick.Window 2.1
//import "engine.js" as Engine
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Window
{
    visible: true
    width: 768
    height: 1024
    //color: "#233343"
    color: "yellow"

    BackGround{
        anchors.centerIn: undefined
    }

    FontLoader
    {
       id: fontHelvetica
       source: "qrc:/qml/QtDemo/fonts/helvetica.ttf"
    }

    Navigator{
        anchors.centerIn: undefined
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
                return emptyComponent
            } else {
                return emptyComponent
            }
        }

        Component {
            id: combinedComponent
            Item {
                anchors.fill: parent
                visible: navigator.navigatorIndex === 0
                Steam {
                    anchors.fill: parent
                }
                Temperature {
                    anchors.fill: parent
                }
                Clock {
                    anchors.fill: parent
                }
                Modes{
                    anchors.fill: parent
                }
            }
        }

        Component {
            id: wifiComponent
            Item {
                anchors.fill: parent
                visible: navigator.navigatorIndex === 1
                Wifi {
                    anchors.fill: parent
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


