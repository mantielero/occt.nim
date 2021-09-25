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

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignPersonAndOrganizationAssignment"
type
  HandleStepAP214AutoDesignPersonAndOrganizationAssignment* = Handle[
      StepAP214AutoDesignPersonAndOrganizationAssignment]
  StepAP214AutoDesignPersonAndOrganizationAssignment* {.
      importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment",
      header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasicPersonAndOrganizationAssignment ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## AutoDesignPersonAndOrganizationAssignment


proc constructStepAP214AutoDesignPersonAndOrganizationAssignment*(): StepAP214AutoDesignPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment(@)",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: Handle[StepBasicPersonAndOrganization];
          aRole: Handle[StepBasicPersonAndOrganizationRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "Init",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignPersonAndOrganizationAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc items*(this: StepAP214AutoDesignPersonAndOrganizationAssignment): Handle[
    StepAP214HArray1OfAutoDesignGeneralOrgItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignPersonAndOrganizationAssignment; num: int): StepAP214AutoDesignGeneralOrgItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignPersonAndOrganizationAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
type
  StepAP214AutoDesignPersonAndOrganizationAssignmentbaseType* = StepBasicPersonAndOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignPersonAndOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
