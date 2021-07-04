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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_DimensionalSize

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_DimensionalSizeWithPath"
discard "forward decl of StepShape_DimensionalSizeWithPath"
type
  Handle_StepShape_DimensionalSizeWithPath* = handle[
      StepShape_DimensionalSizeWithPath]

## ! Representation of STEP entity DimensionalSizeWithPath

type
  StepShape_DimensionalSizeWithPath* {.importcpp: "StepShape_DimensionalSizeWithPath", header: "StepShape_DimensionalSizeWithPath.hxx",
                                      bycopy.} = object of StepShape_DimensionalSize ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructStepShape_DimensionalSizeWithPath*(): StepShape_DimensionalSizeWithPath {.
    constructor, importcpp: "StepShape_DimensionalSizeWithPath(@)",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc Init*(this: var StepShape_DimensionalSizeWithPath;
          aDimensionalSize_AppliesTo: handle[StepRepr_ShapeAspect];
          aDimensionalSize_Name: handle[TCollection_HAsciiString];
          aPath: handle[StepRepr_ShapeAspect]) {.importcpp: "Init",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc Path*(this: StepShape_DimensionalSizeWithPath): handle[StepRepr_ShapeAspect] {.
    noSideEffect, importcpp: "Path",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc SetPath*(this: var StepShape_DimensionalSizeWithPath;
             Path: handle[StepRepr_ShapeAspect]) {.importcpp: "SetPath",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
type
  StepShape_DimensionalSizeWithPathbase_type* = StepShape_DimensionalSize

proc get_type_name*(): cstring {.importcpp: "StepShape_DimensionalSizeWithPath::get_type_name(@)",
                              header: "StepShape_DimensionalSizeWithPath.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_DimensionalSizeWithPath::get_type_descriptor(@)",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc DynamicType*(this: StepShape_DimensionalSizeWithPath): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DimensionalSizeWithPath.hxx".}