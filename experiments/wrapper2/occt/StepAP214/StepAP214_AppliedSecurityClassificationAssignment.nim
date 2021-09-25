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

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepAP214_SecurityClassificationItem"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
type
  HandleStepAP214AppliedSecurityClassificationAssignment* = Handle[
      StepAP214AppliedSecurityClassificationAssignment]
  StepAP214AppliedSecurityClassificationAssignment* {.
      importcpp: "StepAP214_AppliedSecurityClassificationAssignment",
      header: "StepAP214_AppliedSecurityClassificationAssignment.hxx", bycopy.} = object of StepBasicSecurityClassificationAssignment ##
                                                                                                                               ## !
                                                                                                                               ## Returns
                                                                                                                               ## a
                                                                                                                               ## AppliedSecurityClassificationAssignment


proc constructStepAP214AppliedSecurityClassificationAssignment*(): StepAP214AppliedSecurityClassificationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedSecurityClassificationAssignment(@)",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc init*(this: var StepAP214AppliedSecurityClassificationAssignment;
    aAssignedSecurityClassification: Handle[StepBasicSecurityClassification];
          aItems: Handle[StepAP214HArray1OfSecurityClassificationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedSecurityClassificationAssignment;
              aItems: Handle[StepAP214HArray1OfSecurityClassificationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc items*(this: StepAP214AppliedSecurityClassificationAssignment): Handle[
    StepAP214HArray1OfSecurityClassificationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedSecurityClassificationAssignment; num: int): StepAP214SecurityClassificationItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedSecurityClassificationAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
type
  StepAP214AppliedSecurityClassificationAssignmentbaseType* = StepBasicSecurityClassificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedSecurityClassificationAssignment::get_type_name(@)", header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AppliedSecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedSecurityClassificationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedSecurityClassificationAssignment.hxx".}
