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
discard "forward decl of StepRepr_AllAroundShapeAspect"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWAllAroundShapeAspect* {.importcpp: "RWStepRepr_RWAllAroundShapeAspect", header: "RWStepRepr_RWAllAroundShapeAspect.hxx",
                                     bycopy.} = object ## ! Empty constructor


proc constructRWStepReprRWAllAroundShapeAspect*(): RWStepReprRWAllAroundShapeAspect {.
    constructor, importcpp: "RWStepRepr_RWAllAroundShapeAspect(@)",
    header: "RWStepRepr_RWAllAroundShapeAspect.hxx".}
proc readStep*(this: RWStepReprRWAllAroundShapeAspect;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprAllAroundShapeAspect]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWAllAroundShapeAspect.hxx".}
proc writeStep*(this: RWStepReprRWAllAroundShapeAspect; sw: var StepDataStepWriter;
               ent: Handle[StepReprAllAroundShapeAspect]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWAllAroundShapeAspect.hxx".}
proc share*(this: RWStepReprRWAllAroundShapeAspect;
           ent: Handle[StepReprAllAroundShapeAspect];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWAllAroundShapeAspect.hxx".}
