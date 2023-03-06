{.hints:off.}
import ../standard/standard_types
import ../message/message_types
import transfer_types
import "../interface/interface_types"
import ../message/[message_types, message_progressrange]



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



proc newTransferProcessForFinder*(nb: cint = 10000): TransferProcessForFinder {.cdecl,
    constructor, importcpp: "Transfer_ProcessForFinder(@)", header: "Transfer_ProcessForFinder.hxx".}
proc newTransferProcessForFinder*(printer: Handle[MessageMessenger];
                                 nb: cint = 10000): TransferProcessForFinder {.cdecl,
    constructor, importcpp: "Transfer_ProcessForFinder(@)", header: "Transfer_ProcessForFinder.hxx".}
proc clear*(this: var TransferProcessForFinder) {.cdecl, importcpp: "Clear",
    header: "Transfer_ProcessForFinder.hxx".}
proc clean*(this: var TransferProcessForFinder) {.cdecl, importcpp: "Clean",
    header: "Transfer_ProcessForFinder.hxx".}
proc resize*(this: var TransferProcessForFinder; nb: cint) {.cdecl,
    importcpp: "Resize", header: "Transfer_ProcessForFinder.hxx".}
proc setActor*(this: var TransferProcessForFinder;
              actor: Handle[TransferActorOfProcessForFinder]) {.cdecl,
    importcpp: "SetActor", header: "Transfer_ProcessForFinder.hxx".}
proc actor*(this: TransferProcessForFinder): Handle[TransferActorOfProcessForFinder] {.
    noSideEffect, cdecl, importcpp: "Actor", header: "Transfer_ProcessForFinder.hxx".}
proc find*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    TransferBinder] {.noSideEffect, cdecl, importcpp: "Find", header: "Transfer_ProcessForFinder.hxx".}
proc isBound*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", header: "Transfer_ProcessForFinder.hxx".}
proc isAlreadyUsed*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, cdecl, importcpp: "IsAlreadyUsed", header: "Transfer_ProcessForFinder.hxx".}
proc `bind`*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
            binder: Handle[TransferBinder]) {.cdecl, importcpp: "Bind",
    header: "Transfer_ProcessForFinder.hxx".}
proc rebind*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
            binder: Handle[TransferBinder]) {.cdecl, importcpp: "Rebind",
    header: "Transfer_ProcessForFinder.hxx".}
proc unbind*(this: var TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    cdecl, importcpp: "Unbind", header: "Transfer_ProcessForFinder.hxx".}
proc findElseBind*(this: var TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    TransferBinder] {.cdecl, importcpp: "FindElseBind", header: "Transfer_ProcessForFinder.hxx".}
proc setMessenger*(this: var TransferProcessForFinder;
                  messenger: Handle[MessageMessenger]) {.cdecl,
    importcpp: "SetMessenger", header: "Transfer_ProcessForFinder.hxx".}
proc messenger*(this: TransferProcessForFinder): Handle[MessageMessenger] {.
    noSideEffect, cdecl, importcpp: "Messenger", header: "Transfer_ProcessForFinder.hxx".}
proc setTraceLevel*(this: var TransferProcessForFinder; tracelev: cint) {.cdecl,
    importcpp: "SetTraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc traceLevel*(this: TransferProcessForFinder): cint {.noSideEffect, cdecl,
    importcpp: "TraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc sendFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              amsg: MessageMsg) {.cdecl, importcpp: "SendFail", header: "Transfer_ProcessForFinder.hxx".}
proc sendWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                 amsg: MessageMsg) {.cdecl, importcpp: "SendWarning",
                                   header: "Transfer_ProcessForFinder.hxx".}
proc sendMsg*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             amsg: MessageMsg) {.cdecl, importcpp: "SendMsg", header: "Transfer_ProcessForFinder.hxx".}
proc addFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddFail",
    header: "Transfer_ProcessForFinder.hxx".}
proc addError*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddError",
    header: "Transfer_ProcessForFinder.hxx".}
