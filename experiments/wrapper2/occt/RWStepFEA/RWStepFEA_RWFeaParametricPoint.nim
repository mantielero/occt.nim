##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_FeaParametricPoint"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWFeaParametricPoint* {.importcpp: "RWStepFEA_RWFeaParametricPoint", header: "RWStepFEA_RWFeaParametricPoint.hxx",
                                   bycopy.} = object ## ! Empty constructor


proc constructRWStepFEA_RWFeaParametricPoint*(): RWStepFEA_RWFeaParametricPoint {.
    constructor, importcpp: "RWStepFEA_RWFeaParametricPoint(@)",
    header: "RWStepFEA_RWFeaParametricPoint.hxx".}
proc ReadStep*(this: RWStepFEA_RWFeaParametricPoint;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepFEA_FeaParametricPoint]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepFEA_RWFeaParametricPoint.hxx".}
proc WriteStep*(this: RWStepFEA_RWFeaParametricPoint; SW: var StepData_StepWriter;
               ent: handle[StepFEA_FeaParametricPoint]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepFEA_RWFeaParametricPoint.hxx".}
proc Share*(this: RWStepFEA_RWFeaParametricPoint;
           ent: handle[StepFEA_FeaParametricPoint];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWFeaParametricPoint.hxx".}