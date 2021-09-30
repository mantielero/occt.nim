##  Created on: 1999-03-12
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepAP214_AppliedPresentedItem"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214RWAppliedPresentedItem* {.importcpp: "RWStepAP214_RWAppliedPresentedItem", header: "RWStepAP214_RWAppliedPresentedItem.hxx",
                                      bycopy.} = object


proc constructRWStepAP214RWAppliedPresentedItem*(): RWStepAP214RWAppliedPresentedItem {.
    constructor, importcpp: "RWStepAP214_RWAppliedPresentedItem(@)",
    header: "RWStepAP214_RWAppliedPresentedItem.hxx".}
proc readStep*(this: RWStepAP214RWAppliedPresentedItem;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP214AppliedPresentedItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP214_RWAppliedPresentedItem.hxx".}
proc writeStep*(this: RWStepAP214RWAppliedPresentedItem;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP214AppliedPresentedItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP214_RWAppliedPresentedItem.hxx".}
proc share*(this: RWStepAP214RWAppliedPresentedItem;
           ent: Handle[StepAP214AppliedPresentedItem];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWAppliedPresentedItem.hxx".}

























