##  Created on: 2015-06-29
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
discard "forward decl of StepRepr_BetweenShapeAspect"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWBetweenShapeAspect* {.importcpp: "RWStepRepr_RWBetweenShapeAspect", header: "RWStepRepr_RWBetweenShapeAspect.hxx",
                                   bycopy.} = object ## ! Empty constructor


proc constructRWStepReprRWBetweenShapeAspect*(): RWStepReprRWBetweenShapeAspect {.
    constructor, importcpp: "RWStepRepr_RWBetweenShapeAspect(@)",
    header: "RWStepRepr_RWBetweenShapeAspect.hxx".}
proc readStep*(this: RWStepReprRWBetweenShapeAspect;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprBetweenShapeAspect]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWBetweenShapeAspect.hxx".}
proc writeStep*(this: RWStepReprRWBetweenShapeAspect; sw: var StepDataStepWriter;
               ent: Handle[StepReprBetweenShapeAspect]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWBetweenShapeAspect.hxx".}
proc share*(this: RWStepReprRWBetweenShapeAspect;
           ent: Handle[StepReprBetweenShapeAspect];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWBetweenShapeAspect.hxx".}

