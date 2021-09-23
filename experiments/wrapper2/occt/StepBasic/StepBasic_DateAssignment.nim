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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepBasic_DateAssignment"
discard "forward decl of StepBasic_DateAssignment"
type
  Handle_StepBasic_DateAssignment* = handle[StepBasic_DateAssignment]
  StepBasic_DateAssignment* {.importcpp: "StepBasic_DateAssignment",
                             header: "StepBasic_DateAssignment.hxx", bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_DateAssignment;
          aAssignedDate: handle[StepBasic_Date]; aRole: handle[StepBasic_DateRole]) {.
    importcpp: "Init", header: "StepBasic_DateAssignment.hxx".}
proc SetAssignedDate*(this: var StepBasic_DateAssignment;
                     aAssignedDate: handle[StepBasic_Date]) {.
    importcpp: "SetAssignedDate", header: "StepBasic_DateAssignment.hxx".}
proc AssignedDate*(this: StepBasic_DateAssignment): handle[StepBasic_Date] {.
    noSideEffect, importcpp: "AssignedDate", header: "StepBasic_DateAssignment.hxx".}
proc SetRole*(this: var StepBasic_DateAssignment; aRole: handle[StepBasic_DateRole]) {.
    importcpp: "SetRole", header: "StepBasic_DateAssignment.hxx".}
proc Role*(this: StepBasic_DateAssignment): handle[StepBasic_DateRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_DateAssignment.hxx".}
type
  StepBasic_DateAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DateAssignment::get_type_name(@)",
                              header: "StepBasic_DateAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DateAssignment::get_type_descriptor(@)",
    header: "StepBasic_DateAssignment.hxx".}
proc DynamicType*(this: StepBasic_DateAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DateAssignment.hxx".}