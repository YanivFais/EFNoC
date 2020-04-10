//
// Generated file, do not edit! Created by opp_msgc 4.1 from NoCs.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "NoCs_m.h"

// Template rule which fires if a struct or class doesn't have operator<<
template<typename T>
std::ostream& operator<<(std::ostream& out,const T&) {return out;}

// Another default rule (prevents compiler from choosing base class' doPacking())
template<typename T>
void doPacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doPacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}

template<typename T>
void doUnpacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doUnpacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}




EXECUTE_ON_STARTUP(
    cEnum *e = cEnum::find("NOC_MSGS");
    if (!e) enums.getInstance()->add(e = new cEnum("NOC_MSGS"));
    e->insert(NOC_FLIT_MSG, "NOC_FLIT_MSG");
    e->insert(NOC_CREDIT_MSG, "NOC_CREDIT_MSG");
    e->insert(NOC_REQ_MSG, "NOC_REQ_MSG");
    e->insert(NOC_GNT_MSG, "NOC_GNT_MSG");
    e->insert(NOC_ACK_MSG, "NOC_ACK_MSG");
    e->insert(NOC_POP_MSG, "NOC_POP_MSG");
    e->insert(NOC_GEN_MSG, "NOC_GEN_MSG");
    e->insert(NOC_APP_MSG, "NOC_APP_MSG");
    e->insert(NOC_CLK_MSG, "NOC_CLK_MSG");
);

EXECUTE_ON_STARTUP(
    cEnum *e = cEnum::find("NOC_FLIT_TYPES");
    if (!e) enums.getInstance()->add(e = new cEnum("NOC_FLIT_TYPES"));
    e->insert(NOC_START_FLIT, "NOC_START_FLIT");
    e->insert(NOC_MID_FLIT, "NOC_MID_FLIT");
    e->insert(NOC_END_FLIT, "NOC_END_FLIT");
);

Register_Class(NoCFlitMsg);

NoCFlitMsg::NoCFlitMsg(const char *name, int kind) : cPacket(name,kind)
{
    this->type_var = 0;
    this->VC_var = 0;
    this->SL_var = 0;
    this->pktId_var = 0;
    this->flits_var = 0;
    this->flitIdx_var = 0;
    this->srcId_var = 0;
    this->dstId_var = 0;
    this->firstNet_var = 0;
    this->InjectTime_var = 0;
    this->FirstNetTime_var = 0;
}

NoCFlitMsg::NoCFlitMsg(const NoCFlitMsg& other) : cPacket()
{
    setName(other.getName());
    operator=(other);
}

NoCFlitMsg::~NoCFlitMsg()
{
}

NoCFlitMsg& NoCFlitMsg::operator=(const NoCFlitMsg& other)
{
    if (this==&other) return *this;
    cPacket::operator=(other);
    this->type_var = other.type_var;
    this->VC_var = other.VC_var;
    this->SL_var = other.SL_var;
    this->pktId_var = other.pktId_var;
    this->flits_var = other.flits_var;
    this->flitIdx_var = other.flitIdx_var;
    this->srcId_var = other.srcId_var;
    this->dstId_var = other.dstId_var;
    this->firstNet_var = other.firstNet_var;
    this->InjectTime_var = other.InjectTime_var;
    this->FirstNetTime_var = other.FirstNetTime_var;
    return *this;
}

void NoCFlitMsg::parsimPack(cCommBuffer *b)
{
    cPacket::parsimPack(b);
    doPacking(b,this->type_var);
    doPacking(b,this->VC_var);
    doPacking(b,this->SL_var);
    doPacking(b,this->pktId_var);
    doPacking(b,this->flits_var);
    doPacking(b,this->flitIdx_var);
    doPacking(b,this->srcId_var);
    doPacking(b,this->dstId_var);
    doPacking(b,this->firstNet_var);
    doPacking(b,this->InjectTime_var);
    doPacking(b,this->FirstNetTime_var);
}

