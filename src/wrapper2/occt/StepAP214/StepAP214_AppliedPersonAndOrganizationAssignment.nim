##  Created on: 1999-03-09
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
  StepAP214_HArray1OfPersonAndOrganizationItem,
  ../StepBasic/StepBasic_PersonAndOrganizationAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_PersonAndOrganizationItem"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
type
  Handle_StepAP214_AppliedPersonAndOrganizationAssignment* = handle[
      StepAP214_AppliedPersonAndOrganizationAssignment]
  StepAP214_AppliedPersonAndOrganizationAssignment* {.
      importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment",
      header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasic_PersonAndOrganizationAssignment ##
                                                                                                                              ## !
                                                                                                                              ## Returns
                                                                                                                              ## a
                                                                                                                              ## AutoDesignDateAndPersonAssignment


proc constructStepAP214_AppliedPersonAndOrganizationAssignment*(): StepAP214_AppliedPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment(@)",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: handle[StepBasic_PersonAndOrganization];
          aRole: handle[StepBasic_PersonAndOrganizationRole];
          aItems: handle[StepAP214_HArray1OfPersonAndOrganizationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedPersonAndOrganizationAssignment;
              aItems: handle[StepAP214_HArray1OfPersonAndOrganizationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc Items*(this: StepAP214_AppliedPersonAndOrganizationAssignment): handle[
    StepAP214_HArray1OfPersonAndOrganizationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedPersonAndOrganizationAssignment;
                num: Standard_Integer): StepAP214_PersonAndOrganizationItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedPersonAndOrganizationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
type
  StepAP214_AppliedPersonAndOrganizationAssignmentbase_type* = StepBasic_PersonAndOrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedPersonAndOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}