##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepDimTol_PlacedDatumTargetFeature"
discard "forward decl of StepDimTol_PlacedDatumTargetFeature"
type
  HandleC1C1* = Handle[StepDimTolPlacedDatumTargetFeature]

## ! Representation of STEP entity PlacedDatumTargetFeature

type
  StepDimTolPlacedDatumTargetFeature* {.importcpp: "StepDimTol_PlacedDatumTargetFeature", header: "StepDimTol_PlacedDatumTargetFeature.hxx",
                                       bycopy.} = object of StepDimTolDatumTarget ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructStepDimTolPlacedDatumTargetFeature*(): StepDimTolPlacedDatumTargetFeature {.
    constructor, importcpp: "StepDimTol_PlacedDatumTargetFeature(@)",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
type
  StepDimTolPlacedDatumTargetFeaturebaseType* = StepDimTolDatumTarget

proc getTypeName*(): cstring {.importcpp: "StepDimTol_PlacedDatumTargetFeature::get_type_name(@)",
                            header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_PlacedDatumTargetFeature::get_type_descriptor(@)",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
proc dynamicType*(this: StepDimTolPlacedDatumTargetFeature): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}

























