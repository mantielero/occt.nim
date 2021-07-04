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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_Colour

discard "forward decl of StepVisual_PreDefinedItem"
discard "forward decl of StepVisual_PreDefinedColour"
discard "forward decl of StepVisual_PreDefinedColour"
type
  Handle_StepVisual_PreDefinedColour* = handle[StepVisual_PreDefinedColour]
  StepVisual_PreDefinedColour* {.importcpp: "StepVisual_PreDefinedColour",
                                header: "StepVisual_PreDefinedColour.hxx", bycopy.} = object of StepVisual_Colour ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## PreDefinedColour


proc constructStepVisual_PreDefinedColour*(): StepVisual_PreDefinedColour {.
    constructor, importcpp: "StepVisual_PreDefinedColour(@)",
    header: "StepVisual_PreDefinedColour.hxx".}
proc SetPreDefinedItem*(this: var StepVisual_PreDefinedColour;
                       item: handle[StepVisual_PreDefinedItem]) {.
    importcpp: "SetPreDefinedItem", header: "StepVisual_PreDefinedColour.hxx".}
proc GetPreDefinedItem*(this: StepVisual_PreDefinedColour): handle[
    StepVisual_PreDefinedItem] {.noSideEffect, importcpp: "GetPreDefinedItem",
                                header: "StepVisual_PreDefinedColour.hxx".}
type
  StepVisual_PreDefinedColourbase_type* = StepVisual_Colour

proc get_type_name*(): cstring {.importcpp: "StepVisual_PreDefinedColour::get_type_name(@)",
                              header: "StepVisual_PreDefinedColour.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PreDefinedColour::get_type_descriptor(@)",
    header: "StepVisual_PreDefinedColour.hxx".}
proc DynamicType*(this: StepVisual_PreDefinedColour): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PreDefinedColour.hxx".}