type
  MessageGravity* {.size: sizeof(cint), importcpp: "Message_Gravity",
                   header: "Message_Gravity.hxx".} = enum
    MessageTrace, MessageInfo, MessageWarning, MessageAlarm, MessageFail

