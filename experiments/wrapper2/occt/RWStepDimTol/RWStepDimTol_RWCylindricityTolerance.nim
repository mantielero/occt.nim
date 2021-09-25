##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepDimTol_CylindricityTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWCylindricityTolerance* {.importcpp: "RWStepDimTol_RWCylindricityTolerance", header: "RWStepDimTol_RWCylindricityTolerance.hxx",
                                        bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWCylindricityTolerance*(): RWStepDimTolRWCylindricityTolerance {.
    constructor, importcpp: "RWStepDimTol_RWCylindricityTolerance(@)",
    header: "RWStepDimTol_RWCylindricityTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWCylindricityTolerance;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolCylindricityTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWCylindricityTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWCylindricityTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolCylindricityTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWCylindricityTolerance.hxx".}
proc share*(this: RWStepDimTolRWCylindricityTolerance;
           ent: Handle[StepDimTolCylindricityTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWCylindricityTolerance.hxx".}