void NoCFlitMsg::parsimUnpack(cCommBuffer *b)
{
    cPacket::parsimUnpack(b);
    doUnpacking(b,this->type_var);
    doUnpacking(b,this->VC_var);
    doUnpacking(b,this->SL_var);
    doUnpacking(b,this->pktId_var);
    doUnpacking(b,this->flits_var);
    doUnpacking(b,this->flitIdx_var);
    doUnpacking(b,this->srcId_var);
    doUnpacking(b,this->dstId_var);
    doUnpacking(b,this->firstNet_var);
    doUnpacking(b,this->InjectTime_var);
    doUnpacking(b,this->FirstNetTime_var);
}

int NoCFlitMsg::getType() const
{
    return type_var;
}

void NoCFlitMsg::setType(int type_var)
{
    this->type_var = type_var;
}

int NoCFlitMsg::getVC() const
{
    return VC_var;
}

void NoCFlitMsg::setVC(int VC_var)
{
    this->VC_var = VC_var;
}

int NoCFlitMsg::getSL() const
{
    return SL_var;
}

void NoCFlitMsg::setSL(int SL_var)
{
    this->SL_var = SL_var;
}

int NoCFlitMsg::getPktId() const
{
    return pktId_var;
}

void NoCFlitMsg::setPktId(int pktId_var)
{
    this->pktId_var = pktId_var;
}

int NoCFlitMsg::getFlits() const
{
    return flits_var;
}

void NoCFlitMsg::setFlits(int flits_var)
{
    this->flits_var = flits_var;
}

int NoCFlitMsg::getFlitIdx() const
{
    return flitIdx_var;
}

void NoCFlitMsg::setFlitIdx(int flitIdx_var)
{
    this->flitIdx_var = flitIdx_var;
}

int NoCFlitMsg::getSrcId() const
{
    return srcId_var;
}

void NoCFlitMsg::setSrcId(int srcId_var)
{
    this->srcId_var = srcId_var;
}

int NoCFlitMsg::getDstId() const
{
    return dstId_var;
}

void NoCFlitMsg::setDstId(int dstId_var)
{
    this->dstId_var = dstId_var;
}

bool NoCFlitMsg::getFirstNet() const
{
    return firstNet_var;
}

void NoCFlitMsg::setFirstNet(bool firstNet_var)
{
    this->firstNet_var = firstNet_var;
}

simtime_t NoCFlitMsg::getInjectTime() const
{
    return InjectTime_var;
}

void NoCFlitMsg::setInjectTime(simtime_t InjectTime_var)
{
    this->InjectTime_var = InjectTime_var;
}

simtime_t NoCFlitMsg::getFirstNetTime() const
{
    return FirstNetTime_var;
}

void NoCFlitMsg::setFirstNetTime(simtime_t FirstNetTime_var)
{
    this->FirstNetTime_var = FirstNetTime_var;
}

class NoCFlitMsgDescriptor : public cClassDescriptor
{
  public:
    NoCFlitMsgDescriptor();
    virtual ~NoCFlitMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCFlitMsgDescriptor);

NoCFlitMsgDescriptor::NoCFlitMsgDescriptor() : cClassDescriptor("NoCFlitMsg", "cPacket")
{
}

NoCFlitMsgDescriptor::~NoCFlitMsgDescriptor()
{
}

bool NoCFlitMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCFlitMsg *>(obj)!=NULL;
}

const char *NoCFlitMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCFlitMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 11+basedesc->getFieldCount(object) : 11;
}

unsigned int NoCFlitMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<11) ? fieldTypeFlags[field] : 0;
}

const char *NoCFlitMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "type",
        "VC",
        "SL",
        "pktId",
        "flits",
        "flitIdx",
        "srcId",
        "dstId",
        "firstNet",
        "InjectTime",
        "FirstNetTime",
    };
    return (field>=0 && field<11) ? fieldNames[field] : NULL;
}

int NoCFlitMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='t' && strcmp(fieldName, "type")==0) return base+0;
    if (fieldName[0]=='V' && strcmp(fieldName, "VC")==0) return base+1;
    if (fieldName[0]=='S' && strcmp(fieldName, "SL")==0) return base+2;
    if (fieldName[0]=='p' && strcmp(fieldName, "pktId")==0) return base+3;
    if (fieldName[0]=='f' && strcmp(fieldName, "flits")==0) return base+4;
    if (fieldName[0]=='f' && strcmp(fieldName, "flitIdx")==0) return base+5;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcId")==0) return base+6;
    if (fieldName[0]=='d' && strcmp(fieldName, "dstId")==0) return base+7;
    if (fieldName[0]=='f' && strcmp(fieldName, "firstNet")==0) return base+8;
    if (fieldName[0]=='I' && strcmp(fieldName, "InjectTime")==0) return base+9;
    if (fieldName[0]=='F' && strcmp(fieldName, "FirstNetTime")==0) return base+10;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCFlitMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "bool",
        "simtime_t",
        "simtime_t",
    };
    return (field>=0 && field<11) ? fieldTypeStrings[field] : NULL;
}

const char *NoCFlitMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCFlitMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCFlitMsg *pp = (NoCFlitMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCFlitMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCFlitMsg *pp = (NoCFlitMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getType());
        case 1: return long2string(pp->getVC());
        case 2: return long2string(pp->getSL());
        case 3: return long2string(pp->getPktId());
        case 4: return long2string(pp->getFlits());
        case 5: return long2string(pp->getFlitIdx());
        case 6: return long2string(pp->getSrcId());
        case 7: return long2string(pp->getDstId());
        case 8: return bool2string(pp->getFirstNet());
        case 9: return double2string(pp->getInjectTime());
        case 10: return double2string(pp->getFirstNetTime());
        default: return "";
    }
}

bool NoCFlitMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCFlitMsg *pp = (NoCFlitMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setType(string2long(value)); return true;
        case 1: pp->setVC(string2long(value)); return true;
        case 2: pp->setSL(string2long(value)); return true;
        case 3: pp->setPktId(string2long(value)); return true;
        case 4: pp->setFlits(string2long(value)); return true;
        case 5: pp->setFlitIdx(string2long(value)); return true;
        case 6: pp->setSrcId(string2long(value)); return true;
        case 7: pp->setDstId(string2long(value)); return true;
        case 8: pp->setFirstNet(string2bool(value)); return true;
        case 9: pp->setInjectTime(string2double(value)); return true;
        case 10: pp->setFirstNetTime(string2double(value)); return true;
        default: return false;
    }
}

const char *NoCFlitMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<11) ? fieldStructNames[field] : NULL;
}

void *NoCFlitMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCFlitMsg *pp = (NoCFlitMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCCreditMsg);

NoCCreditMsg::NoCCreditMsg(const char *name, int kind) : cMessage(name,kind)
{
    this->VC_var = 0;
    this->flits_var = 0;
    this->msgs_var = 0;
}

NoCCreditMsg::NoCCreditMsg(const NoCCreditMsg& other) : cMessage()
{
    setName(other.getName());
    operator=(other);
}

NoCCreditMsg::~NoCCreditMsg()
{
}

NoCCreditMsg& NoCCreditMsg::operator=(const NoCCreditMsg& other)
{
    if (this==&other) return *this;
    cMessage::operator=(other);
    this->VC_var = other.VC_var;
    this->flits_var = other.flits_var;
    this->msgs_var = other.msgs_var;
    return *this;
}

void NoCCreditMsg::parsimPack(cCommBuffer *b)
{
    cMessage::parsimPack(b);
    doPacking(b,this->VC_var);
    doPacking(b,this->flits_var);
    doPacking(b,this->msgs_var);
}

