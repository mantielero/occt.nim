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
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Message_ProgressScope"
discard "forward decl of Transfer_ActorOfTransientProcess"
type
  HandleTransferActorOfTransientProcess* = Handle[TransferActorOfTransientProcess]

## ! The original class was renamed. Compatibility only

type
  TransferActorOfTransientProcess* {.importcpp: "Transfer_ActorOfTransientProcess", header: "Transfer_ActorOfTransientProcess.hxx",
                                    bycopy.} = object of TransferActorOfProcessForTransient


proc newTransferActorOfTransientProcess*(): TransferActorOfTransientProcess {.
    cdecl, constructor, importcpp: "Transfer_ActorOfTransientProcess(@)",
    header: "Transfer_ActorOfTransientProcess.hxx".}
proc transferring*(this: var TransferActorOfTransientProcess;
                  start: Handle[StandardTransient];
                  tp: Handle[TransferProcessForTransient];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ActorOfTransientProcess.hxx".}
proc transfer*(this: var TransferActorOfTransientProcess;
              start: Handle[StandardTransient];
              tp: Handle[TransferTransientProcess];
              theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transfer", header: "Transfer_ActorOfTransientProcess.hxx".}
proc transferTransient*(this: var TransferActorOfTransientProcess;
                       start: Handle[StandardTransient];
                       tp: Handle[TransferTransientProcess]; theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    StandardTransient] {.cdecl, importcpp: "TransferTransient", header: "Transfer_ActorOfTransientProcess.hxx".}