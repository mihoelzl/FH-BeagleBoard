#ifndef GSM_H
#define GSM_H

#include <QObject>
#include "OfonoModem.h"
#include "OfonoVoiceCallManager.h"
#include "OfonoSimManager.h"
#include "VoiceCall.h"

class GSM : public QObject
{
    Q_OBJECT

public:
    GSM();
    ~GSM();

signals:
    void incomingCall(QString innumber);
    void callDenied();
    void callAnswered();
    //void outgoingCallReceived(bool received);

public slots:
    void outgoingCall(QString number);
    void answerCall();

    // ofono modem
    void SetPowerOn();
    void SetPowerOff();

    // ofono voicecall manager
    void Dial(QString &number);
    void ReleaseAndAnswer();
    void HangUpAll();

    // ofono sim manager


    // Callback
    void PropertyChanged(const QString &name, const QDBusVariant &value);

private:
    OrgOfonoModemInterface *m_OfonoModem;
    OrgOfonoVoiceCallManagerInterface *m_VoiceCallManager;

    QDBusPendingReply<QDBusObjectPath> currentCalls;

    QString m_myCurOutgoingCall;
    bool m_dial;

    QString m_currentIncomingCall;
};

#endif // GSM_H
