##  Created on: 1995-12-04
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_PresentationStyleByContext"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWPresentationStyleByContext* {.
      importcpp: "RWStepVisual_RWPresentationStyleByContext",
      header: "RWStepVisual_RWPresentationStyleByContext.hxx", bycopy.} = object


proc constructRWStepVisualRWPresentationStyleByContext*(): RWStepVisualRWPresentationStyleByContext {.
    constructor, importcpp: "RWStepVisual_RWPresentationStyleByContext(@)",
    header: "RWStepVisual_RWPresentationStyleByContext.hxx".}
proc readStep*(this: RWStepVisualRWPresentationStyleByContext;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualPresentationStyleByContext]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWPresentationStyleByContext.hxx".}
proc writeStep*(this: RWStepVisualRWPresentationStyleByContext;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualPresentationStyleByContext]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepVisual_RWPresentationStyleByContext.hxx".}
proc share*(this: RWStepVisualRWPresentationStyleByContext;
           ent: Handle[StepVisualPresentationStyleByContext];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWPresentationStyleByContext.hxx".}

