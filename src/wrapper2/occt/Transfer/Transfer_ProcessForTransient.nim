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

import
  ../TColStd/TColStd_IndexedMapOfInteger,
  Transfer_TransferMapOfProcessForTransient,
  ../TColStd/TColStd_MapTransientHasher, ../TColStd/TColStd_HSequenceOfTransient,
  ../Message/Message_ProgressRange

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
  Handle_Transfer_ProcessForTransient* = handle[Transfer_ProcessForTransient]

## ! Manages Transfer of Transient Objects. Produces also
## ! ActorOfTransientProcess       (deferred class),
## ! IteratorOfTransientProcess    (for Results),
## ! TransferMapOfTransientProcess (internally used)
## ! Normally uses as TransientProcess, which adds some specifics

type
  Transfer_ProcessForTransient* {.importcpp: "Transfer_ProcessForTransient",
                                 header: "Transfer_ProcessForTransient.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Sets
                                                                    ## TransferProcess at initial state. Gives an Initial size
                                                                    ## ! (indicative) for the Map when known (default is 10000).
                                                                    ## ! Sets default trace file as a printer and default trace level
                                                                    ## ! (see
                                                                    ## Message_TraceFile).
                                                                    ## ! Same as Find but stores the last access to the map, for a
                                                                    ## ! faster access on next calls (as Bind does too)
                                                                    ## ! Considers a category number, by default 0
                                                                    ## ! C++ : return const &


proc constructTransfer_ProcessForTransient*(nb: Standard_Integer = 10000): Transfer_ProcessForTransient {.
    constructor, importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc constructTransfer_ProcessForTransient*(printer: handle[Message_Messenger];
    nb: Standard_Integer = 10000): Transfer_ProcessForTransient {.constructor,
    importcpp: "Transfer_ProcessForTransient(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc Clear*(this: var Transfer_ProcessForTransient) {.importcpp: "Clear",
    header: "Transfer_ProcessForTransient.hxx".}
proc Clean*(this: var Transfer_ProcessForTransient) {.importcpp: "Clean",
    header: "Transfer_ProcessForTransient.hxx".}
proc Resize*(this: var Transfer_ProcessForTransient; nb: Standard_Integer) {.
    importcpp: "Resize", header: "Transfer_ProcessForTransient.hxx".}
proc SetActor*(this: var Transfer_ProcessForTransient;
              actor: handle[Transfer_ActorOfProcessForTransient]) {.
    importcpp: "SetActor", header: "Transfer_ProcessForTransient.hxx".}
proc Actor*(this: Transfer_ProcessForTransient): handle[
    Transfer_ActorOfProcessForTransient] {.noSideEffect, importcpp: "Actor",
    header: "Transfer_ProcessForTransient.hxx".}
proc Find*(this: Transfer_ProcessForTransient; start: handle[Standard_Transient]): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "Find",
                      header: "Transfer_ProcessForTransient.hxx".}
proc IsBound*(this: Transfer_ProcessForTransient; start: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsBound", header: "Transfer_ProcessForTransient.hxx".}
proc IsAlreadyUsed*(this: Transfer_ProcessForTransient;
                   start: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAlreadyUsed",
    header: "Transfer_ProcessForTransient.hxx".}
proc Bind*(this: var Transfer_ProcessForTransient;
          start: handle[Standard_Transient]; binder: handle[Transfer_Binder]) {.
    importcpp: "Bind", header: "Transfer_ProcessForTransient.hxx".}
proc Rebind*(this: var Transfer_ProcessForTransient;
            start: handle[Standard_Transient]; binder: handle[Transfer_Binder]) {.
    importcpp: "Rebind", header: "Transfer_ProcessForTransient.hxx".}
proc Unbind*(this: var Transfer_ProcessForTransient;
            start: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Unbind", header: "Transfer_ProcessForTransient.hxx".}
proc FindElseBind*(this: var Transfer_ProcessForTransient;
                  start: handle[Standard_Transient]): handle[Transfer_Binder] {.
    importcpp: "FindElseBind", header: "Transfer_ProcessForTransient.hxx".}
proc SetMessenger*(this: var Transfer_ProcessForTransient;
                  messenger: handle[Message_Messenger]) {.
    importcpp: "SetMessenger", header: "Transfer_ProcessForTransient.hxx".}
proc Messenger*(this: Transfer_ProcessForTransient): handle[Message_Messenger] {.
    noSideEffect, importcpp: "Messenger",
    header: "Transfer_ProcessForTransient.hxx".}
proc SetTraceLevel*(this: var Transfer_ProcessForTransient;
                   tracelev: Standard_Integer) {.importcpp: "SetTraceLevel",
    header: "Transfer_ProcessForTransient.hxx".}
proc TraceLevel*(this: Transfer_ProcessForTransient): Standard_Integer {.
    noSideEffect, importcpp: "TraceLevel",
    header: "Transfer_ProcessForTransient.hxx".}
proc SendFail*(this: var Transfer_ProcessForTransient;
              start: handle[Standard_Transient]; amsg: Message_Msg) {.
    importcpp: "SendFail", header: "Transfer_ProcessForTransient.hxx".}
proc SendWarning*(this: var Transfer_ProcessForTransient;
                 start: handle[Standard_Transient]; amsg: Message_Msg) {.
    importcpp: "SendWarning", header: "Transfer_ProcessForTransient.hxx".}
proc SendMsg*(this: var Transfer_ProcessForTransient;
             start: handle[Standard_Transient]; amsg: Message_Msg) {.
    importcpp: "SendMsg", header: "Transfer_ProcessForTransient.hxx".}
proc AddFail*(this: var Transfer_ProcessForTransient;
             start: handle[Standard_Transient]; mess: Standard_CString;
             orig: Standard_CString = "") {.importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc AddError*(this: var Transfer_ProcessForTransient;
              start: handle[Standard_Transient]; mess: Standard_CString;
              orig: Standard_CString = "") {.importcpp: "AddError",
    header: "Transfer_ProcessForTransient.hxx".}
proc AddFail*(this: var Transfer_ProcessForTransient;
             start: handle[Standard_Transient]; amsg: Message_Msg) {.
    importcpp: "AddFail", header: "Transfer_ProcessForTransient.hxx".}
proc AddWarning*(this: var Transfer_ProcessForTransient;
                start: handle[Standard_Transient]; mess: Standard_CString;
                orig: Standard_CString = "") {.importcpp: "AddWarning",
    header: "Transfer_ProcessForTransient.hxx".}
proc AddWarning*(this: var Transfer_ProcessForTransient;
                start: handle[Standard_Transient]; amsg: Message_Msg) {.
    importcpp: "AddWarning", header: "Transfer_ProcessForTransient.hxx".}
proc Mend*(this: var Transfer_ProcessForTransient;
          start: handle[Standard_Transient]; pref: Standard_CString = "") {.
    importcpp: "Mend", header: "Transfer_ProcessForTransient.hxx".}
proc Check*(this: Transfer_ProcessForTransient; start: handle[Standard_Transient]): handle[
    Interface_Check] {.noSideEffect, importcpp: "Check",
                      header: "Transfer_ProcessForTransient.hxx".}
proc BindTransient*(this: var Transfer_ProcessForTransient;
                   start: handle[Standard_Transient];
                   res: handle[Standard_Transient]) {.importcpp: "BindTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc FindTransient*(this: Transfer_ProcessForTransient;
                   start: handle[Standard_Transient]): handle[Standard_Transient] {.
    noSideEffect, importcpp: "FindTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc BindMultiple*(this: var Transfer_ProcessForTransient;
                  start: handle[Standard_Transient]) {.importcpp: "BindMultiple",
    header: "Transfer_ProcessForTransient.hxx".}
proc AddMultiple*(this: var Transfer_ProcessForTransient;
                 start: handle[Standard_Transient];
                 res: handle[Standard_Transient]) {.importcpp: "AddMultiple",
    header: "Transfer_ProcessForTransient.hxx".}
proc FindTypedTransient*(this: Transfer_ProcessForTransient;
                        start: handle[Standard_Transient];
                        atype: handle[Standard_Type];
                        val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "FindTypedTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc GetTypedTransient*(this: Transfer_ProcessForTransient;
                       binder: handle[Transfer_Binder];
                       atype: handle[Standard_Type];
                       val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTypedTransient",
    header: "Transfer_ProcessForTransient.hxx".}
proc NbMapped*(this: Transfer_ProcessForTransient): Standard_Integer {.noSideEffect,
    importcpp: "NbMapped", header: "Transfer_ProcessForTransient.hxx".}
proc Mapped*(this: Transfer_ProcessForTransient; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Mapped",
                         header: "Transfer_ProcessForTransient.hxx".}
proc MapIndex*(this: Transfer_ProcessForTransient;
              start: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "MapIndex", header: "Transfer_ProcessForTransient.hxx".}
proc MapItem*(this: Transfer_ProcessForTransient; num: Standard_Integer): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "MapItem",
                      header: "Transfer_ProcessForTransient.hxx".}
proc SetRoot*(this: var Transfer_ProcessForTransient;
             start: handle[Standard_Transient]) {.importcpp: "SetRoot",
    header: "Transfer_ProcessForTransient.hxx".}
proc SetRootManagement*(this: var Transfer_ProcessForTransient;
                       stat: Standard_Boolean) {.importcpp: "SetRootManagement",
    header: "Transfer_ProcessForTransient.hxx".}
proc NbRoots*(this: Transfer_ProcessForTransient): Standard_Integer {.noSideEffect,
    importcpp: "NbRoots", header: "Transfer_ProcessForTransient.hxx".}
proc Root*(this: Transfer_ProcessForTransient; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Root",
                         header: "Transfer_ProcessForTransient.hxx".}
proc RootItem*(this: Transfer_ProcessForTransient; num: Standard_Integer): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "RootItem",
                      header: "Transfer_ProcessForTransient.hxx".}
proc RootIndex*(this: Transfer_ProcessForTransient;
               start: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "RootIndex", header: "Transfer_ProcessForTransient.hxx".}
proc NestingLevel*(this: Transfer_ProcessForTransient): Standard_Integer {.
    noSideEffect, importcpp: "NestingLevel",
    header: "Transfer_ProcessForTransient.hxx".}
proc ResetNestingLevel*(this: var Transfer_ProcessForTransient) {.
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForTransient.hxx".}
proc Recognize*(this: Transfer_ProcessForTransient;
               start: handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Recognize", header: "Transfer_ProcessForTransient.hxx".}
proc Transferring*(this: var Transfer_ProcessForTransient;
                  start: handle[Standard_Transient];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ProcessForTransient.hxx".}
proc Transfer*(this: var Transfer_ProcessForTransient;
              start: handle[Standard_Transient];
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "Transfer_ProcessForTransient.hxx".}
proc SetErrorHandle*(this: var Transfer_ProcessForTransient; err: Standard_Boolean) {.
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForTransient.hxx".}
proc ErrorHandle*(this: Transfer_ProcessForTransient): Standard_Boolean {.
    noSideEffect, importcpp: "ErrorHandle",
    header: "Transfer_ProcessForTransient.hxx".}
proc StartTrace*(this: Transfer_ProcessForTransient;
                binder: handle[Transfer_Binder];
                start: handle[Standard_Transient]; level: Standard_Integer;
                mode: Standard_Integer) {.noSideEffect, importcpp: "StartTrace", header: "Transfer_ProcessForTransient.hxx".}
proc PrintTrace*(this: Transfer_ProcessForTransient;
                start: handle[Standard_Transient]; S: var Standard_OStream) {.
    noSideEffect, importcpp: "PrintTrace",
    header: "Transfer_ProcessForTransient.hxx".}
proc IsLooping*(this: Transfer_ProcessForTransient; alevel: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsLooping",
    header: "Transfer_ProcessForTransient.hxx".}
proc RootResult*(this: Transfer_ProcessForTransient;
                withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForTransient {.
    noSideEffect, importcpp: "RootResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc CompleteResult*(this: Transfer_ProcessForTransient;
                    withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForTransient {.
    noSideEffect, importcpp: "CompleteResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc AbnormalResult*(this: Transfer_ProcessForTransient): Transfer_IteratorOfProcessForTransient {.
    noSideEffect, importcpp: "AbnormalResult",
    header: "Transfer_ProcessForTransient.hxx".}
proc CheckList*(this: Transfer_ProcessForTransient; erronly: Standard_Boolean): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList",
    header: "Transfer_ProcessForTransient.hxx".}
proc ResultOne*(this: Transfer_ProcessForTransient;
               start: handle[Standard_Transient]; level: Standard_Integer;
               withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForTransient {.
    noSideEffect, importcpp: "ResultOne",
    header: "Transfer_ProcessForTransient.hxx".}
proc CheckListOne*(this: Transfer_ProcessForTransient;
                  start: handle[Standard_Transient]; level: Standard_Integer;
                  erronly: Standard_Boolean): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckListOne",
    header: "Transfer_ProcessForTransient.hxx".}
proc IsCheckListEmpty*(this: Transfer_ProcessForTransient;
                      start: handle[Standard_Transient]; level: Standard_Integer;
                      erronly: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "IsCheckListEmpty", header: "Transfer_ProcessForTransient.hxx".}
proc RemoveResult*(this: var Transfer_ProcessForTransient;
                  start: handle[Standard_Transient]; level: Standard_Integer;
                  compute: Standard_Boolean = Standard_True) {.
    importcpp: "RemoveResult", header: "Transfer_ProcessForTransient.hxx".}
proc CheckNum*(this: Transfer_ProcessForTransient;
              start: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CheckNum", header: "Transfer_ProcessForTransient.hxx".}
type
  Transfer_ProcessForTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ProcessForTransient::get_type_name(@)",
                              header: "Transfer_ProcessForTransient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ProcessForTransient::get_type_descriptor(@)",
    header: "Transfer_ProcessForTransient.hxx".}
proc DynamicType*(this: Transfer_ProcessForTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ProcessForTransient.hxx".}