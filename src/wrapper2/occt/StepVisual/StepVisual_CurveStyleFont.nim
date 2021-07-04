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
  StepVisual_HArray1OfCurveStyleFontPattern, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CurveStyleFontPattern"
discard "forward decl of StepVisual_CurveStyleFont"
discard "forward decl of StepVisual_CurveStyleFont"
type
  Handle_StepVisual_CurveStyleFont* = handle[StepVisual_CurveStyleFont]
  StepVisual_CurveStyleFont* {.importcpp: "StepVisual_CurveStyleFont",
                              header: "StepVisual_CurveStyleFont.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## CurveStyleFont


proc constructStepVisual_CurveStyleFont*(): StepVisual_CurveStyleFont {.
    constructor, importcpp: "StepVisual_CurveStyleFont(@)",
    header: "StepVisual_CurveStyleFont.hxx".}
proc Init*(this: var StepVisual_CurveStyleFont;
          aName: handle[TCollection_HAsciiString];
          aPatternList: handle[StepVisual_HArray1OfCurveStyleFontPattern]) {.
    importcpp: "Init", header: "StepVisual_CurveStyleFont.hxx".}
proc SetName*(this: var StepVisual_CurveStyleFont;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_CurveStyleFont.hxx".}
proc Name*(this: StepVisual_CurveStyleFont): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_CurveStyleFont.hxx".}
proc SetPatternList*(this: var StepVisual_CurveStyleFont; aPatternList: handle[
    StepVisual_HArray1OfCurveStyleFontPattern]) {.importcpp: "SetPatternList",
    header: "StepVisual_CurveStyleFont.hxx".}
proc PatternList*(this: StepVisual_CurveStyleFont): handle[
    StepVisual_HArray1OfCurveStyleFontPattern] {.noSideEffect,
    importcpp: "PatternList", header: "StepVisual_CurveStyleFont.hxx".}
proc PatternListValue*(this: StepVisual_CurveStyleFont; num: Standard_Integer): handle[
    StepVisual_CurveStyleFontPattern] {.noSideEffect,
                                       importcpp: "PatternListValue",
                                       header: "StepVisual_CurveStyleFont.hxx".}
proc NbPatternList*(this: StepVisual_CurveStyleFont): Standard_Integer {.
    noSideEffect, importcpp: "NbPatternList",
    header: "StepVisual_CurveStyleFont.hxx".}
type
  StepVisual_CurveStyleFontbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_CurveStyleFont::get_type_name(@)",
                              header: "StepVisual_CurveStyleFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CurveStyleFont::get_type_descriptor(@)",
    header: "StepVisual_CurveStyleFont.hxx".}
proc DynamicType*(this: StepVisual_CurveStyleFont): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CurveStyleFont.hxx".}