##  Created on: 2007-07-06
##  Created by: Pavel TELKOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
##  Original implementation copyright (c) RINA S.p.A.

## ! Enumeration covering all execution statuses supported by the class
## ! Message_ExecStatus: 32 statuses per each of 4 types (DONE, WARN, ALARM, FAIL)

type
  MessageStatus* {.size: sizeof(cint), importcpp: "Message_Status",
                  header: "Message_Status.hxx".} = enum ## ! Empty status
    MessageNone = 0,            ## ! Something done, 32 variants
    MessageDone1 = messageDONE, MessageDone2, MessageDone3, MessageDone4,
    MessageDone5, MessageDone6, MessageDone7, MessageDone8, MessageDone9,
    MessageDone10, MessageDone11, MessageDone12, MessageDone13, MessageDone14,
    MessageDone15, MessageDone16, MessageDone17, MessageDone18, MessageDone19,
    MessageDone20, MessageDone21, MessageDone22, MessageDone23, MessageDone24,
    MessageDone25, MessageDone26, MessageDone27, MessageDone28, MessageDone29,
    MessageDone30, MessageDone31, MessageDone32, ## ! Warning for possible problem encountered, 32 variants
    MessageWarn1 = messageWARN, MessageWarn2, MessageWarn3, MessageWarn4,
    MessageWarn5, MessageWarn6, MessageWarn7, MessageWarn8, MessageWarn9,
    MessageWarn10, MessageWarn11, MessageWarn12, MessageWarn13, MessageWarn14,
    MessageWarn15, MessageWarn16, MessageWarn17, MessageWarn18, MessageWarn19,
    MessageWarn20, MessageWarn21, MessageWarn22, MessageWarn23, MessageWarn24,
    MessageWarn25, MessageWarn26, MessageWarn27, MessageWarn28, MessageWarn29,
    MessageWarn30, MessageWarn31, MessageWarn32, ## ! Alarm (severe warning) for problem encountered, 32 variants
    MessageAlarm1 = messageALARM, MessageAlarm2, MessageAlarm3, MessageAlarm4,
    MessageAlarm5, MessageAlarm6, MessageAlarm7, MessageAlarm8, MessageAlarm9,
    MessageAlarm10, MessageAlarm11, MessageAlarm12, MessageAlarm13, MessageAlarm14,
    MessageAlarm15, MessageAlarm16, MessageAlarm17, MessageAlarm18, MessageAlarm19,
    MessageAlarm20, MessageAlarm21, MessageAlarm22, MessageAlarm23, MessageAlarm24,
    MessageAlarm25, MessageAlarm26, MessageAlarm27, MessageAlarm28, MessageAlarm29,
    MessageAlarm30, MessageAlarm31, MessageAlarm32, ## ! Execution failed, 32 variants
    MessageFail1 = messageFAIL, MessageFail2, MessageFail3, MessageFail4,
    MessageFail5, MessageFail6, MessageFail7, MessageFail8, MessageFail9,
    MessageFail10, MessageFail11, MessageFail12, MessageFail13, MessageFail14,
    MessageFail15, MessageFail16, MessageFail17, MessageFail18, MessageFail19,
    MessageFail20, MessageFail21, MessageFail22, MessageFail23, MessageFail24,
    MessageFail25, MessageFail26, MessageFail27, MessageFail28, MessageFail29,
    MessageFail30, MessageFail31, MessageFail32




























































