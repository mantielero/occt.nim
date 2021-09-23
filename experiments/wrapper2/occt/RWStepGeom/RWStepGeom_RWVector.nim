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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepGeom_Vector"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
type
  RWStepGeom_RWVector* {.importcpp: "RWStepGeom_RWVector",
                        header: "RWStepGeom_RWVector.hxx", bycopy.} = object


proc constructRWStepGeom_RWVector*(): RWStepGeom_RWVector {.constructor,
    importcpp: "RWStepGeom_RWVector(@)", header: "RWStepGeom_RWVector.hxx".}
proc ReadStep*(this: RWStepGeom_RWVector; data: handle[StepData_StepReaderData];
              num: Standard_Integer; ach: var handle[Interface_Check];
              ent: handle[StepGeom_Vector]) {.noSideEffect, importcpp: "ReadStep",
    header: "RWStepGeom_RWVector.hxx".}
proc WriteStep*(this: RWStepGeom_RWVector; SW: var StepData_StepWriter;
               ent: handle[StepGeom_Vector]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepGeom_RWVector.hxx".}
proc Share*(this: RWStepGeom_RWVector; ent: handle[StepGeom_Vector];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepGeom_RWVector.hxx".}
proc Check*(this: RWStepGeom_RWVector; ent: handle[StepGeom_Vector];
           shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "Check", header: "RWStepGeom_RWVector.hxx".}