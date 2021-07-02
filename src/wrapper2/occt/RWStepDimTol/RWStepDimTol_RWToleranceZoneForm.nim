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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepDimTol_ToleranceZoneForm"
discard "forward decl of StepData_StepWriter"
type
  RWStepDimTolRWToleranceZoneForm* {.importcpp: "RWStepDimTol_RWToleranceZoneForm", header: "RWStepDimTol_RWToleranceZoneForm.hxx",
                                    bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWToleranceZoneForm*(): RWStepDimTolRWToleranceZoneForm {.
    constructor, importcpp: "RWStepDimTol_RWToleranceZoneForm(@)",
    header: "RWStepDimTol_RWToleranceZoneForm.hxx".}
proc readStep*(this: RWStepDimTolRWToleranceZoneForm;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolToleranceZoneForm]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWToleranceZoneForm.hxx".}
proc writeStep*(this: RWStepDimTolRWToleranceZoneForm; sw: var StepDataStepWriter;
               ent: Handle[StepDimTolToleranceZoneForm]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWToleranceZoneForm.hxx".}

