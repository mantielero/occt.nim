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

discard "forward decl of StepDimTol_CylindricityTolerance"
discard "forward decl of StepDimTol_CylindricityTolerance"
type
  Handle_StepDimTol_CylindricityTolerance* = handle[
      StepDimTol_CylindricityTolerance]

## ! Representation of STEP entity CylindricityTolerance

type
  StepDimTol_CylindricityTolerance* {.importcpp: "StepDimTol_CylindricityTolerance", header: "StepDimTol_CylindricityTolerance.hxx",
                                     bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructStepDimTol_CylindricityTolerance*(): StepDimTol_CylindricityTolerance {.
    constructor, importcpp: "StepDimTol_CylindricityTolerance(@)",
    header: "StepDimTol_CylindricityTolerance.hxx".}
type
  StepDimTol_CylindricityTolerancebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_CylindricityTolerance::get_type_name(@)",
                              header: "StepDimTol_CylindricityTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_CylindricityTolerance::get_type_descriptor(@)",
    header: "StepDimTol_CylindricityTolerance.hxx".}
proc DynamicType*(this: StepDimTol_CylindricityTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_CylindricityTolerance.hxx".}