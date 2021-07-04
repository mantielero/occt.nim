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

discard "forward decl of StepDimTol_TotalRunoutTolerance"
discard "forward decl of StepDimTol_TotalRunoutTolerance"
type
  Handle_StepDimTol_TotalRunoutTolerance* = handle[StepDimTol_TotalRunoutTolerance]

## ! Representation of STEP entity TotalRunoutTolerance

type
  StepDimTol_TotalRunoutTolerance* {.importcpp: "StepDimTol_TotalRunoutTolerance", header: "StepDimTol_TotalRunoutTolerance.hxx",
                                    bycopy.} = object of StepDimTol_GeometricToleranceWithDatumReference ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepDimTol_TotalRunoutTolerance*(): StepDimTol_TotalRunoutTolerance {.
    constructor, importcpp: "StepDimTol_TotalRunoutTolerance(@)",
    header: "StepDimTol_TotalRunoutTolerance.hxx".}
type
  StepDimTol_TotalRunoutTolerancebase_type* = StepDimTol_GeometricToleranceWithDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_TotalRunoutTolerance::get_type_name(@)",
                              header: "StepDimTol_TotalRunoutTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_TotalRunoutTolerance::get_type_descriptor(@)",
    header: "StepDimTol_TotalRunoutTolerance.hxx".}
proc DynamicType*(this: StepDimTol_TotalRunoutTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_TotalRunoutTolerance.hxx".}