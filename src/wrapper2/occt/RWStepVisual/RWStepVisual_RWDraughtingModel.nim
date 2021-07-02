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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWDraughtingModel* {.importcpp: "RWStepVisual_RWDraughtingModel",
                                  header: "RWStepVisual_RWDraughtingModel.hxx",
                                  bycopy.} = object ## ! Empty constructor


proc constructRWStepVisualRWDraughtingModel*(): RWStepVisualRWDraughtingModel {.
    constructor, importcpp: "RWStepVisual_RWDraughtingModel(@)",
    header: "RWStepVisual_RWDraughtingModel.hxx".}
proc readStep*(this: RWStepVisualRWDraughtingModel;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualDraughtingModel]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWDraughtingModel.hxx".}
proc writeStep*(this: RWStepVisualRWDraughtingModel; sw: var StepDataStepWriter;
               ent: Handle[StepVisualDraughtingModel]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWDraughtingModel.hxx".}
proc share*(this: RWStepVisualRWDraughtingModel;
           ent: Handle[StepVisualDraughtingModel];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWDraughtingModel.hxx".}