void NoCCreditMsg::parsimUnpack(cCommBuffer *b)
{
    cMessage::parsimUnpack(b);
    doUnpacking(b,this->VC_var);
    doUnpacking(b,this->flits_var);
    doUnpacking(b,this->msgs_var);
}

int NoCCreditMsg::getVC() const
{
    return VC_var;
}

void NoCCreditMsg::setVC(int VC_var)
{
    this->VC_var = VC_var;
}

int NoCCreditMsg::getFlits() const
{
    return flits_var;
}

void NoCCreditMsg::setFlits(int flits_var)
{
    this->flits_var = flits_var;
}

int NoCCreditMsg::getMsgs() const
{
    return msgs_var;
}

void NoCCreditMsg::setMsgs(int msgs_var)
{
    this->msgs_var = msgs_var;
}

class NoCCreditMsgDescriptor : public cClassDescriptor
{
  public:
    NoCCreditMsgDescriptor();
    virtual ~NoCCreditMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCCreditMsgDescriptor);

NoCCreditMsgDescriptor::NoCCreditMsgDescriptor() : cClassDescriptor("NoCCreditMsg", "cMessage")
{
}

NoCCreditMsgDescriptor::~NoCCreditMsgDescriptor()
{
}

bool NoCCreditMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCCreditMsg *>(obj)!=NULL;
}

const char *NoCCreditMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCCreditMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 3+basedesc->getFieldCount(object) : 3;
}

unsigned int NoCCreditMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<3) ? fieldTypeFlags[field] : 0;
}

const char *NoCCreditMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "VC",
        "flits",
        "msgs",
    };
    return (field>=0 && field<3) ? fieldNames[field] : NULL;
}

int NoCCreditMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='V' && strcmp(fieldName, "VC")==0) return base+0;
    if (fieldName[0]=='f' && strcmp(fieldName, "flits")==0) return base+1;
    if (fieldName[0]=='m' && strcmp(fieldName, "msgs")==0) return base+2;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCCreditMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<3) ? fieldTypeStrings[field] : NULL;
}

const char *NoCCreditMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCCreditMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCCreditMsg *pp = (NoCCreditMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCCreditMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCCreditMsg *pp = (NoCCreditMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getVC());
        case 1: return long2string(pp->getFlits());
        case 2: return long2string(pp->getMsgs());
        default: return "";
    }
}

bool NoCCreditMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCCreditMsg *pp = (NoCCreditMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setVC(string2long(value)); return true;
        case 1: pp->setFlits(string2long(value)); return true;
        case 2: pp->setMsgs(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCCreditMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<3) ? fieldStructNames[field] : NULL;
}

void *NoCCreditMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCCreditMsg *pp = (NoCCreditMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCReqMsg);

NoCReqMsg::NoCReqMsg(const char *name, int kind) : cMessage(name,kind)
{
    this->outVC_var = 0;
    this->inVC_var = 0;
    this->outPortNum_var = 0;
    this->pktId_var = 0;
    this->numFlits_var = 0;
    this->numGranted_var = 0;
    this->numAcked_var = 0;
}

NoCReqMsg::NoCReqMsg(const NoCReqMsg& other) : cMessage()
{
    setName(other.getName());
    operator=(other);
}

NoCReqMsg::~NoCReqMsg()
{
}

NoCReqMsg& NoCReqMsg::operator=(const NoCReqMsg& other)
{
    if (this==&other) return *this;
    cMessage::operator=(other);
    this->outVC_var = other.outVC_var;
    this->inVC_var = other.inVC_var;
    this->outPortNum_var = other.outPortNum_var;
    this->pktId_var = other.pktId_var;
    this->numFlits_var = other.numFlits_var;
    this->numGranted_var = other.numGranted_var;
    this->numAcked_var = other.numAcked_var;
    return *this;
}

