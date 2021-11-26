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

discard "forward decl of StepDimTol_RoundnessTolerance"
discard "forward decl of StepDimTol_RoundnessTolerance"
type
  HandleC1C1* = Handle[StepDimTolRoundnessTolerance]

## ! Representation of STEP entity RoundnessTolerance

type
  StepDimTolRoundnessTolerance* {.importcpp: "StepDimTol_RoundnessTolerance",
                                 header: "StepDimTol_RoundnessTolerance.hxx",
                                 bycopy.} = object of StepDimTolGeometricTolerance ## !
                                                                              ## Empty
                                                                              ## constructor


proc constructStepDimTolRoundnessTolerance*(): StepDimTolRoundnessTolerance {.
    constructor, importcpp: "StepDimTol_RoundnessTolerance(@)",
    header: "StepDimTol_RoundnessTolerance.hxx".}
type
  StepDimTolRoundnessTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_RoundnessTolerance::get_type_name(@)",
                            header: "StepDimTol_RoundnessTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_RoundnessTolerance::get_type_descriptor(@)",
    header: "StepDimTol_RoundnessTolerance.hxx".}
proc dynamicType*(this: StepDimTolRoundnessTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RoundnessTolerance.hxx".}