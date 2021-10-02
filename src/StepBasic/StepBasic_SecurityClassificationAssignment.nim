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

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_SecurityClassificationAssignment"
discard "forward decl of StepBasic_SecurityClassificationAssignment"
type
  HandleC1C1* = Handle[StepBasicSecurityClassificationAssignment]
  StepBasicSecurityClassificationAssignment* {.
      importcpp: "StepBasic_SecurityClassificationAssignment",
      header: "StepBasic_SecurityClassificationAssignment.hxx", bycopy.} = object of StandardTransient


proc init*(this: var StepBasicSecurityClassificationAssignment;
    aAssignedSecurityClassification: Handle[StepBasicSecurityClassification]) {.
    importcpp: "Init", header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc setAssignedSecurityClassification*(this: var StepBasicSecurityClassificationAssignment;
    aAssignedSecurityClassification: Handle[StepBasicSecurityClassification]) {.
    importcpp: "SetAssignedSecurityClassification",
    header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc assignedSecurityClassification*(this: StepBasicSecurityClassificationAssignment): Handle[
    StepBasicSecurityClassification] {.noSideEffect, importcpp: "AssignedSecurityClassification", header: "StepBasic_SecurityClassificationAssignment.hxx".}
type
  StepBasicSecurityClassificationAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_SecurityClassificationAssignment::get_type_name(@)", header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_SecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_SecurityClassificationAssignment.hxx".}
proc dynamicType*(this: StepBasicSecurityClassificationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_SecurityClassificationAssignment.hxx".}