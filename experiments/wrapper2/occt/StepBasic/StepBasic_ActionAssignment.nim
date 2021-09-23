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

discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_ActionAssignment"
discard "forward decl of StepBasic_ActionAssignment"
type
  Handle_StepBasic_ActionAssignment* = handle[StepBasic_ActionAssignment]

## ! Representation of STEP entity ActionAssignment

type
  StepBasic_ActionAssignment* {.importcpp: "StepBasic_ActionAssignment",
                               header: "StepBasic_ActionAssignment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepBasic_ActionAssignment*(): StepBasic_ActionAssignment {.
    constructor, importcpp: "StepBasic_ActionAssignment(@)",
    header: "StepBasic_ActionAssignment.hxx".}
proc Init*(this: var StepBasic_ActionAssignment;
          aAssignedAction: handle[StepBasic_Action]) {.importcpp: "Init",
    header: "StepBasic_ActionAssignment.hxx".}
proc AssignedAction*(this: StepBasic_ActionAssignment): handle[StepBasic_Action] {.
    noSideEffect, importcpp: "AssignedAction",
    header: "StepBasic_ActionAssignment.hxx".}
proc SetAssignedAction*(this: var StepBasic_ActionAssignment;
                       AssignedAction: handle[StepBasic_Action]) {.
    importcpp: "SetAssignedAction", header: "StepBasic_ActionAssignment.hxx".}
type
  StepBasic_ActionAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ActionAssignment::get_type_name(@)",
                              header: "StepBasic_ActionAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ActionAssignment::get_type_descriptor(@)",
    header: "StepBasic_ActionAssignment.hxx".}
proc DynamicType*(this: StepBasic_ActionAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ActionAssignment.hxx".}