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
discard "forward decl of StepVisual_CurveStyleFontSelect"
discard "forward decl of StepBasic_SizeSelect"
discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_CurveStyle"
type
  HandleStepVisualCurveStyle* = Handle[StepVisualCurveStyle]
  StepVisualCurveStyle* {.importcpp: "StepVisual_CurveStyle",
                         header: "StepVisual_CurveStyle.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## CurveStyle


proc constructStepVisualCurveStyle*(): StepVisualCurveStyle {.constructor,
    importcpp: "StepVisual_CurveStyle(@)", header: "StepVisual_CurveStyle.hxx".}
proc init*(this: var StepVisualCurveStyle; aName: Handle[TCollectionHAsciiString];
          aCurveFont: StepVisualCurveStyleFontSelect;
          aCurveWidth: StepBasicSizeSelect; aCurveColour: Handle[StepVisualColour]) {.
    importcpp: "Init", header: "StepVisual_CurveStyle.hxx".}
proc setName*(this: var StepVisualCurveStyle; aName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepVisual_CurveStyle.hxx".}
proc name*(this: StepVisualCurveStyle): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_CurveStyle.hxx".}
proc setCurveFont*(this: var StepVisualCurveStyle;
                  aCurveFont: StepVisualCurveStyleFontSelect) {.
    importcpp: "SetCurveFont", header: "StepVisual_CurveStyle.hxx".}
proc curveFont*(this: StepVisualCurveStyle): StepVisualCurveStyleFontSelect {.
    noSideEffect, importcpp: "CurveFont", header: "StepVisual_CurveStyle.hxx".}
proc setCurveWidth*(this: var StepVisualCurveStyle; aCurveWidth: StepBasicSizeSelect) {.
    importcpp: "SetCurveWidth", header: "StepVisual_CurveStyle.hxx".}
proc curveWidth*(this: StepVisualCurveStyle): StepBasicSizeSelect {.noSideEffect,
    importcpp: "CurveWidth", header: "StepVisual_CurveStyle.hxx".}
proc setCurveColour*(this: var StepVisualCurveStyle;
                    aCurveColour: Handle[StepVisualColour]) {.
    importcpp: "SetCurveColour", header: "StepVisual_CurveStyle.hxx".}
proc curveColour*(this: StepVisualCurveStyle): Handle[StepVisualColour] {.
    noSideEffect, importcpp: "CurveColour", header: "StepVisual_CurveStyle.hxx".}
type
  StepVisualCurveStylebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_CurveStyle::get_type_name(@)",
                            header: "StepVisual_CurveStyle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CurveStyle::get_type_descriptor(@)",
    header: "StepVisual_CurveStyle.hxx".}
proc dynamicType*(this: StepVisualCurveStyle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_CurveStyle.hxx".}
