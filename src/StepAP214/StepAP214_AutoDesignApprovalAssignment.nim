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
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignApprovalAssignment"
discard "forward decl of StepAP214_AutoDesignApprovalAssignment"
type
  HandleC1C1* = Handle[StepAP214AutoDesignApprovalAssignment]
  StepAP214AutoDesignApprovalAssignment* {.
      importcpp: "StepAP214_AutoDesignApprovalAssignment",
      header: "StepAP214_AutoDesignApprovalAssignment.hxx", bycopy.} = object of StepBasicApprovalAssignment ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## AutoDesignApprovalAssignment


proc constructStepAP214AutoDesignApprovalAssignment*(): StepAP214AutoDesignApprovalAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignApprovalAssignment(@)",
    header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignApprovalAssignment;
          aAssignedApproval: Handle[StepBasicApproval];
          aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignApprovalAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc items*(this: StepAP214AutoDesignApprovalAssignment): Handle[
    StepAP214HArray1OfAutoDesignGeneralOrgItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignApprovalAssignment; num: cint): StepAP214AutoDesignGeneralOrgItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignApprovalAssignment): cint {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
type
  StepAP214AutoDesignApprovalAssignmentbaseType* = StepBasicApprovalAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignApprovalAssignment::get_type_name(@)", header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignApprovalAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignApprovalAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignApprovalAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignApprovalAssignment.hxx".}

























