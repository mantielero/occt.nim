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
discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWExternallyDefinedItem* {.importcpp: "RWStepBasic_RWExternallyDefinedItem", header: "RWStepBasic_RWExternallyDefinedItem.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWExternallyDefinedItem*(): RWStepBasicRWExternallyDefinedItem {.
    constructor, importcpp: "RWStepBasic_RWExternallyDefinedItem(@)",
    header: "RWStepBasic_RWExternallyDefinedItem.hxx".}
proc readStep*(this: RWStepBasicRWExternallyDefinedItem;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicExternallyDefinedItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWExternallyDefinedItem.hxx".}
proc writeStep*(this: RWStepBasicRWExternallyDefinedItem;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicExternallyDefinedItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWExternallyDefinedItem.hxx".}
proc share*(this: RWStepBasicRWExternallyDefinedItem;
           ent: Handle[StepBasicExternallyDefinedItem];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWExternallyDefinedItem.hxx".}

