##  Created on: 2017-02-06
##  Created by: Irina KRYLOVA
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  StepVisual_AnnotationCurveOccurrence

discard "forward decl of StepVisual_AnnotationCurveOccurrenceAndGeomReprItem"
discard "forward decl of StepVisual_AnnotationCurveOccurrenceAndGeomReprItem"
type
  Handle_StepVisual_AnnotationCurveOccurrenceAndGeomReprItem* = handle[
      StepVisual_AnnotationCurveOccurrenceAndGeomReprItem]

## ! Added for Dimensional Tolerances
## ! Complex STEP entity AnnotationCurveOccurrence & AnnotationOccurrence & GeometricRepresentationItem & RepresentationItem & StyledItem

type
  StepVisual_AnnotationCurveOccurrenceAndGeomReprItem* {.
      importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem",
      header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx", bycopy.} = object of StepVisual_AnnotationCurveOccurrence


proc constructStepVisual_AnnotationCurveOccurrenceAndGeomReprItem*(): StepVisual_AnnotationCurveOccurrenceAndGeomReprItem {.
    constructor,
    importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem(@)",
    header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
type
  StepVisual_AnnotationCurveOccurrenceAndGeomReprItembase_type* = StepVisual_AnnotationCurveOccurrence

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem::get_type_name(@)", header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem::get_type_descriptor(@)",
    header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
proc DynamicType*(this: StepVisual_AnnotationCurveOccurrenceAndGeomReprItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}