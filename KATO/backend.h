#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QTimer>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int numOfPkg READ numOfPkg WRITE setNumOfPkg NOTIFY numOfPkgChanged)
    Q_PROPERTY(float pkgSpeedCfg READ pkgSpeedCfg WRITE setPkgSpeedCfg NOTIFY pkgSpeedCfgChanged)
    Q_PROPERTY(float pkgSpeedValue READ pkgSpeedValue WRITE setPkgSpeedValue NOTIFY pkgSpeedValueChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);

    int numOfPkg() {return m_numOfPkg;}
    void setNumOfPkg(const int num);
    float pkgSpeedCfg(){return m_pkgSpeedCfg;}
    void setPkgSpeedCfg(const float cfgvalue);
    float pkgSpeedValue(){return m_pkgSpeedValue;}
    void setPkgSpeedValue(const float speedValue);
    void updateStatus();
    void updateStatus2();

public slots:
    void reset();


signals:
    void numOfPkgChanged();
    void pkgSpeedCfgChanged();
    void pkgSpeedValueChanged();

private:
    int m_numOfPkg;
    float m_pkgSpeedCfg;
    float m_pkgSpeedValue;
    QTimer *timer;
    QTimer *timer2;
    float m_cnt;
    int m_additionSpeed;
};

#endif // BACKEND_H
