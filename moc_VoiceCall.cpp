/****************************************************************************
** Meta object code from reading C++ file 'VoiceCall.h'
**
** Created: Sun Dec 5 09:35:47 2010
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "VoiceCall.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VoiceCall.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_OrgOfonoVoiceCallInterface[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      32,   28,   27,   27, 0x05,
      66,   58,   27,   27, 0x05,

 // slots: signature, parameters, type, tag, flags
     124,   27,  104,   27, 0x0a,
     133,   27,  104,   27, 0x0a,
     140,   28,  104,   27, 0x0a,
     188,   27,  157,   27, 0x0a,
     204,   27,  104,   27, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_OrgOfonoVoiceCallInterface[] = {
    "OrgOfonoVoiceCallInterface\0\0in0\0"
    "DisconnectReason(QString)\0in0,in1\0"
    "PropertyChanged(QString,QDBusVariant)\0"
    "QDBusPendingReply<>\0Answer()\0Busy()\0"
    "Deflect(QString)\0QDBusPendingReply<QVariantMap>\0"
    "GetProperties()\0Hangup()\0"
};

const QMetaObject OrgOfonoVoiceCallInterface::staticMetaObject = {
    { &QDBusAbstractInterface::staticMetaObject, qt_meta_stringdata_OrgOfonoVoiceCallInterface,
      qt_meta_data_OrgOfonoVoiceCallInterface, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &OrgOfonoVoiceCallInterface::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *OrgOfonoVoiceCallInterface::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *OrgOfonoVoiceCallInterface::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_OrgOfonoVoiceCallInterface))
        return static_cast<void*>(const_cast< OrgOfonoVoiceCallInterface*>(this));
    return QDBusAbstractInterface::qt_metacast(_clname);
}

int OrgOfonoVoiceCallInterface::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDBusAbstractInterface::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: DisconnectReason((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: PropertyChanged((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QDBusVariant(*)>(_a[2]))); break;
        case 2: { QDBusPendingReply<> _r = Answer();
            if (_a[0]) *reinterpret_cast< QDBusPendingReply<>*>(_a[0]) = _r; }  break;
        case 3: { QDBusPendingReply<> _r = Busy();
            if (_a[0]) *reinterpret_cast< QDBusPendingReply<>*>(_a[0]) = _r; }  break;
        case 4: { QDBusPendingReply<> _r = Deflect((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QDBusPendingReply<>*>(_a[0]) = _r; }  break;
        case 5: { QDBusPendingReply<QVariantMap> _r = GetProperties();
            if (_a[0]) *reinterpret_cast< QDBusPendingReply<QVariantMap>*>(_a[0]) = _r; }  break;
        case 6: { QDBusPendingReply<> _r = Hangup();
            if (_a[0]) *reinterpret_cast< QDBusPendingReply<>*>(_a[0]) = _r; }  break;
        default: ;
        }
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void OrgOfonoVoiceCallInterface::DisconnectReason(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void OrgOfonoVoiceCallInterface::PropertyChanged(const QString & _t1, const QDBusVariant & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
