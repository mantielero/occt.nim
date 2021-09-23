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
discard "forward decl of StepBasic_NameAssignment"
discard "forward decl of StepBasic_NameAssignment"
type
  Handle_StepBasic_NameAssignment* = handle[StepBasic_NameAssignment]

## ! Representation of STEP entity NameAssignment

type
  StepBasic_NameAssignment* {.importcpp: "StepBasic_NameAssignment",
                             header: "StepBasic_NameAssignment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasic_NameAssignment*(): StepBasic_NameAssignment {.constructor,
    importcpp: "StepBasic_NameAssignment(@)",
    header: "StepBasic_NameAssignment.hxx".}
proc Init*(this: var StepBasic_NameAssignment;
          aAssignedName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_NameAssignment.hxx".}
proc AssignedName*(this: StepBasic_NameAssignment): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "AssignedName", header: "StepBasic_NameAssignment.hxx".}
proc SetAssignedName*(this: var StepBasic_NameAssignment;
                     AssignedName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAssignedName", header: "StepBasic_NameAssignment.hxx".}
type
  StepBasic_NameAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_NameAssignment::get_type_name(@)",
                              header: "StepBasic_NameAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_NameAssignment::get_type_descriptor(@)",
    header: "StepBasic_NameAssignment.hxx".}
proc DynamicType*(this: StepBasic_NameAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_NameAssignment.hxx".}