##  Created on: 1999-10-12
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_SiUnitAndVolumeUnit"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWSiUnitAndVolumeUnit* {.importcpp: "RWStepBasic_RWSiUnitAndVolumeUnit", header: "RWStepBasic_RWSiUnitAndVolumeUnit.hxx",
                                     bycopy.} = object


proc constructRWStepBasicRWSiUnitAndVolumeUnit*(): RWStepBasicRWSiUnitAndVolumeUnit {.
    constructor, importcpp: "RWStepBasic_RWSiUnitAndVolumeUnit(@)",
    header: "RWStepBasic_RWSiUnitAndVolumeUnit.hxx".}
proc readStep*(this: RWStepBasicRWSiUnitAndVolumeUnit;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicSiUnitAndVolumeUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWSiUnitAndVolumeUnit.hxx".}
proc writeStep*(this: RWStepBasicRWSiUnitAndVolumeUnit; sw: var StepDataStepWriter;
               ent: Handle[StepBasicSiUnitAndVolumeUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnitAndVolumeUnit.hxx".}

