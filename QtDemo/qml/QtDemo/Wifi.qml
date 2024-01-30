import QtQuick 2.9
import QtQuick.Controls 2.5
import CustomTypes 1.0




Item {

    id:wifiPage
    width: 1024
    height: 768
    property int numberOfWifiNetworks: 0 // C++ tarafından set edilecek
    rotation: 270
    anchors.top: parent.top
    anchors.topMargin: 0
    anchors.right: parent.right
    anchors.rightMargin: 0


    Component {
        id: wifiItem

        Rectangle {
            width: 430
            height: 60
            color: "#1b4464"
            opacity: .8
            radius: 8
            anchors.left: parent.left
            anchors.leftMargin: 40

            Rectangle {
                width: 400
                height: 60
                anchors.fill: parent
                color: "transparent"
                border.color: "#7d7a7a"
                border.width: 2
                radius: 8
            }

            Image {
                source: "qrc:/qml/QtDemo/images/wifi.png"
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.top: parent.top
                anchors.topMargin: 5
                sourceSize.width: 50
                sourceSize.height: 50
                opacity: 1
            }

        }
    }



    // WiFi nesnelerini dinamik olarak oluştur
    ListView {
        id: wifilistview
        anchors.fill: parent
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: 150
        anchors.topMargin: 100
        model: ListModel {
            id: wifiModel
        }

        spacing: 28 // Item'ler arasındaki boşluk
        delegate: wifiItem

    }



    Back {
        id: back
    }



    Label{
    id:label
    anchors.left: wifilistview.left
    anchors.leftMargin: 110
    anchors.top: wifilistview.top
    anchors.topMargin: 18
    color: "white"
    opacity: 0.7
    font.family: fontHelvetica.name
    font.pointSize: 16
    Component.onCompleted: {
        // Sayfa ilk yüklendiğinde bir kereliğine scan yap
        back.changeValue();
        var maxWifiCount = Math.min(back.numberwifi(), 5);
        label.text = s.slice(0, maxWifiCount).join("\n\n\n\n");
    }
    Connections {
        target: back
        onValueChanged: {
            var maxWifiCount = Math.min(back.numberwifi(), 5);
            label.text = s.slice(0, maxWifiCount).join("\n\n\n\n");
        }
    }
    }

    Button {
        x:170
        y:550
        contentItem: Text {
            text: "WiFi Scan"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
            color: "white" // İstediğiniz metin rengi
        }

        Component.onCompleted: {
            // Sayfa ilk yüklendiğinde bir kereliğine scan yap
            back.changeValue();
            var maxWifiCount = Math.min(back.numberwifi(), 5);

            for (var i = wifiModel.count; i < maxWifiCount; ++i) {
                wifiModel.append({ value: i + 1 });
            }

            if (wifiModel.count > maxWifiCount) {
                wifiModel.remove(maxWifiCount, wifiModel.count - maxWifiCount);
            }

        }
        onClicked: {back.changeValue();
            var maxWifiCount = Math.min(back.numberwifi(), 5);

            for (var i = wifiModel.count; i < maxWifiCount; ++i) {
                wifiModel.append({ value: i + 1 });
            }

            if (wifiModel.count > maxWifiCount) {
                wifiModel.remove(maxWifiCount, wifiModel.count - maxWifiCount);
            }
        }
        background: Rectangle {
            color: "#000000" // İstediğiniz rengi buraya ekleyebilirsiniz
            border.color: "#7d7a7a"
            border.width: 2
            radius: 3
            opacity: 0.35
        }
        width: 150 // İstediğiniz genişlik
        height: 80 // İstediğiniz yükseklik
    }


    Button {
        x:475
        y:550
        contentItem: Text {
            text: "Connect WiFi"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
            color: "white" // İstediğiniz metin rengi
        }
        onClicked: {/*back.changeValue();*/
           /* var maxWifiCount = Math.min(back.numberwifi(), 5);

            for (var i = wifiModel.count; i < maxWifiCount; ++i) {
                wifiModel.append({ value: i + 1 });
            }

            if (wifiModel.count > maxWifiCount) {
                wifiModel.remove(maxWifiCount, wifiModel.count - maxWifiCount);
            }*/
        }
        background: Rectangle {
            color: "#000000" // İstediğiniz rengi buraya ekleyebilirsiniz
            border.color: "#7d7a7a"
            border.width: 2
            radius: 3
            opacity: 0.35
        }
        width: 150 // İstediğiniz genişlik
        height: 80 // İstediğiniz yükseklik
    }


    Text {
           id: wifimenuTitle

           anchors.left: parent.left
           anchors.leftMargin: 335
           anchors.topMargin: 0
           anchors.top: parent.top
           text: "Wi-Fi"
           color: "white"
           font.family: fontHelvetica.name
           font.pointSize: 30
           opacity: 1
           z:1
           Rectangle {
               width: 768
               height: 55
               anchors.top: parent.top
               anchors.topMargin: -10
               anchors.horizontalCenter: parent.horizontalCenter
               color: "#1b4464"
               opacity: .5
               z:0
           }

       }




}















