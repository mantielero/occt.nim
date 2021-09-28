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

discard "forward decl of Message_Messenger"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_ActorOfProcessForFinder"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Transfer_FindHasher"
discard "forward decl of Transfer_IteratorOfProcessForFinder"
discard "forward decl of Message_Msg"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_ProcessForFinder"
type
  HandleTransferProcessForFinder* = Handle[TransferProcessForFinder]
  TransferProcessForFinder* {.importcpp: "Transfer_ProcessForFinder",
                             header: "Transfer_ProcessForFinder.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Sets
                                                                                                      ## TransferProcess
                                                                                                      ## at
                                                                                                      ## initial
                                                                                                      ## state.
                                                                                                      ## Gives
                                                                                                      ## an
                                                                                                      ## Initial
                                                                                                      ## size
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## (indicative)
                                                                                                      ## for
                                                                                                      ## the
                                                                                                      ## Map
                                                                                                      ## when
                                                                                                      ## known
                                                                                                      ## (default
                                                                                                      ## is
                                                                                                      ## 10000).
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Sets
                                                                                                      ## default
                                                                                                      ## trace
                                                                                                      ## file
                                                                                                      ## as
                                                                                                      ## a
                                                                                                      ## printer
                                                                                                      ## and
                                                                                                      ## default
                                                                                                      ## trace
                                                                                                      ## level
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## (see
                                                                                                      ## Message_TraceFile).
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Same
                                                                                                      ## as
                                                                                                      ## Find
                                                                                                      ## but
                                                                                                      ## stores
                                                                                                      ## the
                                                                                                      ## last
                                                                                                      ## access
                                                                                                      ## to
                                                                                                      ## the
                                                                                                      ## map,
                                                                                                      ## for
                                                                                                      ## a
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## faster
                                                                                                      ## access
                                                                                                      ## on
                                                                                                      ## next
                                                                                                      ## calls
                                                                                                      ## (as
                                                                                                      ## Bind
                                                                                                      ## does
                                                                                                      ## too)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Considers
                                                                                                      ## a
                                                                                                      ## category
                                                                                                      ## number,
                                                                                                      ## by
                                                                                                      ## default
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## C++
                                                                                                      ## :
                                                                                                      ## return
                                                                                                      ## const
                                                                                                      ## &


proc constructTransferProcessForFinder*(nb: int = 10000): TransferProcessForFinder {.
    constructor, importcpp: "Transfer_ProcessForFinder(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc constructTransferProcessForFinder*(printer: Handle[MessageMessenger];
                                       nb: int = 10000): TransferProcessForFinder {.
    constructor, importcpp: "Transfer_ProcessForFinder(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc clear*(this: var TransferProcessForFinder) {.importcpp: "Clear",
    header: "Transfer_ProcessForFinder.hxx".}
proc clean*(this: var TransferProcessForFinder) {.importcpp: "Clean",
    header: "Transfer_ProcessForFinder.hxx".}
proc resize*(this: var TransferProcessForFinder; nb: int) {.importcpp: "Resize",
    header: "Transfer_ProcessForFinder.hxx".}
proc setActor*(this: var TransferProcessForFinder;
              actor: Handle[TransferActorOfProcessForFinder]) {.
    importcpp: "SetActor", header: "Transfer_ProcessForFinder.hxx".}
proc actor*(this: TransferProcessForFinder): Handle[TransferActorOfProcessForFinder] {.
    noSideEffect, importcpp: "Actor", header: "Transfer_ProcessForFinder.hxx".}
proc find*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    TransferBinder] {.noSideEffect, importcpp: "Find",
                     header: "Transfer_ProcessForFinder.hxx".}
proc isBound*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, importcpp: "IsBound", header: "Transfer_ProcessForFinder.hxx".}
proc isAlreadyUsed*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, importcpp: "IsAlreadyUsed",
    header: "Transfer_ProcessForFinder.hxx".}
proc `bind`*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
            binder: Handle[TransferBinder]) {.importcpp: "Bind",
    header: "Transfer_ProcessForFinder.hxx".}
proc rebind*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
            binder: Handle[TransferBinder]) {.importcpp: "Rebind",
    header: "Transfer_ProcessForFinder.hxx".}
proc unbind*(this: var TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    importcpp: "Unbind", header: "Transfer_ProcessForFinder.hxx".}
proc findElseBind*(this: var TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    TransferBinder] {.importcpp: "FindElseBind",
                     header: "Transfer_ProcessForFinder.hxx".}
