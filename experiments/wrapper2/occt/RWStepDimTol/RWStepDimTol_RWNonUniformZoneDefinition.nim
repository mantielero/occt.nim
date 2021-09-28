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
discard "forward decl of StepDimTol_NonUniformZoneDefinition"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWNonUniformZoneDefinition* {.
      importcpp: "RWStepDimTol_RWNonUniformZoneDefinition",
      header: "RWStepDimTol_RWNonUniformZoneDefinition.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor


proc constructRWStepDimTolRWNonUniformZoneDefinition*(): RWStepDimTolRWNonUniformZoneDefinition {.
    constructor, importcpp: "RWStepDimTol_RWNonUniformZoneDefinition(@)",
    header: "RWStepDimTol_RWNonUniformZoneDefinition.hxx".}
proc readStep*(this: RWStepDimTolRWNonUniformZoneDefinition;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolNonUniformZoneDefinition]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWNonUniformZoneDefinition.hxx".}
proc writeStep*(this: RWStepDimTolRWNonUniformZoneDefinition;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolNonUniformZoneDefinition]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWNonUniformZoneDefinition.hxx".}
proc share*(this: RWStepDimTolRWNonUniformZoneDefinition;
           ent: Handle[StepDimTolNonUniformZoneDefinition];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWNonUniformZoneDefinition.hxx".}

























