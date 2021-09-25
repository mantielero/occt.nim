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

discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepAP214_OrganizationItem"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
type
  HandleStepAP214AppliedOrganizationAssignment* = Handle[
      StepAP214AppliedOrganizationAssignment]
  StepAP214AppliedOrganizationAssignment* {.
      importcpp: "StepAP214_AppliedOrganizationAssignment",
      header: "StepAP214_AppliedOrganizationAssignment.hxx", bycopy.} = object of StepBasicOrganizationAssignment ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## AppliedOrganizationAssignment


proc constructStepAP214AppliedOrganizationAssignment*(): StepAP214AppliedOrganizationAssignment {.
    constructor, importcpp: "StepAP214_AppliedOrganizationAssignment(@)",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc init*(this: var StepAP214AppliedOrganizationAssignment;
          aAssignedOrganization: Handle[StepBasicOrganization];
          aRole: Handle[StepBasicOrganizationRole];
          aItems: Handle[StepAP214HArray1OfOrganizationItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedOrganizationAssignment;
              aItems: Handle[StepAP214HArray1OfOrganizationItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc items*(this: StepAP214AppliedOrganizationAssignment): Handle[
    StepAP214HArray1OfOrganizationItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedOrganizationAssignment; num: int): StepAP214OrganizationItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedOrganizationAssignment): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
type
  StepAP214AppliedOrganizationAssignmentbaseType* = StepBasicOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedOrganizationAssignment::get_type_name(@)", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AppliedOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_AppliedOrganizationAssignment.hxx".}
