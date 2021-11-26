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
discard "forward decl of StepDimTol_RunoutZoneOrientation"
discard "forward decl of StepData_StepWriter"
type
  RWStepDimTolRWRunoutZoneOrientation* {.importcpp: "RWStepDimTol_RWRunoutZoneOrientation", header: "RWStepDimTol_RWRunoutZoneOrientation.hxx",
                                        bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWRunoutZoneOrientation*(): RWStepDimTolRWRunoutZoneOrientation {.
    constructor, importcpp: "RWStepDimTol_RWRunoutZoneOrientation(@)",
    header: "RWStepDimTol_RWRunoutZoneOrientation.hxx".}
proc readStep*(this: RWStepDimTolRWRunoutZoneOrientation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolRunoutZoneOrientation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWRunoutZoneOrientation.hxx".}
proc writeStep*(this: RWStepDimTolRWRunoutZoneOrientation;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolRunoutZoneOrientation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWRunoutZoneOrientation.hxx".}

























