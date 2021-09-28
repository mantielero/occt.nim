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
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepShape_DimensionalSize"
type
  HandleC1C1* = Handle[StepShapeDimensionalSize]

## ! Representation of STEP entity DimensionalSize

type
  StepShapeDimensionalSize* {.importcpp: "StepShape_DimensionalSize",
                             header: "StepShape_DimensionalSize.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepShapeDimensionalSize*(): StepShapeDimensionalSize {.constructor,
    importcpp: "StepShape_DimensionalSize(@)",
    header: "StepShape_DimensionalSize.hxx".}
proc init*(this: var StepShapeDimensionalSize;
          aAppliesTo: Handle[StepReprShapeAspect];
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepShape_DimensionalSize.hxx".}
proc appliesTo*(this: StepShapeDimensionalSize): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "AppliesTo", header: "StepShape_DimensionalSize.hxx".}
proc setAppliesTo*(this: var StepShapeDimensionalSize;
                  appliesTo: Handle[StepReprShapeAspect]) {.
    importcpp: "SetAppliesTo", header: "StepShape_DimensionalSize.hxx".}
proc name*(this: StepShapeDimensionalSize): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_DimensionalSize.hxx".}
proc setName*(this: var StepShapeDimensionalSize;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepShape_DimensionalSize.hxx".}
type
  StepShapeDimensionalSizebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_DimensionalSize::get_type_name(@)",
                            header: "StepShape_DimensionalSize.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_DimensionalSize::get_type_descriptor(@)",
    header: "StepShape_DimensionalSize.hxx".}
proc dynamicType*(this: StepShapeDimensionalSize): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_DimensionalSize.hxx".}

























