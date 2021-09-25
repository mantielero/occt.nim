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
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWModifiedGeometricTolerance* {.
      importcpp: "RWStepDimTol_RWModifiedGeometricTolerance",
      header: "RWStepDimTol_RWModifiedGeometricTolerance.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructRWStepDimTolRWModifiedGeometricTolerance*(): RWStepDimTolRWModifiedGeometricTolerance {.
    constructor, importcpp: "RWStepDimTol_RWModifiedGeometricTolerance(@)",
    header: "RWStepDimTol_RWModifiedGeometricTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWModifiedGeometricTolerance;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolModifiedGeometricTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWModifiedGeometricTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWModifiedGeometricTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolModifiedGeometricTolerance]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepDimTol_RWModifiedGeometricTolerance.hxx".}
proc share*(this: RWStepDimTolRWModifiedGeometricTolerance;
           ent: Handle[StepDimTolModifiedGeometricTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWModifiedGeometricTolerance.hxx".}
