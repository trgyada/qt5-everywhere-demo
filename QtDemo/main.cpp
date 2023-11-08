#include "qprocess.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QApplication>
#include <back.h>
#include <QNetworkConfigurationManager>
#include <QNetworkConfiguration>
#include <QDebug>
#include <QNetworkSession>


QString wifiSSID;
QStringList wifiDataList;
QStringList wifiInfo;
QStringList wifiSSIDList;

int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<Back>("CustomTypes", 1, 0, "Back");


    Back *back = new Back;

    QQmlEngine qmlengine;

    qmlengine.rootContext()->setContextProperty("back", (QObject*)back);
    engine.load(QUrl(QStringLiteral("qrc:///qml/QtDemo/main.qml")));

    return app.exec();
}




QByteArray output;
//int numberOfWifiNetworks = 0; // WiFi ağı sayısı

void Back::changeValue()
{

    numberOfWifiNetworks = 0;

    QProcess process;
    QObject::connect(&process, &QProcess::readyReadStandardOutput, [&](){
        output = process.readAllStandardOutput();
        wifiDataList = QString(output).split("\n", QString::SkipEmptyParts);

        // Sinyal gücü eşik değeri
        const int signalStrengthThreshold = 20;

        for (const QString &wifiData : wifiDataList) {
            wifiInfo = wifiData.split(QRegExp("\\s+"), QString::SkipEmptyParts);

            if (wifiInfo.size() >= 2) {
                wifiSSID = wifiInfo.at(1);
                int wifiSignalStrength = wifiInfo.at(6).toInt();

                // Sinyal gücü eşik değerini kontrol et
                if (wifiSignalStrength > signalStrengthThreshold) {
                    wifiSSIDList << wifiSSID;
                    numberOfWifiNetworks++;
                }
            }
        }
        emit numberOfWifiNetworksChanged();

    });

    process.start("nmcli", {"device", "wifi", "rescan"});
    process.waitForFinished();
    process.start("nmcli", {"device", "wifi", "list"});
    process.waitForFinished();



    valueChanged(wifiSSIDList);
    //numberwifi(numberOfWifiNetworks);
    wifiSSIDList.clear();
    wifiSSID.clear();
    wifiInfo.clear();
    wifiDataList.clear();
    output.clear();
}

int Back::numberwifi()
{
    qDebug() << numberOfWifiNetworks;
    return numberOfWifiNetworks;
}
