#ifndef BACK_H
#define BACK_H

#include <QObject>

class Back : public QObject
{
    Q_OBJECT

public:
    explicit Back(QObject *parent = nullptr);
    int numberOfWifiNetworks;



signals:
    void valueChanged(const QStringList &s);
    void numberOfWifiNetworksChanged();


public slots:
    void changeValue();
    int numberwifi();

private:


};

#endif // BACK_H
