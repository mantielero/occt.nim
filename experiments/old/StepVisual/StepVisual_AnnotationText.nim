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

discard "forward decl of StepVisual_AnnotationText"
discard "forward decl of StepVisual_AnnotationText"
type
  HandleC1C1* = Handle[StepVisualAnnotationText]
  StepVisualAnnotationText* {.importcpp: "StepVisual_AnnotationText",
                             header: "StepVisual_AnnotationText.hxx", bycopy.} = object of StepReprMappedItem ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## AnnotationText


proc constructStepVisualAnnotationText*(): StepVisualAnnotationText {.constructor,
    importcpp: "StepVisual_AnnotationText(@)",
    header: "StepVisual_AnnotationText.hxx".}
type
  StepVisualAnnotationTextbaseType* = StepReprMappedItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationText::get_type_name(@)",
                            header: "StepVisual_AnnotationText.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_AnnotationText::get_type_descriptor(@)",
    header: "StepVisual_AnnotationText.hxx".}
proc dynamicType*(this: StepVisualAnnotationText): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_AnnotationText.hxx".}