#include "gsm.h"

GSM::GSM()
{
    m_OfonoModem = new OrgOfonoModemInterface("org.ofono", "/phonesim0", QDBusConnection::systemBus());
    m_VoiceCallManager = new OrgOfonoVoiceCallManagerInterface("org.ofono", "/phonesim0", QDBusConnection::systemBus());
    connect(m_VoiceCallManager, SIGNAL(PropertyChanged(const QString, const QDBusVariant)), this, SLOT(PropertyChanged(const QString, const QDBusVariant)));
}

GSM::~GSM()
{
    delete(m_OfonoModem);
    delete(m_VoiceCallManager);
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
// ------------------------------ OFONO VOICECALL MANAGER ----------------------------------------------//
// ---------------------------------------------------------------------------------------------------- //

void GSM::outgoingCall(QString number)
{
    qDebug("outgoingCall");
    QDBusPendingReply<QDBusObjectPath> pendingReplys = m_VoiceCallManager->Dial(number, "default");
    QDBusObjectPath dop = pendingReplys.value();
    m_myCurOutgoingCall.clear();
    m_myCurOutgoingCall.append(dop.path());
}

void GSM::HangUpAll()
{
    qDebug("HangUpAll");
    m_myCurOutgoingCall = "";
    m_VoiceCallManager->HangupAll();
}

// ---------------------------------------------------------------------------------------------------- //
// ------------------------------ OFONO VOICECALL -----------------------------------------------------//
// ---------------------------------------------------------------------------------------------------- //

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
