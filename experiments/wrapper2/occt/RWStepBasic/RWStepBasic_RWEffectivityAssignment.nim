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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_EffectivityAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWEffectivityAssignment* {.importcpp: "RWStepBasic_RWEffectivityAssignment", header: "RWStepBasic_RWEffectivityAssignment.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWEffectivityAssignment*(): RWStepBasicRWEffectivityAssignment {.
    constructor, importcpp: "RWStepBasic_RWEffectivityAssignment(@)",
    header: "RWStepBasic_RWEffectivityAssignment.hxx".}
proc readStep*(this: RWStepBasicRWEffectivityAssignment;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicEffectivityAssignment]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWEffectivityAssignment.hxx".}
proc writeStep*(this: RWStepBasicRWEffectivityAssignment;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicEffectivityAssignment]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWEffectivityAssignment.hxx".}
proc share*(this: RWStepBasicRWEffectivityAssignment;
           ent: Handle[StepBasicEffectivityAssignment];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWEffectivityAssignment.hxx".}
