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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWAnnotationFillAreaOccurrence* {.
      importcpp: "RWStepVisual_RWAnnotationFillAreaOccurrence",
      header: "RWStepVisual_RWAnnotationFillAreaOccurrence.hxx", bycopy.} = object


proc constructRWStepVisualRWAnnotationFillAreaOccurrence*(): RWStepVisualRWAnnotationFillAreaOccurrence {.
    constructor, importcpp: "RWStepVisual_RWAnnotationFillAreaOccurrence(@)",
    header: "RWStepVisual_RWAnnotationFillAreaOccurrence.hxx".}
proc readStep*(this: RWStepVisualRWAnnotationFillAreaOccurrence;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualAnnotationFillAreaOccurrence]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepVisual_RWAnnotationFillAreaOccurrence.hxx".}
proc writeStep*(this: RWStepVisualRWAnnotationFillAreaOccurrence;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualAnnotationFillAreaOccurrence]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepVisual_RWAnnotationFillAreaOccurrence.hxx".}
proc share*(this: RWStepVisualRWAnnotationFillAreaOccurrence;
           ent: Handle[StepVisualAnnotationFillAreaOccurrence];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWAnnotationFillAreaOccurrence.hxx".}

























