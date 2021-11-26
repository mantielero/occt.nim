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

discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_ActionAssignment"
discard "forward decl of StepBasic_ActionAssignment"
type
  HandleC1C1* = Handle[StepBasicActionAssignment]

## ! Representation of STEP entity ActionAssignment

type
  StepBasicActionAssignment* {.importcpp: "StepBasic_ActionAssignment",
                              header: "StepBasic_ActionAssignment.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepBasicActionAssignment*(): StepBasicActionAssignment {.
    constructor, importcpp: "StepBasic_ActionAssignment(@)",
    header: "StepBasic_ActionAssignment.hxx".}
proc init*(this: var StepBasicActionAssignment;
          aAssignedAction: Handle[StepBasicAction]) {.importcpp: "Init",
    header: "StepBasic_ActionAssignment.hxx".}
proc assignedAction*(this: StepBasicActionAssignment): Handle[StepBasicAction] {.
    noSideEffect, importcpp: "AssignedAction",
    header: "StepBasic_ActionAssignment.hxx".}
proc setAssignedAction*(this: var StepBasicActionAssignment;
                       assignedAction: Handle[StepBasicAction]) {.
    importcpp: "SetAssignedAction", header: "StepBasic_ActionAssignment.hxx".}
type
  StepBasicActionAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ActionAssignment::get_type_name(@)",
                            header: "StepBasic_ActionAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ActionAssignment::get_type_descriptor(@)",
    header: "StepBasic_ActionAssignment.hxx".}
proc dynamicType*(this: StepBasicActionAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ActionAssignment.hxx".}