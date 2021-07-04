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
  StepAP214_HArray1OfOrganizationItem,
  ../StepBasic/StepBasic_OrganizationAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepAP214_OrganizationItem"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
type
  Handle_StepAP214_AppliedOrganizationAssignment* = handle[
      StepAP214_AppliedOrganizationAssignment]
  StepAP214_AppliedOrganizationAssignment* {.
      importcpp: "StepAP214_AppliedOrganizationAssignment",
      header: "StepAP214_AppliedOrganizationAssignment.hxx", bycopy.} = object of StepBasic_OrganizationAssignment ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## AppliedOrganizationAssignment


proc constructStepAP214_AppliedOrganizationAssignment*(): StepAP214_AppliedOrganizationAssignment {.
    constructor, importcpp: "StepAP214_AppliedOrganizationAssignment(@)",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedOrganizationAssignment;
          aAssignedOrganization: handle[StepBasic_Organization];
          aRole: handle[StepBasic_OrganizationRole];
          aItems: handle[StepAP214_HArray1OfOrganizationItem]) {.
    importcpp: "Init", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedOrganizationAssignment;
              aItems: handle[StepAP214_HArray1OfOrganizationItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc Items*(this: StepAP214_AppliedOrganizationAssignment): handle[
    StepAP214_HArray1OfOrganizationItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedOrganizationAssignment;
                num: Standard_Integer): StepAP214_OrganizationItem {.noSideEffect,
    importcpp: "ItemsValue", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedOrganizationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
type
  StepAP214_AppliedOrganizationAssignmentbase_type* = StepBasic_OrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedOrganizationAssignment::get_type_name(@)", header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AppliedOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedOrganizationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AppliedOrganizationAssignment.hxx".}