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
discard "forward decl of Transfer_ActorOfProcessForTransient"
type
  HandleTransferActorOfProcessForTransient* = Handle[
      TransferActorOfProcessForTransient]
  TransferActorOfProcessForTransient* {.importcpp: "Transfer_ActorOfProcessForTransient", header: "Transfer_ActorOfProcessForTransient.hxx",
                                       bycopy.} = object of StandardTransient


proc constructTransferActorOfProcessForTransient*(): TransferActorOfProcessForTransient {.
    constructor, importcpp: "Transfer_ActorOfProcessForTransient(@)",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc recognize*(this: var TransferActorOfProcessForTransient;
               start: Handle[StandardTransient]): bool {.importcpp: "Recognize",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc transferring*(this: var TransferActorOfProcessForTransient;
                  start: Handle[StandardTransient];
                  tp: Handle[TransferProcessForTransient];
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transferring",
                     header: "Transfer_ActorOfProcessForTransient.hxx".}
proc transientResult*(this: TransferActorOfProcessForTransient;
                     res: Handle[StandardTransient]): Handle[
    TransferSimpleBinderOfTransient] {.noSideEffect, importcpp: "TransientResult", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc nullResult*(this: TransferActorOfProcessForTransient): Handle[TransferBinder] {.
    noSideEffect, importcpp: "NullResult",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc setLast*(this: var TransferActorOfProcessForTransient; mode: bool = true) {.
    importcpp: "SetLast", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc isLast*(this: TransferActorOfProcessForTransient): bool {.noSideEffect,
    importcpp: "IsLast", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc setNext*(this: var TransferActorOfProcessForTransient;
             next: Handle[TransferActorOfProcessForTransient]) {.
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc next*(this: TransferActorOfProcessForTransient): Handle[
    TransferActorOfProcessForTransient] {.noSideEffect, importcpp: "Next",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
type
  TransferActorOfProcessForTransientbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_ActorOfProcessForTransient::get_type_name(@)",
                            header: "Transfer_ActorOfProcessForTransient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ActorOfProcessForTransient::get_type_descriptor(@)",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc dynamicType*(this: TransferActorOfProcessForTransient): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfProcessForTransient.hxx".}














































