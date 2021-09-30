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
discard "forward decl of StepBasic_PersonAndOrganizationAssignment"
discard "forward decl of StepBasic_PersonAndOrganizationAssignment"
type
  HandleC1C1* = Handle[StepBasicPersonAndOrganizationAssignment]
  StepBasicPersonAndOrganizationAssignment* {.
      importcpp: "StepBasic_PersonAndOrganizationAssignment",
      header: "StepBasic_PersonAndOrganizationAssignment.hxx", bycopy.} = object of StandardTransient


proc init*(this: var StepBasicPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: Handle[StepBasicPersonAndOrganization];
          aRole: Handle[StepBasicPersonAndOrganizationRole]) {.importcpp: "Init",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc setAssignedPersonAndOrganization*(this: var StepBasicPersonAndOrganizationAssignment;
    aAssignedPersonAndOrganization: Handle[StepBasicPersonAndOrganization]) {.
    importcpp: "SetAssignedPersonAndOrganization",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc assignedPersonAndOrganization*(this: StepBasicPersonAndOrganizationAssignment): Handle[
    StepBasicPersonAndOrganization] {.noSideEffect, importcpp: "AssignedPersonAndOrganization", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc setRole*(this: var StepBasicPersonAndOrganizationAssignment;
             aRole: Handle[StepBasicPersonAndOrganizationRole]) {.
    importcpp: "SetRole", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc role*(this: StepBasicPersonAndOrganizationAssignment): Handle[
    StepBasicPersonAndOrganizationRole] {.noSideEffect, importcpp: "Role",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
type
  StepBasicPersonAndOrganizationAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_PersonAndOrganizationAssignment::get_type_name(@)", header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_PersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepBasic_PersonAndOrganizationAssignment.hxx".}
proc dynamicType*(this: StepBasicPersonAndOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_PersonAndOrganizationAssignment.hxx".}

























