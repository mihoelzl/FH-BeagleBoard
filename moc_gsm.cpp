/****************************************************************************
** Meta object code from reading C++ file 'gsm.h'
**
** Created: Sun Dec 5 09:35:45 2010
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "gsm.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gsm.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GSM[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      14,    5,    4,    4, 0x05,
      36,    4,    4,    4, 0x05,
      49,    4,    4,    4, 0x05,

 // slots: signature, parameters, type, tag, flags
      71,   64,    4,    4, 0x0a,
      93,    4,    4,    4, 0x0a,
     106,    4,    4,    4, 0x0a,
     119,    4,    4,    4, 0x0a,
     133,   64,    4,    4, 0x0a,
     148,    4,    4,    4, 0x0a,
     167,    4,    4,    4, 0x0a,
     190,  179,    4,    4, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_GSM[] = {
    "GSM\0\0innumber\0incomingCall(QString)\0"
    "callDenied()\0callAnswered()\0number\0"
    "outgoingCall(QString)\0answerCall()\0"
    "SetPowerOn()\0SetPowerOff()\0Dial(QString&)\0"
    "ReleaseAndAnswer()\0HangUpAll()\0"
    "name,value\0PropertyChanged(QString,QDBusVariant)\0"
};

const QMetaObject GSM::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_GSM,
      qt_meta_data_GSM, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GSM::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GSM::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GSM::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GSM))
        return static_cast<void*>(const_cast< GSM*>(this));
    return QObject::qt_metacast(_clname);
}

int GSM::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: incomingCall((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: callDenied(); break;
        case 2: callAnswered(); break;
        case 3: outgoingCall((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: answerCall(); break;
        case 5: SetPowerOn(); break;
        case 6: SetPowerOff(); break;
        case 7: Dial((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: ReleaseAndAnswer(); break;
        case 9: HangUpAll(); break;
        case 10: PropertyChanged((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QDBusVariant(*)>(_a[2]))); break;
        default: ;
        }
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void GSM::incomingCall(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GSM::callDenied()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void GSM::callAnswered()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
