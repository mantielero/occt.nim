##  Created on: 2015-07-07
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
discard "forward decl of StepAP242_GeometricItemSpecificUsage"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP242_RWGeometricItemSpecificUsage* {.
      importcpp: "RWStepAP242_RWGeometricItemSpecificUsage",
      header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx", bycopy.} = object


proc constructRWStepAP242_RWGeometricItemSpecificUsage*(): RWStepAP242_RWGeometricItemSpecificUsage {.
    constructor, importcpp: "RWStepAP242_RWGeometricItemSpecificUsage(@)",
    header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc ReadStep*(this: RWStepAP242_RWGeometricItemSpecificUsage;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP242_GeometricItemSpecificUsage]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc WriteStep*(this: RWStepAP242_RWGeometricItemSpecificUsage;
               SW: var StepData_StepWriter;
               ent: handle[StepAP242_GeometricItemSpecificUsage]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc Share*(this: RWStepAP242_RWGeometricItemSpecificUsage;
           ent: handle[StepAP242_GeometricItemSpecificUsage];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}