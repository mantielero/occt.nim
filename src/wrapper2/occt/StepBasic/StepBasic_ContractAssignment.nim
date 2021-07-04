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

discard "forward decl of StepBasic_Contract"
discard "forward decl of StepBasic_ContractAssignment"
discard "forward decl of StepBasic_ContractAssignment"
type
  Handle_StepBasic_ContractAssignment* = handle[StepBasic_ContractAssignment]

## ! Representation of STEP entity ContractAssignment

type
  StepBasic_ContractAssignment* {.importcpp: "StepBasic_ContractAssignment",
                                 header: "StepBasic_ContractAssignment.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepBasic_ContractAssignment*(): StepBasic_ContractAssignment {.
    constructor, importcpp: "StepBasic_ContractAssignment(@)",
    header: "StepBasic_ContractAssignment.hxx".}
proc Init*(this: var StepBasic_ContractAssignment;
          aAssignedContract: handle[StepBasic_Contract]) {.importcpp: "Init",
    header: "StepBasic_ContractAssignment.hxx".}
proc AssignedContract*(this: StepBasic_ContractAssignment): handle[
    StepBasic_Contract] {.noSideEffect, importcpp: "AssignedContract",
                         header: "StepBasic_ContractAssignment.hxx".}
proc SetAssignedContract*(this: var StepBasic_ContractAssignment;
                         AssignedContract: handle[StepBasic_Contract]) {.
    importcpp: "SetAssignedContract", header: "StepBasic_ContractAssignment.hxx".}
type
  StepBasic_ContractAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ContractAssignment::get_type_name(@)",
                              header: "StepBasic_ContractAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ContractAssignment::get_type_descriptor(@)",
    header: "StepBasic_ContractAssignment.hxx".}
proc DynamicType*(this: StepBasic_ContractAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ContractAssignment.hxx".}