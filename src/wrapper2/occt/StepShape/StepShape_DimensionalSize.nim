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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepShape_DimensionalSize"
type
  Handle_StepShape_DimensionalSize* = handle[StepShape_DimensionalSize]

## ! Representation of STEP entity DimensionalSize

type
  StepShape_DimensionalSize* {.importcpp: "StepShape_DimensionalSize",
                              header: "StepShape_DimensionalSize.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepShape_DimensionalSize*(): StepShape_DimensionalSize {.
    constructor, importcpp: "StepShape_DimensionalSize(@)",
    header: "StepShape_DimensionalSize.hxx".}
proc Init*(this: var StepShape_DimensionalSize;
          aAppliesTo: handle[StepRepr_ShapeAspect];
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepShape_DimensionalSize.hxx".}
proc AppliesTo*(this: StepShape_DimensionalSize): handle[StepRepr_ShapeAspect] {.
    noSideEffect, importcpp: "AppliesTo", header: "StepShape_DimensionalSize.hxx".}
proc SetAppliesTo*(this: var StepShape_DimensionalSize;
                  AppliesTo: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetAppliesTo", header: "StepShape_DimensionalSize.hxx".}
proc Name*(this: StepShape_DimensionalSize): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_DimensionalSize.hxx".}
proc SetName*(this: var StepShape_DimensionalSize;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepShape_DimensionalSize.hxx".}
type
  StepShape_DimensionalSizebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_DimensionalSize::get_type_name(@)",
                              header: "StepShape_DimensionalSize.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_DimensionalSize::get_type_descriptor(@)",
    header: "StepShape_DimensionalSize.hxx".}
proc DynamicType*(this: StepShape_DimensionalSize): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_DimensionalSize.hxx".}