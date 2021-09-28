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
discard "forward decl of StepVisual_CurveStyleFontPattern"
discard "forward decl of StepVisual_CurveStyleFont"
discard "forward decl of StepVisual_CurveStyleFont"
type
  HandleC1C1* = Handle[StepVisualCurveStyleFont]
  StepVisualCurveStyleFont* {.importcpp: "StepVisual_CurveStyleFont",
                             header: "StepVisual_CurveStyleFont.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## CurveStyleFont


proc constructStepVisualCurveStyleFont*(): StepVisualCurveStyleFont {.constructor,
    importcpp: "StepVisual_CurveStyleFont(@)",
    header: "StepVisual_CurveStyleFont.hxx".}
proc init*(this: var StepVisualCurveStyleFont;
          aName: Handle[TCollectionHAsciiString];
          aPatternList: Handle[StepVisualHArray1OfCurveStyleFontPattern]) {.
    importcpp: "Init", header: "StepVisual_CurveStyleFont.hxx".}
proc setName*(this: var StepVisualCurveStyleFont;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_CurveStyleFont.hxx".}
proc name*(this: StepVisualCurveStyleFont): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_CurveStyleFont.hxx".}
proc setPatternList*(this: var StepVisualCurveStyleFont; aPatternList: Handle[
    StepVisualHArray1OfCurveStyleFontPattern]) {.importcpp: "SetPatternList",
    header: "StepVisual_CurveStyleFont.hxx".}
proc patternList*(this: StepVisualCurveStyleFont): Handle[
    StepVisualHArray1OfCurveStyleFontPattern] {.noSideEffect,
    importcpp: "PatternList", header: "StepVisual_CurveStyleFont.hxx".}
proc patternListValue*(this: StepVisualCurveStyleFont; num: cint): Handle[
    StepVisualCurveStyleFontPattern] {.noSideEffect,
                                      importcpp: "PatternListValue",
                                      header: "StepVisual_CurveStyleFont.hxx".}
proc nbPatternList*(this: StepVisualCurveStyleFont): cint {.noSideEffect,
    importcpp: "NbPatternList", header: "StepVisual_CurveStyleFont.hxx".}
type
  StepVisualCurveStyleFontbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_CurveStyleFont::get_type_name(@)",
                            header: "StepVisual_CurveStyleFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CurveStyleFont::get_type_descriptor(@)",
    header: "StepVisual_CurveStyleFont.hxx".}
proc dynamicType*(this: StepVisualCurveStyleFont): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CurveStyleFont.hxx".}

























