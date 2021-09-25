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

discard "forward decl of StepDimTol_SurfaceProfileTolerance"
discard "forward decl of StepDimTol_SurfaceProfileTolerance"
type
  HandleStepDimTolSurfaceProfileTolerance* = Handle[
      StepDimTolSurfaceProfileTolerance]

## ! Representation of STEP entity SurfaceProfileTolerance

type
  StepDimTolSurfaceProfileTolerance* {.importcpp: "StepDimTol_SurfaceProfileTolerance", header: "StepDimTol_SurfaceProfileTolerance.hxx",
                                      bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructStepDimTolSurfaceProfileTolerance*(): StepDimTolSurfaceProfileTolerance {.
    constructor, importcpp: "StepDimTol_SurfaceProfileTolerance(@)",
    header: "StepDimTol_SurfaceProfileTolerance.hxx".}
type
  StepDimTolSurfaceProfileTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_SurfaceProfileTolerance::get_type_name(@)",
                            header: "StepDimTol_SurfaceProfileTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_SurfaceProfileTolerance::get_type_descriptor(@)",
    header: "StepDimTol_SurfaceProfileTolerance.hxx".}
proc dynamicType*(this: StepDimTolSurfaceProfileTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_SurfaceProfileTolerance.hxx".}
