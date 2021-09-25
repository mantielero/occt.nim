##  Created on: 2015-09-09
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_ValueRepresentationItem"
discard "forward decl of StepData_StepWriter"
type
  RWStepReprRWValueRepresentationItem* {.importcpp: "RWStepRepr_RWValueRepresentationItem", header: "RWStepRepr_RWValueRepresentationItem.hxx",
                                        bycopy.} = object


proc constructRWStepReprRWValueRepresentationItem*(): RWStepReprRWValueRepresentationItem {.
    constructor, importcpp: "RWStepRepr_RWValueRepresentationItem(@)",
    header: "RWStepRepr_RWValueRepresentationItem.hxx".}
proc readStep*(this: RWStepReprRWValueRepresentationItem;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprValueRepresentationItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWValueRepresentationItem.hxx".}
proc writeStep*(this: RWStepReprRWValueRepresentationItem;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprValueRepresentationItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWValueRepresentationItem.hxx".}
