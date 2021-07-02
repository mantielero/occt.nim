##  Created on: 2015-10-29
##  Created by: Galina Kulikova
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
discard "forward decl of StepVisual_TessellatedItem"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWTessellatedItem* {.importcpp: "RWStepVisual_RWTessellatedItem",
                                  header: "RWStepVisual_RWTessellatedItem.hxx",
                                  bycopy.} = object


proc constructRWStepVisualRWTessellatedItem*(): RWStepVisualRWTessellatedItem {.
    constructor, importcpp: "RWStepVisual_RWTessellatedItem(@)",
    header: "RWStepVisual_RWTessellatedItem.hxx".}
proc readStep*(this: RWStepVisualRWTessellatedItem;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualTessellatedItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWTessellatedItem.hxx".}
proc writeStep*(this: RWStepVisualRWTessellatedItem; sw: var StepDataStepWriter;
               ent: Handle[StepVisualTessellatedItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepVisual_RWTessellatedItem.hxx".}

