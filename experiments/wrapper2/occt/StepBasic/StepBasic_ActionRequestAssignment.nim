##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepBasic_ActionRequestAssignment"
discard "forward decl of StepBasic_ActionRequestAssignment"
type
  Handle_StepBasic_ActionRequestAssignment* = handle[
      StepBasic_ActionRequestAssignment]

## ! Representation of STEP entity ActionRequestAssignment

type
  StepBasic_ActionRequestAssignment* {.importcpp: "StepBasic_ActionRequestAssignment", header: "StepBasic_ActionRequestAssignment.hxx",
                                      bycopy.} = object of Standard_Transient ## ! Empty
                                                                         ## constructor


proc constructStepBasic_ActionRequestAssignment*(): StepBasic_ActionRequestAssignment {.
    constructor, importcpp: "StepBasic_ActionRequestAssignment(@)",
    header: "StepBasic_ActionRequestAssignment.hxx".}
proc Init*(this: var StepBasic_ActionRequestAssignment;
          aAssignedActionRequest: handle[StepBasic_VersionedActionRequest]) {.
    importcpp: "Init", header: "StepBasic_ActionRequestAssignment.hxx".}
proc AssignedActionRequest*(this: StepBasic_ActionRequestAssignment): handle[
    StepBasic_VersionedActionRequest] {.noSideEffect,
                                       importcpp: "AssignedActionRequest", header: "StepBasic_ActionRequestAssignment.hxx".}
proc SetAssignedActionRequest*(this: var StepBasic_ActionRequestAssignment;
    AssignedActionRequest: handle[StepBasic_VersionedActionRequest]) {.
    importcpp: "SetAssignedActionRequest",
    header: "StepBasic_ActionRequestAssignment.hxx".}
type
  StepBasic_ActionRequestAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ActionRequestAssignment::get_type_name(@)",
                              header: "StepBasic_ActionRequestAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ActionRequestAssignment::get_type_descriptor(@)",
    header: "StepBasic_ActionRequestAssignment.hxx".}
proc DynamicType*(this: StepBasic_ActionRequestAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ActionRequestAssignment.hxx".}