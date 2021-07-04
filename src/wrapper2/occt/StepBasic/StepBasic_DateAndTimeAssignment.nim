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

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepBasic_DateAndTimeAssignment"
discard "forward decl of StepBasic_DateAndTimeAssignment"
type
  Handle_StepBasic_DateAndTimeAssignment* = handle[StepBasic_DateAndTimeAssignment]
  StepBasic_DateAndTimeAssignment* {.importcpp: "StepBasic_DateAndTimeAssignment", header: "StepBasic_DateAndTimeAssignment.hxx",
                                    bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_DateAndTimeAssignment;
          aAssignedDateAndTime: handle[StepBasic_DateAndTime];
          aRole: handle[StepBasic_DateTimeRole]) {.importcpp: "Init",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc SetAssignedDateAndTime*(this: var StepBasic_DateAndTimeAssignment;
                            aAssignedDateAndTime: handle[StepBasic_DateAndTime]) {.
    importcpp: "SetAssignedDateAndTime",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc AssignedDateAndTime*(this: StepBasic_DateAndTimeAssignment): handle[
    StepBasic_DateAndTime] {.noSideEffect, importcpp: "AssignedDateAndTime",
                            header: "StepBasic_DateAndTimeAssignment.hxx".}
proc SetRole*(this: var StepBasic_DateAndTimeAssignment;
             aRole: handle[StepBasic_DateTimeRole]) {.importcpp: "SetRole",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc Role*(this: StepBasic_DateAndTimeAssignment): handle[StepBasic_DateTimeRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_DateAndTimeAssignment.hxx".}
type
  StepBasic_DateAndTimeAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DateAndTimeAssignment::get_type_name(@)",
                              header: "StepBasic_DateAndTimeAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepBasic_DateAndTimeAssignment.hxx".}
proc DynamicType*(this: StepBasic_DateAndTimeAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DateAndTimeAssignment.hxx".}