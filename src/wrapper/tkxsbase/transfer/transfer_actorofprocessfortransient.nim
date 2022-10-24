import transfer_types

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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_IteratorOfProcessForTransient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Transfer_ActorOfProcessForTransient"


proc newTransferActorOfProcessForTransient*(): TransferActorOfProcessForTransient {.
    cdecl, constructor, importcpp: "Transfer_ActorOfProcessForTransient(@)",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc recognize*(this: var TransferActorOfProcessForTransient;
               start: Handle[StandardTransient]): bool {.cdecl,
    importcpp: "Recognize", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc transferring*(this: var TransferActorOfProcessForTransient;
                  start: Handle[StandardTransient];
                  tp: Handle[TransferProcessForTransient];
                  theProgress: MessageProgressRange = newMessageProgressRange()): Handle[
    TransferBinder] {.cdecl, importcpp: "Transferring", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc transientResult*(this: TransferActorOfProcessForTransient;
                     res: Handle[StandardTransient]): Handle[
    TransferSimpleBinderOfTransient] {.noSideEffect, cdecl,
                                      importcpp: "TransientResult",
                                      header: "Transfer_ActorOfProcessForTransient.hxx".}
proc nullResult*(this: TransferActorOfProcessForTransient): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "NullResult", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc setLast*(this: var TransferActorOfProcessForTransient; mode: bool = true) {.cdecl,
    importcpp: "SetLast", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc isLast*(this: TransferActorOfProcessForTransient): bool {.noSideEffect, cdecl,
    importcpp: "IsLast", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc setNext*(this: var TransferActorOfProcessForTransient;
             next: Handle[TransferActorOfProcessForTransient]) {.cdecl,
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc next*(this: TransferActorOfProcessForTransient): Handle[
    TransferActorOfProcessForTransient] {.noSideEffect, cdecl, importcpp: "Next",
    header: "Transfer_ActorOfProcessForTransient.hxx".}

