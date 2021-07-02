##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_PointRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWPointRepresentation* {.importcpp: "RWStepShape_RWPointRepresentation", header: "RWStepShape_RWPointRepresentation.hxx",
                                     bycopy.} = object ## ! Empty constructor


proc constructRWStepShapeRWPointRepresentation*(): RWStepShapeRWPointRepresentation {.
    constructor, importcpp: "RWStepShape_RWPointRepresentation(@)",
    header: "RWStepShape_RWPointRepresentation.hxx".}
proc readStep*(this: RWStepShapeRWPointRepresentation;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapePointRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWPointRepresentation.hxx".}
proc writeStep*(this: RWStepShapeRWPointRepresentation; sw: var StepDataStepWriter;
               ent: Handle[StepShapePointRepresentation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWPointRepresentation.hxx".}
proc share*(this: RWStepShapeRWPointRepresentation;
           ent: Handle[StepShapePointRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWPointRepresentation.hxx".}

