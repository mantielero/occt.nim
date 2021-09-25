##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepRepr_CompoundRepresentationItem"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWCompoundRepresentationItem* {.
      importcpp: "RWStepRepr_RWCompoundRepresentationItem",
      header: "RWStepRepr_RWCompoundRepresentationItem.hxx", bycopy.} = object


proc constructRWStepReprRWCompoundRepresentationItem*(): RWStepReprRWCompoundRepresentationItem {.
    constructor, importcpp: "RWStepRepr_RWCompoundRepresentationItem(@)",
    header: "RWStepRepr_RWCompoundRepresentationItem.hxx".}
proc readStep*(this: RWStepReprRWCompoundRepresentationItem;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprCompoundRepresentationItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWCompoundRepresentationItem.hxx".}
proc writeStep*(this: RWStepReprRWCompoundRepresentationItem;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprCompoundRepresentationItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWCompoundRepresentationItem.hxx".}
proc share*(this: RWStepReprRWCompoundRepresentationItem;
           ent: Handle[StepReprCompoundRepresentationItem];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWCompoundRepresentationItem.hxx".}
