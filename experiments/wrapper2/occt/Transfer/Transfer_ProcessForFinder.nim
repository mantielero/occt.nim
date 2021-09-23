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
  ../TColStd/TColStd_IndexedMapOfInteger, Transfer_HSequenceOfFinder,
  Transfer_TransferMapOfProcessForFinder, ../Message/Message_ProgressRange

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
  Handle_Transfer_ProcessForFinder* = handle[Transfer_ProcessForFinder]
  Transfer_ProcessForFinder* {.importcpp: "Transfer_ProcessForFinder",
                              header: "Transfer_ProcessForFinder.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructTransfer_ProcessForFinder*(nb: Standard_Integer = 10000): Transfer_ProcessForFinder {.
    constructor, importcpp: "Transfer_ProcessForFinder(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc constructTransfer_ProcessForFinder*(printer: handle[Message_Messenger];
                                        nb: Standard_Integer = 10000): Transfer_ProcessForFinder {.
    constructor, importcpp: "Transfer_ProcessForFinder(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc Clear*(this: var Transfer_ProcessForFinder) {.importcpp: "Clear",
    header: "Transfer_ProcessForFinder.hxx".}
proc Clean*(this: var Transfer_ProcessForFinder) {.importcpp: "Clean",
    header: "Transfer_ProcessForFinder.hxx".}
proc Resize*(this: var Transfer_ProcessForFinder; nb: Standard_Integer) {.
    importcpp: "Resize", header: "Transfer_ProcessForFinder.hxx".}
proc SetActor*(this: var Transfer_ProcessForFinder;
              actor: handle[Transfer_ActorOfProcessForFinder]) {.
    importcpp: "SetActor", header: "Transfer_ProcessForFinder.hxx".}
proc Actor*(this: Transfer_ProcessForFinder): handle[
    Transfer_ActorOfProcessForFinder] {.noSideEffect, importcpp: "Actor",
                                       header: "Transfer_ProcessForFinder.hxx".}
proc Find*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "Find",
                      header: "Transfer_ProcessForFinder.hxx".}
proc IsBound*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "IsBound", header: "Transfer_ProcessForFinder.hxx".}
proc IsAlreadyUsed*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAlreadyUsed",
    header: "Transfer_ProcessForFinder.hxx".}
proc Bind*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
          binder: handle[Transfer_Binder]) {.importcpp: "Bind",
    header: "Transfer_ProcessForFinder.hxx".}
proc Rebind*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
            binder: handle[Transfer_Binder]) {.importcpp: "Rebind",
    header: "Transfer_ProcessForFinder.hxx".}
proc Unbind*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Boolean {.
    importcpp: "Unbind", header: "Transfer_ProcessForFinder.hxx".}
proc FindElseBind*(this: var Transfer_ProcessForFinder;
                  start: handle[Transfer_Finder]): handle[Transfer_Binder] {.
    importcpp: "FindElseBind", header: "Transfer_ProcessForFinder.hxx".}
proc SetMessenger*(this: var Transfer_ProcessForFinder;
                  messenger: handle[Message_Messenger]) {.
    importcpp: "SetMessenger", header: "Transfer_ProcessForFinder.hxx".}
proc Messenger*(this: Transfer_ProcessForFinder): handle[Message_Messenger] {.
    noSideEffect, importcpp: "Messenger", header: "Transfer_ProcessForFinder.hxx".}
proc SetTraceLevel*(this: var Transfer_ProcessForFinder; tracelev: Standard_Integer) {.
    importcpp: "SetTraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc TraceLevel*(this: Transfer_ProcessForFinder): Standard_Integer {.noSideEffect,
    importcpp: "TraceLevel", header: "Transfer_ProcessForFinder.hxx".}
proc SendFail*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
              amsg: Message_Msg) {.importcpp: "SendFail",
                                 header: "Transfer_ProcessForFinder.hxx".}
proc SendWarning*(this: var Transfer_ProcessForFinder;
                 start: handle[Transfer_Finder]; amsg: Message_Msg) {.
    importcpp: "SendWarning", header: "Transfer_ProcessForFinder.hxx".}
proc SendMsg*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
             amsg: Message_Msg) {.importcpp: "SendMsg",
                                header: "Transfer_ProcessForFinder.hxx".}
proc AddFail*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
             mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddFail", header: "Transfer_ProcessForFinder.hxx".}
