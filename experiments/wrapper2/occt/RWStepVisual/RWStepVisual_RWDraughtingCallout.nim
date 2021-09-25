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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_DraughtingCallout"
discard "forward decl of StepData_StepWriter"
type
  RWStepVisualRWDraughtingCallout* {.importcpp: "RWStepVisual_RWDraughtingCallout", header: "RWStepVisual_RWDraughtingCallout.hxx",
                                    bycopy.} = object


proc constructRWStepVisualRWDraughtingCallout*(): RWStepVisualRWDraughtingCallout {.
    constructor, importcpp: "RWStepVisual_RWDraughtingCallout(@)",
    header: "RWStepVisual_RWDraughtingCallout.hxx".}
proc readStep*(this: RWStepVisualRWDraughtingCallout;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualDraughtingCallout]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWDraughtingCallout.hxx".}
proc writeStep*(this: RWStepVisualRWDraughtingCallout; sw: var StepDataStepWriter;
               ent: Handle[StepVisualDraughtingCallout]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWDraughtingCallout.hxx".}
proc share*(this: RWStepVisualRWDraughtingCallout;
           ent: Handle[StepVisualDraughtingCallout];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWDraughtingCallout.hxx".}
