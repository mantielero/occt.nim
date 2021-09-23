##  Created on: 2000-05-10
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
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWIdentificationRole* {.importcpp: "RWStepBasic_RWIdentificationRole", header: "RWStepBasic_RWIdentificationRole.hxx",
                                     bycopy.} = object ## ! Empty constructor


proc constructRWStepBasic_RWIdentificationRole*(): RWStepBasic_RWIdentificationRole {.
    constructor, importcpp: "RWStepBasic_RWIdentificationRole(@)",
    header: "RWStepBasic_RWIdentificationRole.hxx".}
proc ReadStep*(this: RWStepBasic_RWIdentificationRole;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_IdentificationRole]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWIdentificationRole.hxx".}
proc WriteStep*(this: RWStepBasic_RWIdentificationRole;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_IdentificationRole]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWIdentificationRole.hxx".}
proc Share*(this: RWStepBasic_RWIdentificationRole;
           ent: handle[StepBasic_IdentificationRole];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWIdentificationRole.hxx".}