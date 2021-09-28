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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWTessellatedAnnotationOccurrence* {.
      importcpp: "RWStepVisual_RWTessellatedAnnotationOccurrence",
      header: "RWStepVisual_RWTessellatedAnnotationOccurrence.hxx", bycopy.} = object


proc constructRWStepVisualRWTessellatedAnnotationOccurrence*(): RWStepVisualRWTessellatedAnnotationOccurrence {.
    constructor, importcpp: "RWStepVisual_RWTessellatedAnnotationOccurrence(@)",
    header: "RWStepVisual_RWTessellatedAnnotationOccurrence.hxx".}
proc readStep*(this: RWStepVisualRWTessellatedAnnotationOccurrence;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualTessellatedAnnotationOccurrence]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepVisual_RWTessellatedAnnotationOccurrence.hxx".}
proc writeStep*(this: RWStepVisualRWTessellatedAnnotationOccurrence;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualTessellatedAnnotationOccurrence]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepVisual_RWTessellatedAnnotationOccurrence.hxx".}
proc share*(this: RWStepVisualRWTessellatedAnnotationOccurrence;
           ent: Handle[StepVisualTessellatedAnnotationOccurrence];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWTessellatedAnnotationOccurrence.hxx".}

