void NoCReqMsg::parsimPack(cCommBuffer *b)
{
    cMessage::parsimPack(b);
    doPacking(b,this->outVC_var);
    doPacking(b,this->inVC_var);
    doPacking(b,this->outPortNum_var);
    doPacking(b,this->pktId_var);
    doPacking(b,this->numFlits_var);
    doPacking(b,this->numGranted_var);
    doPacking(b,this->numAcked_var);
}

void NoCReqMsg::parsimUnpack(cCommBuffer *b)
{
    cMessage::parsimUnpack(b);
    doUnpacking(b,this->outVC_var);
    doUnpacking(b,this->inVC_var);
    doUnpacking(b,this->outPortNum_var);
    doUnpacking(b,this->pktId_var);
    doUnpacking(b,this->numFlits_var);
    doUnpacking(b,this->numGranted_var);
    doUnpacking(b,this->numAcked_var);
}

int NoCReqMsg::getOutVC() const
{
    return outVC_var;
}

void NoCReqMsg::setOutVC(int outVC_var)
{
    this->outVC_var = outVC_var;
}

int NoCReqMsg::getInVC() const
{
    return inVC_var;
}

void NoCReqMsg::setInVC(int inVC_var)
{
    this->inVC_var = inVC_var;
}

int NoCReqMsg::getOutPortNum() const
{
    return outPortNum_var;
}

void NoCReqMsg::setOutPortNum(int outPortNum_var)
{
    this->outPortNum_var = outPortNum_var;
}

int NoCReqMsg::getPktId() const
{
    return pktId_var;
}

void NoCReqMsg::setPktId(int pktId_var)
{
    this->pktId_var = pktId_var;
}

int NoCReqMsg::getNumFlits() const
{
    return numFlits_var;
}

void NoCReqMsg::setNumFlits(int numFlits_var)
{
    this->numFlits_var = numFlits_var;
}

int NoCReqMsg::getNumGranted() const
{
    return numGranted_var;
}

void NoCReqMsg::setNumGranted(int numGranted_var)
{
    this->numGranted_var = numGranted_var;
}

int NoCReqMsg::getNumAcked() const
{
    return numAcked_var;
}

void NoCReqMsg::setNumAcked(int numAcked_var)
{
    this->numAcked_var = numAcked_var;
}

class NoCReqMsgDescriptor : public cClassDescriptor
{
  public:
    NoCReqMsgDescriptor();
    virtual ~NoCReqMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCReqMsgDescriptor);

NoCReqMsgDescriptor::NoCReqMsgDescriptor() : cClassDescriptor("NoCReqMsg", "cMessage")
{
}

NoCReqMsgDescriptor::~NoCReqMsgDescriptor()
{
}

bool NoCReqMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCReqMsg *>(obj)!=NULL;
}

const char *NoCReqMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCReqMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 7+basedesc->getFieldCount(object) : 7;
}

unsigned int NoCReqMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<7) ? fieldTypeFlags[field] : 0;
}

const char *NoCReqMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "outVC",
        "inVC",
        "outPortNum",
        "pktId",
        "numFlits",
        "numGranted",
        "numAcked",
    };
    return (field>=0 && field<7) ? fieldNames[field] : NULL;
}

int NoCReqMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='o' && strcmp(fieldName, "outVC")==0) return base+0;
    if (fieldName[0]=='i' && strcmp(fieldName, "inVC")==0) return base+1;
    if (fieldName[0]=='o' && strcmp(fieldName, "outPortNum")==0) return base+2;
    if (fieldName[0]=='p' && strcmp(fieldName, "pktId")==0) return base+3;
    if (fieldName[0]=='n' && strcmp(fieldName, "numFlits")==0) return base+4;
    if (fieldName[0]=='n' && strcmp(fieldName, "numGranted")==0) return base+5;
    if (fieldName[0]=='n' && strcmp(fieldName, "numAcked")==0) return base+6;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCReqMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<7) ? fieldTypeStrings[field] : NULL;
}

const char *NoCReqMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCReqMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCReqMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getOutVC());
        case 1: return long2string(pp->getInVC());
        case 2: return long2string(pp->getOutPortNum());
        case 3: return long2string(pp->getPktId());
        case 4: return long2string(pp->getNumFlits());
        case 5: return long2string(pp->getNumGranted());
        case 6: return long2string(pp->getNumAcked());
        default: return "";
    }
}

bool NoCReqMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setOutVC(string2long(value)); return true;
        case 1: pp->setInVC(string2long(value)); return true;
        case 2: pp->setOutPortNum(string2long(value)); return true;
        case 3: pp->setPktId(string2long(value)); return true;
        case 4: pp->setNumFlits(string2long(value)); return true;
        case 5: pp->setNumGranted(string2long(value)); return true;
        case 6: pp->setNumAcked(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCReqMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<7) ? fieldStructNames[field] : NULL;
}

void *NoCReqMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCGntMsg);

NoCGntMsg::NoCGntMsg(const char *name, int kind) : cMessage(name,kind)
{
    this->outVC_var = 0;
    this->inVC_var = 0;
    this->outPortNum_var = 0;
}

NoCGntMsg::NoCGntMsg(const NoCGntMsg& other) : cMessage()
{
    setName(other.getName());
    operator=(other);
}

NoCGntMsg::~NoCGntMsg()
{
}

NoCGntMsg& NoCGntMsg::operator=(const NoCGntMsg& other)
{
    if (this==&other) return *this;
    cMessage::operator=(other);
    this->outVC_var = other.outVC_var;
    this->inVC_var = other.inVC_var;
    this->outPortNum_var = other.outPortNum_var;
    return *this;
}

void NoCGntMsg::parsimPack(cCommBuffer *b)
{
    cMessage::parsimPack(b);
    doPacking(b,this->outVC_var);
    doPacking(b,this->inVC_var);
    doPacking(b,this->outPortNum_var);
}

void NoCGntMsg::parsimUnpack(cCommBuffer *b)
{
    cMessage::parsimUnpack(b);
    doUnpacking(b,this->outVC_var);
    doUnpacking(b,this->inVC_var);
    doUnpacking(b,this->outPortNum_var);
}

int NoCGntMsg::getOutVC() const
{
    return outVC_var;
}

void NoCGntMsg::setOutVC(int outVC_var)
{
    this->outVC_var = outVC_var;
}

int NoCGntMsg::getInVC() const
{
    return inVC_var;
}

void NoCGntMsg::setInVC(int inVC_var)
{
    this->inVC_var = inVC_var;
}

int NoCGntMsg::getOutPortNum() const
{
    return outPortNum_var;
}

void NoCGntMsg::setOutPortNum(int outPortNum_var)
{
    this->outPortNum_var = outPortNum_var;
}

class NoCGntMsgDescriptor : public cClassDescriptor
{
  public:
    NoCGntMsgDescriptor();
    virtual ~NoCGntMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCGntMsgDescriptor);

NoCGntMsgDescriptor::NoCGntMsgDescriptor() : cClassDescriptor("NoCGntMsg", "cMessage")
{
}

NoCGntMsgDescriptor::~NoCGntMsgDescriptor()
{
}

bool NoCGntMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCGntMsg *>(obj)!=NULL;
}

const char *NoCGntMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCGntMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 3+basedesc->getFieldCount(object) : 3;
}

unsigned int NoCGntMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<3) ? fieldTypeFlags[field] : 0;
}

const char *NoCGntMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "outVC",
        "inVC",
        "outPortNum",
    };
    return (field>=0 && field<3) ? fieldNames[field] : NULL;
}

int NoCGntMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='o' && strcmp(fieldName, "outVC")==0) return base+0;
    if (fieldName[0]=='i' && strcmp(fieldName, "inVC")==0) return base+1;
    if (fieldName[0]=='o' && strcmp(fieldName, "outPortNum")==0) return base+2;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCGntMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<3) ? fieldTypeStrings[field] : NULL;
}

const char *NoCGntMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCGntMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCGntMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getOutVC());
        case 1: return long2string(pp->getInVC());
        case 2: return long2string(pp->getOutPortNum());
        default: return "";
    }
}

bool NoCGntMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setOutVC(string2long(value)); return true;
        case 1: pp->setInVC(string2long(value)); return true;
        case 2: pp->setOutPortNum(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCGntMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<3) ? fieldStructNames[field] : NULL;
}

void *NoCGntMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCAckMsg);

NoCAckMsg::NoCAckMsg(const char *name, int kind) : cMessage(name,kind)
{
    this->OK_var = 0;
    this->outVC_var = 0;
    this->inVC_var = 0;
    this->outPortNum_var = 0;
}

NoCAckMsg::NoCAckMsg(const NoCAckMsg& other) : cMessage()
{
    setName(other.getName());
    operator=(other);
}

NoCAckMsg::~NoCAckMsg()
{
}

NoCAckMsg& NoCAckMsg::operator=(const NoCAckMsg& other)
{
    if (this==&other) return *this;
    cMessage::operator=(other);
    this->OK_var = other.OK_var;
    this->outVC_var = other.outVC_var;
    this->inVC_var = other.inVC_var;
    this->outPortNum_var = other.outPortNum_var;
    return *this;
}

void NoCAckMsg::parsimPack(cCommBuffer *b)
{
    cMessage::parsimPack(b);
    doPacking(b,this->OK_var);
    doPacking(b,this->outVC_var);
    doPacking(b,this->inVC_var);
    doPacking(b,this->outPortNum_var);
}

void NoCAckMsg::parsimUnpack(cCommBuffer *b)
{
    cMessage::parsimUnpack(b);
    doUnpacking(b,this->OK_var);
    doUnpacking(b,this->outVC_var);
    doUnpacking(b,this->inVC_var);
    doUnpacking(b,this->outPortNum_var);
}

bool NoCAckMsg::getOK() const
{
    return OK_var;
}

void NoCAckMsg::setOK(bool OK_var)
{
    this->OK_var = OK_var;
}

int NoCAckMsg::getOutVC() const
{
    return outVC_var;
}

void NoCAckMsg::setOutVC(int outVC_var)
{
    this->outVC_var = outVC_var;
}

int NoCAckMsg::getInVC() const
{
    return inVC_var;
}

void NoCAckMsg::setInVC(int inVC_var)
{
    this->inVC_var = inVC_var;
}

int NoCAckMsg::getOutPortNum() const
{
    return outPortNum_var;
}

void NoCAckMsg::setOutPortNum(int outPortNum_var)
{
    this->outPortNum_var = outPortNum_var;
}

class NoCAckMsgDescriptor : public cClassDescriptor
{
  public:
    NoCAckMsgDescriptor();
    virtual ~NoCAckMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCAckMsgDescriptor);

NoCAckMsgDescriptor::NoCAckMsgDescriptor() : cClassDescriptor("NoCAckMsg", "cMessage")
{
}

NoCAckMsgDescriptor::~NoCAckMsgDescriptor()
{
}

bool NoCAckMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCAckMsg *>(obj)!=NULL;
}

const char *NoCAckMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCAckMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 4+basedesc->getFieldCount(object) : 4;
}

unsigned int NoCAckMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<4) ? fieldTypeFlags[field] : 0;
}

const char *NoCAckMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "OK",
        "outVC",
        "inVC",
        "outPortNum",
    };
    return (field>=0 && field<4) ? fieldNames[field] : NULL;
}

int NoCAckMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='O' && strcmp(fieldName, "OK")==0) return base+0;
    if (fieldName[0]=='o' && strcmp(fieldName, "outVC")==0) return base+1;
    if (fieldName[0]=='i' && strcmp(fieldName, "inVC")==0) return base+2;
    if (fieldName[0]=='o' && strcmp(fieldName, "outPortNum")==0) return base+3;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCAckMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "bool",
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<4) ? fieldTypeStrings[field] : NULL;
}

