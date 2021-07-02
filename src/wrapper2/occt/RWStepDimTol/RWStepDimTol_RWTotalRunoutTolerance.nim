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
discard "forward decl of StepDimTol_TotalRunoutTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWTotalRunoutTolerance* {.importcpp: "RWStepDimTol_RWTotalRunoutTolerance", header: "RWStepDimTol_RWTotalRunoutTolerance.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWTotalRunoutTolerance*(): RWStepDimTolRWTotalRunoutTolerance {.
    constructor, importcpp: "RWStepDimTol_RWTotalRunoutTolerance(@)",
    header: "RWStepDimTol_RWTotalRunoutTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWTotalRunoutTolerance;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolTotalRunoutTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWTotalRunoutTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWTotalRunoutTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolTotalRunoutTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWTotalRunoutTolerance.hxx".}
proc share*(this: RWStepDimTolRWTotalRunoutTolerance;
           ent: Handle[StepDimTolTotalRunoutTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWTotalRunoutTolerance.hxx".}

