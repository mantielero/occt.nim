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

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepBasic_PersonAndOrganizationAssignment"
discard "forward decl of StepBasic_PersonAndOrganizationAssignment"
type
  Handle_StepBasic_PersonAndOrganizationAssignment* = handle[
      StepBasic_PersonAndOrganizationAssignment]
  StepBasic_PersonAndOrganizationAssignment* {.
      importcpp: "StepBasic_PersonAndOrganizationAssignment",
      header: "StepBasic_PersonAndOrganizationAssignment.hxx", bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_PersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: handle[StepBasic_PersonAndOrganization];
          aRole: handle[StepBasic_PersonAndOrganizationRole]) {.importcpp: "Init",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc SetAssignedPersonAndOrganization*(this: var StepBasic_PersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: handle[StepBasic_PersonAndOrganization]) {.
    importcpp: "SetAssignedPersonAndOrganization",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc AssignedPersonAndOrganization*(this: StepBasic_PersonAndOrganizationAssignment): handle[
    StepBasic_PersonAndOrganization] {.noSideEffect, importcpp: "AssignedPersonAndOrganization", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc SetRole*(this: var StepBasic_PersonAndOrganizationAssignment;
             aRole: handle[StepBasic_PersonAndOrganizationRole]) {.
    importcpp: "SetRole", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc Role*(this: StepBasic_PersonAndOrganizationAssignment): handle[
    StepBasic_PersonAndOrganizationRole] {.noSideEffect, importcpp: "Role",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
type
  StepBasic_PersonAndOrganizationAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_PersonAndOrganizationAssignment::get_type_name(@)", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_PersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc DynamicType*(this: StepBasic_PersonAndOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}