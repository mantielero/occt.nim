import message_types

##  Created on: 2003-03-04
##  Created by: Pavel TELKOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
##  The original implementation copyright (c) RINA S.p.A.

## *
##  Tiny class for extended handling of error / execution
##  status of algorithm in universal way.
##
##  It is in fact a set of integers represented as a collection of bit flags
##  for each of four types of status; each status flag has its own symbolic
##  name and can be set/tested individually.
##
##  The flags are grouped in semantic groups:
##  - No flags means nothing done
##  - Done flags correspond to some operation succesffuly completed
##  - Warning flags correspond to warning messages on some
##    potentially wrong situation, not harming algorithm execution
##  - Alarm flags correspond to more severe warnings about incorrect
##    user data, while not breaking algorithm execution
##  - Fail flags correspond to cases when algorithm failed to complete
##



proc newMessageExecStatus*(): MessageExecStatus {.cdecl, constructor,
    importcpp: "Message_ExecStatus(@)", header: "Message_ExecStatus.hxx".}
proc newMessageExecStatus*(status: MessageStatus): MessageExecStatus {.cdecl,
    constructor, importcpp: "Message_ExecStatus(@)", header: "Message_ExecStatus.hxx".}
proc set*(this: var MessageExecStatus; status: MessageStatus) {.cdecl,
    importcpp: "Set", header: "Message_ExecStatus.hxx".}
proc isSet*(this: MessageExecStatus; status: MessageStatus): bool {.noSideEffect,
    cdecl, importcpp: "IsSet", header: "Message_ExecStatus.hxx".}
proc clear*(this: var MessageExecStatus; status: MessageStatus) {.cdecl,
    importcpp: "Clear", header: "Message_ExecStatus.hxx".}
proc isDone*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Message_ExecStatus.hxx".}
proc isFail*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsFail", header: "Message_ExecStatus.hxx".}
proc isWarn*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsWarn", header: "Message_ExecStatus.hxx".}
proc isAlarm*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsAlarm", header: "Message_ExecStatus.hxx".}
proc setAllDone*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllDone",
    header: "Message_ExecStatus.hxx".}
proc setAllWarn*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllWarn",
    header: "Message_ExecStatus.hxx".}
proc setAllAlarm*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc setAllFail*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllFail",
    header: "Message_ExecStatus.hxx".}
proc clearAllDone*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllDone",
    header: "Message_ExecStatus.hxx".}
proc clearAllWarn*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllWarn",
    header: "Message_ExecStatus.hxx".}
proc clearAllAlarm*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc clearAllFail*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllFail",
    header: "Message_ExecStatus.hxx".}
proc clear*(this: var MessageExecStatus) {.cdecl, importcpp: "Clear", header: "Message_ExecStatus.hxx".}
proc add*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "Add", header: "Message_ExecStatus.hxx".}
proc `|=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "(# |= #)", header: "Message_ExecStatus.hxx".}
proc `and`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "And", header: "Message_ExecStatus.hxx".}
proc `&=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "(# &= #)", header: "Message_ExecStatus.hxx".}


proc statusIndex*(status: MessageStatus): cint {.cdecl,
    importcpp: "Message_ExecStatus::StatusIndex(@)", header: "Message_ExecStatus.hxx".}
proc localStatusIndex*(status: MessageStatus): cint {.cdecl,
    importcpp: "Message_ExecStatus::LocalStatusIndex(@)", header: "Message_ExecStatus.hxx".}
proc typeOfStatus*(status: MessageStatus): MessageStatusType {.cdecl,
    importcpp: "Message_ExecStatus::TypeOfStatus(@)", header: "Message_ExecStatus.hxx".}
proc statusByIndex*(theIndex: cint): MessageStatus {.cdecl,
    importcpp: "Message_ExecStatus::StatusByIndex(@)", header: "Message_ExecStatus.hxx".}
