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
discard "forward decl of StepVisual_ColourSpecification"
discard "forward decl of StepVisual_ColourSpecification"
type
  HandleStepVisualColourSpecification* = Handle[StepVisualColourSpecification]
  StepVisualColourSpecification* {.importcpp: "StepVisual_ColourSpecification",
                                  header: "StepVisual_ColourSpecification.hxx",
                                  bycopy.} = object of StepVisualColour ## ! Returns a
                                                                   ## ColourSpecification


proc constructStepVisualColourSpecification*(): StepVisualColourSpecification {.
    constructor, importcpp: "StepVisual_ColourSpecification(@)",
    header: "StepVisual_ColourSpecification.hxx".}
proc init*(this: var StepVisualColourSpecification;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepVisual_ColourSpecification.hxx".}
proc setName*(this: var StepVisualColourSpecification;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_ColourSpecification.hxx".}
proc name*(this: StepVisualColourSpecification): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_ColourSpecification.hxx".}
type
  StepVisualColourSpecificationbaseType* = StepVisualColour

proc getTypeName*(): cstring {.importcpp: "StepVisual_ColourSpecification::get_type_name(@)",
                            header: "StepVisual_ColourSpecification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_ColourSpecification::get_type_descriptor(@)",
    header: "StepVisual_ColourSpecification.hxx".}
proc dynamicType*(this: StepVisualColourSpecification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_ColourSpecification.hxx".}
