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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepVisual_ColourSpecification

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_ColourRgb"
discard "forward decl of StepVisual_ColourRgb"
type
  Handle_StepVisual_ColourRgb* = handle[StepVisual_ColourRgb]
  StepVisual_ColourRgb* {.importcpp: "StepVisual_ColourRgb",
                         header: "StepVisual_ColourRgb.hxx", bycopy.} = object of StepVisual_ColourSpecification ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ColourRgb


proc constructStepVisual_ColourRgb*(): StepVisual_ColourRgb {.constructor,
    importcpp: "StepVisual_ColourRgb(@)", header: "StepVisual_ColourRgb.hxx".}
proc Init*(this: var StepVisual_ColourRgb; aName: handle[TCollection_HAsciiString];
          aRed: Standard_Real; aGreen: Standard_Real; aBlue: Standard_Real) {.
    importcpp: "Init", header: "StepVisual_ColourRgb.hxx".}
proc SetRed*(this: var StepVisual_ColourRgb; aRed: Standard_Real) {.
    importcpp: "SetRed", header: "StepVisual_ColourRgb.hxx".}
proc Red*(this: StepVisual_ColourRgb): Standard_Real {.noSideEffect,
    importcpp: "Red", header: "StepVisual_ColourRgb.hxx".}
proc SetGreen*(this: var StepVisual_ColourRgb; aGreen: Standard_Real) {.
    importcpp: "SetGreen", header: "StepVisual_ColourRgb.hxx".}
proc Green*(this: StepVisual_ColourRgb): Standard_Real {.noSideEffect,
    importcpp: "Green", header: "StepVisual_ColourRgb.hxx".}
proc SetBlue*(this: var StepVisual_ColourRgb; aBlue: Standard_Real) {.
    importcpp: "SetBlue", header: "StepVisual_ColourRgb.hxx".}
proc Blue*(this: StepVisual_ColourRgb): Standard_Real {.noSideEffect,
    importcpp: "Blue", header: "StepVisual_ColourRgb.hxx".}
type
  StepVisual_ColourRgbbase_type* = StepVisual_ColourSpecification

proc get_type_name*(): cstring {.importcpp: "StepVisual_ColourRgb::get_type_name(@)",
                              header: "StepVisual_ColourRgb.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_ColourRgb::get_type_descriptor(@)",
    header: "StepVisual_ColourRgb.hxx".}
proc DynamicType*(this: StepVisual_ColourRgb): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_ColourRgb.hxx".}