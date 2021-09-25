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
discard "forward decl of StepBasic_RoleAssociation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWRoleAssociation* {.importcpp: "RWStepBasic_RWRoleAssociation",
                                 header: "RWStepBasic_RWRoleAssociation.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWRoleAssociation*(): RWStepBasicRWRoleAssociation {.
    constructor, importcpp: "RWStepBasic_RWRoleAssociation(@)",
    header: "RWStepBasic_RWRoleAssociation.hxx".}
proc readStep*(this: RWStepBasicRWRoleAssociation;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicRoleAssociation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWRoleAssociation.hxx".}
proc writeStep*(this: RWStepBasicRWRoleAssociation; sw: var StepDataStepWriter;
               ent: Handle[StepBasicRoleAssociation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWRoleAssociation.hxx".}
proc share*(this: RWStepBasicRWRoleAssociation;
           ent: Handle[StepBasicRoleAssociation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWRoleAssociation.hxx".}
