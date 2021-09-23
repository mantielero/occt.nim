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

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_SecurityClassificationAssignment"
discard "forward decl of StepBasic_SecurityClassificationAssignment"
type
  Handle_StepBasic_SecurityClassificationAssignment* = handle[
      StepBasic_SecurityClassificationAssignment]
  StepBasic_SecurityClassificationAssignment* {.
      importcpp: "StepBasic_SecurityClassificationAssignment",
      header: "StepBasic_SecurityClassificationAssignment.hxx", bycopy.} = object of Standard_Transient


proc Init*(this: var StepBasic_SecurityClassificationAssignment;
    aAssignedSecurityClassification: handle[StepBasic_SecurityClassification]) {.
    importcpp: "Init", header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc SetAssignedSecurityClassification*(this: var StepBasic_SecurityClassificationAssignment;
    aAssignedSecurityClassification: handle[StepBasic_SecurityClassification]) {.
    importcpp: "SetAssignedSecurityClassification",
    header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc AssignedSecurityClassification*(this: StepBasic_SecurityClassificationAssignment): handle[
    StepBasic_SecurityClassification] {.noSideEffect, importcpp: "AssignedSecurityClassification", header: "StepBasic_SecurityClassificationAssignment.hxx".}
type
  StepBasic_SecurityClassificationAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_SecurityClassificationAssignment::get_type_name(@)", header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_SecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc DynamicType*(this: StepBasic_SecurityClassificationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_SecurityClassificationAssignment.hxx".}