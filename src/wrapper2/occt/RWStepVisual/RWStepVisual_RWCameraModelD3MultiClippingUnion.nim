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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_CameraModelD3MultiClippingUnion"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisual_RWCameraModelD3MultiClippingUnion* {.
      importcpp: "RWStepVisual_RWCameraModelD3MultiClippingUnion",
      header: "RWStepVisual_RWCameraModelD3MultiClippingUnion.hxx", bycopy.} = object


proc constructRWStepVisual_RWCameraModelD3MultiClippingUnion*(): RWStepVisual_RWCameraModelD3MultiClippingUnion {.
    constructor, importcpp: "RWStepVisual_RWCameraModelD3MultiClippingUnion(@)",
    header: "RWStepVisual_RWCameraModelD3MultiClippingUnion.hxx".}
proc ReadStep*(this: RWStepVisual_RWCameraModelD3MultiClippingUnion;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepVisual_CameraModelD3MultiClippingUnion]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepVisual_RWCameraModelD3MultiClippingUnion.hxx".}
proc WriteStep*(this: RWStepVisual_RWCameraModelD3MultiClippingUnion;
               SW: var StepData_StepWriter;
               ent: handle[StepVisual_CameraModelD3MultiClippingUnion]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepVisual_RWCameraModelD3MultiClippingUnion.hxx".}
proc Share*(this: RWStepVisual_RWCameraModelD3MultiClippingUnion;
           ent: handle[StepVisual_CameraModelD3MultiClippingUnion];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWCameraModelD3MultiClippingUnion.hxx".}