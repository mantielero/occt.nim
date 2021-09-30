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

discard "forward decl of StepRepr_GeometricAlignment"
discard "forward decl of StepRepr_GeometricAlignment"
type
  HandleC1C1* = Handle[StepReprGeometricAlignment]

## ! Added for Dimensional Tolerances

type
  StepReprGeometricAlignment* {.importcpp: "StepRepr_GeometricAlignment",
                               header: "StepRepr_GeometricAlignment.hxx", bycopy.} = object of StepReprDerivedShapeAspect


proc constructStepReprGeometricAlignment*(): StepReprGeometricAlignment {.
    constructor, importcpp: "StepRepr_GeometricAlignment(@)",
    header: "StepRepr_GeometricAlignment.hxx".}
type
  StepReprGeometricAlignmentbaseType* = StepReprDerivedShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_GeometricAlignment::get_type_name(@)",
                            header: "StepRepr_GeometricAlignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_GeometricAlignment::get_type_descriptor(@)",
    header: "StepRepr_GeometricAlignment.hxx".}
proc dynamicType*(this: StepReprGeometricAlignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_GeometricAlignment.hxx".}

























