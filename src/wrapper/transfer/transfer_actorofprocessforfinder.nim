import ../../tkernel/standard/standard_types
import transfer_types
import ../../tkernel/message/[message_types, message_progressrange]




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



proc newTransferActorOfProcessForFinder*(): TransferActorOfProcessForFinder {.
    cdecl, constructor, importcpp: "Transfer_ActorOfProcessForFinder(@)",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc recognize*(this: var TransferActorOfProcessForFinder;
               start: Handle[TransferFinder]): bool {.cdecl, importcpp: "Recognize",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc transferring*(this: var TransferActorOfProcessForFinder;
                  start: Handle[TransferFinder];
                  tp: Handle[TransferProcessForFinder];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc transientResult*(this: TransferActorOfProcessForFinder;
                     res: Handle[StandardTransient]): Handle[
    TransferSimpleBinderOfTransient] {.noSideEffect, cdecl,
                                      importcpp: "TransientResult",
                                      header: "Transfer_ActorOfProcessForFinder.hxx".}
proc nullResult*(this: TransferActorOfProcessForFinder): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "NullResult", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc setLast*(this: var TransferActorOfProcessForFinder; mode: bool = true) {.cdecl,
    importcpp: "SetLast", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc isLast*(this: TransferActorOfProcessForFinder): bool {.noSideEffect, cdecl,
    importcpp: "IsLast", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc setNext*(this: var TransferActorOfProcessForFinder;
             next: Handle[TransferActorOfProcessForFinder]) {.cdecl,
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc next*(this: TransferActorOfProcessForFinder): Handle[
    TransferActorOfProcessForFinder] {.noSideEffect, cdecl, importcpp: "Next",
                                      header: "Transfer_ActorOfProcessForFinder.hxx".}



