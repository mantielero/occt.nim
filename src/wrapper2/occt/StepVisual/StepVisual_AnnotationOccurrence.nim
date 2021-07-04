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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_StyledItem

discard "forward decl of StepVisual_AnnotationOccurrence"
discard "forward decl of StepVisual_AnnotationOccurrence"
type
  Handle_StepVisual_AnnotationOccurrence* = handle[StepVisual_AnnotationOccurrence]
  StepVisual_AnnotationOccurrence* {.importcpp: "StepVisual_AnnotationOccurrence", header: "StepVisual_AnnotationOccurrence.hxx",
                                    bycopy.} = object of StepVisual_StyledItem ## !
                                                                          ## Returns a
                                                                          ## AnnotationOccurrence


proc constructStepVisual_AnnotationOccurrence*(): StepVisual_AnnotationOccurrence {.
    constructor, importcpp: "StepVisual_AnnotationOccurrence(@)",
    header: "StepVisual_AnnotationOccurrence.hxx".}
type
  StepVisual_AnnotationOccurrencebase_type* = StepVisual_StyledItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationOccurrence::get_type_name(@)",
                              header: "StepVisual_AnnotationOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_AnnotationOccurrence::get_type_descriptor(@)",
    header: "StepVisual_AnnotationOccurrence.hxx".}
proc DynamicType*(this: StepVisual_AnnotationOccurrence): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationOccurrence.hxx".}