proc addFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             amsg: MessageMsg) {.cdecl, importcpp: "AddFail", header: "Transfer_ProcessForFinder.hxx".}
proc addWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddWarning",
    header: "Transfer_ProcessForFinder.hxx".}
proc addWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                amsg: MessageMsg) {.cdecl, importcpp: "AddWarning", header: "Transfer_ProcessForFinder.hxx".}
proc mend*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
          pref: cstring = "") {.cdecl, importcpp: "Mend", header: "Transfer_ProcessForFinder.hxx".}
proc check*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    InterfaceCheck] {.noSideEffect, cdecl, importcpp: "Check", header: "Transfer_ProcessForFinder.hxx".}
proc bindTransient*(this: var TransferProcessForFinder;
                   start: Handle[TransferFinder]; res: Handle[StandardTransient]) {.
    cdecl, importcpp: "BindTransient", header: "Transfer_ProcessForFinder.hxx".}
proc findTransient*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    StandardTransient] {.noSideEffect, cdecl, importcpp: "FindTransient",
                        header: "Transfer_ProcessForFinder.hxx".}
proc bindMultiple*(this: var TransferProcessForFinder; start: Handle[TransferFinder]) {.
    cdecl, importcpp: "BindMultiple", header: "Transfer_ProcessForFinder.hxx".}
proc addMultiple*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                 res: Handle[StandardTransient]) {.cdecl, importcpp: "AddMultiple",
    header: "Transfer_ProcessForFinder.hxx".}
proc findTypedTransient*(this: TransferProcessForFinder;
                        start: Handle[TransferFinder];
                        atype: Handle[StandardType];
                        val: var Handle[StandardTransient]): bool {.noSideEffect,
    cdecl, importcpp: "FindTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc findTypedTransient*[T](this: TransferProcessForFinder;
                           start: Handle[TransferFinder];
                           atype: Handle[StandardType]; val: var Handle[T]): bool {.
    noSideEffect, cdecl, importcpp: "FindTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc getTypedTransient*(this: TransferProcessForFinder;
                       binder: Handle[TransferBinder];
                       atype: Handle[StandardType];
                       val: var Handle[StandardTransient]): bool {.noSideEffect,
    cdecl, importcpp: "GetTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc getTypedTransient*[T](this: TransferProcessForFinder;
                          start: Handle[TransferBinder];
                          atype: Handle[StandardType]; val: var Handle[T]): bool {.
    noSideEffect, cdecl, importcpp: "GetTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc nbMapped*(this: TransferProcessForFinder): cint {.noSideEffect, cdecl,
    importcpp: "NbMapped", header: "Transfer_ProcessForFinder.hxx".}
proc mapped*(this: TransferProcessForFinder; num: cint): Handle[TransferFinder] {.
    noSideEffect, cdecl, importcpp: "Mapped", header: "Transfer_ProcessForFinder.hxx".}
proc mapIndex*(this: TransferProcessForFinder; start: Handle[TransferFinder]): cint {.
    noSideEffect, cdecl, importcpp: "MapIndex", header: "Transfer_ProcessForFinder.hxx".}
proc mapItem*(this: TransferProcessForFinder; num: cint): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "MapItem", header: "Transfer_ProcessForFinder.hxx".}
proc setRoot*(this: var TransferProcessForFinder; start: Handle[TransferFinder]) {.
    cdecl, importcpp: "SetRoot", header: "Transfer_ProcessForFinder.hxx".}
proc setRootManagement*(this: var TransferProcessForFinder; stat: bool) {.cdecl,
    importcpp: "SetRootManagement", header: "Transfer_ProcessForFinder.hxx".}
proc nbRoots*(this: TransferProcessForFinder): cint {.noSideEffect, cdecl,
    importcpp: "NbRoots", header: "Transfer_ProcessForFinder.hxx".}
