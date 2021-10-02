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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaAreaDensity"
discard "forward decl of StepFEA_FeaAreaDensity"
type
  HandleC1C1* = Handle[StepFEA_FeaAreaDensity]

## ! Representation of STEP entity FeaAreaDensity

type
  StepFEA_FeaAreaDensity* {.importcpp: "StepFEA_FeaAreaDensity",
                           header: "StepFEA_FeaAreaDensity.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Empty
                                                                                                                             ## constructor


proc constructStepFEA_FeaAreaDensity*(): StepFEA_FeaAreaDensity {.constructor,
    importcpp: "StepFEA_FeaAreaDensity(@)", header: "StepFEA_FeaAreaDensity.hxx".}
proc init*(this: var StepFEA_FeaAreaDensity;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFeaConstant: StandardReal) {.importcpp: "Init",
                                      header: "StepFEA_FeaAreaDensity.hxx".}
proc feaConstant*(this: StepFEA_FeaAreaDensity): StandardReal {.noSideEffect,
    importcpp: "FeaConstant", header: "StepFEA_FeaAreaDensity.hxx".}
proc setFeaConstant*(this: var StepFEA_FeaAreaDensity; feaConstant: StandardReal) {.
    importcpp: "SetFeaConstant", header: "StepFEA_FeaAreaDensity.hxx".}
type
  StepFEA_FeaAreaDensitybaseType* = StepFEA_FeaMaterialPropertyRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaAreaDensity::get_type_name(@)",
                            header: "StepFEA_FeaAreaDensity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaAreaDensity::get_type_descriptor(@)",
    header: "StepFEA_FeaAreaDensity.hxx".}
proc dynamicType*(this: StepFEA_FeaAreaDensity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaAreaDensity.hxx".}