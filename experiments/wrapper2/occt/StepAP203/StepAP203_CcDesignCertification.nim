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

discard "forward decl of StepBasic_Certification"
discard "forward decl of StepAP203_CcDesignCertification"
discard "forward decl of StepAP203_CcDesignCertification"
type
  HandleC1C1* = Handle[StepAP203CcDesignCertification]

## ! Representation of STEP entity CcDesignCertification

type
  StepAP203CcDesignCertification* {.importcpp: "StepAP203_CcDesignCertification", header: "StepAP203_CcDesignCertification.hxx",
                                   bycopy.} = object of StepBasicCertificationAssignment ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructStepAP203CcDesignCertification*(): StepAP203CcDesignCertification {.
    constructor, importcpp: "StepAP203_CcDesignCertification(@)",
    header: "StepAP203_CcDesignCertification.hxx".}
proc init*(this: var StepAP203CcDesignCertification;
    aCertificationAssignmentAssignedCertification: Handle[StepBasicCertification];
          aItems: Handle[StepAP203HArray1OfCertifiedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignCertification.hxx".}
proc items*(this: StepAP203CcDesignCertification): Handle[
    StepAP203HArray1OfCertifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignCertification.hxx".}
proc setItems*(this: var StepAP203CcDesignCertification;
              items: Handle[StepAP203HArray1OfCertifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignCertification.hxx".}
type
  StepAP203CcDesignCertificationbaseType* = StepBasicCertificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignCertification::get_type_name(@)",
                            header: "StepAP203_CcDesignCertification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_CcDesignCertification::get_type_descriptor(@)",
    header: "StepAP203_CcDesignCertification.hxx".}
proc dynamicType*(this: StepAP203CcDesignCertification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignCertification.hxx".}

























