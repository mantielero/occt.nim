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

discard "forward decl of StepVisual_AnnotationTextOccurrence"
discard "forward decl of StepVisual_AnnotationTextOccurrence"
type
  HandleC1C1* = Handle[StepVisualAnnotationTextOccurrence]
  StepVisualAnnotationTextOccurrence* {.importcpp: "StepVisual_AnnotationTextOccurrence", header: "StepVisual_AnnotationTextOccurrence.hxx",
                                       bycopy.} = object of StepVisualAnnotationOccurrence ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## AnnotationTextOccurrence


proc constructStepVisualAnnotationTextOccurrence*(): StepVisualAnnotationTextOccurrence {.
    constructor, importcpp: "StepVisual_AnnotationTextOccurrence(@)",
    header: "StepVisual_AnnotationTextOccurrence.hxx".}
type
  StepVisualAnnotationTextOccurrencebaseType* = StepVisualAnnotationOccurrence

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationTextOccurrence::get_type_name(@)",
                            header: "StepVisual_AnnotationTextOccurrence.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_AnnotationTextOccurrence::get_type_descriptor(@)",
    header: "StepVisual_AnnotationTextOccurrence.hxx".}
proc dynamicType*(this: StepVisualAnnotationTextOccurrence): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationTextOccurrence.hxx".}