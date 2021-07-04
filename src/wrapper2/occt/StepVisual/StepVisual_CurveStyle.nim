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
  StepVisual_CurveStyleFontSelect, ../StepBasic/StepBasic_SizeSelect,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_CurveStyleFontSelect"
discard "forward decl of StepBasic_SizeSelect"
discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_CurveStyle"
type
  Handle_StepVisual_CurveStyle* = handle[StepVisual_CurveStyle]
  StepVisual_CurveStyle* {.importcpp: "StepVisual_CurveStyle",
                          header: "StepVisual_CurveStyle.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## CurveStyle


proc constructStepVisual_CurveStyle*(): StepVisual_CurveStyle {.constructor,
    importcpp: "StepVisual_CurveStyle(@)", header: "StepVisual_CurveStyle.hxx".}
proc Init*(this: var StepVisual_CurveStyle; aName: handle[TCollection_HAsciiString];
          aCurveFont: StepVisual_CurveStyleFontSelect;
          aCurveWidth: StepBasic_SizeSelect;
          aCurveColour: handle[StepVisual_Colour]) {.importcpp: "Init",
    header: "StepVisual_CurveStyle.hxx".}
proc SetName*(this: var StepVisual_CurveStyle;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_CurveStyle.hxx".}
proc Name*(this: StepVisual_CurveStyle): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_CurveStyle.hxx".}
proc SetCurveFont*(this: var StepVisual_CurveStyle;
                  aCurveFont: StepVisual_CurveStyleFontSelect) {.
    importcpp: "SetCurveFont", header: "StepVisual_CurveStyle.hxx".}
proc CurveFont*(this: StepVisual_CurveStyle): StepVisual_CurveStyleFontSelect {.
    noSideEffect, importcpp: "CurveFont", header: "StepVisual_CurveStyle.hxx".}
proc SetCurveWidth*(this: var StepVisual_CurveStyle;
                   aCurveWidth: StepBasic_SizeSelect) {.
    importcpp: "SetCurveWidth", header: "StepVisual_CurveStyle.hxx".}
proc CurveWidth*(this: StepVisual_CurveStyle): StepBasic_SizeSelect {.noSideEffect,
    importcpp: "CurveWidth", header: "StepVisual_CurveStyle.hxx".}
proc SetCurveColour*(this: var StepVisual_CurveStyle;
                    aCurveColour: handle[StepVisual_Colour]) {.
    importcpp: "SetCurveColour", header: "StepVisual_CurveStyle.hxx".}
proc CurveColour*(this: StepVisual_CurveStyle): handle[StepVisual_Colour] {.
    noSideEffect, importcpp: "CurveColour", header: "StepVisual_CurveStyle.hxx".}
type
  StepVisual_CurveStylebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_CurveStyle::get_type_name(@)",
                              header: "StepVisual_CurveStyle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CurveStyle::get_type_descriptor(@)",
    header: "StepVisual_CurveStyle.hxx".}
proc DynamicType*(this: StepVisual_CurveStyle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CurveStyle.hxx".}