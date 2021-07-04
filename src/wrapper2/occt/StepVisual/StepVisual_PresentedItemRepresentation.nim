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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_PresentationRepresentationSelect, ../Standard/Standard_Transient

discard "forward decl of StepVisual_PresentedItem"
discard "forward decl of StepVisual_PresentationRepresentationSelect"
discard "forward decl of StepVisual_PresentedItemRepresentation"
discard "forward decl of StepVisual_PresentedItemRepresentation"
type
  Handle_StepVisual_PresentedItemRepresentation* = handle[
      StepVisual_PresentedItemRepresentation]

## ! Added from StepVisual Rev2 to Rev4

type
  StepVisual_PresentedItemRepresentation* {.
      importcpp: "StepVisual_PresentedItemRepresentation",
      header: "StepVisual_PresentedItemRepresentation.hxx", bycopy.} = object of Standard_Transient


proc constructStepVisual_PresentedItemRepresentation*(): StepVisual_PresentedItemRepresentation {.
    constructor, importcpp: "StepVisual_PresentedItemRepresentation(@)",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc Init*(this: var StepVisual_PresentedItemRepresentation;
          aPresentation: StepVisual_PresentationRepresentationSelect;
          aItem: handle[StepVisual_PresentedItem]) {.importcpp: "Init",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc SetPresentation*(this: var StepVisual_PresentedItemRepresentation;
                     aPresentation: StepVisual_PresentationRepresentationSelect) {.
    importcpp: "SetPresentation",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc Presentation*(this: StepVisual_PresentedItemRepresentation): StepVisual_PresentationRepresentationSelect {.
    noSideEffect, importcpp: "Presentation",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc SetItem*(this: var StepVisual_PresentedItemRepresentation;
             aItem: handle[StepVisual_PresentedItem]) {.importcpp: "SetItem",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc Item*(this: StepVisual_PresentedItemRepresentation): handle[
    StepVisual_PresentedItem] {.noSideEffect, importcpp: "Item", header: "StepVisual_PresentedItemRepresentation.hxx".}
type
  StepVisual_PresentedItemRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentedItemRepresentation::get_type_name(@)", header: "StepVisual_PresentedItemRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_PresentedItemRepresentation::get_type_descriptor(@)",
    header: "StepVisual_PresentedItemRepresentation.hxx".}
proc DynamicType*(this: StepVisual_PresentedItemRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_PresentedItemRepresentation.hxx".}