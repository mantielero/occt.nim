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

discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepAP203_CcDesignSecurityClassification"
discard "forward decl of StepAP203_CcDesignSecurityClassification"
type
  HandleStepAP203CcDesignSecurityClassification* = Handle[
      StepAP203CcDesignSecurityClassification]

## ! Representation of STEP entity CcDesignSecurityClassification

type
  StepAP203CcDesignSecurityClassification* {.
      importcpp: "StepAP203_CcDesignSecurityClassification",
      header: "StepAP203_CcDesignSecurityClassification.hxx", bycopy.} = object of StepBasicSecurityClassificationAssignment ##
                                                                                                                      ## !
                                                                                                                      ## Empty
                                                                                                                      ## constructor


proc constructStepAP203CcDesignSecurityClassification*(): StepAP203CcDesignSecurityClassification {.
    constructor, importcpp: "StepAP203_CcDesignSecurityClassification(@)",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc init*(this: var StepAP203CcDesignSecurityClassification;
    aSecurityClassificationAssignmentAssignedSecurityClassification: Handle[
    StepBasicSecurityClassification];
          aItems: Handle[StepAP203HArray1OfClassifiedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc items*(this: StepAP203CcDesignSecurityClassification): Handle[
    StepAP203HArray1OfClassifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc setItems*(this: var StepAP203CcDesignSecurityClassification;
              items: Handle[StepAP203HArray1OfClassifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignSecurityClassification.hxx".}
type
  StepAP203CcDesignSecurityClassificationbaseType* = StepBasicSecurityClassificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignSecurityClassification::get_type_name(@)", header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP203_CcDesignSecurityClassification::get_type_descriptor(@)",
    header: "StepAP203_CcDesignSecurityClassification.hxx".}
proc dynamicType*(this: StepAP203CcDesignSecurityClassification): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP203_CcDesignSecurityClassification.hxx".}
