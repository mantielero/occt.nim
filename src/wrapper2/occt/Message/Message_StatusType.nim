type
  MessageStatusType* {.size: sizeof(cint), importcpp: "Message_StatusType",
                      header: "Message_StatusType.hxx".} = enum
    MessageDONE = 0x00000100, MessageWARN = 0x00000200, MessageALARM = 0x00000400,
    MessageFAIL = 0x00000800

