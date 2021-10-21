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


proc newMessageExecStatus*(): MessageExecStatus {.cdecl, constructor,
    importcpp: "Message_ExecStatus(@)", dynlib: tkernel.}
proc newMessageExecStatus*(status: MessageStatus): MessageExecStatus {.cdecl,
    constructor, importcpp: "Message_ExecStatus(@)", dynlib: tkernel.}
proc set*(this: var MessageExecStatus; status: MessageStatus) {.cdecl,
    importcpp: "Set", dynlib: tkernel.}
proc isSet*(this: MessageExecStatus; status: MessageStatus): bool {.noSideEffect,
    cdecl, importcpp: "IsSet", dynlib: tkernel.}
proc clear*(this: var MessageExecStatus; status: MessageStatus) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc isDone*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkernel.}
proc isFail*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsFail", dynlib: tkernel.}
proc isWarn*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsWarn", dynlib: tkernel.}
proc isAlarm*(this: MessageExecStatus): bool {.noSideEffect, cdecl,
    importcpp: "IsAlarm", dynlib: tkernel.}
proc setAllDone*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllDone",
    dynlib: tkernel.}
proc setAllWarn*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllWarn",
    dynlib: tkernel.}
proc setAllAlarm*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllAlarm",
    dynlib: tkernel.}
proc setAllFail*(this: var MessageExecStatus) {.cdecl, importcpp: "SetAllFail",
    dynlib: tkernel.}
proc clearAllDone*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllDone",
    dynlib: tkernel.}
proc clearAllWarn*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllWarn",
    dynlib: tkernel.}
proc clearAllAlarm*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllAlarm",
    dynlib: tkernel.}
proc clearAllFail*(this: var MessageExecStatus) {.cdecl, importcpp: "ClearAllFail",
    dynlib: tkernel.}
proc clear*(this: var MessageExecStatus) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc add*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "Add", dynlib: tkernel.}
proc `|=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "(# |= #)", dynlib: tkernel.}
proc `and`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "And", dynlib: tkernel.}
proc `&=`*(this: var MessageExecStatus; theOther: MessageExecStatus) {.cdecl,
    importcpp: "(# &= #)", dynlib: tkernel.}
type
  MessageExecStatusStatusRange* {.size: sizeof(cint),
                                 importcpp: "Message_ExecStatus::StatusRange",
                                 header: "Message_ExecStatus.hxx".} = enum
    FirstStatus = 1, StatusesPerType = 32, NbStatuses = 128, LastStatus = 129


proc statusIndex*(status: MessageStatus): cint {.cdecl,
    importcpp: "Message_ExecStatus::StatusIndex(@)", dynlib: tkernel.}
proc localStatusIndex*(status: MessageStatus): cint {.cdecl,
    importcpp: "Message_ExecStatus::LocalStatusIndex(@)", dynlib: tkernel.}
proc typeOfStatus*(status: MessageStatus): MessageStatusType {.cdecl,
    importcpp: "Message_ExecStatus::TypeOfStatus(@)", dynlib: tkernel.}
proc statusByIndex*(theIndex: cint): MessageStatus {.cdecl,
    importcpp: "Message_ExecStatus::StatusByIndex(@)", dynlib: tkernel.}