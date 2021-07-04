##  Created on: 1999-03-10
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfSecurityClassificationItem,
  ../StepBasic/StepBasic_SecurityClassificationAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepAP214_SecurityClassificationItem"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
type
  Handle_StepAP214_AppliedSecurityClassificationAssignment* = handle[
      StepAP214_AppliedSecurityClassificationAssignment]
  StepAP214_AppliedSecurityClassificationAssignment* {.
      importcpp: "StepAP214_AppliedSecurityClassificationAssignment",
      header: "StepAP214_AppliedSecurityClassificationAssignment.hxx", bycopy.} = object of StepBasic_SecurityClassificationAssignment ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## AppliedSecurityClassificationAssignment


proc constructStepAP214_AppliedSecurityClassificationAssignment*(): StepAP214_AppliedSecurityClassificationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedSecurityClassificationAssignment(@)",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedSecurityClassificationAssignment;
    aAssignedSecurityClassification: handle[StepBasic_SecurityClassification];
          aItems: handle[StepAP214_HArray1OfSecurityClassificationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedSecurityClassificationAssignment;
              aItems: handle[StepAP214_HArray1OfSecurityClassificationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc Items*(this: StepAP214_AppliedSecurityClassificationAssignment): handle[
    StepAP214_HArray1OfSecurityClassificationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedSecurityClassificationAssignment;
                num: Standard_Integer): StepAP214_SecurityClassificationItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedSecurityClassificationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
type
  StepAP214_AppliedSecurityClassificationAssignmentbase_type* = StepBasic_SecurityClassificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedSecurityClassificationAssignment::get_type_name(@)", header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AppliedSecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedSecurityClassificationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}