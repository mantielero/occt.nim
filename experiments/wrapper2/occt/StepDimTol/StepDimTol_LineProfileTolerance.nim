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

discard "forward decl of StepDimTol_LineProfileTolerance"
discard "forward decl of StepDimTol_LineProfileTolerance"
type
  HandleC1C1* = Handle[StepDimTolLineProfileTolerance]

## ! Representation of STEP entity LineProfileTolerance

type
  StepDimTolLineProfileTolerance* {.importcpp: "StepDimTol_LineProfileTolerance", header: "StepDimTol_LineProfileTolerance.hxx",
                                   bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructStepDimTolLineProfileTolerance*(): StepDimTolLineProfileTolerance {.
    constructor, importcpp: "StepDimTol_LineProfileTolerance(@)",
    header: "StepDimTol_LineProfileTolerance.hxx".}
type
  StepDimTolLineProfileTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_LineProfileTolerance::get_type_name(@)",
                            header: "StepDimTol_LineProfileTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_LineProfileTolerance::get_type_descriptor(@)",
    header: "StepDimTol_LineProfileTolerance.hxx".}
proc dynamicType*(this: StepDimTolLineProfileTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_LineProfileTolerance.hxx".}

























