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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepRepr/StepRepr_MappedItem

discard "forward decl of StepVisual_AnnotationText"
discard "forward decl of StepVisual_AnnotationText"
type
  Handle_StepVisual_AnnotationText* = handle[StepVisual_AnnotationText]
  StepVisual_AnnotationText* {.importcpp: "StepVisual_AnnotationText",
                              header: "StepVisual_AnnotationText.hxx", bycopy.} = object of StepRepr_MappedItem ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## AnnotationText


proc constructStepVisual_AnnotationText*(): StepVisual_AnnotationText {.
    constructor, importcpp: "StepVisual_AnnotationText(@)",
    header: "StepVisual_AnnotationText.hxx".}
type
  StepVisual_AnnotationTextbase_type* = StepRepr_MappedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationText::get_type_name(@)",
                              header: "StepVisual_AnnotationText.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_AnnotationText::get_type_descriptor(@)",
    header: "StepVisual_AnnotationText.hxx".}
proc DynamicType*(this: StepVisual_AnnotationText): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_AnnotationText.hxx".}