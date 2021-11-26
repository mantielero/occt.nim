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

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_DimensionalSizeWithPath"
discard "forward decl of StepShape_DimensionalSizeWithPath"
type
  HandleC1C1* = Handle[StepShapeDimensionalSizeWithPath]

## ! Representation of STEP entity DimensionalSizeWithPath

type
  StepShapeDimensionalSizeWithPath* {.importcpp: "StepShape_DimensionalSizeWithPath", header: "StepShape_DimensionalSizeWithPath.hxx",
                                     bycopy.} = object of StepShapeDimensionalSize ## !
                                                                              ## Empty
                                                                              ## constructor


proc constructStepShapeDimensionalSizeWithPath*(): StepShapeDimensionalSizeWithPath {.
    constructor, importcpp: "StepShape_DimensionalSizeWithPath(@)",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc init*(this: var StepShapeDimensionalSizeWithPath;
          aDimensionalSizeAppliesTo: Handle[StepReprShapeAspect];
          aDimensionalSizeName: Handle[TCollectionHAsciiString];
          aPath: Handle[StepReprShapeAspect]) {.importcpp: "Init",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc path*(this: StepShapeDimensionalSizeWithPath): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "Path",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc setPath*(this: var StepShapeDimensionalSizeWithPath;
             path: Handle[StepReprShapeAspect]) {.importcpp: "SetPath",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
type
  StepShapeDimensionalSizeWithPathbaseType* = StepShapeDimensionalSize

proc getTypeName*(): cstring {.importcpp: "StepShape_DimensionalSizeWithPath::get_type_name(@)",
                            header: "StepShape_DimensionalSizeWithPath.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_DimensionalSizeWithPath::get_type_descriptor(@)",
    header: "StepShape_DimensionalSizeWithPath.hxx".}
proc dynamicType*(this: StepShapeDimensionalSizeWithPath): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DimensionalSizeWithPath.hxx".}