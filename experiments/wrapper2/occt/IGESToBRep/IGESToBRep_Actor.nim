##  Created on: 1994-11-03
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of IGESToBRep_Actor"
discard "forward decl of IGESToBRep_Actor"
type
  HandleIGESToBRepActor* = Handle[IGESToBRepActor]

## ! This class performs the transfer of an Entity from
## ! IGESToBRep
## !
## ! I.E. for each type of Entity, it invokes the appropriate Tool
## ! then returns the Binder which contains the Result

type
  IGESToBRepActor* {.importcpp: "IGESToBRep_Actor", header: "IGESToBRep_Actor.hxx",
                    bycopy.} = object of TransferActorOfTransientProcess


proc constructIGESToBRepActor*(): IGESToBRepActor {.constructor,
    importcpp: "IGESToBRep_Actor(@)", header: "IGESToBRep_Actor.hxx".}
proc setModel*(this: var IGESToBRepActor; model: Handle[InterfaceInterfaceModel]) {.
    importcpp: "SetModel", header: "IGESToBRep_Actor.hxx".}
proc setContinuity*(this: var IGESToBRepActor; continuity: int = 0) {.
    importcpp: "SetContinuity", header: "IGESToBRep_Actor.hxx".}
proc getContinuity*(this: IGESToBRepActor): int {.noSideEffect,
    importcpp: "GetContinuity", header: "IGESToBRep_Actor.hxx".}
proc recognize*(this: var IGESToBRepActor; start: Handle[StandardTransient]): bool {.
    importcpp: "Recognize", header: "IGESToBRep_Actor.hxx".}
proc transfer*(this: var IGESToBRepActor; start: Handle[StandardTransient];
              tp: Handle[TransferTransientProcess];
              theProgress: MessageProgressRange = messageProgressRange()): Handle[
    TransferBinder] {.importcpp: "Transfer", header: "IGESToBRep_Actor.hxx".}
proc usedTolerance*(this: IGESToBRepActor): float {.noSideEffect,
    importcpp: "UsedTolerance", header: "IGESToBRep_Actor.hxx".}
type
  IGESToBRepActorbaseType* = TransferActorOfTransientProcess

proc getTypeName*(): cstring {.importcpp: "IGESToBRep_Actor::get_type_name(@)",
                            header: "IGESToBRep_Actor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESToBRep_Actor::get_type_descriptor(@)",
    header: "IGESToBRep_Actor.hxx".}
proc dynamicType*(this: IGESToBRepActor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESToBRep_Actor.hxx".}
