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

discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_GroupAssignment"
discard "forward decl of StepBasic_GroupAssignment"
type
  HandleC1C1* = Handle[StepBasicGroupAssignment]

## ! Representation of STEP entity GroupAssignment

type
  StepBasicGroupAssignment* {.importcpp: "StepBasic_GroupAssignment",
                             header: "StepBasic_GroupAssignment.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasicGroupAssignment*(): StepBasicGroupAssignment {.constructor,
    importcpp: "StepBasic_GroupAssignment(@)",
    header: "StepBasic_GroupAssignment.hxx".}
proc init*(this: var StepBasicGroupAssignment;
          aAssignedGroup: Handle[StepBasicGroup]) {.importcpp: "Init",
    header: "StepBasic_GroupAssignment.hxx".}
proc assignedGroup*(this: StepBasicGroupAssignment): Handle[StepBasicGroup] {.
    noSideEffect, importcpp: "AssignedGroup",
    header: "StepBasic_GroupAssignment.hxx".}
proc setAssignedGroup*(this: var StepBasicGroupAssignment;
                      assignedGroup: Handle[StepBasicGroup]) {.
    importcpp: "SetAssignedGroup", header: "StepBasic_GroupAssignment.hxx".}
type
  StepBasicGroupAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_GroupAssignment::get_type_name(@)",
                            header: "StepBasic_GroupAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_GroupAssignment::get_type_descriptor(@)",
    header: "StepBasic_GroupAssignment.hxx".}
proc dynamicType*(this: StepBasicGroupAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_GroupAssignment.hxx".}

























