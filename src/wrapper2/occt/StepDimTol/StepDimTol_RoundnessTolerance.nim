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
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_GeometricTolerance

discard "forward decl of StepDimTol_RoundnessTolerance"
discard "forward decl of StepDimTol_RoundnessTolerance"
type
  Handle_StepDimTol_RoundnessTolerance* = handle[StepDimTol_RoundnessTolerance]

## ! Representation of STEP entity RoundnessTolerance

type
  StepDimTol_RoundnessTolerance* {.importcpp: "StepDimTol_RoundnessTolerance",
                                  header: "StepDimTol_RoundnessTolerance.hxx",
                                  bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructStepDimTol_RoundnessTolerance*(): StepDimTol_RoundnessTolerance {.
    constructor, importcpp: "StepDimTol_RoundnessTolerance(@)",
    header: "StepDimTol_RoundnessTolerance.hxx".}
type
  StepDimTol_RoundnessTolerancebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_RoundnessTolerance::get_type_name(@)",
                              header: "StepDimTol_RoundnessTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_RoundnessTolerance::get_type_descriptor(@)",
    header: "StepDimTol_RoundnessTolerance.hxx".}
proc DynamicType*(this: StepDimTol_RoundnessTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RoundnessTolerance.hxx".}