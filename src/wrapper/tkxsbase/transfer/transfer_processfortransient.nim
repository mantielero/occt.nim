import ../../tkernel/standard/standard_types
import ../../tkernel/message/message_types
import transfer_types



##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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





proc newTransferProcessForTransient*(nb: cint = 10000): TransferProcessForTransient {.
    cdecl, constructor, importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc newTransferProcessForTransient*(printer: Handle[MessageMessenger];
                                    nb: cint = 10000): TransferProcessForTransient {.
    cdecl, constructor, importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc clear*(this: var TransferProcessForTransient) {.cdecl, importcpp: "Clear",
    header: "Transfer_ProcessForTransient.hxx".}
proc clean*(this: var TransferProcessForTransient) {.cdecl, importcpp: "Clean",
    header: "Transfer_ProcessForTransient.hxx".}
proc resize*(this: var TransferProcessForTransient; nb: cint) {.cdecl,
    importcpp: "Resize", header: "Transfer_ProcessForTransient.hxx".}
proc setActor*(this: var TransferProcessForTransient;
              actor: Handle[TransferActorOfProcessForTransient]) {.cdecl,
    importcpp: "SetActor", header: "Transfer_ProcessForTransient.hxx".}
proc actor*(this: TransferProcessForTransient): Handle[
    TransferActorOfProcessForTransient] {.noSideEffect, cdecl, importcpp: "Actor",
    header: "Transfer_ProcessForTransient.hxx".}
proc find*(this: TransferProcessForTransient; start: Handle[StandardTransient]): Handle[
    TransferBinder] {.noSideEffect, cdecl, importcpp: "Find", header: "Transfer_ProcessForTransient.hxx".}
proc isBound*(this: TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", header: "Transfer_ProcessForTransient.hxx".}
proc isAlreadyUsed*(this: TransferProcessForTransient;
                   start: Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "IsAlreadyUsed", header: "Transfer_ProcessForTransient.hxx".}
proc `bind`*(this: var TransferProcessForTransient;
            start: Handle[StandardTransient]; binder: Handle[TransferBinder]) {.
    cdecl, importcpp: "Bind", header: "Transfer_ProcessForTransient.hxx".}
proc rebind*(this: var TransferProcessForTransient;
            start: Handle[StandardTransient]; binder: Handle[TransferBinder]) {.
    cdecl, importcpp: "Rebind", header: "Transfer_ProcessForTransient.hxx".}
proc unbind*(this: var TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Unbind", header: "Transfer_ProcessForTransient.hxx".}
proc findElseBind*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]): Handle[TransferBinder] {.
    cdecl, importcpp: "FindElseBind", header: "Transfer_ProcessForTransient.hxx".}
proc setMessenger*(this: var TransferProcessForTransient;
                  messenger: Handle[MessageMessenger]) {.cdecl,
    importcpp: "SetMessenger", header: "Transfer_ProcessForTransient.hxx".}
proc messenger*(this: TransferProcessForTransient): Handle[MessageMessenger] {.
    noSideEffect, cdecl, importcpp: "Messenger", header: "Transfer_ProcessForTransient.hxx".}
proc setTraceLevel*(this: var TransferProcessForTransient; tracelev: cint) {.cdecl,
    importcpp: "SetTraceLevel", header: "Transfer_ProcessForTransient.hxx".}
proc traceLevel*(this: TransferProcessForTransient): cint {.noSideEffect, cdecl,
    importcpp: "TraceLevel", header: "Transfer_ProcessForTransient.hxx".}
proc sendFail*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient]; amsg: MessageMsg) {.cdecl,
    importcpp: "SendFail", header: "Transfer_ProcessForTransient.hxx".}
proc sendWarning*(this: var TransferProcessForTransient;
                 start: Handle[StandardTransient]; amsg: MessageMsg) {.cdecl,
    importcpp: "SendWarning", header: "Transfer_ProcessForTransient.hxx".}
proc sendMsg*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; amsg: MessageMsg) {.cdecl,
    importcpp: "SendMsg", header: "Transfer_ProcessForTransient.hxx".}
proc addFail*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; mess: cstring; orig: cstring = "") {.
    cdecl, importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc addError*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient]; mess: cstring; orig: cstring = "") {.
    cdecl, importcpp: "AddError", header: "Transfer_ProcessForTransient.hxx".}
proc addFail*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; amsg: MessageMsg) {.cdecl,
    importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc addWarning*(this: var TransferProcessForTransient;
                start: Handle[StandardTransient]; mess: cstring; orig: cstring = "") {.
    cdecl, importcpp: "AddWarning", header: "Transfer_ProcessForTransient.hxx".}
proc addWarning*(this: var TransferProcessForTransient;
                start: Handle[StandardTransient]; amsg: MessageMsg) {.cdecl,
    importcpp: "AddWarning", header: "Transfer_ProcessForTransient.hxx".}
proc mend*(this: var TransferProcessForTransient; start: Handle[StandardTransient];
          pref: cstring = "") {.cdecl, importcpp: "Mend", header: "Transfer_ProcessForTransient.hxx".}
proc check*(this: TransferProcessForTransient; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.noSideEffect, cdecl, importcpp: "Check", header: "Transfer_ProcessForTransient.hxx".}
proc bindTransient*(this: var TransferProcessForTransient;
                   start: Handle[StandardTransient];
                   res: Handle[StandardTransient]) {.cdecl,
    importcpp: "BindTransient", header: "Transfer_ProcessForTransient.hxx".}
proc findTransient*(this: TransferProcessForTransient;
                   start: Handle[StandardTransient]): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "FindTransient", header: "Transfer_ProcessForTransient.hxx".}
