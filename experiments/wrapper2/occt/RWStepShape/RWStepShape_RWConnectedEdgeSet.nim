##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_ConnectedEdgeSet"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWConnectedEdgeSet* {.importcpp: "RWStepShape_RWConnectedEdgeSet",
                                  header: "RWStepShape_RWConnectedEdgeSet.hxx",
                                  bycopy.} = object ## ! Empty constructor


proc constructRWStepShapeRWConnectedEdgeSet*(): RWStepShapeRWConnectedEdgeSet {.
    constructor, importcpp: "RWStepShape_RWConnectedEdgeSet(@)",
    header: "RWStepShape_RWConnectedEdgeSet.hxx".}
proc readStep*(this: RWStepShapeRWConnectedEdgeSet;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeConnectedEdgeSet]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWConnectedEdgeSet.hxx".}
proc writeStep*(this: RWStepShapeRWConnectedEdgeSet; sw: var StepDataStepWriter;
               ent: Handle[StepShapeConnectedEdgeSet]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWConnectedEdgeSet.hxx".}
proc share*(this: RWStepShapeRWConnectedEdgeSet;
           ent: Handle[StepShapeConnectedEdgeSet];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWConnectedEdgeSet.hxx".}
