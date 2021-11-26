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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepBasic_DateAssignment"
discard "forward decl of StepBasic_DateAssignment"
type
  HandleC1C1* = Handle[StepBasicDateAssignment]
  StepBasicDateAssignment* {.importcpp: "StepBasic_DateAssignment",
                            header: "StepBasic_DateAssignment.hxx", bycopy.} = object of StandardTransient


proc init*(this: var StepBasicDateAssignment; aAssignedDate: Handle[StepBasicDate];
          aRole: Handle[StepBasicDateRole]) {.importcpp: "Init",
    header: "StepBasic_DateAssignment.hxx".}
proc setAssignedDate*(this: var StepBasicDateAssignment;
                     aAssignedDate: Handle[StepBasicDate]) {.
    importcpp: "SetAssignedDate", header: "StepBasic_DateAssignment.hxx".}
proc assignedDate*(this: StepBasicDateAssignment): Handle[StepBasicDate] {.
    noSideEffect, importcpp: "AssignedDate", header: "StepBasic_DateAssignment.hxx".}
proc setRole*(this: var StepBasicDateAssignment; aRole: Handle[StepBasicDateRole]) {.
    importcpp: "SetRole", header: "StepBasic_DateAssignment.hxx".}
proc role*(this: StepBasicDateAssignment): Handle[StepBasicDateRole] {.noSideEffect,
    importcpp: "Role", header: "StepBasic_DateAssignment.hxx".}
type
  StepBasicDateAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DateAssignment::get_type_name(@)",
                            header: "StepBasic_DateAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DateAssignment::get_type_descriptor(@)",
    header: "StepBasic_DateAssignment.hxx".}
proc dynamicType*(this: StepBasicDateAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DateAssignment.hxx".}