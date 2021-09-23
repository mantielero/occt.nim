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

discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_GroupAssignment"
discard "forward decl of StepBasic_GroupAssignment"
type
  Handle_StepBasic_GroupAssignment* = handle[StepBasic_GroupAssignment]

## ! Representation of STEP entity GroupAssignment

type
  StepBasic_GroupAssignment* {.importcpp: "StepBasic_GroupAssignment",
                              header: "StepBasic_GroupAssignment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepBasic_GroupAssignment*(): StepBasic_GroupAssignment {.
    constructor, importcpp: "StepBasic_GroupAssignment(@)",
    header: "StepBasic_GroupAssignment.hxx".}
proc Init*(this: var StepBasic_GroupAssignment;
          aAssignedGroup: handle[StepBasic_Group]) {.importcpp: "Init",
    header: "StepBasic_GroupAssignment.hxx".}
proc AssignedGroup*(this: StepBasic_GroupAssignment): handle[StepBasic_Group] {.
    noSideEffect, importcpp: "AssignedGroup",
    header: "StepBasic_GroupAssignment.hxx".}
proc SetAssignedGroup*(this: var StepBasic_GroupAssignment;
                      AssignedGroup: handle[StepBasic_Group]) {.
    importcpp: "SetAssignedGroup", header: "StepBasic_GroupAssignment.hxx".}
type
  StepBasic_GroupAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_GroupAssignment::get_type_name(@)",
                              header: "StepBasic_GroupAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_GroupAssignment::get_type_descriptor(@)",
    header: "StepBasic_GroupAssignment.hxx".}
proc DynamicType*(this: StepBasic_GroupAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_GroupAssignment.hxx".}