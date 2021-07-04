##  Created on: 2001-04-24
##  Created by: Cheistian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_ShapeAspect

discard "forward decl of StepRepr_DerivedShapeAspect"
discard "forward decl of StepRepr_DerivedShapeAspect"
type
  Handle_StepRepr_DerivedShapeAspect* = handle[StepRepr_DerivedShapeAspect]

## ! Added for Dimensional Tolerances

type
  StepRepr_DerivedShapeAspect* {.importcpp: "StepRepr_DerivedShapeAspect",
                                header: "StepRepr_DerivedShapeAspect.hxx", bycopy.} = object of StepRepr_ShapeAspect


proc constructStepRepr_DerivedShapeAspect*(): StepRepr_DerivedShapeAspect {.
    constructor, importcpp: "StepRepr_DerivedShapeAspect(@)",
    header: "StepRepr_DerivedShapeAspect.hxx".}
type
  StepRepr_DerivedShapeAspectbase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepRepr_DerivedShapeAspect::get_type_name(@)",
                              header: "StepRepr_DerivedShapeAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_DerivedShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_DerivedShapeAspect.hxx".}
proc DynamicType*(this: StepRepr_DerivedShapeAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_DerivedShapeAspect.hxx".}