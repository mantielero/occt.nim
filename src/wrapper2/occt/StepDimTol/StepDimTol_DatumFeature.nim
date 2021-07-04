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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_ShapeAspect

discard "forward decl of StepDimTol_DatumFeature"
discard "forward decl of StepDimTol_DatumFeature"
type
  Handle_StepDimTol_DatumFeature* = handle[StepDimTol_DatumFeature]

## ! Representation of STEP entity DatumFeature

type
  StepDimTol_DatumFeature* {.importcpp: "StepDimTol_DatumFeature",
                            header: "StepDimTol_DatumFeature.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepDimTol_DatumFeature*(): StepDimTol_DatumFeature {.constructor,
    importcpp: "StepDimTol_DatumFeature(@)", header: "StepDimTol_DatumFeature.hxx".}
type
  StepDimTol_DatumFeaturebase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumFeature::get_type_name(@)",
                              header: "StepDimTol_DatumFeature.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_DatumFeature::get_type_descriptor(@)",
    header: "StepDimTol_DatumFeature.hxx".}
proc DynamicType*(this: StepDimTol_DatumFeature): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_DatumFeature.hxx".}