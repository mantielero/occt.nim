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

discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_TextStyleForDefinedFont"
discard "forward decl of StepVisual_TextStyleForDefinedFont"
type
  HandleC1C1* = Handle[StepVisualTextStyleForDefinedFont]
  StepVisualTextStyleForDefinedFont* {.importcpp: "StepVisual_TextStyleForDefinedFont", header: "StepVisual_TextStyleForDefinedFont.hxx",
                                      bycopy.} = object of StandardTransient ## ! Returns a
                                                                        ## TextStyleForDefinedFont


proc constructStepVisualTextStyleForDefinedFont*(): StepVisualTextStyleForDefinedFont {.
    constructor, importcpp: "StepVisual_TextStyleForDefinedFont(@)",
    header: "StepVisual_TextStyleForDefinedFont.hxx".}
proc init*(this: var StepVisualTextStyleForDefinedFont;
          aTextColour: Handle[StepVisualColour]) {.importcpp: "Init",
    header: "StepVisual_TextStyleForDefinedFont.hxx".}
proc setTextColour*(this: var StepVisualTextStyleForDefinedFont;
                   aTextColour: Handle[StepVisualColour]) {.
    importcpp: "SetTextColour", header: "StepVisual_TextStyleForDefinedFont.hxx".}
proc textColour*(this: StepVisualTextStyleForDefinedFont): Handle[StepVisualColour] {.
    noSideEffect, importcpp: "TextColour",
    header: "StepVisual_TextStyleForDefinedFont.hxx".}
type
  StepVisualTextStyleForDefinedFontbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_TextStyleForDefinedFont::get_type_name(@)",
                            header: "StepVisual_TextStyleForDefinedFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TextStyleForDefinedFont::get_type_descriptor(@)",
    header: "StepVisual_TextStyleForDefinedFont.hxx".}
proc dynamicType*(this: StepVisualTextStyleForDefinedFont): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TextStyleForDefinedFont.hxx".}