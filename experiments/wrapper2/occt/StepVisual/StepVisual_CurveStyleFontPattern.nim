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

discard "forward decl of StepVisual_CurveStyleFontPattern"
discard "forward decl of StepVisual_CurveStyleFontPattern"
type
  HandleC1C1* = Handle[StepVisualCurveStyleFontPattern]
  StepVisualCurveStyleFontPattern* {.importcpp: "StepVisual_CurveStyleFontPattern", header: "StepVisual_CurveStyleFontPattern.hxx",
                                    bycopy.} = object of StandardTransient ## ! Returns a
                                                                      ## CurveStyleFontPattern


proc constructStepVisualCurveStyleFontPattern*(): StepVisualCurveStyleFontPattern {.
    constructor, importcpp: "StepVisual_CurveStyleFontPattern(@)",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc init*(this: var StepVisualCurveStyleFontPattern; aVisibleSegmentLength: cfloat;
          aInvisibleSegmentLength: cfloat) {.importcpp: "Init",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc setVisibleSegmentLength*(this: var StepVisualCurveStyleFontPattern;
                             aVisibleSegmentLength: cfloat) {.
    importcpp: "SetVisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc visibleSegmentLength*(this: StepVisualCurveStyleFontPattern): cfloat {.
    noSideEffect, importcpp: "VisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc setInvisibleSegmentLength*(this: var StepVisualCurveStyleFontPattern;
                               aInvisibleSegmentLength: cfloat) {.
    importcpp: "SetInvisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc invisibleSegmentLength*(this: StepVisualCurveStyleFontPattern): cfloat {.
    noSideEffect, importcpp: "InvisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
type
  StepVisualCurveStyleFontPatternbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_CurveStyleFontPattern::get_type_name(@)",
                            header: "StepVisual_CurveStyleFontPattern.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CurveStyleFontPattern::get_type_descriptor(@)",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc dynamicType*(this: StepVisualCurveStyleFontPattern): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CurveStyleFontPattern.hxx".}

























