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

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP214_ApprovalItem"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
type
  HandleC1C1* = Handle[StepAP214AppliedApprovalAssignment]
  StepAP214AppliedApprovalAssignment* {.importcpp: "StepAP214_AppliedApprovalAssignment", header: "StepAP214_AppliedApprovalAssignment.hxx",
                                       bycopy.} = object of StepBasicApprovalAssignment ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## AppliedApprovalAssignment


proc constructStepAP214AppliedApprovalAssignment*(): StepAP214AppliedApprovalAssignment {.
    constructor, importcpp: "StepAP214_AppliedApprovalAssignment(@)",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc init*(this: var StepAP214AppliedApprovalAssignment;
          aAssignedApproval: Handle[StepBasicApproval];
          aItems: Handle[StepAP214HArray1OfApprovalItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedApprovalAssignment;
              aItems: Handle[StepAP214HArray1OfApprovalItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc items*(this: StepAP214AppliedApprovalAssignment): Handle[
    StepAP214HArray1OfApprovalItem] {.noSideEffect, importcpp: "Items", header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedApprovalAssignment; num: cint): StepAP214ApprovalItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedApprovalAssignment): cint {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedApprovalAssignment.hxx".}
type
  StepAP214AppliedApprovalAssignmentbaseType* = StepBasicApprovalAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedApprovalAssignment::get_type_name(@)",
                            header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AppliedApprovalAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedApprovalAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedApprovalAssignment.hxx".}

























