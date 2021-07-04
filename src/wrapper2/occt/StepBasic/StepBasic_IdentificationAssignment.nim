##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_IdentificationAssignment"
discard "forward decl of StepBasic_IdentificationAssignment"
type
  Handle_StepBasic_IdentificationAssignment* = handle[
      StepBasic_IdentificationAssignment]

## ! Representation of STEP entity IdentificationAssignment

type
  StepBasic_IdentificationAssignment* {.importcpp: "StepBasic_IdentificationAssignment", header: "StepBasic_IdentificationAssignment.hxx",
                                       bycopy.} = object of Standard_Transient ## ! Empty
                                                                          ## constructor


proc constructStepBasic_IdentificationAssignment*(): StepBasic_IdentificationAssignment {.
    constructor, importcpp: "StepBasic_IdentificationAssignment(@)",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc Init*(this: var StepBasic_IdentificationAssignment;
          aAssignedId: handle[TCollection_HAsciiString];
          aRole: handle[StepBasic_IdentificationRole]) {.importcpp: "Init",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc AssignedId*(this: StepBasic_IdentificationAssignment): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AssignedId",
                               header: "StepBasic_IdentificationAssignment.hxx".}
proc SetAssignedId*(this: var StepBasic_IdentificationAssignment;
                   AssignedId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAssignedId", header: "StepBasic_IdentificationAssignment.hxx".}
proc Role*(this: StepBasic_IdentificationAssignment): handle[
    StepBasic_IdentificationRole] {.noSideEffect, importcpp: "Role", header: "StepBasic_IdentificationAssignment.hxx".}
proc SetRole*(this: var StepBasic_IdentificationAssignment;
             Role: handle[StepBasic_IdentificationRole]) {.importcpp: "SetRole",
    header: "StepBasic_IdentificationAssignment.hxx".}
type
  StepBasic_IdentificationAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_IdentificationAssignment::get_type_name(@)",
                              header: "StepBasic_IdentificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_IdentificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc DynamicType*(this: StepBasic_IdentificationAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_IdentificationAssignment.hxx".}