proc setMessenger*(this: var TransferProcessForFinder;
                  messenger: Handle[MessageMessenger]) {.
    importcpp: "SetMessenger", header: "Transfer_ProcessForFinder.hxx".}
proc messenger*(this: TransferProcessForFinder): Handle[MessageMessenger] {.
    noSideEffect, importcpp: "Messenger", header: "Transfer_ProcessForFinder.hxx".}
proc setTraceLevel*(this: var TransferProcessForFinder; tracelev: int) {.
    importcpp: "SetTraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc traceLevel*(this: TransferProcessForFinder): int {.noSideEffect,
    importcpp: "TraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc sendFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              amsg: MessageMsg) {.importcpp: "SendFail",
                                header: "Transfer_ProcessForFinder.hxx".}
proc sendWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                 amsg: MessageMsg) {.importcpp: "SendWarning",
                                   header: "Transfer_ProcessForFinder.hxx".}
proc sendMsg*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             amsg: MessageMsg) {.importcpp: "SendMsg",
                               header: "Transfer_ProcessForFinder.hxx".}
proc addFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddFail", header: "Transfer_ProcessForFinder.hxx".}
proc addError*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddError", header: "Transfer_ProcessForFinder.hxx".}
proc addFail*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
             amsg: MessageMsg) {.importcpp: "AddFail",
                               header: "Transfer_ProcessForFinder.hxx".}
proc addWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddWarning", header: "Transfer_ProcessForFinder.hxx".}
proc addWarning*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                amsg: MessageMsg) {.importcpp: "AddWarning",
                                  header: "Transfer_ProcessForFinder.hxx".}
proc mend*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
          pref: StandardCString = "") {.importcpp: "Mend",
                                    header: "Transfer_ProcessForFinder.hxx".}
proc check*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    InterfaceCheck] {.noSideEffect, importcpp: "Check",
                     header: "Transfer_ProcessForFinder.hxx".}
proc bindTransient*(this: var TransferProcessForFinder;
                   start: Handle[TransferFinder]; res: Handle[StandardTransient]) {.
    importcpp: "BindTransient", header: "Transfer_ProcessForFinder.hxx".}
proc findTransient*(this: TransferProcessForFinder; start: Handle[TransferFinder]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "FindTransient",
                        header: "Transfer_ProcessForFinder.hxx".}
proc bindMultiple*(this: var TransferProcessForFinder; start: Handle[TransferFinder]) {.
    importcpp: "BindMultiple", header: "Transfer_ProcessForFinder.hxx".}
proc addMultiple*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
                 res: Handle[StandardTransient]) {.importcpp: "AddMultiple",
    header: "Transfer_ProcessForFinder.hxx".}
proc findTypedTransient*(this: TransferProcessForFinder;
                        start: Handle[TransferFinder];
                        atype: Handle[StandardType];
                        val: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "FindTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc findTypedTransient*[T](this: TransferProcessForFinder;
                           start: Handle[TransferFinder];
                           atype: Handle[StandardType]; val: var Handle[T]): bool {.
    noSideEffect, importcpp: "FindTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc getTypedTransient*(this: TransferProcessForFinder;
                       binder: Handle[TransferBinder];
                       atype: Handle[StandardType];
                       val: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "GetTypedTransient", header: "Transfer_ProcessForFinder.hxx".}
proc getTypedTransient*[T](this: TransferProcessForFinder;
                          start: Handle[TransferBinder];
                          atype: Handle[StandardType]; val: var Handle[T]): bool {.
    noSideEffect, importcpp: "GetTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc nbMapped*(this: TransferProcessForFinder): int {.noSideEffect,
    importcpp: "NbMapped", header: "Transfer_ProcessForFinder.hxx".}
proc mapped*(this: TransferProcessForFinder; num: int): Handle[TransferFinder] {.
    noSideEffect, importcpp: "Mapped", header: "Transfer_ProcessForFinder.hxx".}
proc mapIndex*(this: TransferProcessForFinder; start: Handle[TransferFinder]): int {.
    noSideEffect, importcpp: "MapIndex", header: "Transfer_ProcessForFinder.hxx".}
proc mapItem*(this: TransferProcessForFinder; num: int): Handle[TransferBinder] {.
    noSideEffect, importcpp: "MapItem", header: "Transfer_ProcessForFinder.hxx".}
proc setRoot*(this: var TransferProcessForFinder; start: Handle[TransferFinder]) {.
    importcpp: "SetRoot", header: "Transfer_ProcessForFinder.hxx".}
proc setRootManagement*(this: var TransferProcessForFinder; stat: bool) {.
    importcpp: "SetRootManagement", header: "Transfer_ProcessForFinder.hxx".}
