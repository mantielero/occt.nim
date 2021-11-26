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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_IdentificationAssignment"
discard "forward decl of StepBasic_IdentificationAssignment"
type
  HandleC1C1* = Handle[StepBasicIdentificationAssignment]

## ! Representation of STEP entity IdentificationAssignment

type
  StepBasicIdentificationAssignment* {.importcpp: "StepBasic_IdentificationAssignment", header: "StepBasic_IdentificationAssignment.hxx",
                                      bycopy.} = object of StandardTransient ## ! Empty
                                                                        ## constructor


proc constructStepBasicIdentificationAssignment*(): StepBasicIdentificationAssignment {.
    constructor, importcpp: "StepBasic_IdentificationAssignment(@)",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc init*(this: var StepBasicIdentificationAssignment;
          aAssignedId: Handle[TCollectionHAsciiString];
          aRole: Handle[StepBasicIdentificationRole]) {.importcpp: "Init",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc assignedId*(this: StepBasicIdentificationAssignment): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "AssignedId",
                              header: "StepBasic_IdentificationAssignment.hxx".}
proc setAssignedId*(this: var StepBasicIdentificationAssignment;
                   assignedId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAssignedId", header: "StepBasic_IdentificationAssignment.hxx".}
proc role*(this: StepBasicIdentificationAssignment): Handle[
    StepBasicIdentificationRole] {.noSideEffect, importcpp: "Role", header: "StepBasic_IdentificationAssignment.hxx".}
proc setRole*(this: var StepBasicIdentificationAssignment;
             role: Handle[StepBasicIdentificationRole]) {.importcpp: "SetRole",
    header: "StepBasic_IdentificationAssignment.hxx".}
type
  StepBasicIdentificationAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_IdentificationAssignment::get_type_name(@)",
                            header: "StepBasic_IdentificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_IdentificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_IdentificationAssignment.hxx".}
proc dynamicType*(this: StepBasicIdentificationAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_IdentificationAssignment.hxx".}