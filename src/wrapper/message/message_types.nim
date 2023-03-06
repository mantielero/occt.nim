# PROVIDES: Message MessageMsg MessageGravity StreamBuffer Counter MessageProgressScopeNullString MessageMetricType MessageConsoleColor MessageStatus MessageExecStatus MessageExecStatusStatusRange MessageLevel MessageStatusType MessageListIteratorOfListOfMsg MessageMsgFile MessageProgressRange MessageProgressScope MessageMessengerStreamBuffer
# DEPENDS: StandardTransient StandardTransient  NCollectionArray1[NCollectionHandle[MessageMsg]]  NCollectionHandle[MessageArrayOfMsg]  NCollectionList[Handle[MessageAlert]]  NCollectionSequence[Handle[MessagePrinter]]  NCollectionList[MessageMsg] MessageProgressScope StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient  Handle[MessageAlert]  Handle[MessageAlgorithm]  Handle[MessageAttribute]  Handle[MessagePrinter]  Handle[MessageProgressIndicator]  Handle[MessageReport] MessageAlert MessageAttribute MessageAttribute MessageAttribute MessagePrinter MessagePrinter MessagePrinter  Handle[MessageMessenger]  Handle[MessagePrinterOStream]  Handle[MessagePrinterSystemLog]

import ../ncollection/ncollection_types
import ../standard/standard_types
type
  Message* {.importcpp: "Message", header: "Message.hxx", bycopy.} = object 

  MessageMsg* {.importcpp: "Message_Msg", header: "Message_Msg.hxx", bycopy.} = object                                                                    

  MessageGravity* {.size: sizeof(cint), importcpp: "Message_Gravity",
                   header: "Message_Gravity.hxx".} = enum
    MessageTrace, MessageInfo, MessageWarning, MessageAlarm, MessageFail

  StreamBuffer* = object  

  Counter* = object       

  MessageProgressScopeNullString* = object

  MessageMetricType* {.size: sizeof(cint), importcpp: "Message_MetricType",
                      header: "Message_MetricType.hxx".} = enum
    MessageMetricTypeNone,    
    MessageMetricTypeThreadCPUUserTime, 
    MessageMetricTypeThreadCPUSystemTime, 
    MessageMetricTypeProcessCPUUserTime, 
    MessageMetricTypeProcessCPUSystemTime, 
    MessageMetricTypeMemPrivate, 
    MessageMetricTypeMemVirtual, 
    MessageMetricTypeMemWorkingSet, 
    MessageMetricTypeMemWorkingSetPeak, 
    MessageMetricTypeMemSwapUsage, 
    MessageMetricTypeMemSwapUsagePeak, 
    MessageMetricTypeMemHeapUsage 

  MessageConsoleColor* {.size: sizeof(cint), importcpp: "Message_ConsoleColor",
                        header: "Message_ConsoleColor.hxx".} = enum
    MessageConsoleColorDefault, 
    MessageConsoleColorBlack, 
    MessageConsoleColorWhite, 
    MessageConsoleColorRed,   
    MessageConsoleColorBlue,  
    MessageConsoleColorGreen, 
    MessageConsoleColorYellow, 
    MessageConsoleColorCyan,  
    MessageConsoleColorMagenta 

  MessageStatus* {.size: sizeof(cint), importcpp: "Message_Status",
                  header: "Message_Status.hxx".} = enum 
    MessageNone = 0,            
    MessageDone1 = 256, MessageDone2, MessageDone3, MessageDone4,
    MessageDone5, MessageDone6, MessageDone7, MessageDone8, MessageDone9,
    MessageDone10, MessageDone11, MessageDone12, MessageDone13, MessageDone14,
    MessageDone15, MessageDone16, MessageDone17, MessageDone18, MessageDone19,
    MessageDone20, MessageDone21, MessageDone22, MessageDone23, MessageDone24,
    MessageDone25, MessageDone26, MessageDone27, MessageDone28, MessageDone29,
    MessageDone30, MessageDone31, MessageDone32, 
    MessageWarn1 = 512, MessageWarn2, MessageWarn3, MessageWarn4,
    MessageWarn5, MessageWarn6, MessageWarn7, MessageWarn8, MessageWarn9,
    MessageWarn10, MessageWarn11, MessageWarn12, MessageWarn13, MessageWarn14,
    MessageWarn15, MessageWarn16, MessageWarn17, MessageWarn18, MessageWarn19,
    MessageWarn20, MessageWarn21, MessageWarn22, MessageWarn23, MessageWarn24,
    MessageWarn25, MessageWarn26, MessageWarn27, MessageWarn28, MessageWarn29,
    MessageWarn30, MessageWarn31, MessageWarn32, 
    MessageAlarm1 = 1024, MessageAlarm2, MessageAlarm3, MessageAlarm4,
    MessageAlarm5, MessageAlarm6, MessageAlarm7, MessageAlarm8, MessageAlarm9,
    MessageAlarm10, MessageAlarm11, MessageAlarm12, MessageAlarm13, MessageAlarm14,
    MessageAlarm15, MessageAlarm16, MessageAlarm17, MessageAlarm18, MessageAlarm19,
    MessageAlarm20, MessageAlarm21, MessageAlarm22, MessageAlarm23, MessageAlarm24,
    MessageAlarm25, MessageAlarm26, MessageAlarm27, MessageAlarm28, MessageAlarm29,
    MessageAlarm30, MessageAlarm31, MessageAlarm32, 
    MessageFail1 = 2048, MessageFail2, MessageFail3, MessageFail4,
    MessageFail5, MessageFail6, MessageFail7, MessageFail8, MessageFail9,
    MessageFail10, MessageFail11, MessageFail12, MessageFail13, MessageFail14,
    MessageFail15, MessageFail16, MessageFail17, MessageFail18, MessageFail19,
    MessageFail20, MessageFail21, MessageFail22, MessageFail23, MessageFail24,
    MessageFail25, MessageFail26, MessageFail27, MessageFail28, MessageFail29,
    MessageFail30, MessageFail31, MessageFail32

  MessageExecStatus* {.importcpp: "Message_ExecStatus",
                      header: "Message_ExecStatus.hxx", bycopy.} = object 

  MessageExecStatusStatusRange* {.size: sizeof(cint),
                                 importcpp: "Message_ExecStatus::StatusRange",
                                 header: "Message_ExecStatus.hxx".} = enum
    FirstStatus = 1, StatusesPerType = 32, NbStatuses = 128, LastStatus = 129

  MessageLevel* {.importcpp: "Message_Level", header: "Message_Level.hxx", bycopy.} = object 

  MessageStatusType* {.size: sizeof(cint), importcpp: "Message_StatusType",
                      header: "Message_StatusType.hxx".} = enum
    mstDONE = 0x00000100, mstWARN = 0x00000200, mstALARM = 0x00000400,
    mstFAIL = 0x00000800

  MessageListIteratorOfListOfMsg* {.importcpp:"NCollection_List<\'*0>::Iterator", header: "Message_Messenger.hxx".} = object

  MessageMsgFile* {.importcpp: "Message_MsgFile", header: "Message_MsgFile.hxx",
                   bycopy.} = object 

  MessageProgressRange* {.importcpp: "Message_ProgressRange",
                         header: "Message_ProgressRange.hxx", bycopy.} = object 

  MessageProgressScope* {.importcpp: "Message_ProgressScope",
                         header: "Message_ProgressScope.hxx", bycopy.} = object of RootObj 

  MessageMessengerStreamBuffer* {.importcpp: "Message_Messenger::StreamBuffer",
                                 header: "Message_Messenger.hxx", bycopy.} = object 

  MessageAlert* {.importcpp: "Message_Alert", header: "Message_Alert.hxx", bycopy.} = object of StandardTransient 

  MessagePrinter* {.importcpp: "Message_Printer", header: "Message_Printer.hxx",
                   bycopy.} = object of StandardTransient 

  MessageArrayOfMsg* = NCollectionArray1[NCollectionHandle[MessageMsg]]

  MessageHArrayOfMsg* = NCollectionHandle[MessageArrayOfMsg]

  MessageListOfAlert* = NCollectionList[Handle[MessageAlert]]

  MessageSequenceOfPrinters* = NCollectionSequence[Handle[MessagePrinter]]

  MessageListOfMsg* = NCollectionList[MessageMsg]

  MessageProgressSentry* {.importcpp: "Message_ProgressSentry",
                          header: "Message_ProgressSentry.hxx", bycopy.} = object of MessageProgressScope 

  MessageAlgorithm* {.importcpp: "Message_Algorithm",
                     header: "Message_Algorithm.hxx", bycopy.} = object of StandardTransient 

  MessageAttribute* {.importcpp: "Message_Attribute",
                     header: "Message_Attribute.hxx", bycopy.} = object of StandardTransient 

  MessageCompositeAlerts* {.importcpp: "Message_CompositeAlerts",
                           header: "Message_CompositeAlerts.hxx", bycopy.} = object of StandardTransient 

  MessageMessenger* {.importcpp: "Message_Messenger",
                     header: "Message_Messenger.hxx", bycopy.} = object of StandardTransient 

  MessageProgressIndicator* {.importcpp: "Message_ProgressIndicator",
                             header: "Message_ProgressIndicator.hxx", bycopy.} = object of StandardTransient 

  MessageReport* {.importcpp: "Message_Report", header: "Message_Report.hxx", bycopy.} = object of StandardTransient 

  HandleMessageAlert* = Handle[MessageAlert]

  HandleMessageAlgorithm* = Handle[MessageAlgorithm]

  HandleMessageAttribute* = Handle[MessageAttribute]

  HandleMessagePrinter* = Handle[MessagePrinter]

  HandleMessageProgressIndicator* = Handle[MessageProgressIndicator]

  HandleMessageReport* = Handle[MessageReport]

  MessageAlertExtended* {.importcpp: "Message_AlertExtended",
                         header: "Message_AlertExtended.hxx", bycopy.} = object of MessageAlert 

  MessageAttributeMeter* {.importcpp: "Message_AttributeMeter",
                          header: "Message_AttributeMeter.hxx", bycopy.} = object of MessageAttribute 

  MessageAttributeObject* {.importcpp: "Message_AttributeObject",
                           header: "Message_AttributeObject.hxx", bycopy.} = object of MessageAttribute 

  MessageAttributeStream* {.importcpp: "Message_AttributeStream",
                           header: "Message_AttributeStream.hxx", bycopy.} = object of MessageAttribute 

  MessagePrinterOStream* {.importcpp: "Message_PrinterOStream",
                          header: "Message_PrinterOStream.hxx", bycopy.} = object of MessagePrinter 

  MessagePrinterSystemLog* {.importcpp: "Message_PrinterSystemLog",
                            header: "Message_PrinterSystemLog.hxx", bycopy.} = object of MessagePrinter 

  MessagePrinterToReport* {.importcpp: "Message_PrinterToReport",
                           header: "Message_PrinterToReport.hxx", bycopy.} = object of MessagePrinter 

  HandleMessageMessenger* = Handle[MessageMessenger]

  HandleMessagePrinterOStream* = Handle[MessagePrinterOStream]

  #HandleMessagePrinterOStream* = Handle[MessagePrinterOStream]
  HandleMessagePrinterSystemLog* = Handle[MessagePrinterSystemLog]


