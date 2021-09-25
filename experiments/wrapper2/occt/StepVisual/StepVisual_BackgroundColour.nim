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

discard "forward decl of StepVisual_AreaOrView"
discard "forward decl of StepVisual_BackgroundColour"
discard "forward decl of StepVisual_BackgroundColour"
type
  HandleStepVisualBackgroundColour* = Handle[StepVisualBackgroundColour]
  StepVisualBackgroundColour* {.importcpp: "StepVisual_BackgroundColour",
                               header: "StepVisual_BackgroundColour.hxx", bycopy.} = object of StepVisualColour ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## BackgroundColour


proc constructStepVisualBackgroundColour*(): StepVisualBackgroundColour {.
    constructor, importcpp: "StepVisual_BackgroundColour(@)",
    header: "StepVisual_BackgroundColour.hxx".}
proc init*(this: var StepVisualBackgroundColour; aPresentation: StepVisualAreaOrView) {.
    importcpp: "Init", header: "StepVisual_BackgroundColour.hxx".}
proc setPresentation*(this: var StepVisualBackgroundColour;
                     aPresentation: StepVisualAreaOrView) {.
    importcpp: "SetPresentation", header: "StepVisual_BackgroundColour.hxx".}
proc presentation*(this: StepVisualBackgroundColour): StepVisualAreaOrView {.
    noSideEffect, importcpp: "Presentation",
    header: "StepVisual_BackgroundColour.hxx".}
type
  StepVisualBackgroundColourbaseType* = StepVisualColour

proc getTypeName*(): cstring {.importcpp: "StepVisual_BackgroundColour::get_type_name(@)",
                            header: "StepVisual_BackgroundColour.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_BackgroundColour::get_type_descriptor(@)",
    header: "StepVisual_BackgroundColour.hxx".}
proc dynamicType*(this: StepVisualBackgroundColour): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_BackgroundColour.hxx".}
