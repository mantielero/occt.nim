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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_DatumTarget

discard "forward decl of StepDimTol_PlacedDatumTargetFeature"
discard "forward decl of StepDimTol_PlacedDatumTargetFeature"
type
  Handle_StepDimTol_PlacedDatumTargetFeature* = handle[
      StepDimTol_PlacedDatumTargetFeature]

## ! Representation of STEP entity PlacedDatumTargetFeature

type
  StepDimTol_PlacedDatumTargetFeature* {.importcpp: "StepDimTol_PlacedDatumTargetFeature", header: "StepDimTol_PlacedDatumTargetFeature.hxx",
                                        bycopy.} = object of StepDimTol_DatumTarget ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructStepDimTol_PlacedDatumTargetFeature*(): StepDimTol_PlacedDatumTargetFeature {.
    constructor, importcpp: "StepDimTol_PlacedDatumTargetFeature(@)",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
type
  StepDimTol_PlacedDatumTargetFeaturebase_type* = StepDimTol_DatumTarget

proc get_type_name*(): cstring {.importcpp: "StepDimTol_PlacedDatumTargetFeature::get_type_name(@)",
                              header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_PlacedDatumTargetFeature::get_type_descriptor(@)",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}
proc DynamicType*(this: StepDimTol_PlacedDatumTargetFeature): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_PlacedDatumTargetFeature.hxx".}