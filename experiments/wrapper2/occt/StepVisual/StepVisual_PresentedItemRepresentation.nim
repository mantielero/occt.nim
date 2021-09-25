##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of StepVisual_PresentedItem"
discard "forward decl of StepVisual_PresentationRepresentationSelect"
discard "forward decl of StepVisual_PresentedItemRepresentation"
discard "forward decl of StepVisual_PresentedItemRepresentation"
type
  HandleStepVisualPresentedItemRepresentation* = Handle[
      StepVisualPresentedItemRepresentation]

## ! Added from StepVisual Rev2 to Rev4

type
  StepVisualPresentedItemRepresentation* {.
      importcpp: "StepVisual_PresentedItemRepresentation",
      header: "StepVisual_PresentedItemRepresentation.hxx", bycopy.} = object of StandardTransient


proc constructStepVisualPresentedItemRepresentation*(): StepVisualPresentedItemRepresentation {.
    constructor, importcpp: "StepVisual_PresentedItemRepresentation(@)",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc init*(this: var StepVisualPresentedItemRepresentation;
          aPresentation: StepVisualPresentationRepresentationSelect;
          aItem: Handle[StepVisualPresentedItem]) {.importcpp: "Init",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc setPresentation*(this: var StepVisualPresentedItemRepresentation;
                     aPresentation: StepVisualPresentationRepresentationSelect) {.
    importcpp: "SetPresentation",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc presentation*(this: StepVisualPresentedItemRepresentation): StepVisualPresentationRepresentationSelect {.
    noSideEffect, importcpp: "Presentation",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc setItem*(this: var StepVisualPresentedItemRepresentation;
             aItem: Handle[StepVisualPresentedItem]) {.importcpp: "SetItem",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc item*(this: StepVisualPresentedItemRepresentation): Handle[
    StepVisualPresentedItem] {.noSideEffect, importcpp: "Item", header: "StepVisual_PresentedItemRepresentation.hxx".}
type
  StepVisualPresentedItemRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentedItemRepresentation::get_type_name(@)", header: "StepVisual_PresentedItemRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_PresentedItemRepresentation::get_type_descriptor(@)",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc dynamicType*(this: StepVisualPresentedItemRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
