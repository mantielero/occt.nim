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
  StepShape_HArray1OfShapeDimensionRepresentationItem,
  StepShape_ShapeRepresentation

discard "forward decl of StepShape_ShapeDimensionRepresentation"
discard "forward decl of StepShape_ShapeDimensionRepresentation"
type
  Handle_StepShape_ShapeDimensionRepresentation* = handle[
      StepShape_ShapeDimensionRepresentation]

## ! Representation of STEP entity ShapeDimensionRepresentation

type
  StepShape_ShapeDimensionRepresentation* {.
      importcpp: "StepShape_ShapeDimensionRepresentation",
      header: "StepShape_ShapeDimensionRepresentation.hxx", bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepShape_ShapeDimensionRepresentation*(): StepShape_ShapeDimensionRepresentation {.
    constructor, importcpp: "StepShape_ShapeDimensionRepresentation(@)",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc Init*(this: var StepShape_ShapeDimensionRepresentation;
          theName: handle[TCollection_HAsciiString];
          theItems: handle[StepRepr_HArray1OfRepresentationItem];
          theContextOfItems: handle[StepRepr_RepresentationContext]) {.
    importcpp: "Init", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc Init*(this: var StepShape_ShapeDimensionRepresentation;
          theName: handle[TCollection_HAsciiString]; theItems: handle[
    StepShape_HArray1OfShapeDimensionRepresentationItem];
          theContextOfItems: handle[StepRepr_RepresentationContext]) {.
    importcpp: "Init", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc SetItemsAP242*(this: var StepShape_ShapeDimensionRepresentation; theItems: handle[
    StepShape_HArray1OfShapeDimensionRepresentationItem]) {.
    importcpp: "SetItemsAP242",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc ItemsAP242*(this: StepShape_ShapeDimensionRepresentation): handle[
    StepShape_HArray1OfShapeDimensionRepresentationItem] {.noSideEffect,
    importcpp: "ItemsAP242", header: "StepShape_ShapeDimensionRepresentation.hxx".}
type
  StepShape_ShapeDimensionRepresentationbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_ShapeDimensionRepresentation::get_type_name(@)", header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_ShapeDimensionRepresentation::get_type_descriptor(@)",
    header: "StepShape_ShapeDimensionRepresentation.hxx".}
proc DynamicType*(this: StepShape_ShapeDimensionRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_ShapeDimensionRepresentation.hxx".}