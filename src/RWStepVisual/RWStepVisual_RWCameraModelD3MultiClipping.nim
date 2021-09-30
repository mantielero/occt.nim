##  Created on: 2016-10-25
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
discard "forward decl of StepVisual_CameraModelD3MultiClipping"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWCameraModelD3MultiClipping* {.
      importcpp: "RWStepVisual_RWCameraModelD3MultiClipping",
      header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx", bycopy.} = object


proc constructRWStepVisualRWCameraModelD3MultiClipping*(): RWStepVisualRWCameraModelD3MultiClipping {.
    constructor, importcpp: "RWStepVisual_RWCameraModelD3MultiClipping(@)",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc readStep*(this: RWStepVisualRWCameraModelD3MultiClipping;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualCameraModelD3MultiClipping]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc writeStep*(this: RWStepVisualRWCameraModelD3MultiClipping;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualCameraModelD3MultiClipping]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc share*(this: RWStepVisualRWCameraModelD3MultiClipping;
           ent: Handle[StepVisualCameraModelD3MultiClipping];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}

























