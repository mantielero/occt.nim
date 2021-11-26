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

type
  MessageExecStatus* {.importcpp: "Message_ExecStatus",
                      header: "Message_ExecStatus.hxx", bycopy.} = object ## ! Mask to separate bits indicating status type and index within the type
                                                                     ## !@name Creation and simple operations with statuses
                                                                     ## !@{
                                                                     ## ! Create empty execution status
                                                                     ## !@name Advanced: Iteration and analysis of status flags
                                                                     ## !@{
                                                                     ## ! Definitions of range of available statuses
                                                                     ##  ---------- PRIVATE FIELDS ----------


proc constructMessageExecStatus*(): MessageExecStatus {.constructor,
    importcpp: "Message_ExecStatus(@)", header: "Message_ExecStatus.hxx".}
proc constructMessageExecStatus*(status: MessageStatus): MessageExecStatus {.
    constructor, importcpp: "Message_ExecStatus(@)",
    header: "Message_ExecStatus.hxx".}
proc set*(this: var MessageExecStatus; status: MessageStatus) {.importcpp: "Set",
    header: "Message_ExecStatus.hxx".}
proc isSet*(this: MessageExecStatus; status: MessageStatus): bool {.noSideEffect,
    importcpp: "IsSet", header: "Message_ExecStatus.hxx".}
proc clear*(this: var MessageExecStatus; status: MessageStatus) {.importcpp: "Clear",
    header: "Message_ExecStatus.hxx".}
proc isDone*(this: MessageExecStatus): bool {.noSideEffect, importcpp: "IsDone",
    header: "Message_ExecStatus.hxx".}
proc isFail*(this: MessageExecStatus): bool {.noSideEffect, importcpp: "IsFail",
    header: "Message_ExecStatus.hxx".}
proc isWarn*(this: MessageExecStatus): bool {.noSideEffect, importcpp: "IsWarn",
    header: "Message_ExecStatus.hxx".}
proc isAlarm*(this: MessageExecStatus): bool {.noSideEffect, importcpp: "IsAlarm",
    header: "Message_ExecStatus.hxx".}
proc setAllDone*(this: var MessageExecStatus) {.importcpp: "SetAllDone",
    header: "Message_ExecStatus.hxx".}
proc setAllWarn*(this: var MessageExecStatus) {.importcpp: "SetAllWarn",
    header: "Message_ExecStatus.hxx".}
proc setAllAlarm*(this: var MessageExecStatus) {.importcpp: "SetAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc setAllFail*(this: var MessageExecStatus) {.importcpp: "SetAllFail",
    header: "Message_ExecStatus.hxx".}
proc clearAllDone*(this: var MessageExecStatus) {.importcpp: "ClearAllDone",
    header: "Message_ExecStatus.hxx".}
proc clearAllWarn*(this: var MessageExecStatus) {.importcpp: "ClearAllWarn",
    header: "Message_ExecStatus.hxx".}
proc clearAllAlarm*(this: var MessageExecStatus) {.importcpp: "ClearAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc clearAllFail*(this: var MessageExecStatus) {.importcpp: "ClearAllFail",
    header: "Message_ExecStatus.hxx".}
proc clear*(this: var MessageExecStatus) {.importcpp: "Clear",
                                       header: "Message_ExecStatus.hxx".}
proc add*(this: var MessageExecStatus; theOther: MessageExecStatus) {.
    importcpp: "Add", header: "Message_ExecStatus.hxx".}
proc `|=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.
    importcpp: "(# |= #)", header: "Message_ExecStatus.hxx".}
proc `and`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.
    importcpp: "And", header: "Message_ExecStatus.hxx".}
proc `&=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.
    importcpp: "(# &= #)", header: "Message_ExecStatus.hxx".}
type
  MessageExecStatusStatusRange* {.size: sizeof(cint),
                                 importcpp: "Message_ExecStatus::StatusRange",
                                 header: "Message_ExecStatus.hxx".} = enum
    FirstStatus = 1, StatusesPerType = 32, NbStatuses = 128, LastStatus = 129


proc statusIndex*(status: MessageStatus): cint {.
    importcpp: "Message_ExecStatus::StatusIndex(@)",
    header: "Message_ExecStatus.hxx".}
proc localStatusIndex*(status: MessageStatus): cint {.
    importcpp: "Message_ExecStatus::LocalStatusIndex(@)",
    header: "Message_ExecStatus.hxx".}
proc typeOfStatus*(status: MessageStatus): MessageStatusType {.
    importcpp: "Message_ExecStatus::TypeOfStatus(@)",
    header: "Message_ExecStatus.hxx".}
proc statusByIndex*(theIndex: cint): MessageStatus {.
    importcpp: "Message_ExecStatus::StatusByIndex(@)",
    header: "Message_ExecStatus.hxx".}

























