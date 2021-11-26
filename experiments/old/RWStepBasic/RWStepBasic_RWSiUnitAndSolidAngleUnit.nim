##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of StepBasic_SiUnitAndSolidAngleUnit"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWSiUnitAndSolidAngleUnit* {.
      importcpp: "RWStepBasic_RWSiUnitAndSolidAngleUnit",
      header: "RWStepBasic_RWSiUnitAndSolidAngleUnit.hxx", bycopy.} = object


proc constructRWStepBasicRWSiUnitAndSolidAngleUnit*(): RWStepBasicRWSiUnitAndSolidAngleUnit {.
    constructor, importcpp: "RWStepBasic_RWSiUnitAndSolidAngleUnit(@)",
    header: "RWStepBasic_RWSiUnitAndSolidAngleUnit.hxx".}
proc readStep*(this: RWStepBasicRWSiUnitAndSolidAngleUnit;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicSiUnitAndSolidAngleUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWSiUnitAndSolidAngleUnit.hxx".}
proc writeStep*(this: RWStepBasicRWSiUnitAndSolidAngleUnit;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicSiUnitAndSolidAngleUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnitAndSolidAngleUnit.hxx".}

