const char *NoCAckMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCAckMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCAckMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        case 0: return bool2string(pp->getOK());
        case 1: return long2string(pp->getOutVC());
        case 2: return long2string(pp->getInVC());
        case 3: return long2string(pp->getOutPortNum());
        default: return "";
    }
}

bool NoCAckMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setOK(string2bool(value)); return true;
        case 1: pp->setOutVC(string2long(value)); return true;
        case 2: pp->setInVC(string2long(value)); return true;
        case 3: pp->setOutPortNum(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCAckMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<4) ? fieldStructNames[field] : NULL;
}

void *NoCAckMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCPopMsg);

NoCPopMsg::NoCPopMsg(const char *name, int kind) : cMessage(name,kind)
{
    this->VC_var = 0;
    this->outPortNum_var = 0;
}

NoCPopMsg::NoCPopMsg(const NoCPopMsg& other) : cMessage()
{
    setName(other.getName());
    operator=(other);
}

NoCPopMsg::~NoCPopMsg()
{
}

NoCPopMsg& NoCPopMsg::operator=(const NoCPopMsg& other)
{
    if (this==&other) return *this;
    cMessage::operator=(other);
    this->VC_var = other.VC_var;
    this->outPortNum_var = other.outPortNum_var;
    return *this;
}

void NoCPopMsg::parsimPack(cCommBuffer *b)
{
    cMessage::parsimPack(b);
    doPacking(b,this->VC_var);
    doPacking(b,this->outPortNum_var);
}

void NoCPopMsg::parsimUnpack(cCommBuffer *b)
{
    cMessage::parsimUnpack(b);
    doUnpacking(b,this->VC_var);
    doUnpacking(b,this->outPortNum_var);
}

int NoCPopMsg::getVC() const
{
    return VC_var;
}

void NoCPopMsg::setVC(int VC_var)
{
    this->VC_var = VC_var;
}

int NoCPopMsg::getOutPortNum() const
{
    return outPortNum_var;
}

void NoCPopMsg::setOutPortNum(int outPortNum_var)
{
    this->outPortNum_var = outPortNum_var;
}

class NoCPopMsgDescriptor : public cClassDescriptor
{
  public:
    NoCPopMsgDescriptor();
    virtual ~NoCPopMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCPopMsgDescriptor);

NoCPopMsgDescriptor::NoCPopMsgDescriptor() : cClassDescriptor("NoCPopMsg", "cMessage")
{
}

NoCPopMsgDescriptor::~NoCPopMsgDescriptor()
{
}

bool NoCPopMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCPopMsg *>(obj)!=NULL;
}

const char *NoCPopMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCPopMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 2+basedesc->getFieldCount(object) : 2;
}

unsigned int NoCPopMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<2) ? fieldTypeFlags[field] : 0;
}

const char *NoCPopMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "VC",
        "outPortNum",
    };
    return (field>=0 && field<2) ? fieldNames[field] : NULL;
}

int NoCPopMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='V' && strcmp(fieldName, "VC")==0) return base+0;
    if (fieldName[0]=='o' && strcmp(fieldName, "outPortNum")==0) return base+1;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCPopMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
    };
    return (field>=0 && field<2) ? fieldTypeStrings[field] : NULL;
}

const char *NoCPopMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCPopMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCPopMsg *pp = (NoCPopMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCPopMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCPopMsg *pp = (NoCPopMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getVC());
        case 1: return long2string(pp->getOutPortNum());
        default: return "";
    }
}

bool NoCPopMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCPopMsg *pp = (NoCPopMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setVC(string2long(value)); return true;
        case 1: pp->setOutPortNum(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCPopMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        NULL,
        NULL,
    };
    return (field>=0 && field<2) ? fieldStructNames[field] : NULL;
}

void *NoCPopMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCPopMsg *pp = (NoCPopMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


