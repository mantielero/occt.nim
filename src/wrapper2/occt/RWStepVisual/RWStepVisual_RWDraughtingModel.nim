##  Created on: 2000-01-13
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisual_RWDraughtingModel* {.importcpp: "RWStepVisual_RWDraughtingModel", header: "RWStepVisual_RWDraughtingModel.hxx",
                                   bycopy.} = object ## ! Empty constructor


proc constructRWStepVisual_RWDraughtingModel*(): RWStepVisual_RWDraughtingModel {.
    constructor, importcpp: "RWStepVisual_RWDraughtingModel(@)",
    header: "RWStepVisual_RWDraughtingModel.hxx".}
proc ReadStep*(this: RWStepVisual_RWDraughtingModel;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepVisual_DraughtingModel]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWDraughtingModel.hxx".}
proc WriteStep*(this: RWStepVisual_RWDraughtingModel; SW: var StepData_StepWriter;
               ent: handle[StepVisual_DraughtingModel]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWDraughtingModel.hxx".}
proc Share*(this: RWStepVisual_RWDraughtingModel;
           ent: handle[StepVisual_DraughtingModel];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWDraughtingModel.hxx".}