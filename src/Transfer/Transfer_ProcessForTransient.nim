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
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_ActorOfProcessForTransient"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Transfer_IteratorOfProcessForTransient"
discard "forward decl of Message_Msg"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_ProcessForTransient"
type
  HandleTransferProcessForTransient* = Handle[TransferProcessForTransient]

## ! Manages Transfer of Transient Objects. Produces also
## ! ActorOfTransientProcess       (deferred class),
## ! IteratorOfTransientProcess    (for Results),
## ! TransferMapOfTransientProcess (internally used)
## ! Normally uses as TransientProcess, which adds some specifics

type
  TransferProcessForTransient* {.importcpp: "Transfer_ProcessForTransient",
                                header: "Transfer_ProcessForTransient.hxx", bycopy.} = object of StandardTransient ##
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


proc constructTransferProcessForTransient*(nb: int = 10000): TransferProcessForTransient {.
    constructor, importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".}
#[ proc constructTransferProcessForTransient*(printer: Handle[MessageMessenger];
    nb: int = 10000): TransferProcessForTransient {.constructor,
    importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".} ]#
proc clear*(this: var TransferProcessForTransient) {.importcpp: "Clear",
    header: "Transfer_ProcessForTransient.hxx".}
proc clean*(this: var TransferProcessForTransient) {.importcpp: "Clean",
    header: "Transfer_ProcessForTransient.hxx".}
proc resize*(this: var TransferProcessForTransient; nb: int) {.importcpp: "Resize",
    header: "Transfer_ProcessForTransient.hxx".}
proc setActor*(this: var TransferProcessForTransient;
              actor: Handle[TransferActorOfProcessForTransient]) {.
    importcpp: "SetActor", header: "Transfer_ProcessForTransient.hxx".}
proc actor*(this: TransferProcessForTransient): Handle[
    TransferActorOfProcessForTransient] {.noSideEffect, importcpp: "Actor",
    header: "Transfer_ProcessForTransient.hxx".}
proc find*(this: TransferProcessForTransient; start: Handle[StandardTransient]): Handle[
    TransferBinder] {.noSideEffect, importcpp: "Find",
                     header: "Transfer_ProcessForTransient.hxx".}
proc isBound*(this: TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsBound", header: "Transfer_ProcessForTransient.hxx".}
proc isAlreadyUsed*(this: TransferProcessForTransient;
                   start: Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "IsAlreadyUsed", header: "Transfer_ProcessForTransient.hxx".}
proc `bind`*(this: var TransferProcessForTransient;
            start: Handle[StandardTransient]; binder: Handle[TransferBinder]) {.
    importcpp: "Bind", header: "Transfer_ProcessForTransient.hxx".}
proc rebind*(this: var TransferProcessForTransient;
            start: Handle[StandardTransient]; binder: Handle[TransferBinder]) {.
    importcpp: "Rebind", header: "Transfer_ProcessForTransient.hxx".}
proc unbind*(this: var TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    importcpp: "Unbind", header: "Transfer_ProcessForTransient.hxx".}
proc findElseBind*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]): Handle[TransferBinder] {.
    importcpp: "FindElseBind", header: "Transfer_ProcessForTransient.hxx".}
#[ proc setMessenger*(this: var TransferProcessForTransient;
                  messenger: Handle[MessageMessenger]) {.
    importcpp: "SetMessenger", header: "Transfer_ProcessForTransient.hxx".}
proc messenger*(this: TransferProcessForTransient): Handle[MessageMessenger] {.
    noSideEffect, importcpp: "Messenger",
    header: "Transfer_ProcessForTransient.hxx".}
proc setTraceLevel*(this: var TransferProcessForTransient; tracelev: int) {.
    importcpp: "SetTraceLevel", header: "Transfer_ProcessForTransient.hxx".}
proc traceLevel*(this: TransferProcessForTransient): int {.noSideEffect,
    importcpp: "TraceLevel", header: "Transfer_ProcessForTransient.hxx".}
