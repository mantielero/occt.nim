##  Created on: 1996-07-24
##  Created by: Frederic MAUPAS
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of StepBasic_MechanicalContext"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWMechanicalContext* {.importcpp: "RWStepBasic_RWMechanicalContext", header: "RWStepBasic_RWMechanicalContext.hxx",
                                    bycopy.} = object


proc constructRWStepBasic_RWMechanicalContext*(): RWStepBasic_RWMechanicalContext {.
    constructor, importcpp: "RWStepBasic_RWMechanicalContext(@)",
    header: "RWStepBasic_RWMechanicalContext.hxx".}
proc ReadStep*(this: RWStepBasic_RWMechanicalContext;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_MechanicalContext]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWMechanicalContext.hxx".}
proc WriteStep*(this: RWStepBasic_RWMechanicalContext; SW: var StepData_StepWriter;
               ent: handle[StepBasic_MechanicalContext]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWMechanicalContext.hxx".}
proc Share*(this: RWStepBasic_RWMechanicalContext;
           ent: handle[StepBasic_MechanicalContext];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWMechanicalContext.hxx".}