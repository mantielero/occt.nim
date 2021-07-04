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
  StepDimTol_GeometricToleranceWithDatumReference

discard "forward decl of StepDimTol_ConcentricityTolerance"
discard "forward decl of StepDimTol_ConcentricityTolerance"
type
  Handle_StepDimTol_ConcentricityTolerance* = handle[
      StepDimTol_ConcentricityTolerance]

## ! Representation of STEP entity ConcentricityTolerance

type
  StepDimTol_ConcentricityTolerance* {.importcpp: "StepDimTol_ConcentricityTolerance", header: "StepDimTol_ConcentricityTolerance.hxx",
                                      bycopy.} = object of StepDimTol_GeometricToleranceWithDatumReference ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepDimTol_ConcentricityTolerance*(): StepDimTol_ConcentricityTolerance {.
    constructor, importcpp: "StepDimTol_ConcentricityTolerance(@)",
    header: "StepDimTol_ConcentricityTolerance.hxx".}
type
  StepDimTol_ConcentricityTolerancebase_type* = StepDimTol_GeometricToleranceWithDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ConcentricityTolerance::get_type_name(@)",
                              header: "StepDimTol_ConcentricityTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ConcentricityTolerance::get_type_descriptor(@)",
    header: "StepDimTol_ConcentricityTolerance.hxx".}
proc DynamicType*(this: StepDimTol_ConcentricityTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ConcentricityTolerance.hxx".}