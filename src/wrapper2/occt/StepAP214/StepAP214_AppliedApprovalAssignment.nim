##  Created on: 1999-03-10
##  Created by: data exchange team
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfApprovalItem, ../StepBasic/StepBasic_ApprovalAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP214_ApprovalItem"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
type
  Handle_StepAP214_AppliedApprovalAssignment* = handle[
      StepAP214_AppliedApprovalAssignment]
  StepAP214_AppliedApprovalAssignment* {.importcpp: "StepAP214_AppliedApprovalAssignment", header: "StepAP214_AppliedApprovalAssignment.hxx",
                                        bycopy.} = object of StepBasic_ApprovalAssignment ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## AppliedApprovalAssignment


proc constructStepAP214_AppliedApprovalAssignment*(): StepAP214_AppliedApprovalAssignment {.
    constructor, importcpp: "StepAP214_AppliedApprovalAssignment(@)",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedApprovalAssignment;
          aAssignedApproval: handle[StepBasic_Approval];
          aItems: handle[StepAP214_HArray1OfApprovalItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedApprovalAssignment;
              aItems: handle[StepAP214_HArray1OfApprovalItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc Items*(this: StepAP214_AppliedApprovalAssignment): handle[
    StepAP214_HArray1OfApprovalItem] {.noSideEffect, importcpp: "Items", header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedApprovalAssignment; num: Standard_Integer): StepAP214_ApprovalItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedApprovalAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
type
  StepAP214_AppliedApprovalAssignmentbase_type* = StepBasic_ApprovalAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedApprovalAssignment::get_type_name(@)",
                              header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AppliedApprovalAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedApprovalAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}