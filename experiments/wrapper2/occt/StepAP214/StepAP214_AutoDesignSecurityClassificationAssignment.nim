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
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP214_AutoDesignSecurityClassificationAssignment"
discard "forward decl of StepAP214_AutoDesignSecurityClassificationAssignment"
type
  HandleStepAP214AutoDesignSecurityClassificationAssignment* = Handle[
      StepAP214AutoDesignSecurityClassificationAssignment]
  StepAP214AutoDesignSecurityClassificationAssignment* {.
      importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment",
      header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx", bycopy.} = object of StepBasicSecurityClassificationAssignment ##
                                                                                                                                  ## !
                                                                                                                                  ## Returns
                                                                                                                                  ## a
                                                                                                                                  ## AutoDesignSecurityClassificationAssignment


proc constructStepAP214AutoDesignSecurityClassificationAssignment*(): StepAP214AutoDesignSecurityClassificationAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment(@)",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignSecurityClassificationAssignment;
    aAssignedSecurityClassification: Handle[StepBasicSecurityClassification];
          aItems: Handle[StepBasicHArray1OfApproval]) {.importcpp: "Init",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignSecurityClassificationAssignment;
              aItems: Handle[StepBasicHArray1OfApproval]) {.importcpp: "SetItems",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc items*(this: StepAP214AutoDesignSecurityClassificationAssignment): Handle[
    StepBasicHArray1OfApproval] {.noSideEffect, importcpp: "Items", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignSecurityClassificationAssignment;
                num: int): Handle[StepBasicApproval] {.noSideEffect,
    importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignSecurityClassificationAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
type
  StepAP214AutoDesignSecurityClassificationAssignmentbaseType* = StepBasicSecurityClassificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignSecurityClassificationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
