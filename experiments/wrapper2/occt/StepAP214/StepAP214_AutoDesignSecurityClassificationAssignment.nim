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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_HArray1OfApproval,
  ../StepBasic/StepBasic_SecurityClassificationAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP214_AutoDesignSecurityClassificationAssignment"
discard "forward decl of StepAP214_AutoDesignSecurityClassificationAssignment"
type
  Handle_StepAP214_AutoDesignSecurityClassificationAssignment* = handle[
      StepAP214_AutoDesignSecurityClassificationAssignment]
  StepAP214_AutoDesignSecurityClassificationAssignment* {.
      importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment",
      header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx", bycopy.} = object of StepBasic_SecurityClassificationAssignment ##
                                                                                                                                   ## !
                                                                                                                                   ## Returns
                                                                                                                                   ## a
                                                                                                                                   ## AutoDesignSecurityClassificationAssignment


proc constructStepAP214_AutoDesignSecurityClassificationAssignment*(): StepAP214_AutoDesignSecurityClassificationAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment(@)",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignSecurityClassificationAssignment;
    aAssignedSecurityClassification: handle[StepBasic_SecurityClassification];
          aItems: handle[StepBasic_HArray1OfApproval]) {.importcpp: "Init",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignSecurityClassificationAssignment;
              aItems: handle[StepBasic_HArray1OfApproval]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignSecurityClassificationAssignment): handle[
    StepBasic_HArray1OfApproval] {.noSideEffect, importcpp: "Items", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignSecurityClassificationAssignment;
                num: Standard_Integer): handle[StepBasic_Approval] {.noSideEffect,
    importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignSecurityClassificationAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
type
  StepAP214_AutoDesignSecurityClassificationAssignmentbase_type* = StepBasic_SecurityClassificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment::get_type_name(@)", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignSecurityClassificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignSecurityClassificationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignSecurityClassificationAssignment.hxx".}