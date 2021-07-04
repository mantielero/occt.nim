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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfAutoDesignGeneralOrgItem,
  ../StepBasic/StepBasic_PersonAndOrganizationAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignPersonAndOrganizationAssignment"
type
  Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment* = handle[
      StepAP214_AutoDesignPersonAndOrganizationAssignment]
  StepAP214_AutoDesignPersonAndOrganizationAssignment* {.
      importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment",
      header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasic_PersonAndOrganizationAssignment ##
                                                                                                                                 ## !
                                                                                                                                 ## Returns
                                                                                                                                 ## a
                                                                                                                                 ## AutoDesignPersonAndOrganizationAssignment


proc constructStepAP214_AutoDesignPersonAndOrganizationAssignment*(): StepAP214_AutoDesignPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment(@)",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: handle[StepBasic_PersonAndOrganization];
          aRole: handle[StepBasic_PersonAndOrganizationRole];
          aItems: handle[StepAP214_HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "Init",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignPersonAndOrganizationAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignPersonAndOrganizationAssignment): handle[
    StepAP214_HArray1OfAutoDesignGeneralOrgItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignPersonAndOrganizationAssignment;
                num: Standard_Integer): StepAP214_AutoDesignGeneralOrgItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignPersonAndOrganizationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
type
  StepAP214_AutoDesignPersonAndOrganizationAssignmentbase_type* = StepBasic_PersonAndOrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignPersonAndOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignPersonAndOrganizationAssignment.hxx".}