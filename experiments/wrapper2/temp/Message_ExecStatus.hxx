# 1 "/usr/include/opencascade/Message_ExecStatus.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Message_ExecStatus.hxx"
# 21 "/usr/include/opencascade/Message_ExecStatus.hxx"
# 1 "/usr/include/opencascade/Message_StatusType.hxx" 1
# 24 "/usr/include/opencascade/Message_StatusType.hxx"
enum Message_StatusType
{
  Message_DONE = 0x00000100,
  Message_WARN = 0x00000200,
  Message_ALARM = 0x00000400,
  Message_FAIL = 0x00000800
};
# 22 "/usr/include/opencascade/Message_ExecStatus.hxx" 2
# 1 "/usr/include/opencascade/Message_Status.hxx" 1
# 26 "/usr/include/opencascade/Message_Status.hxx"
enum Message_Status
{

  Message_None = 0,


  Message_Done1 = Message_DONE,
  Message_Done2, Message_Done3, Message_Done4, Message_Done5,
  Message_Done6, Message_Done7, Message_Done8, Message_Done9,
  Message_Done10, Message_Done11, Message_Done12, Message_Done13,
  Message_Done14, Message_Done15, Message_Done16, Message_Done17,
  Message_Done18, Message_Done19, Message_Done20, Message_Done21,
  Message_Done22, Message_Done23, Message_Done24, Message_Done25,
  Message_Done26, Message_Done27, Message_Done28, Message_Done29,
  Message_Done30, Message_Done31, Message_Done32,


  Message_Warn1 = Message_WARN,
  Message_Warn2, Message_Warn3, Message_Warn4, Message_Warn5,
  Message_Warn6, Message_Warn7, Message_Warn8, Message_Warn9,
  Message_Warn10, Message_Warn11, Message_Warn12, Message_Warn13,
  Message_Warn14, Message_Warn15, Message_Warn16, Message_Warn17,
  Message_Warn18, Message_Warn19, Message_Warn20, Message_Warn21,
  Message_Warn22, Message_Warn23, Message_Warn24, Message_Warn25,
  Message_Warn26, Message_Warn27, Message_Warn28, Message_Warn29,
  Message_Warn30, Message_Warn31, Message_Warn32,


  Message_Alarm1 = Message_ALARM,
  Message_Alarm2, Message_Alarm3, Message_Alarm4, Message_Alarm5,
  Message_Alarm6, Message_Alarm7, Message_Alarm8, Message_Alarm9,
  Message_Alarm10, Message_Alarm11, Message_Alarm12, Message_Alarm13,
  Message_Alarm14, Message_Alarm15, Message_Alarm16, Message_Alarm17,
  Message_Alarm18, Message_Alarm19, Message_Alarm20, Message_Alarm21,
  Message_Alarm22, Message_Alarm23, Message_Alarm24, Message_Alarm25,
  Message_Alarm26, Message_Alarm27, Message_Alarm28, Message_Alarm29,
  Message_Alarm30, Message_Alarm31, Message_Alarm32,


  Message_Fail1 = Message_FAIL,
  Message_Fail2, Message_Fail3, Message_Fail4, Message_Fail5,
  Message_Fail6, Message_Fail7, Message_Fail8, Message_Fail9,
  Message_Fail10, Message_Fail11, Message_Fail12, Message_Fail13,
  Message_Fail14, Message_Fail15, Message_Fail16, Message_Fail17,
  Message_Fail18, Message_Fail19, Message_Fail20, Message_Fail21,
  Message_Fail22, Message_Fail23, Message_Fail24, Message_Fail25,
  Message_Fail26, Message_Fail27, Message_Fail28, Message_Fail29,
  Message_Fail30, Message_Fail31, Message_Fail32
};
# 23 "/usr/include/opencascade/Message_ExecStatus.hxx" 2
# 42 "/usr/include/opencascade/Message_ExecStatus.hxx"
class Message_ExecStatus
{

 private:


  enum StatusMask {
    MType = 0x0000ff00,
    MIndex = 0x000000ff
  };
  static inline int getBitFlag (int status)
  {
    return 0x1 << (status & MIndex);
  }

 public:




  Message_ExecStatus ()
    : myDone( Message_None), myWarn( Message_None),
      myAlarm( Message_None), myFail( Message_None)
  {}


  Message_ExecStatus ( Message_Status status )
    : myDone( Message_None), myWarn( Message_None),
      myAlarm( Message_None), myFail( Message_None)
  {
    Set( status );
  }


