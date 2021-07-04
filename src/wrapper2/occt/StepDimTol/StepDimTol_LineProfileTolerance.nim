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

discard "forward decl of StepDimTol_LineProfileTolerance"
discard "forward decl of StepDimTol_LineProfileTolerance"
type
  Handle_StepDimTol_LineProfileTolerance* = handle[StepDimTol_LineProfileTolerance]

## ! Representation of STEP entity LineProfileTolerance

type
  StepDimTol_LineProfileTolerance* {.importcpp: "StepDimTol_LineProfileTolerance", header: "StepDimTol_LineProfileTolerance.hxx",
                                    bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepDimTol_LineProfileTolerance*(): StepDimTol_LineProfileTolerance {.
    constructor, importcpp: "StepDimTol_LineProfileTolerance(@)",
    header: "StepDimTol_LineProfileTolerance.hxx".}
type
  StepDimTol_LineProfileTolerancebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_LineProfileTolerance::get_type_name(@)",
                              header: "StepDimTol_LineProfileTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_LineProfileTolerance::get_type_descriptor(@)",
    header: "StepDimTol_LineProfileTolerance.hxx".}
proc DynamicType*(this: StepDimTol_LineProfileTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_LineProfileTolerance.hxx".}