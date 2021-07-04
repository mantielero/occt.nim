##  Created on: 2002-01-04
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_ConnectedFaceSubSet"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShape_RWConnectedFaceSubSet* {.importcpp: "RWStepShape_RWConnectedFaceSubSet", header: "RWStepShape_RWConnectedFaceSubSet.hxx",
                                      bycopy.} = object ## ! Empty constructor


proc constructRWStepShape_RWConnectedFaceSubSet*(): RWStepShape_RWConnectedFaceSubSet {.
    constructor, importcpp: "RWStepShape_RWConnectedFaceSubSet(@)",
    header: "RWStepShape_RWConnectedFaceSubSet.hxx".}
proc ReadStep*(this: RWStepShape_RWConnectedFaceSubSet;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepShape_ConnectedFaceSubSet]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWConnectedFaceSubSet.hxx".}
proc WriteStep*(this: RWStepShape_RWConnectedFaceSubSet;
               SW: var StepData_StepWriter;
               ent: handle[StepShape_ConnectedFaceSubSet]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWConnectedFaceSubSet.hxx".}
proc Share*(this: RWStepShape_RWConnectedFaceSubSet;
           ent: handle[StepShape_ConnectedFaceSubSet];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWConnectedFaceSubSet.hxx".}