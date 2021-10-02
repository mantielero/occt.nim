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

discard "forward decl of StepRepr_CompositeGroupShapeAspect"
discard "forward decl of StepRepr_CompositeGroupShapeAspect"
type
  HandleC1C1* = Handle[StepReprCompositeGroupShapeAspect]

## ! Added for Dimensional Tolerances

type
  StepReprCompositeGroupShapeAspect* {.importcpp: "StepRepr_CompositeGroupShapeAspect", header: "StepRepr_CompositeGroupShapeAspect.hxx",
                                      bycopy.} = object of StepReprCompositeShapeAspect


proc constructStepReprCompositeGroupShapeAspect*(): StepReprCompositeGroupShapeAspect {.
    constructor, importcpp: "StepRepr_CompositeGroupShapeAspect(@)",
    header: "StepRepr_CompositeGroupShapeAspect.hxx".}
type
  StepReprCompositeGroupShapeAspectbaseType* = StepReprCompositeShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_CompositeGroupShapeAspect::get_type_name(@)",
                            header: "StepRepr_CompositeGroupShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_CompositeGroupShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_CompositeGroupShapeAspect.hxx".}
proc dynamicType*(this: StepReprCompositeGroupShapeAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CompositeGroupShapeAspect.hxx".}