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

discard "forward decl of StepDimTol_CylindricityTolerance"
discard "forward decl of StepDimTol_CylindricityTolerance"
type
  HandleC1C1* = Handle[StepDimTolCylindricityTolerance]

## ! Representation of STEP entity CylindricityTolerance

type
  StepDimTolCylindricityTolerance* {.importcpp: "StepDimTol_CylindricityTolerance", header: "StepDimTol_CylindricityTolerance.hxx",
                                    bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructStepDimTolCylindricityTolerance*(): StepDimTolCylindricityTolerance {.
    constructor, importcpp: "StepDimTol_CylindricityTolerance(@)",
    header: "StepDimTol_CylindricityTolerance.hxx".}
type
  StepDimTolCylindricityTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_CylindricityTolerance::get_type_name(@)",
                            header: "StepDimTol_CylindricityTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_CylindricityTolerance::get_type_descriptor(@)",
    header: "StepDimTol_CylindricityTolerance.hxx".}
proc dynamicType*(this: StepDimTolCylindricityTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_CylindricityTolerance.hxx".}

























