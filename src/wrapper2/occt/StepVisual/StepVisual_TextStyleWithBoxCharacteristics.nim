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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_HArray1OfBoxCharacteristicSelect, StepVisual_TextStyle,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_TextStyleForDefinedFont"
discard "forward decl of StepVisual_BoxCharacteristicSelect"
discard "forward decl of StepVisual_TextStyleWithBoxCharacteristics"
discard "forward decl of StepVisual_TextStyleWithBoxCharacteristics"
type
  Handle_StepVisual_TextStyleWithBoxCharacteristics* = handle[
      StepVisual_TextStyleWithBoxCharacteristics]
  StepVisual_TextStyleWithBoxCharacteristics* {.
      importcpp: "StepVisual_TextStyleWithBoxCharacteristics",
      header: "StepVisual_TextStyleWithBoxCharacteristics.hxx", bycopy.} = object of StepVisual_TextStyle ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## TextStyleWithBoxCharacteristics


proc constructStepVisual_TextStyleWithBoxCharacteristics*(): StepVisual_TextStyleWithBoxCharacteristics {.
    constructor, importcpp: "StepVisual_TextStyleWithBoxCharacteristics(@)",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc Init*(this: var StepVisual_TextStyleWithBoxCharacteristics;
          aName: handle[TCollection_HAsciiString];
          aCharacterAppearance: handle[StepVisual_TextStyleForDefinedFont];
          aCharacteristics: handle[StepVisual_HArray1OfBoxCharacteristicSelect]) {.
    importcpp: "Init", header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc SetCharacteristics*(this: var StepVisual_TextStyleWithBoxCharacteristics;
    aCharacteristics: handle[StepVisual_HArray1OfBoxCharacteristicSelect]) {.
    importcpp: "SetCharacteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc Characteristics*(this: StepVisual_TextStyleWithBoxCharacteristics): handle[
    StepVisual_HArray1OfBoxCharacteristicSelect] {.noSideEffect,
    importcpp: "Characteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc CharacteristicsValue*(this: StepVisual_TextStyleWithBoxCharacteristics;
                          num: Standard_Integer): StepVisual_BoxCharacteristicSelect {.
    noSideEffect, importcpp: "CharacteristicsValue",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc NbCharacteristics*(this: StepVisual_TextStyleWithBoxCharacteristics): Standard_Integer {.
    noSideEffect, importcpp: "NbCharacteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
type
  StepVisual_TextStyleWithBoxCharacteristicsbase_type* = StepVisual_TextStyle

proc get_type_name*(): cstring {.importcpp: "StepVisual_TextStyleWithBoxCharacteristics::get_type_name(@)", header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_TextStyleWithBoxCharacteristics::get_type_descriptor(@)",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc DynamicType*(this: StepVisual_TextStyleWithBoxCharacteristics): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}