proc AddError*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
              mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddError", header: "Transfer_ProcessForFinder.hxx".}
proc AddFail*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
             amsg: Message_Msg) {.importcpp: "AddFail",
                                header: "Transfer_ProcessForFinder.hxx".}
proc AddWarning*(this: var Transfer_ProcessForFinder;
                start: handle[Transfer_Finder]; mess: Standard_CString;
                orig: Standard_CString = "") {.importcpp: "AddWarning",
    header: "Transfer_ProcessForFinder.hxx".}
proc AddWarning*(this: var Transfer_ProcessForFinder;
                start: handle[Transfer_Finder]; amsg: Message_Msg) {.
    importcpp: "AddWarning", header: "Transfer_ProcessForFinder.hxx".}
proc Mend*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
          pref: Standard_CString = "") {.importcpp: "Mend",
                                     header: "Transfer_ProcessForFinder.hxx".}
proc Check*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): handle[
    Interface_Check] {.noSideEffect, importcpp: "Check",
                      header: "Transfer_ProcessForFinder.hxx".}
proc BindTransient*(this: var Transfer_ProcessForFinder;
                   start: handle[Transfer_Finder]; res: handle[Standard_Transient]) {.
    importcpp: "BindTransient", header: "Transfer_ProcessForFinder.hxx".}
proc FindTransient*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "FindTransient",
                         header: "Transfer_ProcessForFinder.hxx".}
proc BindMultiple*(this: var Transfer_ProcessForFinder;
                  start: handle[Transfer_Finder]) {.importcpp: "BindMultiple",
    header: "Transfer_ProcessForFinder.hxx".}
proc AddMultiple*(this: var Transfer_ProcessForFinder;
                 start: handle[Transfer_Finder]; res: handle[Standard_Transient]) {.
    importcpp: "AddMultiple", header: "Transfer_ProcessForFinder.hxx".}
proc FindTypedTransient*(this: Transfer_ProcessForFinder;
                        start: handle[Transfer_Finder];
                        atype: handle[Standard_Type];
                        val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "FindTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc FindTypedTransient*[T](this: Transfer_ProcessForFinder;
                           start: handle[Transfer_Finder];
                           atype: handle[Standard_Type]; val: var handle[T]): Standard_Boolean {.
    noSideEffect, importcpp: "FindTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc GetTypedTransient*(this: Transfer_ProcessForFinder;
                       binder: handle[Transfer_Binder];
                       atype: handle[Standard_Type];
                       val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc GetTypedTransient*[T](this: Transfer_ProcessForFinder;
                          start: handle[Transfer_Binder];
                          atype: handle[Standard_Type]; val: var handle[T]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTypedTransient",
    header: "Transfer_ProcessForFinder.hxx".}
proc NbMapped*(this: Transfer_ProcessForFinder): Standard_Integer {.noSideEffect,
    importcpp: "NbMapped", header: "Transfer_ProcessForFinder.hxx".}
proc Mapped*(this: Transfer_ProcessForFinder; num: Standard_Integer): handle[
    Transfer_Finder] {.noSideEffect, importcpp: "Mapped",
                      header: "Transfer_ProcessForFinder.hxx".}
proc MapIndex*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Integer {.
    noSideEffect, importcpp: "MapIndex", header: "Transfer_ProcessForFinder.hxx".}
proc MapItem*(this: Transfer_ProcessForFinder; num: Standard_Integer): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "MapItem",
                      header: "Transfer_ProcessForFinder.hxx".}
proc SetRoot*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder]) {.
    importcpp: "SetRoot", header: "Transfer_ProcessForFinder.hxx".}
proc SetRootManagement*(this: var Transfer_ProcessForFinder; stat: Standard_Boolean) {.
    importcpp: "SetRootManagement", header: "Transfer_ProcessForFinder.hxx".}
proc NbRoots*(this: Transfer_ProcessForFinder): Standard_Integer {.noSideEffect,
    importcpp: "NbRoots", header: "Transfer_ProcessForFinder.hxx".}
proc Root*(this: Transfer_ProcessForFinder; num: Standard_Integer): handle[
    Transfer_Finder] {.noSideEffect, importcpp: "Root",
                      header: "Transfer_ProcessForFinder.hxx".}
