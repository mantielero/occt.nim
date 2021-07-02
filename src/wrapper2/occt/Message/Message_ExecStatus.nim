type
  MessageStatusType* {.size: sizeof(cint), importcpp: "Message_StatusType",
                      header: "Message_ExecStatus.hxx".} = enum
    MessageDONE = 0x00000100, MessageWARN = 0x00000200, MessageALARM = 0x00000400,
    MessageFAIL = 0x00000800


type
  MessageStatus* {.size: sizeof(cint), importcpp: "Message_Status",
                  header: "Message_ExecStatus.hxx".} = enum
    MessageNone = 0, MessageDone1 = messageDONE, MessageDone2, MessageDone3,
    MessageDone4, MessageDone5, MessageDone6, MessageDone7, MessageDone8,
    MessageDone9, MessageDone10, MessageDone11, MessageDone12, MessageDone13,
    MessageDone14, MessageDone15, MessageDone16, MessageDone17, MessageDone18,
    MessageDone19, MessageDone20, MessageDone21, MessageDone22, MessageDone23,
    MessageDone24, MessageDone25, MessageDone26, MessageDone27, MessageDone28,
    MessageDone29, MessageDone30, MessageDone31, MessageDone32,
    MessageWarn1 = messageWARN, MessageWarn2, MessageWarn3, MessageWarn4,
    MessageWarn5, MessageWarn6, MessageWarn7, MessageWarn8, MessageWarn9,
    MessageWarn10, MessageWarn11, MessageWarn12, MessageWarn13, MessageWarn14,
    MessageWarn15, MessageWarn16, MessageWarn17, MessageWarn18, MessageWarn19,
    MessageWarn20, MessageWarn21, MessageWarn22, MessageWarn23, MessageWarn24,
    MessageWarn25, MessageWarn26, MessageWarn27, MessageWarn28, MessageWarn29,
    MessageWarn30, MessageWarn31, MessageWarn32, MessageAlarm1 = messageALARM,
    MessageAlarm2, MessageAlarm3, MessageAlarm4, MessageAlarm5, MessageAlarm6,
    MessageAlarm7, MessageAlarm8, MessageAlarm9, MessageAlarm10, MessageAlarm11,
    MessageAlarm12, MessageAlarm13, MessageAlarm14, MessageAlarm15, MessageAlarm16,
    MessageAlarm17, MessageAlarm18, MessageAlarm19, MessageAlarm20, MessageAlarm21,
    MessageAlarm22, MessageAlarm23, MessageAlarm24, MessageAlarm25, MessageAlarm26,
    MessageAlarm27, MessageAlarm28, MessageAlarm29, MessageAlarm30, MessageAlarm31,
    MessageAlarm32, MessageFail1 = messageFAIL, MessageFail2, MessageFail3,
    MessageFail4, MessageFail5, MessageFail6, MessageFail7, MessageFail8,
    MessageFail9, MessageFail10, MessageFail11, MessageFail12, MessageFail13,
    MessageFail14, MessageFail15, MessageFail16, MessageFail17, MessageFail18,
    MessageFail19, MessageFail20, MessageFail21, MessageFail22, MessageFail23,
    MessageFail24, MessageFail25, MessageFail26, MessageFail27, MessageFail28,
    MessageFail29, MessageFail30, MessageFail31, MessageFail32


type
  MessageExecStatus* {.importcpp: "Message_ExecStatus",
                      header: "Message_ExecStatus.hxx", bycopy.} = object


proc constructMessageExecStatus*(): MessageExecStatus {.constructor,
    importcpp: "Message_ExecStatus(@)", header: "Message_ExecStatus.hxx".}
proc constructMessageExecStatus*(status: MessageStatus): MessageExecStatus {.
    constructor, importcpp: "Message_ExecStatus(@)",
    header: "Message_ExecStatus.hxx".}
proc set*(this: var MessageExecStatus; status: MessageStatus) {.importcpp: "Set",
    header: "Message_ExecStatus.hxx".}
proc isSet*(this: MessageExecStatus; status: MessageStatus): StandardBoolean {.
    noSideEffect, importcpp: "IsSet", header: "Message_ExecStatus.hxx".}
proc clear*(this: var MessageExecStatus; status: MessageStatus) {.importcpp: "Clear",
    header: "Message_ExecStatus.hxx".}
proc isDone*(this: MessageExecStatus): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Message_ExecStatus.hxx".}
proc isFail*(this: MessageExecStatus): StandardBoolean {.noSideEffect,
    importcpp: "IsFail", header: "Message_ExecStatus.hxx".}
proc isWarn*(this: MessageExecStatus): StandardBoolean {.noSideEffect,
    importcpp: "IsWarn", header: "Message_ExecStatus.hxx".}
proc isAlarm*(this: MessageExecStatus): StandardBoolean {.noSideEffect,
    importcpp: "IsAlarm", header: "Message_ExecStatus.hxx".}
proc setAllDone*(this: var MessageExecStatus) {.importcpp: "SetAllDone",
    header: "Message_ExecStatus.hxx".}
proc setAllWarn*(this: var MessageExecStatus) {.importcpp: "SetAllWarn",
    header: "Message_ExecStatus.hxx".}
pro