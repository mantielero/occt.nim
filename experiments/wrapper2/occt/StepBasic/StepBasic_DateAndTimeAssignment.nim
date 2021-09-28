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

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepBasic_DateAndTimeAssignment"
discard "forward decl of StepBasic_DateAndTimeAssignment"
type
  HandleC1C1* = Handle[StepBasicDateAndTimeAssignment]
  StepBasicDateAndTimeAssignment* {.importcpp: "StepBasic_DateAndTimeAssignment", header: "StepBasic_DateAndTimeAssignment.hxx",
                                   bycopy.} = object of StandardTransient


proc init*(this: var StepBasicDateAndTimeAssignment;
          aAssignedDateAndTime: Handle[StepBasicDateAndTime];
          aRole: Handle[StepBasicDateTimeRole]) {.importcpp: "Init",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc setAssignedDateAndTime*(this: var StepBasicDateAndTimeAssignment;
                            aAssignedDateAndTime: Handle[StepBasicDateAndTime]) {.
    importcpp: "SetAssignedDateAndTime",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc assignedDateAndTime*(this: StepBasicDateAndTimeAssignment): Handle[
    StepBasicDateAndTime] {.noSideEffect, importcpp: "AssignedDateAndTime",
                           header: "StepBasic_DateAndTimeAssignment.hxx".}
proc setRole*(this: var StepBasicDateAndTimeAssignment;
             aRole: Handle[StepBasicDateTimeRole]) {.importcpp: "SetRole",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc role*(this: StepBasicDateAndTimeAssignment): Handle[StepBasicDateTimeRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_DateAndTimeAssignment.hxx".}
type
  StepBasicDateAndTimeAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DateAndTimeAssignment::get_type_name(@)",
                            header: "StepBasic_DateAndTimeAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc dynamicType*(this: StepBasicDateAndTimeAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DateAndTimeAssignment.hxx".}

























