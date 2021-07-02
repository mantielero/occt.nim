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
discard "forward decl of StepAP214_AppliedGroupAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214RWAppliedGroupAssignment* {.importcpp: "RWStepAP214_RWAppliedGroupAssignment", header: "RWStepAP214_RWAppliedGroupAssignment.hxx",
                                        bycopy.} = object ## ! Empty constructor


proc constructRWStepAP214RWAppliedGroupAssignment*(): RWStepAP214RWAppliedGroupAssignment {.
    constructor, importcpp: "RWStepAP214_RWAppliedGroupAssignment(@)",
    header: "RWStepAP214_RWAppliedGroupAssignment.hxx".}
proc readStep*(this: RWStepAP214RWAppliedGroupAssignment;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP214AppliedGroupAssignment]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP214_RWAppliedGroupAssignment.hxx".}
proc writeStep*(this: RWStepAP214RWAppliedGroupAssignment;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP214AppliedGroupAssignment]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP214_RWAppliedGroupAssignment.hxx".}
proc share*(this: RWStepAP214RWAppliedGroupAssignment;
           ent: Handle[StepAP214AppliedGroupAssignment];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWAppliedGroupAssignment.hxx".}

