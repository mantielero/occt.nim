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

discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
type
  HandleStepVisualTessellatedAnnotationOccurrence* = Handle[
      StepVisualTessellatedAnnotationOccurrence]
  StepVisualTessellatedAnnotationOccurrence* {.
      importcpp: "StepVisual_TessellatedAnnotationOccurrence",
      header: "StepVisual_TessellatedAnnotationOccurrence.hxx", bycopy.} = object of StepVisualStyledItem ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## TesselatedAnnotationOccurence


proc constructStepVisualTessellatedAnnotationOccurrence*(): StepVisualTessellatedAnnotationOccurrence {.
    constructor, importcpp: "StepVisual_TessellatedAnnotationOccurrence(@)",
    header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
type
  StepVisualTessellatedAnnotationOccurrencebaseType* = StepVisualStyledItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_TessellatedAnnotationOccurrence::get_type_name(@)", header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_TessellatedAnnotationOccurrence::get_type_descriptor(@)",
    header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
proc dynamicType*(this: StepVisualTessellatedAnnotationOccurrence): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_TessellatedAnnotationOccurrence.hxx".}
