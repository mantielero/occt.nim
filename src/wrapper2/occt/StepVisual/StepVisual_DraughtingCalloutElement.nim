##  Created on: 2015-10-29
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_AnnotationCurveOccurrence"
discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
discard "forward decl of StepVisual_AnnotationTextOccurrence"
discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
type
  StepVisual_DraughtingCalloutElement* {.importcpp: "StepVisual_DraughtingCalloutElement", header: "StepVisual_DraughtingCalloutElement.hxx",
                                        bycopy.} = object of StepData_SelectType ## !
                                                                            ## Returns a
                                                                            ## DraughtingCalloutElement
                                                                            ## select type


proc constructStepVisual_DraughtingCalloutElement*(): StepVisual_DraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_DraughtingCalloutElement(@)",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc CaseNum*(this: StepVisual_DraughtingCalloutElement;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_DraughtingCalloutElement.hxx".}
proc AnnotationCurveOccurrence*(this: StepVisual_DraughtingCalloutElement): handle[
    StepVisual_AnnotationCurveOccurrence] {.noSideEffect,
    importcpp: "AnnotationCurveOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc AnnotationTextOccurrence*(this: StepVisual_DraughtingCalloutElement): handle[
    StepVisual_AnnotationTextOccurrence] {.noSideEffect,
    importcpp: "AnnotationTextOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc TessellatedAnnotationOccurrence*(this: StepVisual_DraughtingCalloutElement): handle[
    StepVisual_TessellatedAnnotationOccurrence] {.noSideEffect,
    importcpp: "TessellatedAnnotationOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc AnnotationFillAreaOccurrence*(this: StepVisual_DraughtingCalloutElement): handle[
    StepVisual_AnnotationFillAreaOccurrence] {.noSideEffect,
    importcpp: "AnnotationFillAreaOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}