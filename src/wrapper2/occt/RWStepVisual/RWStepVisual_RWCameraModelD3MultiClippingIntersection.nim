##  Created on: 2016-11-14
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
discard "forward decl of StepVisual_CameraModelD3MultiClippingIntersection"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWCameraModelD3MultiClippingIntersection* {.
      importcpp: "RWStepVisual_RWCameraModelD3MultiClippingIntersection",
      header: "RWStepVisual_RWCameraModelD3MultiClippingIntersection.hxx", bycopy.} = object


proc constructRWStepVisualRWCameraModelD3MultiClippingIntersection*(): RWStepVisualRWCameraModelD3MultiClippingIntersection {.
    constructor,
    importcpp: "RWStepVisual_RWCameraModelD3MultiClippingIntersection(@)",
    header: "RWStepVisual_RWCameraModelD3MultiClippingIntersection.hxx".}
proc readStep*(this: RWStepVisualRWCameraModelD3MultiClippingIntersection;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualCameraModelD3MultiClippingIntersection]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepVisual_RWCameraModelD3MultiClippingIntersection.hxx".}
proc writeStep*(this: RWStepVisualRWCameraModelD3MultiClippingIntersection;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualCameraModelD3MultiClippingIntersection]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepVisual_RWCameraModelD3MultiClippingIntersection.hxx".}
proc share*(this: RWStepVisualRWCameraModelD3MultiClippingIntersection;
           ent: Handle[StepVisualCameraModelD3MultiClippingIntersection];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWCameraModelD3MultiClippingIntersection.hxx".}

