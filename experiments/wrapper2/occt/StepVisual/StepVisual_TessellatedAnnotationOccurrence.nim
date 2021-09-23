##  Created on: 2015-10-29
##  Created by: Galina Kulikova
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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_StyledItem

discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
type
  Handle_StepVisual_TessellatedAnnotationOccurrence* = handle[
      StepVisual_TessellatedAnnotationOccurrence]
  StepVisual_TessellatedAnnotationOccurrence* {.
      importcpp: "StepVisual_TessellatedAnnotationOccurrence",
      header: "StepVisual_TessellatedAnnotationOccurrence.hxx", bycopy.} = object of StepVisual_StyledItem ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## TesselatedAnnotationOccurence


proc constructStepVisual_TessellatedAnnotationOccurrence*(): StepVisual_TessellatedAnnotationOccurrence {.
    constructor, importcpp: "StepVisual_TessellatedAnnotationOccurrence(@)",
    header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
type
  StepVisual_TessellatedAnnotationOccurrencebase_type* = StepVisual_StyledItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TessellatedAnnotationOccurrence::get_type_name(@)", header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_TessellatedAnnotationOccurrence::get_type_descriptor(@)",
    header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
proc DynamicType*(this: StepVisual_TessellatedAnnotationOccurrence): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}