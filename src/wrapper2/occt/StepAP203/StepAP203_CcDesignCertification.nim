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
  StepAP203_HArray1OfCertifiedItem,
  ../StepBasic/StepBasic_CertificationAssignment

discard "forward decl of StepBasic_Certification"
discard "forward decl of StepAP203_CcDesignCertification"
discard "forward decl of StepAP203_CcDesignCertification"
type
  Handle_StepAP203_CcDesignCertification* = handle[StepAP203_CcDesignCertification]

## ! Representation of STEP entity CcDesignCertification

type
  StepAP203_CcDesignCertification* {.importcpp: "StepAP203_CcDesignCertification", header: "StepAP203_CcDesignCertification.hxx",
                                    bycopy.} = object of StepBasic_CertificationAssignment ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructStepAP203_CcDesignCertification*(): StepAP203_CcDesignCertification {.
    constructor, importcpp: "StepAP203_CcDesignCertification(@)",
    header: "StepAP203_CcDesignCertification.hxx".}
proc Init*(this: var StepAP203_CcDesignCertification;
    aCertificationAssignment_AssignedCertification: handle[
    StepBasic_Certification]; aItems: handle[StepAP203_HArray1OfCertifiedItem]) {.
    importcpp: "Init", header: "StepAP203_CcDesignCertification.hxx".}
proc Items*(this: StepAP203_CcDesignCertification): handle[
    StepAP203_HArray1OfCertifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignCertification.hxx".}
proc SetItems*(this: var StepAP203_CcDesignCertification;
              Items: handle[StepAP203_HArray1OfCertifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignCertification.hxx".}
type
  StepAP203_CcDesignCertificationbase_type* = StepBasic_CertificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignCertification::get_type_name(@)",
                              header: "StepAP203_CcDesignCertification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_CcDesignCertification::get_type_descriptor(@)",
    header: "StepAP203_CcDesignCertification.hxx".}
proc DynamicType*(this: StepAP203_CcDesignCertification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignCertification.hxx".}