##  Created on: 1996-09-04
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  Transfer_ActorOfProcessForFinder

discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ActorOfFinderProcess"
discard "forward decl of Transfer_ActorOfFinderProcess"
type
  Handle_Transfer_ActorOfFinderProcess* = handle[Transfer_ActorOfFinderProcess]

## ! The original class was renamed. Compatibility only
## !
## ! ModeTrans : a simple way of transmitting a transfer mode from
## ! a user. To be interpreted for each norm

type
  Transfer_ActorOfFinderProcess* {.importcpp: "Transfer_ActorOfFinderProcess",
                                  header: "Transfer_ActorOfFinderProcess.hxx",
                                  bycopy.} = object of Transfer_ActorOfProcessForFinder


proc constructTransfer_ActorOfFinderProcess*(): Transfer_ActorOfFinderProcess {.
    constructor, importcpp: "Transfer_ActorOfFinderProcess(@)",
    header: "Transfer_ActorOfFinderProcess.hxx".}
proc ModeTrans*(this: var Transfer_ActorOfFinderProcess): var Standard_Integer {.
    importcpp: "ModeTrans", header: "Transfer_ActorOfFinderProcess.hxx".}
proc Transferring*(this: var Transfer_ActorOfFinderProcess;
                  start: handle[Transfer_Finder];
                  TP: handle[Transfer_ProcessForFinder];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ActorOfFinderProcess.hxx".}
proc Transfer*(this: var Transfer_ActorOfFinderProcess;
              start: handle[Transfer_Finder]; TP: handle[Transfer_FinderProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer",
                      header: "Transfer_ActorOfFinderProcess.hxx".}
proc TransferTransient*(this: var Transfer_ActorOfFinderProcess;
                       start: handle[Standard_Transient];
                       TP: handle[Transfer_FinderProcess]; theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Standard_Transient] {.importcpp: "TransferTransient",
                         header: "Transfer_ActorOfFinderProcess.hxx".}
type
  Transfer_ActorOfFinderProcessbase_type* = Transfer_ActorOfProcessForFinder

proc get_type_name*(): cstring {.importcpp: "Transfer_ActorOfFinderProcess::get_type_name(@)",
                              header: "Transfer_ActorOfFinderProcess.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ActorOfFinderProcess::get_type_descriptor(@)",
    header: "Transfer_ActorOfFinderProcess.hxx".}
proc DynamicType*(this: Transfer_ActorOfFinderProcess): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfFinderProcess.hxx".}