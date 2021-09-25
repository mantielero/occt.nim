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
discard "forward decl of StepVisual_ColourRgb"
discard "forward decl of StepVisual_ColourRgb"
type
  HandleStepVisualColourRgb* = Handle[StepVisualColourRgb]
  StepVisualColourRgb* {.importcpp: "StepVisual_ColourRgb",
                        header: "StepVisual_ColourRgb.hxx", bycopy.} = object of StepVisualColourSpecification ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## ColourRgb


proc constructStepVisualColourRgb*(): StepVisualColourRgb {.constructor,
    importcpp: "StepVisual_ColourRgb(@)", header: "StepVisual_ColourRgb.hxx".}
proc init*(this: var StepVisualColourRgb; aName: Handle[TCollectionHAsciiString];
          aRed: float; aGreen: float; aBlue: float) {.importcpp: "Init",
    header: "StepVisual_ColourRgb.hxx".}
proc setRed*(this: var StepVisualColourRgb; aRed: float) {.importcpp: "SetRed",
    header: "StepVisual_ColourRgb.hxx".}
proc red*(this: StepVisualColourRgb): float {.noSideEffect, importcpp: "Red",
    header: "StepVisual_ColourRgb.hxx".}
proc setGreen*(this: var StepVisualColourRgb; aGreen: float) {.importcpp: "SetGreen",
    header: "StepVisual_ColourRgb.hxx".}
proc green*(this: StepVisualColourRgb): float {.noSideEffect, importcpp: "Green",
    header: "StepVisual_ColourRgb.hxx".}
proc setBlue*(this: var StepVisualColourRgb; aBlue: float) {.importcpp: "SetBlue",
    header: "StepVisual_ColourRgb.hxx".}
proc blue*(this: StepVisualColourRgb): float {.noSideEffect, importcpp: "Blue",
    header: "StepVisual_ColourRgb.hxx".}
type
  StepVisualColourRgbbaseType* = StepVisualColourSpecification

proc getTypeName*(): cstring {.importcpp: "StepVisual_ColourRgb::get_type_name(@)",
                            header: "StepVisual_ColourRgb.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_ColourRgb::get_type_descriptor(@)",
    header: "StepVisual_ColourRgb.hxx".}
proc dynamicType*(this: StepVisualColourRgb): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_ColourRgb.hxx".}
