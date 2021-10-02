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
discard "forward decl of StepBasic_OrganizationAssignment"
discard "forward decl of StepBasic_OrganizationAssignment"
type
  HandleC1C1* = Handle[StepBasicOrganizationAssignment]
  StepBasicOrganizationAssignment* {.importcpp: "StepBasic_OrganizationAssignment", header: "StepBasic_OrganizationAssignment.hxx",
                                    bycopy.} = object of StandardTransient


proc init*(this: var StepBasicOrganizationAssignment;
          aAssignedOrganization: Handle[StepBasicOrganization];
          aRole: Handle[StepBasicOrganizationRole]) {.importcpp: "Init",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc setAssignedOrganization*(this: var StepBasicOrganizationAssignment;
    aAssignedOrganization: Handle[StepBasicOrganization]) {.
    importcpp: "SetAssignedOrganization",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc assignedOrganization*(this: StepBasicOrganizationAssignment): Handle[
    StepBasicOrganization] {.noSideEffect, importcpp: "AssignedOrganization",
                            header: "StepBasic_OrganizationAssignment.hxx".}
proc setRole*(this: var StepBasicOrganizationAssignment;
             aRole: Handle[StepBasicOrganizationRole]) {.importcpp: "SetRole",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc role*(this: StepBasicOrganizationAssignment): Handle[StepBasicOrganizationRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_OrganizationAssignment.hxx".}
type
  StepBasicOrganizationAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_OrganizationAssignment::get_type_name(@)",
                            header: "StepBasic_OrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_OrganizationAssignment::get_type_descriptor(@)",
    header: "StepBasic_OrganizationAssignment.hxx".}
proc dynamicType*(this: StepBasicOrganizationAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_OrganizationAssignment.hxx".}