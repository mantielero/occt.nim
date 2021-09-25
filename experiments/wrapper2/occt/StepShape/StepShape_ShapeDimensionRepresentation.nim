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

discard "forward decl of StepShape_ShapeDimensionRepresentation"
discard "forward decl of StepShape_ShapeDimensionRepresentation"
type
  HandleStepShapeShapeDimensionRepresentation* = Handle[
      StepShapeShapeDimensionRepresentation]

## ! Representation of STEP entity ShapeDimensionRepresentation

type
  StepShapeShapeDimensionRepresentation* {.
      importcpp: "StepShape_ShapeDimensionRepresentation",
      header: "StepShape_ShapeDimensionRepresentation.hxx", bycopy.} = object of StepShapeShapeRepresentation ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepShapeShapeDimensionRepresentation*(): StepShapeShapeDimensionRepresentation {.
    constructor, importcpp: "StepShape_ShapeDimensionRepresentation(@)",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc init*(this: var StepShapeShapeDimensionRepresentation;
          theName: Handle[TCollectionHAsciiString];
          theItems: Handle[StepReprHArray1OfRepresentationItem];
          theContextOfItems: Handle[StepReprRepresentationContext]) {.
    importcpp: "Init", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc init*(this: var StepShapeShapeDimensionRepresentation;
          theName: Handle[TCollectionHAsciiString];
          theItems: Handle[StepShapeHArray1OfShapeDimensionRepresentationItem];
          theContextOfItems: Handle[StepReprRepresentationContext]) {.
    importcpp: "Init", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc setItemsAP242*(this: var StepShapeShapeDimensionRepresentation; theItems: Handle[
    StepShapeHArray1OfShapeDimensionRepresentationItem]) {.
    importcpp: "SetItemsAP242",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc itemsAP242*(this: StepShapeShapeDimensionRepresentation): Handle[
    StepShapeHArray1OfShapeDimensionRepresentationItem] {.noSideEffect,
    importcpp: "ItemsAP242", header: "StepShape_ShapeDimensionRepresentation.hxx".}
type
  StepShapeShapeDimensionRepresentationbaseType* = StepShapeShapeRepresentation

proc getTypeName*(): cstring {.importcpp: "StepShape_ShapeDimensionRepresentation::get_type_name(@)", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_ShapeDimensionRepresentation::get_type_descriptor(@)",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc dynamicType*(this: StepShapeShapeDimensionRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
