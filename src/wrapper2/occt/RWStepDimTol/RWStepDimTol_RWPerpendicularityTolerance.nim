##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepDimTol_PerpendicularityTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTol_RWPerpendicularityTolerance* {.
      importcpp: "RWStepDimTol_RWPerpendicularityTolerance",
      header: "RWStepDimTol_RWPerpendicularityTolerance.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepDimTol_RWPerpendicularityTolerance*(): RWStepDimTol_RWPerpendicularityTolerance {.
    constructor, importcpp: "RWStepDimTol_RWPerpendicularityTolerance(@)",
    header: "RWStepDimTol_RWPerpendicularityTolerance.hxx".}
proc ReadStep*(this: RWStepDimTol_RWPerpendicularityTolerance;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepDimTol_PerpendicularityTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWPerpendicularityTolerance.hxx".}
proc WriteStep*(this: RWStepDimTol_RWPerpendicularityTolerance;
               SW: var StepData_StepWriter;
               ent: handle[StepDimTol_PerpendicularityTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWPerpendicularityTolerance.hxx".}
proc Share*(this: RWStepDimTol_RWPerpendicularityTolerance;
           ent: handle[StepDimTol_PerpendicularityTolerance];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWPerpendicularityTolerance.hxx".}