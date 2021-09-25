##  Created on: 2016-12-28
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepVisual_AnnotationFillArea"
discard "forward decl of StepVisual_AnnotationFillArea"
type
  HandleStepVisualAnnotationFillArea* = Handle[StepVisualAnnotationFillArea]
  StepVisualAnnotationFillArea* {.importcpp: "StepVisual_AnnotationFillArea",
                                 header: "StepVisual_AnnotationFillArea.hxx",
                                 bycopy.} = object of StepShapeGeometricCurveSet ## !
                                                                            ## Returns a
                                                                            ## AnnotationFillArea


proc constructStepVisualAnnotationFillArea*(): StepVisualAnnotationFillArea {.
    constructor, importcpp: "StepVisual_AnnotationFillArea(@)",
    header: "StepVisual_AnnotationFillArea.hxx".}
type
  StepVisualAnnotationFillAreabaseType* = StepShapeGeometricCurveSet

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationFillArea::get_type_name(@)",
                            header: "StepVisual_AnnotationFillArea.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_AnnotationFillArea::get_type_descriptor(@)",
    header: "StepVisual_AnnotationFillArea.hxx".}
proc dynamicType*(this: StepVisualAnnotationFillArea): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationFillArea.hxx".}
