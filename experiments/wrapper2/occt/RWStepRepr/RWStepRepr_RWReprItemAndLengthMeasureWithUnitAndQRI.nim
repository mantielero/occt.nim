##  Created on: 2015-07-22
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
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI"
discard "forward decl of StepData_StepWriter"
type
  RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI* {.
      importcpp: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI",
      header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI.hxx", bycopy.} = object


proc constructRWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI*(): RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI {.
    constructor,
    importcpp: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI(@)",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc ReadStep*(this: RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc WriteStep*(this: RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWReprItemAndLengthMeasureWithUnitAndQRI.hxx".}