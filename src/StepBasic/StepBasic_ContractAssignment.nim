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

discard "forward decl of StepBasic_Contract"
discard "forward decl of StepBasic_ContractAssignment"
discard "forward decl of StepBasic_ContractAssignment"
type
  HandleC1C1* = Handle[StepBasicContractAssignment]

## ! Representation of STEP entity ContractAssignment

type
  StepBasicContractAssignment* {.importcpp: "StepBasic_ContractAssignment",
                                header: "StepBasic_ContractAssignment.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepBasicContractAssignment*(): StepBasicContractAssignment {.
    constructor, importcpp: "StepBasic_ContractAssignment(@)",
    header: "StepBasic_ContractAssignment.hxx".}
proc init*(this: var StepBasicContractAssignment;
          aAssignedContract: Handle[StepBasicContract]) {.importcpp: "Init",
    header: "StepBasic_ContractAssignment.hxx".}
proc assignedContract*(this: StepBasicContractAssignment): Handle[StepBasicContract] {.
    noSideEffect, importcpp: "AssignedContract",
    header: "StepBasic_ContractAssignment.hxx".}
proc setAssignedContract*(this: var StepBasicContractAssignment;
                         assignedContract: Handle[StepBasicContract]) {.
    importcpp: "SetAssignedContract", header: "StepBasic_ContractAssignment.hxx".}
type
  StepBasicContractAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ContractAssignment::get_type_name(@)",
                            header: "StepBasic_ContractAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ContractAssignment::get_type_descriptor(@)",
    header: "StepBasic_ContractAssignment.hxx".}
proc dynamicType*(this: StepBasicContractAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ContractAssignment.hxx".}