  void Set (Message_Status status)
  {
    switch( status & MType )
    {
    case Message_DONE: myDone |= (getBitFlag( status )); break;
    case Message_WARN: myWarn |= (getBitFlag( status )); break;
    case Message_ALARM:myAlarm |= (getBitFlag( status )); break;
    case Message_FAIL: myFail |= (getBitFlag( status )); break;
    default: break;
    }
  }


  Standard_Boolean IsSet (Message_Status status) const
  {
    switch( status & MType )
    {
    case Message_DONE: return ( myDone & getBitFlag( status ) ? Standard_True : Standard_False );
    case Message_WARN: return ( myWarn & getBitFlag( status ) ? Standard_True : Standard_False );
    case Message_ALARM:return ( myAlarm & getBitFlag( status ) ? Standard_True : Standard_False );
    case Message_FAIL: return ( myFail & getBitFlag( status ) ? Standard_True : Standard_False );
    default: return Standard_False;
    }
  }


  void Clear (Message_Status status)
  {
    switch( status & MType )
    {
    case Message_DONE: myDone &= ~(getBitFlag( status )); return;
    case Message_WARN: myWarn &= ~(getBitFlag( status )); return;
    case Message_ALARM:myAlarm &= ~(getBitFlag( status )); return;
    case Message_FAIL: myFail &= ~(getBitFlag( status )); return;
    default: return;
    }
  }







  Standard_Boolean IsDone () const { return myDone != Message_None; }
  Standard_Boolean IsFail () const { return myFail != Message_None; }
  Standard_Boolean IsWarn () const { return myWarn != Message_None; }
  Standard_Boolean IsAlarm () const { return myAlarm != Message_None; }


  void SetAllDone () { myDone = ~0; }
  void SetAllWarn () { myWarn = ~0; }
  void SetAllAlarm () { myAlarm = ~0; }
  void SetAllFail () { myFail = ~0; }


  void ClearAllDone () { myDone = Message_None; }
  void ClearAllWarn () { myWarn = Message_None; }
  void ClearAllAlarm() { myAlarm = Message_None; }
  void ClearAllFail () { myFail = Message_None; }


  void Clear ()
  {
    myDone = myWarn = myAlarm = myFail = Message_None;
  }


  void Add ( const Message_ExecStatus& theOther )
  {
    myDone |= theOther.myDone;
    myWarn |= theOther.myWarn;
    myAlarm |= theOther.myAlarm;
    myFail |= theOther.myFail;
  }
  const Message_ExecStatus& operator |= ( const Message_ExecStatus& theOther )
  { Add ( theOther ); return *this; }


  void And ( const Message_ExecStatus& theOther )
  {
    myDone &= theOther.myDone;
    myWarn &= theOther.myWarn;
    myAlarm &= theOther.myAlarm;
    myFail &= theOther.myFail;
  }
  const Message_ExecStatus& operator &= ( const Message_ExecStatus& theOther )
  { And ( theOther ); return *this; }



 public:





  enum StatusRange
  {
    FirstStatus = 1,
    StatusesPerType = 32,
    NbStatuses = 128,
    LastStatus = 129
  };


  static Standard_Integer StatusIndex( Message_Status status )
  {
    switch( status & MType )
    {
    case Message_DONE: return 0 * StatusesPerType + LocalStatusIndex(status);
    case Message_WARN: return 1 * StatusesPerType + LocalStatusIndex(status);
    case Message_ALARM: return 2 * StatusesPerType + LocalStatusIndex(status);
    case Message_FAIL: return 3 * StatusesPerType + LocalStatusIndex(status);
    default: return 0;
    }
  }



  static Standard_Integer LocalStatusIndex( Message_Status status )
  {
    return (status & MIndex) + 1;
  }


  static Message_StatusType TypeOfStatus( Message_Status status )
  {
    return (Message_StatusType)(status & MType);
  }


  static Message_Status StatusByIndex( const Standard_Integer theIndex )
  {
    Standard_Integer indx = theIndex - 1;
    if ( indx < 32 )
      return (Message_Status)(Message_DONE + indx);
    else if ( indx < 64 )
      return (Message_Status)(Message_WARN + ( indx - 32 ));
    else if ( indx < 96 )
      return (Message_Status)(Message_ALARM + ( indx - 64 ));
    else if ( indx < 128 )
      return (Message_Status)(Message_FAIL + ( indx - 96 ));
    return Message_None;
  }



 private:

  Standard_Integer myDone;
  Standard_Integer myWarn;
  Standard_Integer myAlarm;
  Standard_Integer myFail;
};
