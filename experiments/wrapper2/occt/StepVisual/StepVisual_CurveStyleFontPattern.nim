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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of StepVisual_CurveStyleFontPattern"
discard "forward decl of StepVisual_CurveStyleFontPattern"
type
  Handle_StepVisual_CurveStyleFontPattern* = handle[
      StepVisual_CurveStyleFontPattern]
  StepVisual_CurveStyleFontPattern* {.importcpp: "StepVisual_CurveStyleFontPattern", header: "StepVisual_CurveStyleFontPattern.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Returns a
                                                                        ## CurveStyleFontPattern


proc constructStepVisual_CurveStyleFontPattern*(): StepVisual_CurveStyleFontPattern {.
    constructor, importcpp: "StepVisual_CurveStyleFontPattern(@)",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc Init*(this: var StepVisual_CurveStyleFontPattern;
          aVisibleSegmentLength: Standard_Real;
          aInvisibleSegmentLength: Standard_Real) {.importcpp: "Init",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc SetVisibleSegmentLength*(this: var StepVisual_CurveStyleFontPattern;
                             aVisibleSegmentLength: Standard_Real) {.
    importcpp: "SetVisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc VisibleSegmentLength*(this: StepVisual_CurveStyleFontPattern): Standard_Real {.
    noSideEffect, importcpp: "VisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc SetInvisibleSegmentLength*(this: var StepVisual_CurveStyleFontPattern;
                               aInvisibleSegmentLength: Standard_Real) {.
    importcpp: "SetInvisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc InvisibleSegmentLength*(this: StepVisual_CurveStyleFontPattern): Standard_Real {.
    noSideEffect, importcpp: "InvisibleSegmentLength",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
type
  StepVisual_CurveStyleFontPatternbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_CurveStyleFontPattern::get_type_name(@)",
                              header: "StepVisual_CurveStyleFontPattern.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CurveStyleFontPattern::get_type_descriptor(@)",
    header: "StepVisual_CurveStyleFontPattern.hxx".}
proc DynamicType*(this: StepVisual_CurveStyleFontPattern): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CurveStyleFontPattern.hxx".}