proc sendFail*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient]; amsg: MessageMsg) {.
    importcpp: "SendFail", header: "Transfer_ProcessForTransient.hxx".}
proc sendWarning*(this: var TransferProcessForTransient;
                 start: Handle[StandardTransient]; amsg: MessageMsg) {.
    importcpp: "SendWarning", header: "Transfer_ProcessForTransient.hxx".}
proc sendMsg*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; amsg: MessageMsg) {.
    importcpp: "SendMsg", header: "Transfer_ProcessForTransient.hxx".}
proc addFail*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; mess: StandardCString;
             orig: StandardCString = "") {.importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc addError*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient]; mess: StandardCString;
              orig: StandardCString = "") {.importcpp: "AddError", header: "Transfer_ProcessForTransient.hxx".}
proc addFail*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]; amsg: MessageMsg) {.
    importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc addWarning*(this: var TransferProcessForTransient;
                start: Handle[StandardTransient]; mess: StandardCString;
                orig: StandardCString = "") {.importcpp: "AddWarning",
    header: "Transfer_ProcessForTransient.hxx".}
proc addWarning*(this: var TransferProcessForTransient;
                start: Handle[StandardTransient]; amsg: MessageMsg) {.
    importcpp: "AddWarning", header: "Transfer_ProcessForTransient.hxx".}
proc mend*(this: var TransferProcessForTransient; start: Handle[StandardTransient];
          pref: StandardCString = "") {.importcpp: "Mend",
                                    header: "Transfer_ProcessForTransient.hxx".}
proc check*(this: TransferProcessForTransient; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.noSideEffect, importcpp: "Check",
                     header: "Transfer_ProcessForTransient.hxx".}
proc bindTransient*(this: var TransferProcessForTransient;
                   start: Handle[StandardTransient];
                   res: Handle[StandardTransient]) {.importcpp: "BindTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc findTransient*(this: TransferProcessForTransient;
                   start: Handle[StandardTransient]): Handle[StandardTransient] {.
    noSideEffect, importcpp: "FindTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc bindMultiple*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]) {.importcpp: "BindMultiple",
    header: "Transfer_ProcessForTransient.hxx".}
proc addMultiple*(this: var TransferProcessForTransient;
                 start: Handle[StandardTransient]; res: Handle[StandardTransient]) {.
    importcpp: "AddMultiple", header: "Transfer_ProcessForTransient.hxx".}
proc findTypedTransient*(this: TransferProcessForTransient;
                        start: Handle[StandardTransient];
                        atype: Handle[StandardType];
                        val: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "FindTypedTransient", header: "Transfer_ProcessForTransient.hxx".}
proc getTypedTransient*(this: TransferProcessForTransient;
                       binder: Handle[TransferBinder];
                       atype: Handle[StandardType];
                       val: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "GetTypedTransient", header: "Transfer_ProcessForTransient.hxx".}
proc nbMapped*(this: TransferProcessForTransient): int {.noSideEffect,
    importcpp: "NbMapped", header: "Transfer_ProcessForTransient.hxx".}
proc mapped*(this: TransferProcessForTransient; num: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Mapped", header: "Transfer_ProcessForTransient.hxx".}
proc mapIndex*(this: TransferProcessForTransient; start: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "MapIndex", header: "Transfer_ProcessForTransient.hxx".}
proc mapItem*(this: TransferProcessForTransient; num: int): Handle[TransferBinder] {.
    noSideEffect, importcpp: "MapItem", header: "Transfer_ProcessForTransient.hxx".}
proc setRoot*(this: var TransferProcessForTransient;
             start: Handle[StandardTransient]) {.importcpp: "SetRoot",
    header: "Transfer_ProcessForTransient.hxx".}
proc setRootManagement*(this: var TransferProcessForTransient; stat: bool) {.
    importcpp: "SetRootManagement", header: "Transfer_ProcessForTransient.hxx".}
proc nbRoots*(this: TransferProcessForTransient): int {.noSideEffect,
    importcpp: "NbRoots", header: "Transfer_ProcessForTransient.hxx".}
proc root*(this: TransferProcessForTransient; num: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Root", header: "Transfer_ProcessForTransient.hxx".}
proc rootItem*(this: TransferProcessForTransient; num: int): Handle[TransferBinder] {.
    noSideEffect, importcpp: "RootItem", header: "Transfer_ProcessForTransient.hxx".}
proc rootIndex*(this: TransferProcessForTransient; start: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "RootIndex",
    header: "Transfer_ProcessForTransient.hxx".}
proc nestingLevel*(this: TransferProcessForTransient): int {.noSideEffect,
    importcpp: "NestingLevel", header: "Transfer_ProcessForTransient.hxx".}
proc resetNestingLevel*(this: var TransferProcessForTransient) {.
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForTransient.hxx".}
proc recognize*(this: TransferProcessForTransient; start: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "Recognize",
    header: "Transfer_ProcessForTransient.hxx".}
proc transferring*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient];
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transferring",
                     header: "Transfer_ProcessForTransient.hxx".}
proc transfer*(this: var TransferProcessForTransient;
              start: Handle[StandardTransient];
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "Transfer_ProcessForTransient.hxx".}
proc setErrorHandle*(this: var TransferProcessForTransient; err: bool) {.
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForTransient.hxx".}
proc errorHandle*(this: TransferProcessForTransient): bool {.noSideEffect,
    importcpp: "ErrorHandle", header: "Transfer_ProcessForTransient.hxx".}
proc startTrace*(this: TransferProcessForTransient; binder: Handle[TransferBinder];
                start: Handle[StandardTransient]; level: int; mode: int) {.
    noSideEffect, importcpp: "StartTrace",
    header: "Transfer_ProcessForTransient.hxx".}
proc printTrace*(this: TransferProcessForTransient;
                start: Handle[StandardTransient]; s: var StandardOStream) {.
    noSideEffect, importcpp: "PrintTrace",
    header: "Transfer_ProcessForTransient.hxx".}
proc isLooping*(this: TransferProcessForTransient; alevel: int): bool {.noSideEffect,
    importcpp: "IsLooping", header: "Transfer_ProcessForTransient.hxx".}
proc rootResult*(this: TransferProcessForTransient; withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, importcpp: "RootResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc completeResult*(this: TransferProcessForTransient; withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, importcpp: "CompleteResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc abnormalResult*(this: TransferProcessForTransient): TransferIteratorOfProcessForTransient {.
    noSideEffect, importcpp: "AbnormalResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc checkList*(this: TransferProcessForTransient; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckList",
    header: "Transfer_ProcessForTransient.hxx".}
proc resultOne*(this: TransferProcessForTransient;
               start: Handle[StandardTransient]; level: int; withstart: bool = false): TransferIteratorOfProcessForTransient {.
    noSideEffect, importcpp: "ResultOne",
    header: "Transfer_ProcessForTransient.hxx".}
proc checkListOne*(this: TransferProcessForTransient;
                  start: Handle[StandardTransient]; level: int; erronly: bool): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckListOne",
    header: "Transfer_ProcessForTransient.hxx".}
proc isCheckListEmpty*(this: TransferProcessForTransient;
                      start: Handle[StandardTransient]; level: int; erronly: bool): bool {.
    noSideEffect, importcpp: "IsCheckListEmpty",
    header: "Transfer_ProcessForTransient.hxx".}
proc removeResult*(this: var TransferProcessForTransient;
                  start: Handle[StandardTransient]; level: int; compute: bool = true) {.
    importcpp: "RemoveResult", header: "Transfer_ProcessForTransient.hxx".}
proc checkNum*(this: TransferProcessForTransient; start: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CheckNum", header: "Transfer_ProcessForTransient.hxx".}
type
  TransferProcessForTransientbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_ProcessForTransient::get_type_name(@)",
                            header: "Transfer_ProcessForTransient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ProcessForTransient::get_type_descriptor(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc dynamicType*(this: TransferProcessForTransient): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ProcessForTransient.hxx".}














































 ]#