##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_SiUnitAndPlaneAngleUnit"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWSiUnitAndPlaneAngleUnit* {.
      importcpp: "RWStepBasic_RWSiUnitAndPlaneAngleUnit",
      header: "RWStepBasic_RWSiUnitAndPlaneAngleUnit.hxx", bycopy.} = object


proc constructRWStepBasicRWSiUnitAndPlaneAngleUnit*(): RWStepBasicRWSiUnitAndPlaneAngleUnit {.
    constructor, importcpp: "RWStepBasic_RWSiUnitAndPlaneAngleUnit(@)",
    header: "RWStepBasic_RWSiUnitAndPlaneAngleUnit.hxx".}
proc readStep*(this: RWStepBasicRWSiUnitAndPlaneAngleUnit;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicSiUnitAndPlaneAngleUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWSiUnitAndPlaneAngleUnit.hxx".}
proc writeStep*(this: RWStepBasicRWSiUnitAndPlaneAngleUnit;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicSiUnitAndPlaneAngleUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnitAndPlaneAngleUnit.hxx".}
