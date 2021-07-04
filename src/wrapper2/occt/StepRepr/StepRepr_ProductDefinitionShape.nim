##  Created on: 2000-07-03
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_PropertyDefinition

discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ProductDefinitionShape"
type
  Handle_StepRepr_ProductDefinitionShape* = handle[StepRepr_ProductDefinitionShape]

## ! Representation of STEP entity ProductDefinitionShape

type
  StepRepr_ProductDefinitionShape* {.importcpp: "StepRepr_ProductDefinitionShape", header: "StepRepr_ProductDefinitionShape.hxx",
                                    bycopy.} = object of StepRepr_PropertyDefinition ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructStepRepr_ProductDefinitionShape*(): StepRepr_ProductDefinitionShape {.
    constructor, importcpp: "StepRepr_ProductDefinitionShape(@)",
    header: "StepRepr_ProductDefinitionShape.hxx".}
type
  StepRepr_ProductDefinitionShapebase_type* = StepRepr_PropertyDefinition

proc get_type_name*(): cstring {.importcpp: "StepRepr_ProductDefinitionShape::get_type_name(@)",
                              header: "StepRepr_ProductDefinitionShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ProductDefinitionShape::get_type_descriptor(@)",
    header: "StepRepr_ProductDefinitionShape.hxx".}
proc DynamicType*(this: StepRepr_ProductDefinitionShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ProductDefinitionShape.hxx".}