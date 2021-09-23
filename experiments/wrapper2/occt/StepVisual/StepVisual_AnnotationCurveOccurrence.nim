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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_AnnotationOccurrence

discard "forward decl of StepVisual_AnnotationCurveOccurrence"
discard "forward decl of StepVisual_AnnotationCurveOccurrence"
type
  Handle_StepVisual_AnnotationCurveOccurrence* = handle[
      StepVisual_AnnotationCurveOccurrence]
  StepVisual_AnnotationCurveOccurrence* {.
      importcpp: "StepVisual_AnnotationCurveOccurrence",
      header: "StepVisual_AnnotationCurveOccurrence.hxx", bycopy.} = object of StepVisual_AnnotationOccurrence ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## AnnotationCurveOccurrence


proc constructStepVisual_AnnotationCurveOccurrence*(): StepVisual_AnnotationCurveOccurrence {.
    constructor, importcpp: "StepVisual_AnnotationCurveOccurrence(@)",
    header: "StepVisual_AnnotationCurveOccurrence.hxx".}
type
  StepVisual_AnnotationCurveOccurrencebase_type* = StepVisual_AnnotationOccurrence

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationCurveOccurrence::get_type_name(@)", header: "StepVisual_AnnotationCurveOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_AnnotationCurveOccurrence::get_type_descriptor(@)",
    header: "StepVisual_AnnotationCurveOccurrence.hxx".}
proc DynamicType*(this: StepVisual_AnnotationCurveOccurrence): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationCurveOccurrence.hxx".}