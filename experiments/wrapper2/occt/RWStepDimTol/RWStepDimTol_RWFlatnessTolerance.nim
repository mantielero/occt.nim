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
discard "forward decl of StepDimTol_FlatnessTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWFlatnessTolerance* {.importcpp: "RWStepDimTol_RWFlatnessTolerance", header: "RWStepDimTol_RWFlatnessTolerance.hxx",
                                    bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWFlatnessTolerance*(): RWStepDimTolRWFlatnessTolerance {.
    constructor, importcpp: "RWStepDimTol_RWFlatnessTolerance(@)",
    header: "RWStepDimTol_RWFlatnessTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWFlatnessTolerance;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolFlatnessTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWFlatnessTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWFlatnessTolerance; sw: var StepDataStepWriter;
               ent: Handle[StepDimTolFlatnessTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWFlatnessTolerance.hxx".}
proc share*(this: RWStepDimTolRWFlatnessTolerance;
           ent: Handle[StepDimTolFlatnessTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWFlatnessTolerance.hxx".}
