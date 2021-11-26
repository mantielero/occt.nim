##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_PresentationSizeAssignmentSelect"
discard "forward decl of StepVisual_PresentationSize"
discard "forward decl of StepVisual_PresentationSize"
type
  HandleC1C1* = Handle[StepVisualPresentationSize]
  StepVisualPresentationSize* {.importcpp: "StepVisual_PresentationSize",
                               header: "StepVisual_PresentationSize.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## PresentationSize


proc constructStepVisualPresentationSize*(): StepVisualPresentationSize {.
    constructor, importcpp: "StepVisual_PresentationSize(@)",
    header: "StepVisual_PresentationSize.hxx".}
proc init*(this: var StepVisualPresentationSize;
          aUnit: StepVisualPresentationSizeAssignmentSelect;
          aSize: Handle[StepVisualPlanarBox]) {.importcpp: "Init",
    header: "StepVisual_PresentationSize.hxx".}
proc setUnit*(this: var StepVisualPresentationSize;
             aUnit: StepVisualPresentationSizeAssignmentSelect) {.
    importcpp: "SetUnit", header: "StepVisual_PresentationSize.hxx".}
proc unit*(this: StepVisualPresentationSize): StepVisualPresentationSizeAssignmentSelect {.
    noSideEffect, importcpp: "Unit", header: "StepVisual_PresentationSize.hxx".}
proc setSize*(this: var StepVisualPresentationSize;
             aSize: Handle[StepVisualPlanarBox]) {.importcpp: "SetSize",
    header: "StepVisual_PresentationSize.hxx".}
proc size*(this: StepVisualPresentationSize): Handle[StepVisualPlanarBox] {.
    noSideEffect, importcpp: "Size", header: "StepVisual_PresentationSize.hxx".}
type
  StepVisualPresentationSizebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentationSize::get_type_name(@)",
                            header: "StepVisual_PresentationSize.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PresentationSize::get_type_descriptor(@)",
    header: "StepVisual_PresentationSize.hxx".}
proc dynamicType*(this: StepVisualPresentationSize): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationSize.hxx".}