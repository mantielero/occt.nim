##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepVisual_SurfaceStyleRendering"
type
  RWStepVisualRWSurfaceStyleRendering* {.importcpp: "RWStepVisual_RWSurfaceStyleRendering", header: "RWStepVisual_RWSurfaceStyleRendering.hxx",
                                        bycopy.} = object


proc constructRWStepVisualRWSurfaceStyleRendering*(): RWStepVisualRWSurfaceStyleRendering {.
    constructor, importcpp: "RWStepVisual_RWSurfaceStyleRendering(@)",
    header: "RWStepVisual_RWSurfaceStyleRendering.hxx".}
proc readStep*(this: RWStepVisualRWSurfaceStyleRendering;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualSurfaceStyleRendering]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWSurfaceStyleRendering.hxx".}
proc writeStep*(this: RWStepVisualRWSurfaceStyleRendering;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualSurfaceStyleRendering]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWSurfaceStyleRendering.hxx".}
proc share*(this: RWStepVisualRWSurfaceStyleRendering;
           ent: Handle[StepVisualSurfaceStyleRendering];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWSurfaceStyleRendering.hxx".}

