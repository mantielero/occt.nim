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
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWGroupRelationship* {.importcpp: "RWStepBasic_RWGroupRelationship", header: "RWStepBasic_RWGroupRelationship.hxx",
                                   bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWGroupRelationship*(): RWStepBasicRWGroupRelationship {.
    constructor, importcpp: "RWStepBasic_RWGroupRelationship(@)",
    header: "RWStepBasic_RWGroupRelationship.hxx".}
proc readStep*(this: RWStepBasicRWGroupRelationship;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicGroupRelationship]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWGroupRelationship.hxx".}
proc writeStep*(this: RWStepBasicRWGroupRelationship; sw: var StepDataStepWriter;
               ent: Handle[StepBasicGroupRelationship]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWGroupRelationship.hxx".}
proc share*(this: RWStepBasicRWGroupRelationship;
           ent: Handle[StepBasicGroupRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWGroupRelationship.hxx".}

























