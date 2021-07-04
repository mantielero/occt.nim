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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_FillAreaStyleColour"
discard "forward decl of StepVisual_FillAreaStyleColour"
type
  Handle_StepVisual_FillAreaStyleColour* = handle[StepVisual_FillAreaStyleColour]
  StepVisual_FillAreaStyleColour* {.importcpp: "StepVisual_FillAreaStyleColour", header: "StepVisual_FillAreaStyleColour.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Returns a
                                                                      ## FillAreaStyleColour


proc constructStepVisual_FillAreaStyleColour*(): StepVisual_FillAreaStyleColour {.
    constructor, importcpp: "StepVisual_FillAreaStyleColour(@)",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc Init*(this: var StepVisual_FillAreaStyleColour;
          aName: handle[TCollection_HAsciiString];
          aFillColour: handle[StepVisual_Colour]) {.importcpp: "Init",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc SetName*(this: var StepVisual_FillAreaStyleColour;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc Name*(this: StepVisual_FillAreaStyleColour): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_FillAreaStyleColour.hxx".}
proc SetFillColour*(this: var StepVisual_FillAreaStyleColour;
                   aFillColour: handle[StepVisual_Colour]) {.
    importcpp: "SetFillColour", header: "StepVisual_FillAreaStyleColour.hxx".}
proc FillColour*(this: StepVisual_FillAreaStyleColour): handle[StepVisual_Colour] {.
    noSideEffect, importcpp: "FillColour",
    header: "StepVisual_FillAreaStyleColour.hxx".}
type
  StepVisual_FillAreaStyleColourbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_FillAreaStyleColour::get_type_name(@)",
                              header: "StepVisual_FillAreaStyleColour.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_FillAreaStyleColour::get_type_descriptor(@)",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc DynamicType*(this: StepVisual_FillAreaStyleColour): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_FillAreaStyleColour.hxx".}