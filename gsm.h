#ifndef GSM_H
#define GSM_H

#include <QObject>
#include "OfonoModem.h"
#include "OfonoVoiceCallManager.h"
#include "OfonoSimManager.h"
#include "VoiceCall.h"

/**
 * This is a wrapper of the ofono dbus classes. Will be passed as context element to qml ui.
 */
class GSM : public QObject
{
    Q_OBJECT

public:
    GSM();
    ~GSM();

signals:
    /**
     * This signal will be emitted when an incoming call arrives.
     * The qml ui receives it and displays the incoming call screen.
     */
    void incomingCall(QString innumber);
    /**
     * This signal will be emitted when an incoming call hasn't been accepted in time
     * or has been denied by the user itself. qml ui switches back to menu screen.
     */
    void callDenied();
    /**
     * Will be emitted when the incoming call has been accapted. qml ui switches to call in progress screen.
     */
    void callAnswered();

public slots:
    /**
     * qml ui commands wrapper to execute an outgoing call.
     */
    void outgoingCall(QString number);
    /**
     * qml ui informs wrapper that current incoming call should be answered.
     */
    void answerCall();

    // ofono modem
    /**
     * Turn on gsm modem.
     */
    void SetPowerOn();
    /**
     * Turn off gsm modem.
     */
    void SetPowerOff();

    // ofono voicecall manager
    /**

    void Dial(QString &number);
    void ReleaseAndAnswer();*/
    /**
     * Hang up all currently active calls.
     */
    void HangUpAll();

    // Callback
    /**
     * Callback function of ofono dbus classes.
     */
    void PropertyChanged(const QString &name, const QDBusVariant &value);

private:
    /**
     * ofono modem interface which will be used to switch the modem on/off.
     */
    OrgOfonoModemInterface *m_OfonoModem;
    /**
     * this class enables us to detect incoming calls and to do outgoing calls.
     */
    OrgOfonoVoiceCallManagerInterface *m_VoiceCallManager;
    /**
     * Contains currently available calls.
     */
    QDBusPendingReply<QDBusObjectPath> currentCalls;
    /**
     * Contains currently dialed QDBusObjectPath (of our VoiceCall object)
     */
    QString m_myCurOutgoingCall;
    //bool m_dial;
    /**
     * Contains QDBusObjectPath of currently incoming VoiceCall object.
     * Will be used to answer or decline phone call.
     */
    QString m_currentIncomingCall;
};

#endif // GSM_H