proc bindMultiple*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]) {.cdecl,
    importcpp: "BindMultiple", header: "Transfer_ProcessForTransient.hxx".}
proc addMultiple*(this: var TransferProcessForTransient;
                 start: Handle[StandardTransient]; res: Handle[StandardTransient]) {.
    cdecl, importcpp: "AddMultiple", header: "Transfer_ProcessForTransient.hxx".}
proc findTypedTransient*(this: TransferProcessForTransient;
                        start: Handle[StandardTransient];
                        atype: Handle[StandardType];
                        val: var Handle[StandardTransient]): bool {.noSideEffect,
    cdecl, importcpp: "FindTypedTransient", header: "Transfer_ProcessForTransient.hxx".}
proc getTypedTransient*(this: TransferProcessForTransient;
                       binder: Handle[TransferBinder];
                       atype: Handle[StandardType];
                       val: var Handle[StandardTransient]): bool {.noSideEffect,
    cdecl, importcpp: "GetTypedTransient", header: "Transfer_ProcessForTransient.hxx".}
proc nbMapped*(this: TransferProcessForTransient): cint {.noSideEffect, cdecl,
    importcpp: "NbMapped", header: "Transfer_ProcessForTransient.hxx".}
proc mapped*(this: TransferProcessForTransient; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Mapped", header: "Transfer_ProcessForTransient.hxx".}
proc mapIndex*(this: TransferProcessForTransient; start: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "MapIndex", header: "Transfer_ProcessForTransient.hxx".}
proc mapItem*(this: TransferProcessForTransient; num: cint): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "MapItem", header: "Transfer_ProcessForTransient.hxx".}
proc setRoot*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]) {.cdecl, importcpp: "SetRoot",
    header: "Transfer_ProcessForTransient.hxx".}
proc setRootManagement*(this: var TransferProcessForTransient; stat: bool) {.cdecl,
    importcpp: "SetRootManagement", header: "Transfer_ProcessForTransient.hxx".}
proc nbRoots*(this: TransferProcessForTransient): cint {.noSideEffect, cdecl,
    importcpp: "NbRoots", header: "Transfer_ProcessForTransient.hxx".}
proc root*(this: TransferProcessForTransient; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Root", header: "Transfer_ProcessForTransient.hxx".}
proc rootItem*(this: TransferProcessForTransient; num: cint): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "RootItem", header: "Transfer_ProcessForTransient.hxx".}
proc rootIndex*(this: TransferProcessForTransient; start: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "RootIndex", header: "Transfer_ProcessForTransient.hxx".}
proc nestingLevel*(this: TransferProcessForTransient): cint {.noSideEffect, cdecl,
    importcpp: "NestingLevel", header: "Transfer_ProcessForTransient.hxx".}
proc resetNestingLevel*(this: var TransferProcessForTransient) {.cdecl,
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForTransient.hxx".}
proc recognize*(this: TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "Recognize", header: "Transfer_ProcessForTransient.hxx".}
proc transferring*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ProcessForTransient.hxx".}
proc transfer*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient];
              theProgress: MessageProgressRange = newMessageProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "Transfer_ProcessForTransient.hxx".}
proc setErrorHandle*(this: var TransferProcessForTransient; err: bool) {.cdecl,
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForTransient.hxx".}
proc errorHandle*(this: TransferProcessForTransient): bool {.noSideEffect, cdecl,
    importcpp: "ErrorHandle", header: "Transfer_ProcessForTransient.hxx".}
proc startTrace*(this: TransferProcessForTransient; binder: Handle[TransferBinder];
                start: Handle[StandardTransient]; level: cint; mode: cint) {.
    noSideEffect, cdecl, importcpp: "StartTrace", header: "Transfer_ProcessForTransient.hxx".}
proc printTrace*(this: TransferProcessForTransient;
                start: Handle[StandardTransient]; s: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "PrintTrace", header: "Transfer_ProcessForTransient.hxx".}
proc isLooping*(this: TransferProcessForTransient; alevel: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsLooping", header: "Transfer_ProcessForTransient.hxx".}
proc rootResult*(this: TransferProcessForTransient; withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "Transfer_ProcessForTransient.hxx".}
proc completeResult*(this: TransferProcessForTransient; withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, cdecl, importcpp: "CompleteResult", header: "Transfer_ProcessForTransient.hxx".}
proc abnormalResult*(this: TransferProcessForTransient): TransferIteratorOfProcessForTransient {.
    noSideEffect, cdecl, importcpp: "AbnormalResult", header: "Transfer_ProcessForTransient.hxx".}
proc checkList*(this: TransferProcessForTransient; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "CheckList", header: "Transfer_ProcessForTransient.hxx".}
proc resultOne*(this: TransferProcessForTransient;
               start: Handle[StandardTransient]; level: cint;
               withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, cdecl, importcpp: "ResultOne", header: "Transfer_ProcessForTransient.hxx".}
proc checkListOne*(this: TransferProcessForTransient;
                  start: Handle[StandardTransient]; level: cint; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "CheckListOne", header: "Transfer_ProcessForTransient.hxx".}
proc isCheckListEmpty*(this: TransferProcessForTransient;
                      start: Handle[StandardTransient]; level: cint; erronly: bool): bool {.
    noSideEffect, cdecl, importcpp: "IsCheckListEmpty", header: "Transfer_ProcessForTransient.hxx".}
proc removeResult*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]; level: cint;
                  compute: bool = true) {.cdecl, importcpp: "RemoveResult",
                                      header: "Transfer_ProcessForTransient.hxx".}
proc checkNum*(this: TransferProcessForTransient; start: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "CheckNum", header: "Transfer_ProcessForTransient.hxx".}


