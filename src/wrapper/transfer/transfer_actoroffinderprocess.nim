import ../../tkernel/standard/standard_types
import transfer_types
import ../../tkernel/message/[message_types, message_progressrange]




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





proc newTransferActorOfFinderProcess*(): TransferActorOfFinderProcess {.cdecl,
    constructor, importcpp: "Transfer_ActorOfFinderProcess(@)", header: "Transfer_ActorOfFinderProcess.hxx".}
proc modeTrans*(this: var TransferActorOfFinderProcess): var cint {.cdecl,
    importcpp: "ModeTrans", header: "Transfer_ActorOfFinderProcess.hxx".}
proc transferring*(this: var TransferActorOfFinderProcess;
                  start: Handle[TransferFinder];
                  tp: Handle[TransferProcessForFinder];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ActorOfFinderProcess.hxx".}
proc transfer*(this: var TransferActorOfFinderProcess;
              start: Handle[TransferFinder]; tp: Handle[TransferFinderProcess];
              theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transfer", header: "Transfer_ActorOfFinderProcess.hxx".}
proc transferTransient*(this: var TransferActorOfFinderProcess;
                       start: Handle[StandardTransient];
                       tp: Handle[TransferFinderProcess]; theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    StandardTransient] {.cdecl, importcpp: "TransferTransient", header: "Transfer_ActorOfFinderProcess.hxx".}


