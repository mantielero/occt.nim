##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalAssignment"
discard "forward decl of StepBasic_ApprovalAssignment"
type
  HandleC1C1* = Handle[StepBasicApprovalAssignment]
  StepBasicApprovalAssignment* {.importcpp: "StepBasic_ApprovalAssignment",
                                header: "StepBasic_ApprovalAssignment.hxx", bycopy.} = object of StandardTransient


proc init*(this: var StepBasicApprovalAssignment;
          aAssignedApproval: Handle[StepBasicApproval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalAssignment.hxx".}
proc setAssignedApproval*(this: var StepBasicApprovalAssignment;
                         aAssignedApproval: Handle[StepBasicApproval]) {.
    importcpp: "SetAssignedApproval", header: "StepBasic_ApprovalAssignment.hxx".}
proc assignedApproval*(this: StepBasicApprovalAssignment): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "AssignedApproval",
    header: "StepBasic_ApprovalAssignment.hxx".}
type
  StepBasicApprovalAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApprovalAssignment::get_type_name(@)",
                            header: "StepBasic_ApprovalAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApprovalAssignment::get_type_descriptor(@)",
    header: "StepBasic_ApprovalAssignment.hxx".}
proc dynamicType*(this: StepBasicApprovalAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalAssignment.hxx".}