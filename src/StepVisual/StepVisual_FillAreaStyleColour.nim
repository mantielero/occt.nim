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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_FillAreaStyleColour"
discard "forward decl of StepVisual_FillAreaStyleColour"
type
  HandleC1C1* = Handle[StepVisualFillAreaStyleColour]
  StepVisualFillAreaStyleColour* {.importcpp: "StepVisual_FillAreaStyleColour",
                                  header: "StepVisual_FillAreaStyleColour.hxx",
                                  bycopy.} = object of StandardTransient ## ! Returns a
                                                                    ## FillAreaStyleColour


proc constructStepVisualFillAreaStyleColour*(): StepVisualFillAreaStyleColour {.
    constructor, importcpp: "StepVisual_FillAreaStyleColour(@)",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc init*(this: var StepVisualFillAreaStyleColour;
          aName: Handle[TCollectionHAsciiString];
          aFillColour: Handle[StepVisualColour]) {.importcpp: "Init",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc setName*(this: var StepVisualFillAreaStyleColour;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc name*(this: StepVisualFillAreaStyleColour): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_FillAreaStyleColour.hxx".}
proc setFillColour*(this: var StepVisualFillAreaStyleColour;
                   aFillColour: Handle[StepVisualColour]) {.
    importcpp: "SetFillColour", header: "StepVisual_FillAreaStyleColour.hxx".}
proc fillColour*(this: StepVisualFillAreaStyleColour): Handle[StepVisualColour] {.
    noSideEffect, importcpp: "FillColour",
    header: "StepVisual_FillAreaStyleColour.hxx".}
type
  StepVisualFillAreaStyleColourbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_FillAreaStyleColour::get_type_name(@)",
                            header: "StepVisual_FillAreaStyleColour.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_FillAreaStyleColour::get_type_descriptor(@)",
    header: "StepVisual_FillAreaStyleColour.hxx".}
proc dynamicType*(this: StepVisualFillAreaStyleColour): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_FillAreaStyleColour.hxx".}

























