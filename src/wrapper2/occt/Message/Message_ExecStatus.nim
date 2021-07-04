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

import
  Message_StatusType, Message_Status

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
  Message_ExecStatus* {.importcpp: "Message_ExecStatus",
                       header: "Message_ExecStatus.hxx", bycopy.} = object ## ! Mask to separate bits indicating status type and index within the type
                                                                      ## !@name Creation and simple operations with statuses
                                                                      ## !@{
                                                                      ## ! Create empty execution status
                                                                      ## !@name Advanced: Iteration and analysis of status flags
                                                                      ## !@{
                                                                      ## !
                                                                      ## Definitions of range of available statuses
                                                                      ##  ---------- PRIVATE FIELDS ----------


proc constructMessage_ExecStatus*(): Message_ExecStatus {.constructor,
    importcpp: "Message_ExecStatus(@)", header: "Message_ExecStatus.hxx".}
proc constructMessage_ExecStatus*(status: Message_Status): Message_ExecStatus {.
    constructor, importcpp: "Message_ExecStatus(@)",
    header: "Message_ExecStatus.hxx".}
proc Set*(this: var Message_ExecStatus; status: Message_Status) {.importcpp: "Set",
    header: "Message_ExecStatus.hxx".}
proc IsSet*(this: Message_ExecStatus; status: Message_Status): Standard_Boolean {.
    noSideEffect, importcpp: "IsSet", header: "Message_ExecStatus.hxx".}
proc Clear*(this: var Message_ExecStatus; status: Message_Status) {.
    importcpp: "Clear", header: "Message_ExecStatus.hxx".}
proc IsDone*(this: Message_ExecStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Message_ExecStatus.hxx".}
proc IsFail*(this: Message_ExecStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsFail", header: "Message_ExecStatus.hxx".}
proc IsWarn*(this: Message_ExecStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsWarn", header: "Message_ExecStatus.hxx".}
proc IsAlarm*(this: Message_ExecStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsAlarm", header: "Message_ExecStatus.hxx".}
proc SetAllDone*(this: var Message_ExecStatus) {.importcpp: "SetAllDone",
    header: "Message_ExecStatus.hxx".}
proc SetAllWarn*(this: var Message_ExecStatus) {.importcpp: "SetAllWarn",
    header: "Message_ExecStatus.hxx".}
proc SetAllAlarm*(this: var Message_ExecStatus) {.importcpp: "SetAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc SetAllFail*(this: var Message_ExecStatus) {.importcpp: "SetAllFail",
    header: "Message_ExecStatus.hxx".}
proc ClearAllDone*(this: var Message_ExecStatus) {.importcpp: "ClearAllDone",
    header: "Message_ExecStatus.hxx".}
proc ClearAllWarn*(this: var Message_ExecStatus) {.importcpp: "ClearAllWarn",
    header: "Message_ExecStatus.hxx".}
proc ClearAllAlarm*(this: var Message_ExecStatus) {.importcpp: "ClearAllAlarm",
    header: "Message_ExecStatus.hxx".}
proc ClearAllFail*(this: var Message_ExecStatus) {.importcpp: "ClearAllFail",
    header: "Message_ExecStatus.hxx".}
proc Clear*(this: var Message_ExecStatus) {.importcpp: "Clear",
                                        header: "Message_ExecStatus.hxx".}
proc Add*(this: var Message_ExecStatus; theOther: Message_ExecStatus) {.
    importcpp: "Add", header: "Message_ExecStatus.hxx".}
proc `|=`*(this: var Message_ExecStatus; theOther: Message_ExecStatus) {.
    importcpp: "(# |= #)", header: "Message_ExecStatus.hxx".}
proc And*(this: var Message_ExecStatus; theOther: Message_ExecStatus) {.
    importcpp: "And", header: "Message_ExecStatus.hxx".}
proc `&=`*(this: var Message_ExecStatus; theOther: Message_ExecStatus) {.
    importcpp: "(# &= #)", header: "Message_ExecStatus.hxx".}
type
  Message_ExecStatusStatusRange* {.size: sizeof(cint),
                                  importcpp: "Message_ExecStatus::StatusRange",
                                  header: "Message_ExecStatus.hxx".} = enum
    FirstStatus = 1, StatusesPerType = 32, NbStatuses = 128, LastStatus = 129


proc StatusIndex*(status: Message_Status): Standard_Integer {.
    importcpp: "Message_ExecStatus::StatusIndex(@)",
    header: "Message_ExecStatus.hxx".}
proc LocalStatusIndex*(status: Message_Status): Standard_Integer {.
    importcpp: "Message_ExecStatus::LocalStatusIndex(@)",
    header: "Message_ExecStatus.hxx".}
proc TypeOfStatus*(status: Message_Status): Message_StatusType {.
    importcpp: "Message_ExecStatus::TypeOfStatus(@)",
    header: "Message_ExecStatus.hxx".}
proc StatusByIndex*(theIndex: Standard_Integer): Message_Status {.
    importcpp: "Message_ExecStatus::StatusByIndex(@)",
    header: "Message_ExecStatus.hxx".}