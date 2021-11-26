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
discard "forward decl of StepBasic_GroupAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWGroupAssignment* {.importcpp: "RWStepBasic_RWGroupAssignment",
                                 header: "RWStepBasic_RWGroupAssignment.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWGroupAssignment*(): RWStepBasicRWGroupAssignment {.
    constructor, importcpp: "RWStepBasic_RWGroupAssignment(@)",
    header: "RWStepBasic_RWGroupAssignment.hxx".}
proc readStep*(this: RWStepBasicRWGroupAssignment;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicGroupAssignment]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWGroupAssignment.hxx".}
proc writeStep*(this: RWStepBasicRWGroupAssignment; sw: var StepDataStepWriter;
               ent: Handle[StepBasicGroupAssignment]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWGroupAssignment.hxx".}
proc share*(this: RWStepBasicRWGroupAssignment;
           ent: Handle[StepBasicGroupAssignment];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWGroupAssignment.hxx".}

























