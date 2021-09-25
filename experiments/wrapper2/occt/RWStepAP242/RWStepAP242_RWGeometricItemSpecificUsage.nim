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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepAP242_GeometricItemSpecificUsage"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP242RWGeometricItemSpecificUsage* {.
      importcpp: "RWStepAP242_RWGeometricItemSpecificUsage",
      header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx", bycopy.} = object


proc constructRWStepAP242RWGeometricItemSpecificUsage*(): RWStepAP242RWGeometricItemSpecificUsage {.
    constructor, importcpp: "RWStepAP242_RWGeometricItemSpecificUsage(@)",
    header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc readStep*(this: RWStepAP242RWGeometricItemSpecificUsage;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP242GeometricItemSpecificUsage]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc writeStep*(this: RWStepAP242RWGeometricItemSpecificUsage;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP242GeometricItemSpecificUsage]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
proc share*(this: RWStepAP242RWGeometricItemSpecificUsage;
           ent: Handle[StepAP242GeometricItemSpecificUsage];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP242_RWGeometricItemSpecificUsage.hxx".}
