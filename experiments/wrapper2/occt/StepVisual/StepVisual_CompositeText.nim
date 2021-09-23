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
  StepVisual_HArray1OfTextOrCharacter,
  ../StepGeom/StepGeom_GeometricRepresentationItem, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_TextOrCharacter"
discard "forward decl of StepVisual_CompositeText"
discard "forward decl of StepVisual_CompositeText"
type
  Handle_StepVisual_CompositeText* = handle[StepVisual_CompositeText]
  StepVisual_CompositeText* {.importcpp: "StepVisual_CompositeText",
                             header: "StepVisual_CompositeText.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                        ## !
                                                                                                                        ## Returns
                                                                                                                        ## a
                                                                                                                        ## CompositeText


proc constructStepVisual_CompositeText*(): StepVisual_CompositeText {.constructor,
    importcpp: "StepVisual_CompositeText(@)",
    header: "StepVisual_CompositeText.hxx".}
proc Init*(this: var StepVisual_CompositeText;
          aName: handle[TCollection_HAsciiString];
          aCollectedText: handle[StepVisual_HArray1OfTextOrCharacter]) {.
    importcpp: "Init", header: "StepVisual_CompositeText.hxx".}
proc SetCollectedText*(this: var StepVisual_CompositeText; aCollectedText: handle[
    StepVisual_HArray1OfTextOrCharacter]) {.importcpp: "SetCollectedText",
    header: "StepVisual_CompositeText.hxx".}
proc CollectedText*(this: StepVisual_CompositeText): handle[
    StepVisual_HArray1OfTextOrCharacter] {.noSideEffect,
    importcpp: "CollectedText", header: "StepVisual_CompositeText.hxx".}
proc CollectedTextValue*(this: StepVisual_CompositeText; num: Standard_Integer): StepVisual_TextOrCharacter {.
    noSideEffect, importcpp: "CollectedTextValue",
    header: "StepVisual_CompositeText.hxx".}
proc NbCollectedText*(this: StepVisual_CompositeText): Standard_Integer {.
    noSideEffect, importcpp: "NbCollectedText",
    header: "StepVisual_CompositeText.hxx".}
type
  StepVisual_CompositeTextbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_CompositeText::get_type_name(@)",
                              header: "StepVisual_CompositeText.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CompositeText::get_type_descriptor(@)",
    header: "StepVisual_CompositeText.hxx".}
proc DynamicType*(this: StepVisual_CompositeText): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CompositeText.hxx".}