##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_ShapeAspectTransition"
discard "forward decl of StepRepr_ShapeAspectTransition"
type
  HandleC1C1* = Handle[StepReprShapeAspectTransition]

## ! Representation of STEP entity ShapeAspectTransition

type
  StepReprShapeAspectTransition* {.importcpp: "StepRepr_ShapeAspectTransition",
                                  header: "StepRepr_ShapeAspectTransition.hxx",
                                  bycopy.} = object of StepReprShapeAspectRelationship ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepReprShapeAspectTransition*(): StepReprShapeAspectTransition {.
    constructor, importcpp: "StepRepr_ShapeAspectTransition(@)",
    header: "StepRepr_ShapeAspectTransition.hxx".}
type
  StepReprShapeAspectTransitionbaseType* = StepReprShapeAspectRelationship

proc getTypeName*(): cstring {.importcpp: "StepRepr_ShapeAspectTransition::get_type_name(@)",
                            header: "StepRepr_ShapeAspectTransition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ShapeAspectTransition::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspectTransition.hxx".}
proc dynamicType*(this: StepReprShapeAspectTransition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ShapeAspectTransition.hxx".}

























