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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_ColourSpecification"
discard "forward decl of StepVisual_ColourSpecification"
type
  Handle_StepVisual_ColourSpecification* = handle[StepVisual_ColourSpecification]
  StepVisual_ColourSpecification* {.importcpp: "StepVisual_ColourSpecification", header: "StepVisual_ColourSpecification.hxx",
                                   bycopy.} = object of StepVisual_Colour ## ! Returns a
                                                                     ## ColourSpecification


proc constructStepVisual_ColourSpecification*(): StepVisual_ColourSpecification {.
    constructor, importcpp: "StepVisual_ColourSpecification(@)",
    header: "StepVisual_ColourSpecification.hxx".}
proc Init*(this: var StepVisual_ColourSpecification;
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepVisual_ColourSpecification.hxx".}
proc SetName*(this: var StepVisual_ColourSpecification;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_ColourSpecification.hxx".}
proc Name*(this: StepVisual_ColourSpecification): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_ColourSpecification.hxx".}
type
  StepVisual_ColourSpecificationbase_type* = StepVisual_Colour

proc get_type_name*(): cstring {.importcpp: "StepVisual_ColourSpecification::get_type_name(@)",
                              header: "StepVisual_ColourSpecification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_ColourSpecification::get_type_descriptor(@)",
    header: "StepVisual_ColourSpecification.hxx".}
proc DynamicType*(this: StepVisual_ColourSpecification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_ColourSpecification.hxx".}