proc RootItem*(this: Transfer_ProcessForFinder; num: Standard_Integer): handle[
    Transfer_Binder] {.noSideEffect, importcpp: "RootItem",
                      header: "Transfer_ProcessForFinder.hxx".}
proc RootIndex*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Integer {.
    noSideEffect, importcpp: "RootIndex", header: "Transfer_ProcessForFinder.hxx".}
proc NestingLevel*(this: Transfer_ProcessForFinder): Standard_Integer {.
    noSideEffect, importcpp: "NestingLevel",
    header: "Transfer_ProcessForFinder.hxx".}
proc ResetNestingLevel*(this: var Transfer_ProcessForFinder) {.
    importcpp: "ResetNestingLevel", header: "Transfer_ProcessForFinder.hxx".}
proc Recognize*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "Transfer_ProcessForFinder.hxx".}
proc Transferring*(this: var Transfer_ProcessForFinder;
                  start: handle[Transfer_Finder];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ProcessForFinder.hxx".}
proc Transfer*(this: var Transfer_ProcessForFinder; start: handle[Transfer_Finder];
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "Transfer_ProcessForFinder.hxx".}
proc SetErrorHandle*(this: var Transfer_ProcessForFinder; err: Standard_Boolean) {.
    importcpp: "SetErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc ErrorHandle*(this: Transfer_ProcessForFinder): Standard_Boolean {.noSideEffect,
    importcpp: "ErrorHandle", header: "Transfer_ProcessForFinder.hxx".}
proc StartTrace*(this: Transfer_ProcessForFinder; binder: handle[Transfer_Binder];
                start: handle[Transfer_Finder]; level: Standard_Integer;
                mode: Standard_Integer) {.noSideEffect, importcpp: "StartTrace",
                                        header: "Transfer_ProcessForFinder.hxx".}
proc PrintTrace*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintTrace",
                                        header: "Transfer_ProcessForFinder.hxx".}
proc IsLooping*(this: Transfer_ProcessForFinder; alevel: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsLooping", header: "Transfer_ProcessForFinder.hxx".}
proc RootResult*(this: Transfer_ProcessForFinder;
                withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForFinder {.
    noSideEffect, importcpp: "RootResult", header: "Transfer_ProcessForFinder.hxx".}
proc CompleteResult*(this: Transfer_ProcessForFinder;
                    withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForFinder {.
    noSideEffect, importcpp: "CompleteResult",
    header: "Transfer_ProcessForFinder.hxx".}
proc AbnormalResult*(this: Transfer_ProcessForFinder): Transfer_IteratorOfProcessForFinder {.
    noSideEffect, importcpp: "AbnormalResult",
    header: "Transfer_ProcessForFinder.hxx".}
proc CheckList*(this: Transfer_ProcessForFinder; erronly: Standard_Boolean): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "Transfer_ProcessForFinder.hxx".}
proc ResultOne*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder];
               level: Standard_Integer;
               withstart: Standard_Boolean = Standard_False): Transfer_IteratorOfProcessForFinder {.
    noSideEffect, importcpp: "ResultOne", header: "Transfer_ProcessForFinder.hxx".}
proc CheckListOne*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder];
                  level: Standard_Integer; erronly: Standard_Boolean): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckListOne",
    header: "Transfer_ProcessForFinder.hxx".}
proc IsCheckListEmpty*(this: Transfer_ProcessForFinder;
                      start: handle[Transfer_Finder]; level: Standard_Integer;
                      erronly: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "IsCheckListEmpty", header: "Transfer_ProcessForFinder.hxx".}
proc RemoveResult*(this: var Transfer_ProcessForFinder;
                  start: handle[Transfer_Finder]; level: Standard_Integer;
                  compute: Standard_Boolean = Standard_True) {.
    importcpp: "RemoveResult", header: "Transfer_ProcessForFinder.hxx".}
proc CheckNum*(this: Transfer_ProcessForFinder; start: handle[Transfer_Finder]): Standard_Integer {.
    noSideEffect, importcpp: "CheckNum", header: "Transfer_ProcessForFinder.hxx".}
type
  Transfer_ProcessForFinderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ProcessForFinder::get_type_name(@)",
                              header: "Transfer_ProcessForFinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ProcessForFinder::get_type_descriptor(@)",
    header: "Transfer_ProcessForFinder.hxx".}
proc DynamicType*(this: Transfer_ProcessForFinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_ProcessForFinder.hxx".}