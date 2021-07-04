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
discard "forward decl of StepBasic_ThermodynamicTemperatureUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWThermodynamicTemperatureUnit* {.
      importcpp: "RWStepBasic_RWThermodynamicTemperatureUnit",
      header: "RWStepBasic_RWThermodynamicTemperatureUnit.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructRWStepBasic_RWThermodynamicTemperatureUnit*(): RWStepBasic_RWThermodynamicTemperatureUnit {.
    constructor, importcpp: "RWStepBasic_RWThermodynamicTemperatureUnit(@)",
    header: "RWStepBasic_RWThermodynamicTemperatureUnit.hxx".}
proc ReadStep*(this: RWStepBasic_RWThermodynamicTemperatureUnit;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_ThermodynamicTemperatureUnit]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepBasic_RWThermodynamicTemperatureUnit.hxx".}
proc WriteStep*(this: RWStepBasic_RWThermodynamicTemperatureUnit;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_ThermodynamicTemperatureUnit]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepBasic_RWThermodynamicTemperatureUnit.hxx".}
proc Share*(this: RWStepBasic_RWThermodynamicTemperatureUnit;
           ent: handle[StepBasic_ThermodynamicTemperatureUnit];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWThermodynamicTemperatureUnit.hxx".}