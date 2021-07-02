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
discard "forward decl of StepDimTol_ParallelismTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWParallelismTolerance* {.importcpp: "RWStepDimTol_RWParallelismTolerance", header: "RWStepDimTol_RWParallelismTolerance.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWParallelismTolerance*(): RWStepDimTolRWParallelismTolerance {.
    constructor, importcpp: "RWStepDimTol_RWParallelismTolerance(@)",
    header: "RWStepDimTol_RWParallelismTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWParallelismTolerance;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolParallelismTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWParallelismTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWParallelismTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolParallelismTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWParallelismTolerance.hxx".}
proc share*(this: RWStepDimTolRWParallelismTolerance;
           ent: Handle[StepDimTolParallelismTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWParallelismTolerance.hxx".}

