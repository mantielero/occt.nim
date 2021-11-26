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
discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWNonManifoldSurfaceShapeRepresentation* {.
      importcpp: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation",
      header: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructRWStepShapeRWNonManifoldSurfaceShapeRepresentation*(): RWStepShapeRWNonManifoldSurfaceShapeRepresentation {.
    constructor,
    importcpp: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation(@)",
    header: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx".}
proc readStep*(this: RWStepShapeRWNonManifoldSurfaceShapeRepresentation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeNonManifoldSurfaceShapeRepresentation]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx".}
proc writeStep*(this: RWStepShapeRWNonManifoldSurfaceShapeRepresentation;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeNonManifoldSurfaceShapeRepresentation]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx".}
proc share*(this: RWStepShapeRWNonManifoldSurfaceShapeRepresentation;
           ent: Handle[StepShapeNonManifoldSurfaceShapeRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx".}

























