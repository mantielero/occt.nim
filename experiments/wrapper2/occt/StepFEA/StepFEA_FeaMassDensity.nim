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
discard "forward decl of StepFEA_FeaMassDensity"
discard "forward decl of StepFEA_FeaMassDensity"
type
  Handle_StepFEA_FeaMassDensity* = handle[StepFEA_FeaMassDensity]

## ! Representation of STEP entity FeaMassDensity

type
  StepFEA_FeaMassDensity* {.importcpp: "StepFEA_FeaMassDensity",
                           header: "StepFEA_FeaMassDensity.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Empty
                                                                                                                             ## constructor


proc constructStepFEA_FeaMassDensity*(): StepFEA_FeaMassDensity {.constructor,
    importcpp: "StepFEA_FeaMassDensity(@)", header: "StepFEA_FeaMassDensity.hxx".}
proc Init*(this: var StepFEA_FeaMassDensity;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstant: Standard_Real) {.importcpp: "Init",
                                       header: "StepFEA_FeaMassDensity.hxx".}
proc FeaConstant*(this: StepFEA_FeaMassDensity): Standard_Real {.noSideEffect,
    importcpp: "FeaConstant", header: "StepFEA_FeaMassDensity.hxx".}
proc SetFeaConstant*(this: var StepFEA_FeaMassDensity; FeaConstant: Standard_Real) {.
    importcpp: "SetFeaConstant", header: "StepFEA_FeaMassDensity.hxx".}
type
  StepFEA_FeaMassDensitybase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaMassDensity::get_type_name(@)",
                              header: "StepFEA_FeaMassDensity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaMassDensity::get_type_descriptor(@)",
    header: "StepFEA_FeaMassDensity.hxx".}
proc DynamicType*(this: StepFEA_FeaMassDensity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaMassDensity.hxx".}