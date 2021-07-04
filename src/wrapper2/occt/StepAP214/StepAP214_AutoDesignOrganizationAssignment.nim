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
  ../StepBasic/StepBasic_OrganizationAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignOrganizationAssignment"
type
  Handle_StepAP214_AutoDesignOrganizationAssignment* = handle[
      StepAP214_AutoDesignOrganizationAssignment]
  StepAP214_AutoDesignOrganizationAssignment* {.
      importcpp: "StepAP214_AutoDesignOrganizationAssignment",
      header: "StepAP214_AutoDesignOrganizationAssignment.hxx", bycopy.} = object of StepBasic_OrganizationAssignment ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## AutoDesignOrganizationAssignment


proc constructStepAP214_AutoDesignOrganizationAssignment*(): StepAP214_AutoDesignOrganizationAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignOrganizationAssignment(@)",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignOrganizationAssignment;
          aAssignedOrganization: handle[StepBasic_Organization];
          aRole: handle[StepBasic_OrganizationRole];
          aItems: handle[StepAP214_HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignOrganizationAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignGeneralOrgItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignOrganizationAssignment): handle[
    StepAP214_HArray1OfAutoDesignGeneralOrgItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignOrganizationAssignment;
                num: Standard_Integer): StepAP214_AutoDesignGeneralOrgItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignOrganizationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
type
  StepAP214_AutoDesignOrganizationAssignmentbase_type* = StepBasic_OrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignOrganizationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AutoDesignOrganizationAssignment.hxx".}