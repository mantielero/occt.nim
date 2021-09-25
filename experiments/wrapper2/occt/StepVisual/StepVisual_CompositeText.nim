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
discard "forward decl of StepVisual_TextOrCharacter"
discard "forward decl of StepVisual_CompositeText"
discard "forward decl of StepVisual_CompositeText"
type
  HandleStepVisualCompositeText* = Handle[StepVisualCompositeText]
  StepVisualCompositeText* {.importcpp: "StepVisual_CompositeText",
                            header: "StepVisual_CompositeText.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                      ## !
                                                                                                                      ## Returns
                                                                                                                      ## a
                                                                                                                      ## CompositeText


proc constructStepVisualCompositeText*(): StepVisualCompositeText {.constructor,
    importcpp: "StepVisual_CompositeText(@)",
    header: "StepVisual_CompositeText.hxx".}
proc init*(this: var StepVisualCompositeText;
          aName: Handle[TCollectionHAsciiString];
          aCollectedText: Handle[StepVisualHArray1OfTextOrCharacter]) {.
    importcpp: "Init", header: "StepVisual_CompositeText.hxx".}
proc setCollectedText*(this: var StepVisualCompositeText; aCollectedText: Handle[
    StepVisualHArray1OfTextOrCharacter]) {.importcpp: "SetCollectedText",
    header: "StepVisual_CompositeText.hxx".}
proc collectedText*(this: StepVisualCompositeText): Handle[
    StepVisualHArray1OfTextOrCharacter] {.noSideEffect,
    importcpp: "CollectedText", header: "StepVisual_CompositeText.hxx".}
proc collectedTextValue*(this: StepVisualCompositeText; num: int): StepVisualTextOrCharacter {.
    noSideEffect, importcpp: "CollectedTextValue",
    header: "StepVisual_CompositeText.hxx".}
proc nbCollectedText*(this: StepVisualCompositeText): int {.noSideEffect,
    importcpp: "NbCollectedText", header: "StepVisual_CompositeText.hxx".}
type
  StepVisualCompositeTextbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_CompositeText::get_type_name(@)",
                            header: "StepVisual_CompositeText.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CompositeText::get_type_descriptor(@)",
    header: "StepVisual_CompositeText.hxx".}
proc dynamicType*(this: StepVisualCompositeText): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CompositeText.hxx".}
