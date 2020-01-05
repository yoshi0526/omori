#include "backend.h"
#include <QDebug>

BackEnd::BackEnd(QObject *parent) : QObject(parent),
    m_numOfPkg(387),m_pkgSpeedCfg(100.0),m_pkgSpeedValue(0.0)
{
    timer = new QTimer(this);
    connect(timer,&QTimer::timeout, this, &BackEnd::updateStatus);
    timer->start(100);
    timer2 = new QTimer(this);
    connect(timer2,&QTimer::timeout, this, &BackEnd::updateStatus2);
    timer2->start(1000);
    reset();
}

void BackEnd::setNumOfPkg(const int num)
{
    if(m_numOfPkg==num)
        return;
    m_numOfPkg=num;
    emit numOfPkgChanged();
}

void BackEnd::setPkgSpeedCfg(const float cfgvalue)
{
    if(m_pkgSpeedCfg==cfgvalue)
        return ;
    m_pkgSpeedCfg = cfgvalue;
    emit pkgSpeedCfgChanged();
}

void BackEnd::setPkgSpeedValue(const float speedValue)
{
    if(m_pkgSpeedValue==speedValue)
        return ;
    m_pkgSpeedValue = speedValue;
    emit pkgSpeedValueChanged();
}

void BackEnd::updateStatus()
{
    m_cnt++;
    m_additionSpeed += m_pkgSpeedCfg;

    setPkgSpeedValue(m_additionSpeed/m_cnt);
}

void BackEnd::updateStatus2()
{
    float tempInt = m_pkgSpeedCfg/60.0 + (float)m_numOfPkg;
    setNumOfPkg(tempInt);

}

void BackEnd::reset()
{
    qDebug() << "reset";
    setNumOfPkg(0);
 }
