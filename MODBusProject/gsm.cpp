#include "gsm.h"

GSM::GSM()
{
    m_OfonoModem = new OrgOfonoModemInterface("org.ofono", "/phonesim0", QDBusConnection::systemBus());
    m_VoiceCallManager = new OrgOfonoVoiceCallManagerInterface("org.ofono", "/phonesim0", QDBusConnection::systemBus());
    connect(m_VoiceCallManager, SIGNAL(PropertyChanged(const QString, const QDBusVariant)), this, SLOT(PropertyChanged(const QString, const QDBusVariant)));

    m_dial = false;
}

GSM::~GSM()
{
    delete(m_OfonoModem);
    delete(m_VoiceCallManager);
}


void GSM::outgoingCall(QString number)
{
    m_dial = true;
    qDebug("outgoingCall");
    QDBusPendingReply<QDBusObjectPath> pendingReplys = m_VoiceCallManager->Dial(number, "default");
    QDBusObjectPath dop = pendingReplys.value();
    m_myCurOutgoingCall.clear();
    m_myCurOutgoingCall.append(dop.path());
    /*if(pendingReplys.isFinished() == true)
    {
        currentCalls = pendingReplys;

        emit outgoingCallReceived(true);
    }
    else
    {
        emit outgoingCallReceived(false);
    }*/
}


// ---------------------------------------------------------------------------------------------------- //
// ------------------------------ OFONO MODEM ----------------------------------------------------------//
// ---------------------------------------------------------------------------------------------------- //

void GSM::SetPowerOn()
{
    m_OfonoModem->SetProperty("Powered", QDBusVariant(true));
    qDebug("Power On");
}


void GSM::SetPowerOff()
{
    m_OfonoModem->SetProperty("Powered", QDBusVariant(false));
}


// ---------------------------------------------------------------------------------------------------- //
// ------------------------------ OFONO VOICECALLS -----------------------------------------------------//
// ---------------------------------------------------------------------------------------------------- //

void GSM::Dial(QString &number)
{
    QDBusPendingReply<QDBusObjectPath> pedingReplys = m_VoiceCallManager->Dial(number, "default");
}


void GSM::ReleaseAndAnswer()
{
    m_VoiceCallManager->ReleaseAndAnswer();
}


void GSM::HangUpAll()
{
    qDebug("HangUpAll");
    m_myCurOutgoingCall = "";
    m_VoiceCallManager->HangupAll();
}

void GSM::answerCall()
{
    OrgOfonoVoiceCallInterface *call =
            new OrgOfonoVoiceCallInterface ("org.ofono", m_currentIncomingCall, QDBusConnection::systemBus());
    QVariantMap properties=call->GetProperties();
    QVariant property=properties.value("State");
    QString value=property.value<QString>();

    if(value == "incoming")
    {
        call->Answer();
        emit callAnswered();
        qDebug() << "call ansewered";
    }
}


// ---------------------------------------------------------------------------------------------------- //
// ------------------------------ OFONO CALLBACKS ------------------------------------------------------//
// ---------------------------------------------------------------------------------------------------- //

void GSM::PropertyChanged(const QString &name, const QDBusVariant &value)
{
    // voicecall manager
    if(name == "Calls")
    {
        qDebug("Incoming Calls: ");

        const QVariant var = value.variant();
        const QDBusArgument arg = var.value<QDBusArgument>();
        QList<QString> calls;
        arg >> calls;
        qDebug() << calls;

        if(calls.size() == 0)
        {
            qDebug("Call Denied");
            emit callDenied();
        }

        for(int i = 0; i < calls.count(); i++)
        {
            if(calls[i] != m_myCurOutgoingCall)
            {
                m_currentIncomingCall = calls.at(i);

                OrgOfonoVoiceCallInterface *call =
                        new OrgOfonoVoiceCallInterface ("org.ofono", calls.at(i), QDBusConnection::systemBus());
                QVariantMap properties = call->GetProperties();
                QVariant property = properties.value("LineIdentification");
                QString number = property.value<QString>();

                emit incomingCall(number);
                qDebug("notify about incoming call.");
                break;
            }
        }
    }
}


QDBusArgument &operator>>(QDBusArgument &a, QList<QString> &calls)
{
    calls.empty();
    a.beginArray();

    while(!a.atEnd())
    {
        QDBusObjectPath opath;
        a >> opath;
        calls.append(opath.path());
    }

    a.endArray();
    return a;
}
