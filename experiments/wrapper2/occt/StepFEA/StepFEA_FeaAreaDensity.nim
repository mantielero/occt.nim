##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepFEA_FeaMaterialPropertyRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaAreaDensity"
discard "forward decl of StepFEA_FeaAreaDensity"
type
  Handle_StepFEA_FeaAreaDensity* = handle[StepFEA_FeaAreaDensity]

## ! Representation of STEP entity FeaAreaDensity

type
  StepFEA_FeaAreaDensity* {.importcpp: "StepFEA_FeaAreaDensity",
                           header: "StepFEA_FeaAreaDensity.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Empty
                                                                                                                             ## constructor


proc constructStepFEA_FeaAreaDensity*(): StepFEA_FeaAreaDensity {.constructor,
    importcpp: "StepFEA_FeaAreaDensity(@)", header: "StepFEA_FeaAreaDensity.hxx".}
proc Init*(this: var StepFEA_FeaAreaDensity;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstant: Standard_Real) {.importcpp: "Init",
                                       header: "StepFEA_FeaAreaDensity.hxx".}
proc FeaConstant*(this: StepFEA_FeaAreaDensity): Standard_Real {.noSideEffect,
    importcpp: "FeaConstant", header: "StepFEA_FeaAreaDensity.hxx".}
proc SetFeaConstant*(this: var StepFEA_FeaAreaDensity; FeaConstant: Standard_Real) {.
    importcpp: "SetFeaConstant", header: "StepFEA_FeaAreaDensity.hxx".}
type
  StepFEA_FeaAreaDensitybase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaAreaDensity::get_type_name(@)",
                              header: "StepFEA_FeaAreaDensity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaAreaDensity::get_type_descriptor(@)",
    header: "StepFEA_FeaAreaDensity.hxx".}
proc DynamicType*(this: StepFEA_FeaAreaDensity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaAreaDensity.hxx".}