proc nbRoots*(this: TransferProcessForFinder): int {.noSideEffect,
    importcpp: "NbRoots", header: "Transfer_ProcessForFinder.hxx".}
proc root*(this: TransferProcessForFinder; num: int): Handle[TransferFinder] {.
    noSideEffect, importcpp: "Root", header: "Transfer_ProcessForFinder.hxx".}
proc rootItem*(this: TransferProcessForFinder; num: int): Handle[TransferBinder] {.
    noSideEffect, importcpp: "RootItem", header: "Transfer_ProcessForFinder.hxx".}
proc rootIndex*(this: TransferProcessForFinder; start: Handle[TransferFinder]): int {.
    noSideEffect, importcpp: "RootIndex", header: "Transfer_ProcessForFinder.hxx".}
proc nestingLevel*(this: TransferProcessForFinder): int {.noSideEffect,
    importcpp: "NestingLevel", header: "Transfer_ProcessForFinder.hxx".}
proc resetNestingLevel*(this: var TransferProcessForFinder) {.
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForFinder.hxx".}
proc recognize*(this: TransferProcessForFinder; start: Handle[TransferFinder]): bool {.
    noSideEffect, importcpp: "Recognize", header: "Transfer_ProcessForFinder.hxx".}
proc transferring*(this: var TransferProcessForFinder;
                  start: Handle[TransferFinder];
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transferring",
                     header: "Transfer_ProcessForFinder.hxx".}
proc transfer*(this: var TransferProcessForFinder; start: Handle[TransferFinder];
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "Transfer_ProcessForFinder.hxx".}
proc setErrorHandle*(this: var TransferProcessForFinder; err: bool) {.
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc errorHandle*(this: TransferProcessForFinder): bool {.noSideEffect,
    importcpp: "ErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc startTrace*(this: TransferProcessForFinder; binder: Handle[TransferBinder];
                start: Handle[TransferFinder]; level: int; mode: int) {.noSideEffect,
    importcpp: "StartTrace", header: "Transfer_ProcessForFinder.hxx".}
proc printTrace*(this: TransferProcessForFinder; start: Handle[TransferFinder];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintTrace",
                                       header: "Transfer_ProcessForFinder.hxx".}
proc isLooping*(this: TransferProcessForFinder; alevel: int): bool {.noSideEffect,
    importcpp: "IsLooping", header: "Transfer_ProcessForFinder.hxx".}
proc rootResult*(this: TransferProcessForFinder; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, importcpp: "RootResult", header: "Transfer_ProcessForFinder.hxx".}
proc completeResult*(this: TransferProcessForFinder; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, importcpp: "CompleteResult",
    header: "Transfer_ProcessForFinder.hxx".}
proc abnormalResult*(this: TransferProcessForFinder): TransferIteratorOfProcessForFinder {.
    noSideEffect, importcpp: "AbnormalResult",
    header: "Transfer_ProcessForFinder.hxx".}
proc checkList*(this: TransferProcessForFinder; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "Transfer_ProcessForFinder.hxx".}
proc resultOne*(this: TransferProcessForFinder; start: Handle[TransferFinder];
               level: int; withstart: bool = false): TransferIteratorOfProcessForFinder {.
    noSideEffect, importcpp: "ResultOne", header: "Transfer_ProcessForFinder.hxx".}
proc checkListOne*(this: TransferProcessForFinder; start: Handle[TransferFinder];
                  level: int; erronly: bool): InterfaceCheckIterator {.noSideEffect,
    importcpp: "CheckListOne", header: "Transfer_ProcessForFinder.hxx".}
proc isCheckListEmpty*(this: TransferProcessForFinder;
                      start: Handle[TransferFinder]; level: int; erronly: bool): bool {.
    noSideEffect, importcpp: "IsCheckListEmpty",
    header: "Transfer_ProcessForFinder.hxx".}
proc removeResult*(this: var TransferProcessForFinder;
                  start: Handle[TransferFinder]; level: int; compute: bool = true) {.
    importcpp: "RemoveResult", header: "Transfer_ProcessForFinder.hxx".}
proc checkNum*(this: TransferProcessForFinder; start: Handle[TransferFinder]): int {.
    noSideEffect, importcpp: "CheckNum", header: "Transfer_ProcessForFinder.hxx".}
type
  TransferProcessForFinderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_ProcessForFinder::get_type_name(@)",
                            header: "Transfer_ProcessForFinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ProcessForFinder::get_type_descriptor(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc dynamicType*(this: TransferProcessForFinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_ProcessForFinder.hxx".}














































