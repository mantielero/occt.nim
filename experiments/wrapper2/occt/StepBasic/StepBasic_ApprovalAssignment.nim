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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalAssignment"
discard "forward decl of StepBasic_ApprovalAssignment"
type
  Handle_StepBasic_ApprovalAssignment* = handle[StepBasic_ApprovalAssignment]
  StepBasic_ApprovalAssignment* {.importcpp: "StepBasic_ApprovalAssignment",
                                 header: "StepBasic_ApprovalAssignment.hxx",
                                 bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_ApprovalAssignment;
          aAssignedApproval: handle[StepBasic_Approval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalAssignment.hxx".}
proc SetAssignedApproval*(this: var StepBasic_ApprovalAssignment;
                         aAssignedApproval: handle[StepBasic_Approval]) {.
    importcpp: "SetAssignedApproval", header: "StepBasic_ApprovalAssignment.hxx".}
proc AssignedApproval*(this: StepBasic_ApprovalAssignment): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "AssignedApproval",
                         header: "StepBasic_ApprovalAssignment.hxx".}
type
  StepBasic_ApprovalAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalAssignment::get_type_name(@)",
                              header: "StepBasic_ApprovalAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalAssignment::get_type_descriptor(@)",
    header: "StepBasic_ApprovalAssignment.hxx".}
proc DynamicType*(this: StepBasic_ApprovalAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalAssignment.hxx".}