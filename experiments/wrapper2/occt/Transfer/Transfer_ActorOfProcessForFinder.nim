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
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FindHasher"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_IteratorOfProcessForFinder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ActorOfProcessForFinder"
discard "forward decl of Transfer_ActorOfProcessForFinder"
type
  HandleTransferActorOfProcessForFinder* = Handle[TransferActorOfProcessForFinder]
  TransferActorOfProcessForFinder* {.importcpp: "Transfer_ActorOfProcessForFinder", header: "Transfer_ActorOfProcessForFinder.hxx",
                                    bycopy.} = object of StandardTransient


proc constructTransferActorOfProcessForFinder*(): TransferActorOfProcessForFinder {.
    constructor, importcpp: "Transfer_ActorOfProcessForFinder(@)",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc recognize*(this: var TransferActorOfProcessForFinder;
               start: Handle[TransferFinder]): bool {.importcpp: "Recognize",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc transferring*(this: var TransferActorOfProcessForFinder;
                  start: Handle[TransferFinder];
                  tp: Handle[TransferProcessForFinder];
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transferring",
                     header: "Transfer_ActorOfProcessForFinder.hxx".}
proc transientResult*(this: TransferActorOfProcessForFinder;
                     res: Handle[StandardTransient]): Handle[
    TransferSimpleBinderOfTransient] {.noSideEffect, importcpp: "TransientResult", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc nullResult*(this: TransferActorOfProcessForFinder): Handle[TransferBinder] {.
    noSideEffect, importcpp: "NullResult",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc setLast*(this: var TransferActorOfProcessForFinder; mode: bool = true) {.
    importcpp: "SetLast", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc isLast*(this: TransferActorOfProcessForFinder): bool {.noSideEffect,
    importcpp: "IsLast", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc setNext*(this: var TransferActorOfProcessForFinder;
             next: Handle[TransferActorOfProcessForFinder]) {.
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc next*(this: TransferActorOfProcessForFinder): Handle[
    TransferActorOfProcessForFinder] {.noSideEffect, importcpp: "Next", header: "Transfer_ActorOfProcessForFinder.hxx".}
type
  TransferActorOfProcessForFinderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_ActorOfProcessForFinder::get_type_name(@)",
                            header: "Transfer_ActorOfProcessForFinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ActorOfProcessForFinder::get_type_descriptor(@)",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc dynamicType*(this: TransferActorOfProcessForFinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfProcessForFinder.hxx".}














































