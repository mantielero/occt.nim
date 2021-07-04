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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_AreaOrView,
  StepVisual_Colour

discard "forward decl of StepVisual_AreaOrView"
discard "forward decl of StepVisual_BackgroundColour"
discard "forward decl of StepVisual_BackgroundColour"
type
  Handle_StepVisual_BackgroundColour* = handle[StepVisual_BackgroundColour]
  StepVisual_BackgroundColour* {.importcpp: "StepVisual_BackgroundColour",
                                header: "StepVisual_BackgroundColour.hxx", bycopy.} = object of StepVisual_Colour ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## BackgroundColour


proc constructStepVisual_BackgroundColour*(): StepVisual_BackgroundColour {.
    constructor, importcpp: "StepVisual_BackgroundColour(@)",
    header: "StepVisual_BackgroundColour.hxx".}
proc Init*(this: var StepVisual_BackgroundColour;
          aPresentation: StepVisual_AreaOrView) {.importcpp: "Init",
    header: "StepVisual_BackgroundColour.hxx".}
proc SetPresentation*(this: var StepVisual_BackgroundColour;
                     aPresentation: StepVisual_AreaOrView) {.
    importcpp: "SetPresentation", header: "StepVisual_BackgroundColour.hxx".}
proc Presentation*(this: StepVisual_BackgroundColour): StepVisual_AreaOrView {.
    noSideEffect, importcpp: "Presentation",
    header: "StepVisual_BackgroundColour.hxx".}
type
  StepVisual_BackgroundColourbase_type* = StepVisual_Colour

proc get_type_name*(): cstring {.importcpp: "StepVisual_BackgroundColour::get_type_name(@)",
                              header: "StepVisual_BackgroundColour.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_BackgroundColour::get_type_descriptor(@)",
    header: "StepVisual_BackgroundColour.hxx".}
proc DynamicType*(this: StepVisual_BackgroundColour): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_BackgroundColour.hxx".}