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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepBasic_OrganizationAssignment"
discard "forward decl of StepBasic_OrganizationAssignment"
type
  Handle_StepBasic_OrganizationAssignment* = handle[
      StepBasic_OrganizationAssignment]
  StepBasic_OrganizationAssignment* {.importcpp: "StepBasic_OrganizationAssignment", header: "StepBasic_OrganizationAssignment.hxx",
                                     bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_OrganizationAssignment;
          aAssignedOrganization: handle[StepBasic_Organization];
          aRole: handle[StepBasic_OrganizationRole]) {.importcpp: "Init",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc SetAssignedOrganization*(this: var StepBasic_OrganizationAssignment;
    aAssignedOrganization: handle[StepBasic_Organization]) {.
    importcpp: "SetAssignedOrganization",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc AssignedOrganization*(this: StepBasic_OrganizationAssignment): handle[
    StepBasic_Organization] {.noSideEffect, importcpp: "AssignedOrganization",
                             header: "StepBasic_OrganizationAssignment.hxx".}
proc SetRole*(this: var StepBasic_OrganizationAssignment;
             aRole: handle[StepBasic_OrganizationRole]) {.importcpp: "SetRole",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc Role*(this: StepBasic_OrganizationAssignment): handle[
    StepBasic_OrganizationRole] {.noSideEffect, importcpp: "Role",
                                 header: "StepBasic_OrganizationAssignment.hxx".}
type
  StepBasic_OrganizationAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_OrganizationAssignment::get_type_name(@)",
                              header: "StepBasic_OrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_OrganizationAssignment::get_type_descriptor(@)",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc DynamicType*(this: StepBasic_OrganizationAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_OrganizationAssignment.hxx".}