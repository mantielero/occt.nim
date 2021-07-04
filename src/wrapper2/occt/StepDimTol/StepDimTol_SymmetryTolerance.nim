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

discard "forward decl of StepDimTol_SymmetryTolerance"
discard "forward decl of StepDimTol_SymmetryTolerance"
type
  Handle_StepDimTol_SymmetryTolerance* = handle[StepDimTol_SymmetryTolerance]

## ! Representation of STEP entity SymmetryTolerance

type
  StepDimTol_SymmetryTolerance* {.importcpp: "StepDimTol_SymmetryTolerance",
                                 header: "StepDimTol_SymmetryTolerance.hxx",
                                 bycopy.} = object of StepDimTol_GeometricToleranceWithDatumReference ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructStepDimTol_SymmetryTolerance*(): StepDimTol_SymmetryTolerance {.
    constructor, importcpp: "StepDimTol_SymmetryTolerance(@)",
    header: "StepDimTol_SymmetryTolerance.hxx".}
type
  StepDimTol_SymmetryTolerancebase_type* = StepDimTol_GeometricToleranceWithDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_SymmetryTolerance::get_type_name(@)",
                              header: "StepDimTol_SymmetryTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_SymmetryTolerance::get_type_descriptor(@)",
    header: "StepDimTol_SymmetryTolerance.hxx".}
proc DynamicType*(this: StepDimTol_SymmetryTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_SymmetryTolerance.hxx".}