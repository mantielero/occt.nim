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

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_PersonAndOrganizationItem"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
type
  HandleC1C1* = Handle[StepAP214AppliedPersonAndOrganizationAssignment]
  StepAP214AppliedPersonAndOrganizationAssignment* {.
      importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment",
      header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasicPersonAndOrganizationAssignment ##
                                                                                                                             ## !
                                                                                                                             ## Returns
                                                                                                                             ## a
                                                                                                                             ## AutoDesignDateAndPersonAssignment


proc constructStepAP214AppliedPersonAndOrganizationAssignment*(): StepAP214AppliedPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment(@)",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc init*(this: var StepAP214AppliedPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: Handle[StepBasicPersonAndOrganization];
          aRole: Handle[StepBasicPersonAndOrganizationRole];
          aItems: Handle[StepAP214HArray1OfPersonAndOrganizationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedPersonAndOrganizationAssignment;
              aItems: Handle[StepAP214HArray1OfPersonAndOrganizationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc items*(this: StepAP214AppliedPersonAndOrganizationAssignment): Handle[
    StepAP214HArray1OfPersonAndOrganizationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedPersonAndOrganizationAssignment; num: int): StepAP214PersonAndOrganizationItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedPersonAndOrganizationAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
type
  StepAP214AppliedPersonAndOrganizationAssignmentbaseType* = StepBasicPersonAndOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AppliedPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedPersonAndOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedPersonAndOrganizationAssignment.hxx".}