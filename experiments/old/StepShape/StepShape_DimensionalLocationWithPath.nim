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
discard "forward decl of StepShape_DimensionalLocationWithPath"
discard "forward decl of StepShape_DimensionalLocationWithPath"
type
  HandleC1C1* = Handle[StepShapeDimensionalLocationWithPath]

## ! Representation of STEP entity DimensionalLocationWithPath

type
  StepShapeDimensionalLocationWithPath* {.
      importcpp: "StepShape_DimensionalLocationWithPath",
      header: "StepShape_DimensionalLocationWithPath.hxx", bycopy.} = object of StepShapeDimensionalLocation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepShapeDimensionalLocationWithPath*(): StepShapeDimensionalLocationWithPath {.
    constructor, importcpp: "StepShape_DimensionalLocationWithPath(@)",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc init*(this: var StepShapeDimensionalLocationWithPath;
          aShapeAspectRelationshipName: Handle[TCollectionHAsciiString];
          hasShapeAspectRelationshipDescription: StandardBoolean;
          aShapeAspectRelationshipDescription: Handle[TCollectionHAsciiString];
    aShapeAspectRelationshipRelatingShapeAspect: Handle[StepReprShapeAspect];
    aShapeAspectRelationshipRelatedShapeAspect: Handle[StepReprShapeAspect];
          aPath: Handle[StepReprShapeAspect]) {.importcpp: "Init",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc path*(this: StepShapeDimensionalLocationWithPath): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "Path",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc setPath*(this: var StepShapeDimensionalLocationWithPath;
             path: Handle[StepReprShapeAspect]) {.importcpp: "SetPath",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
type
  StepShapeDimensionalLocationWithPathbaseType* = StepShapeDimensionalLocation

proc getTypeName*(): cstring {.importcpp: "StepShape_DimensionalLocationWithPath::get_type_name(@)",
                            header: "StepShape_DimensionalLocationWithPath.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_DimensionalLocationWithPath::get_type_descriptor(@)",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc dynamicType*(this: StepShapeDimensionalLocationWithPath): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DimensionalLocationWithPath.hxx".}