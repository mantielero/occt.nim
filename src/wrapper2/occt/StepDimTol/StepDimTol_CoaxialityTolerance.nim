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

discard "forward decl of StepDimTol_CoaxialityTolerance"
discard "forward decl of StepDimTol_CoaxialityTolerance"
type
  Handle_StepDimTol_CoaxialityTolerance* = handle[StepDimTol_CoaxialityTolerance]

## ! Representation of STEP entity CoaxialityTolerance

type
  StepDimTol_CoaxialityTolerance* {.importcpp: "StepDimTol_CoaxialityTolerance", header: "StepDimTol_CoaxialityTolerance.hxx",
                                   bycopy.} = object of StepDimTol_GeometricToleranceWithDatumReference ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepDimTol_CoaxialityTolerance*(): StepDimTol_CoaxialityTolerance {.
    constructor, importcpp: "StepDimTol_CoaxialityTolerance(@)",
    header: "StepDimTol_CoaxialityTolerance.hxx".}
type
  StepDimTol_CoaxialityTolerancebase_type* = StepDimTol_GeometricToleranceWithDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_CoaxialityTolerance::get_type_name(@)",
                              header: "StepDimTol_CoaxialityTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_CoaxialityTolerance::get_type_descriptor(@)",
    header: "StepDimTol_CoaxialityTolerance.hxx".}
proc DynamicType*(this: StepDimTol_CoaxialityTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_CoaxialityTolerance.hxx".}