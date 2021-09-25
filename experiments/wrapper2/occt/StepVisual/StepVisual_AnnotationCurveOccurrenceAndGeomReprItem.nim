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

discard "forward decl of StepVisual_AnnotationCurveOccurrenceAndGeomReprItem"
discard "forward decl of StepVisual_AnnotationCurveOccurrenceAndGeomReprItem"
type
  HandleStepVisualAnnotationCurveOccurrenceAndGeomReprItem* = Handle[
      StepVisualAnnotationCurveOccurrenceAndGeomReprItem]

## ! Added for Dimensional Tolerances
## ! Complex STEP entity AnnotationCurveOccurrence & AnnotationOccurrence & GeometricRepresentationItem & RepresentationItem & StyledItem

type
  StepVisualAnnotationCurveOccurrenceAndGeomReprItem* {.
      importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem",
      header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx", bycopy.} = object of StepVisualAnnotationCurveOccurrence


proc constructStepVisualAnnotationCurveOccurrenceAndGeomReprItem*(): StepVisualAnnotationCurveOccurrenceAndGeomReprItem {.
    constructor,
    importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem(@)",
    header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
type
  StepVisualAnnotationCurveOccurrenceAndGeomReprItembaseType* = StepVisualAnnotationCurveOccurrence

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem::get_type_name(@)", header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem::get_type_descriptor(@)",
    header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
proc dynamicType*(this: StepVisualAnnotationCurveOccurrenceAndGeomReprItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_AnnotationCurveOccurrenceAndGeomReprItem.hxx".}
