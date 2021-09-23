##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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
  StepAP203_HArray1OfClassifiedItem,
  ../StepBasic/StepBasic_SecurityClassificationAssignment

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepAP203_CcDesignSecurityClassification"
discard "forward decl of StepAP203_CcDesignSecurityClassification"
type
  Handle_StepAP203_CcDesignSecurityClassification* = handle[
      StepAP203_CcDesignSecurityClassification]

## ! Representation of STEP entity CcDesignSecurityClassification

type
  StepAP203_CcDesignSecurityClassification* {.
      importcpp: "StepAP203_CcDesignSecurityClassification",
      header: "StepAP203_CcDesignSecurityClassification.hxx", bycopy.} = object of StepBasic_SecurityClassificationAssignment ##
                                                                                                                       ## !
                                                                                                                       ## Empty
                                                                                                                       ## constructor


proc constructStepAP203_CcDesignSecurityClassification*(): StepAP203_CcDesignSecurityClassification {.
    constructor, importcpp: "StepAP203_CcDesignSecurityClassification(@)",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc Init*(this: var StepAP203_CcDesignSecurityClassification;
    aSecurityClassificationAssignment_AssignedSecurityClassification: handle[
    StepBasic_SecurityClassification];
          aItems: handle[StepAP203_HArray1OfClassifiedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc Items*(this: StepAP203_CcDesignSecurityClassification): handle[
    StepAP203_HArray1OfClassifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc SetItems*(this: var StepAP203_CcDesignSecurityClassification;
              Items: handle[StepAP203_HArray1OfClassifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignSecurityClassification.hxx".}
type
  StepAP203_CcDesignSecurityClassificationbase_type* = StepBasic_SecurityClassificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignSecurityClassification::get_type_name(@)", header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP203_CcDesignSecurityClassification::get_type_descriptor(@)",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc DynamicType*(this: StepAP203_CcDesignSecurityClassification): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP203_CcDesignSecurityClassification.hxx".}