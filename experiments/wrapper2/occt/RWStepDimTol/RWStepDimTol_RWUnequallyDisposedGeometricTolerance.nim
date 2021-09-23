##  Created on: 2015-07-07
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTol_RWUnequallyDisposedGeometricTolerance* {.
      importcpp: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance",
      header: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor


proc constructRWStepDimTol_RWUnequallyDisposedGeometricTolerance*(): RWStepDimTol_RWUnequallyDisposedGeometricTolerance {.
    constructor,
    importcpp: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance(@)",
    header: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance.hxx".}
proc ReadStep*(this: RWStepDimTol_RWUnequallyDisposedGeometricTolerance;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepDimTol_UnequallyDisposedGeometricTolerance]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance.hxx".}
proc WriteStep*(this: RWStepDimTol_RWUnequallyDisposedGeometricTolerance;
               SW: var StepData_StepWriter;
               ent: handle[StepDimTol_UnequallyDisposedGeometricTolerance]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance.hxx".}
proc Share*(this: RWStepDimTol_RWUnequallyDisposedGeometricTolerance;
           ent: handle[StepDimTol_UnequallyDisposedGeometricTolerance];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWUnequallyDisposedGeometricTolerance.hxx".}