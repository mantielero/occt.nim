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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_ShapeAspectRelationship

discard "forward decl of StepRepr_ShapeAspectTransition"
discard "forward decl of StepRepr_ShapeAspectTransition"
type
  Handle_StepRepr_ShapeAspectTransition* = handle[StepRepr_ShapeAspectTransition]

## ! Representation of STEP entity ShapeAspectTransition

type
  StepRepr_ShapeAspectTransition* {.importcpp: "StepRepr_ShapeAspectTransition", header: "StepRepr_ShapeAspectTransition.hxx",
                                   bycopy.} = object of StepRepr_ShapeAspectRelationship ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructStepRepr_ShapeAspectTransition*(): StepRepr_ShapeAspectTransition {.
    constructor, importcpp: "StepRepr_ShapeAspectTransition(@)",
    header: "StepRepr_ShapeAspectTransition.hxx".}
type
  StepRepr_ShapeAspectTransitionbase_type* = StepRepr_ShapeAspectRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_ShapeAspectTransition::get_type_name(@)",
                              header: "StepRepr_ShapeAspectTransition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ShapeAspectTransition::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspectTransition.hxx".}
proc DynamicType*(this: StepRepr_ShapeAspectTransition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ShapeAspectTransition.hxx".}