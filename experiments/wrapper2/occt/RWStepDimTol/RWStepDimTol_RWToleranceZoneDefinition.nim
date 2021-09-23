##  Created on: 2015-07-13
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTol_RWToleranceZoneDefinition* {.
      importcpp: "RWStepDimTol_RWToleranceZoneDefinition",
      header: "RWStepDimTol_RWToleranceZoneDefinition.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor


proc constructRWStepDimTol_RWToleranceZoneDefinition*(): RWStepDimTol_RWToleranceZoneDefinition {.
    constructor, importcpp: "RWStepDimTol_RWToleranceZoneDefinition(@)",
    header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc ReadStep*(this: RWStepDimTol_RWToleranceZoneDefinition;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepDimTol_ToleranceZoneDefinition]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc WriteStep*(this: RWStepDimTol_RWToleranceZoneDefinition;
               SW: var StepData_StepWriter;
               ent: handle[StepDimTol_ToleranceZoneDefinition]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc Share*(this: RWStepDimTol_RWToleranceZoneDefinition;
           ent: handle[StepDimTol_ToleranceZoneDefinition];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}