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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Transfer/Transfer_ActorOfTransientProcess,
  ../Standard/Standard_Boolean, ../Message/Message_ProgressRange

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of IGESToBRep_Actor"
discard "forward decl of IGESToBRep_Actor"
type
  Handle_IGESToBRep_Actor* = handle[IGESToBRep_Actor]

## ! This class performs the transfer of an Entity from
## ! IGESToBRep
## !
## ! I.E. for each type of Entity, it invokes the appropriate Tool
## ! then returns the Binder which contains the Result

type
  IGESToBRep_Actor* {.importcpp: "IGESToBRep_Actor",
                     header: "IGESToBRep_Actor.hxx", bycopy.} = object of Transfer_ActorOfTransientProcess


proc constructIGESToBRep_Actor*(): IGESToBRep_Actor {.constructor,
    importcpp: "IGESToBRep_Actor(@)", header: "IGESToBRep_Actor.hxx".}
proc SetModel*(this: var IGESToBRep_Actor; model: handle[Interface_InterfaceModel]) {.
    importcpp: "SetModel", header: "IGESToBRep_Actor.hxx".}
proc SetContinuity*(this: var IGESToBRep_Actor; continuity: Standard_Integer = 0) {.
    importcpp: "SetContinuity", header: "IGESToBRep_Actor.hxx".}
proc GetContinuity*(this: IGESToBRep_Actor): Standard_Integer {.noSideEffect,
    importcpp: "GetContinuity", header: "IGESToBRep_Actor.hxx".}
proc Recognize*(this: var IGESToBRep_Actor; start: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "IGESToBRep_Actor.hxx".}
proc Transfer*(this: var IGESToBRep_Actor; start: handle[Standard_Transient];
              TP: handle[Transfer_TransientProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer", header: "IGESToBRep_Actor.hxx".}
proc UsedTolerance*(this: IGESToBRep_Actor): Standard_Real {.noSideEffect,
    importcpp: "UsedTolerance", header: "IGESToBRep_Actor.hxx".}
type
  IGESToBRep_Actorbase_type* = Transfer_ActorOfTransientProcess

proc get_type_name*(): cstring {.importcpp: "IGESToBRep_Actor::get_type_name(@)",
                              header: "IGESToBRep_Actor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESToBRep_Actor::get_type_descriptor(@)",
    header: "IGESToBRep_Actor.hxx".}
proc DynamicType*(this: IGESToBRep_Actor): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESToBRep_Actor.hxx".}