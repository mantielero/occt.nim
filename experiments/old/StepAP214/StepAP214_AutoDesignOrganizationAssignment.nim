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

discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignOrganizationAssignment"
type
  HandleC1C1* = Handle[StepAP214AutoDesignOrganizationAssignment]
  StepAP214AutoDesignOrganizationAssignment* {.
      importcpp: "StepAP214_AutoDesignOrganizationAssignment",
      header: "StepAP214_AutoDesignOrganizationAssignment.hxx", bycopy.} = object of StepBasicOrganizationAssignment ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## AutoDesignOrganizationAssignment


proc constructStepAP214AutoDesignOrganizationAssignment*(): StepAP214AutoDesignOrganizationAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignOrganizationAssignment(@)",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignOrganizationAssignment;
          aAssignedOrganization: Handle[StepBasicOrganization];
          aRole: Handle[StepBasicOrganizationRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignOrganizationAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc items*(this: StepAP214AutoDesignOrganizationAssignment): Handle[
    StepAP214HArray1OfAutoDesignGeneralOrgItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignOrganizationAssignment; num: int): StepAP214AutoDesignGeneralOrgItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignOrganizationAssignment): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
type
  StepAP214AutoDesignOrganizationAssignmentbaseType* = StepBasicOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignOrganizationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}