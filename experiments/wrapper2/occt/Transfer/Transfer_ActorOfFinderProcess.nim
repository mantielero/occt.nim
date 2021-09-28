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

discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ActorOfFinderProcess"
discard "forward decl of Transfer_ActorOfFinderProcess"
type
  HandleC1C1* = Handle[TransferActorOfFinderProcess]

## ! The original class was renamed. Compatibility only
## !
## ! ModeTrans : a simple way of transmitting a transfer mode from
## ! a user. To be interpreted for each norm

type
  TransferActorOfFinderProcess* {.importcpp: "Transfer_ActorOfFinderProcess",
                                 header: "Transfer_ActorOfFinderProcess.hxx",
                                 bycopy.} = object of TransferActorOfProcessForFinder


proc constructTransferActorOfFinderProcess*(): TransferActorOfFinderProcess {.
    constructor, importcpp: "Transfer_ActorOfFinderProcess(@)",
    header: "Transfer_ActorOfFinderProcess.hxx".}
proc modeTrans*(this: var TransferActorOfFinderProcess): var cint {.
    importcpp: "ModeTrans", header: "Transfer_ActorOfFinderProcess.hxx".}
proc transferring*(this: var TransferActorOfFinderProcess;
                  start: Handle[TransferFinder];
                  tp: Handle[TransferProcessForFinder];
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transferring",
                     header: "Transfer_ActorOfFinderProcess.hxx".}
proc transfer*(this: var TransferActorOfFinderProcess;
              start: Handle[TransferFinder]; tp: Handle[TransferFinderProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer",
                     header: "Transfer_ActorOfFinderProcess.hxx".}
proc transferTransient*(this: var TransferActorOfFinderProcess;
                       start: Handle[StandardTransient];
                       tp: Handle[TransferFinderProcess]; theProgress: MessageProgressRange = messageProgressRange()): Handle[
    StandardTransient] {.importcpp: "TransferTransient",
                        header: "Transfer_ActorOfFinderProcess.hxx".}
type
  TransferActorOfFinderProcessbaseType* = TransferActorOfProcessForFinder

proc getTypeName*(): cstring {.importcpp: "Transfer_ActorOfFinderProcess::get_type_name(@)",
                            header: "Transfer_ActorOfFinderProcess.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ActorOfFinderProcess::get_type_descriptor(@)",
    header: "Transfer_ActorOfFinderProcess.hxx".}
proc dynamicType*(this: TransferActorOfFinderProcess): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfFinderProcess.hxx".}

























