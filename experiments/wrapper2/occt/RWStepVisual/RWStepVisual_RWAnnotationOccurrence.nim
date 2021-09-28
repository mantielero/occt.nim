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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_AnnotationOccurrence"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWAnnotationOccurrence* {.importcpp: "RWStepVisual_RWAnnotationOccurrence", header: "RWStepVisual_RWAnnotationOccurrence.hxx",
                                       bycopy.} = object


proc constructRWStepVisualRWAnnotationOccurrence*(): RWStepVisualRWAnnotationOccurrence {.
    constructor, importcpp: "RWStepVisual_RWAnnotationOccurrence(@)",
    header: "RWStepVisual_RWAnnotationOccurrence.hxx".}
proc readStep*(this: RWStepVisualRWAnnotationOccurrence;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualAnnotationOccurrence]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWAnnotationOccurrence.hxx".}
proc writeStep*(this: RWStepVisualRWAnnotationOccurrence;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualAnnotationOccurrence]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWAnnotationOccurrence.hxx".}
proc share*(this: RWStepVisualRWAnnotationOccurrence;
           ent: Handle[StepVisualAnnotationOccurrence];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWAnnotationOccurrence.hxx".}

























