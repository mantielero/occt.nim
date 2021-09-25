##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_CentreOfSymmetry"
discard "forward decl of StepRepr_CentreOfSymmetry"
type
  HandleStepReprCentreOfSymmetry* = Handle[StepReprCentreOfSymmetry]

## ! Added for Dimensional Tolerances

type
  StepReprCentreOfSymmetry* {.importcpp: "StepRepr_CentreOfSymmetry",
                             header: "StepRepr_CentreOfSymmetry.hxx", bycopy.} = object of StepReprDerivedShapeAspect


proc constructStepReprCentreOfSymmetry*(): StepReprCentreOfSymmetry {.constructor,
    importcpp: "StepRepr_CentreOfSymmetry(@)",
    header: "StepRepr_CentreOfSymmetry.hxx".}
type
  StepReprCentreOfSymmetrybaseType* = StepReprDerivedShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_CentreOfSymmetry::get_type_name(@)",
                            header: "StepRepr_CentreOfSymmetry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_CentreOfSymmetry::get_type_descriptor(@)",
    header: "StepRepr_CentreOfSymmetry.hxx".}
proc dynamicType*(this: StepReprCentreOfSymmetry): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_CentreOfSymmetry.hxx".}
