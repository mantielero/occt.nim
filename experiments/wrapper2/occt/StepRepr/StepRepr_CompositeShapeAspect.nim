##  Created on: 2001-04-24
##  Created by: Christian CAILLET
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

discard "forward decl of StepRepr_CompositeShapeAspect"
discard "forward decl of StepRepr_CompositeShapeAspect"
type
  HandleStepReprCompositeShapeAspect* = Handle[StepReprCompositeShapeAspect]

## ! Added for Dimensional Tolerances

type
  StepReprCompositeShapeAspect* {.importcpp: "StepRepr_CompositeShapeAspect",
                                 header: "StepRepr_CompositeShapeAspect.hxx",
                                 bycopy.} = object of StepReprShapeAspect


proc constructStepReprCompositeShapeAspect*(): StepReprCompositeShapeAspect {.
    constructor, importcpp: "StepRepr_CompositeShapeAspect(@)",
    header: "StepRepr_CompositeShapeAspect.hxx".}
type
  StepReprCompositeShapeAspectbaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_CompositeShapeAspect::get_type_name(@)",
                            header: "StepRepr_CompositeShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_CompositeShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_CompositeShapeAspect.hxx".}
proc dynamicType*(this: StepReprCompositeShapeAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CompositeShapeAspect.hxx".}
