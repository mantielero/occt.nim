##  Created on: 2000-07-03
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepRepr_RWPropertyDefinition* {.importcpp: "RWStepRepr_RWPropertyDefinition", header: "RWStepRepr_RWPropertyDefinition.hxx",
                                    bycopy.} = object ## ! Empty constructor


proc constructRWStepRepr_RWPropertyDefinition*(): RWStepRepr_RWPropertyDefinition {.
    constructor, importcpp: "RWStepRepr_RWPropertyDefinition(@)",
    header: "RWStepRepr_RWPropertyDefinition.hxx".}
proc ReadStep*(this: RWStepRepr_RWPropertyDefinition;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_PropertyDefinition]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWPropertyDefinition.hxx".}
proc WriteStep*(this: RWStepRepr_RWPropertyDefinition; SW: var StepData_StepWriter;
               ent: handle[StepRepr_PropertyDefinition]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWPropertyDefinition.hxx".}
proc Share*(this: RWStepRepr_RWPropertyDefinition;
           ent: handle[StepRepr_PropertyDefinition];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWPropertyDefinition.hxx".}