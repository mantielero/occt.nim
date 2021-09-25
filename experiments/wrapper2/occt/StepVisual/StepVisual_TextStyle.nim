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
discard "forward decl of StepVisual_TextStyleForDefinedFont"
discard "forward decl of StepVisual_TextStyle"
discard "forward decl of StepVisual_TextStyle"
type
  HandleStepVisualTextStyle* = Handle[StepVisualTextStyle]
  StepVisualTextStyle* {.importcpp: "StepVisual_TextStyle",
                        header: "StepVisual_TextStyle.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## TextStyle


proc constructStepVisualTextStyle*(): StepVisualTextStyle {.constructor,
    importcpp: "StepVisual_TextStyle(@)", header: "StepVisual_TextStyle.hxx".}
proc init*(this: var StepVisualTextStyle; aName: Handle[TCollectionHAsciiString];
          aCharacterAppearance: Handle[StepVisualTextStyleForDefinedFont]) {.
    importcpp: "Init", header: "StepVisual_TextStyle.hxx".}
proc setName*(this: var StepVisualTextStyle; aName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepVisual_TextStyle.hxx".}
proc name*(this: StepVisualTextStyle): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_TextStyle.hxx".}
proc setCharacterAppearance*(this: var StepVisualTextStyle; aCharacterAppearance: Handle[
    StepVisualTextStyleForDefinedFont]) {.importcpp: "SetCharacterAppearance",
    header: "StepVisual_TextStyle.hxx".}
proc characterAppearance*(this: StepVisualTextStyle): Handle[
    StepVisualTextStyleForDefinedFont] {.noSideEffect,
                                        importcpp: "CharacterAppearance",
                                        header: "StepVisual_TextStyle.hxx".}
type
  StepVisualTextStylebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_TextStyle::get_type_name(@)",
                            header: "StepVisual_TextStyle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TextStyle::get_type_descriptor(@)",
    header: "StepVisual_TextStyle.hxx".}
proc dynamicType*(this: StepVisualTextStyle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_TextStyle.hxx".}