proc root*(this: TransferProcessForFinder; num: cint): Handle[TransferFinder] {.
    noSideEffect, cdecl, importcpp: "Root", header: "Transfer_ProcessForFinder.hxx".}
proc rootItem*(this: TransferProcessForFinder; num: cint): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "RootItem", header: "Transfer_ProcessForFinder.hxx".}
proc rootIndex*(this: TransferProcessForFinder; start: Handle[TransferFinder]): cint {.
    noSideEffect, cdecl, importcpp: "RootIndex", header: "Transfer_ProcessForFinder.hxx".}
proc nestingLevel*(this: TransferProcessForFinder): cint {.noSideEffect, cdecl,
    importcpp: "NestingLevel", header: "Transfer_ProcessForFinder.hxx".}
proc resetNestingLevel*(this: var TransferProcessForFinder) {.cdecl,
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForFinder.hxx".}
proc recognize*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, cdecl, importcpp: "Recognize", header: "Transfer_ProcessForFinder.hxx".}
proc transferring*(this: var TransferProcessForFinder;
                  start: Handle[TransferFinder];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ProcessForFinder.hxx".}
proc transfer*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              theProgress: MessageProgressRange = newMessageProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "Transfer_ProcessForFinder.hxx".}
proc setErrorHandle*(this: var TransferProcessForFinder; err: bool) {.cdecl,
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc errorHandle*(this: TransferProcessForFinder): bool {.noSideEffect, cdecl,
    importcpp: "ErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc startTrace*(this: TransferProcessForFinder; binder: Handle[TransferBinder];
                start: Handle[TransferFinder]; level: cint; mode: cint) {.
    noSideEffect, cdecl, importcpp: "StartTrace", header: "Transfer_ProcessForFinder.hxx".}
proc printTrace*(this: TransferProcessForFinder; start: Handle[TransferFinder];
                s: var StandardOStream) {.noSideEffect, cdecl,
                                       importcpp: "PrintTrace", header: "Transfer_ProcessForFinder.hxx".}
proc isLooping*(this: TransferProcessForFinder; alevel: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsLooping", header: "Transfer_ProcessForFinder.hxx".}
proc rootResult*(this: TransferProcessForFinder; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "Transfer_ProcessForFinder.hxx".}
proc completeResult*(this: TransferProcessForFinder; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, cdecl, importcpp: "CompleteResult", header: "Transfer_ProcessForFinder.hxx".}
proc abnormalResult*(this: TransferProcessForFinder): TransferIteratorOfProcessForFinder {.
    noSideEffect, cdecl, importcpp: "AbnormalResult", header: "Transfer_ProcessForFinder.hxx".}
proc checkList*(this: TransferProcessForFinder; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "CheckList", header: "Transfer_ProcessForFinder.hxx".}
proc resultOne*(this: TransferProcessForFinder; start: Handle[TransferFinder];
               level: cint; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, cdecl, importcpp: "ResultOne", header: "Transfer_ProcessForFinder.hxx".}
proc checkListOne*(this: TransferProcessForFinder; start: Handle[TransferFinder];
                  level: cint; erronly: bool): InterfaceCheckIterator {.noSideEffect,
    cdecl, importcpp: "CheckListOne", header: "Transfer_ProcessForFinder.hxx".}
proc isCheckListEmpty*(this: TransferProcessForFinder;
                      start: Handle[TransferFinder]; level: cint; erronly: bool): bool {.
    noSideEffect, cdecl, importcpp: "IsCheckListEmpty", header: "Transfer_ProcessForFinder.hxx".}
proc removeResult*(this: var TransferProcessForFinder;
                  start: Handle[TransferFinder]; level: cint; compute: bool = true) {.
    cdecl, importcpp: "RemoveResult", header: "Transfer_ProcessForFinder.hxx".}
proc checkNum*(this: TransferProcessForFinder; start: Handle[TransferFinder]): cint {.
    noSideEffect, cdecl, importcpp: "CheckNum", header: "Transfer_ProcessForFinder.hxx".}



