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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepShape_ConnectedFaceShapeRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShape_RWConnectedFaceShapeRepresentation* {.
      importcpp: "RWStepShape_RWConnectedFaceShapeRepresentation",
      header: "RWStepShape_RWConnectedFaceShapeRepresentation.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructRWStepShape_RWConnectedFaceShapeRepresentation*(): RWStepShape_RWConnectedFaceShapeRepresentation {.
    constructor, importcpp: "RWStepShape_RWConnectedFaceShapeRepresentation(@)",
    header: "RWStepShape_RWConnectedFaceShapeRepresentation.hxx".}
proc ReadStep*(this: RWStepShape_RWConnectedFaceShapeRepresentation;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepShape_ConnectedFaceShapeRepresentation]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepShape_RWConnectedFaceShapeRepresentation.hxx".}
proc WriteStep*(this: RWStepShape_RWConnectedFaceShapeRepresentation;
               SW: var StepData_StepWriter;
               ent: handle[StepShape_ConnectedFaceShapeRepresentation]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepShape_RWConnectedFaceShapeRepresentation.hxx".}
proc Share*(this: RWStepShape_RWConnectedFaceShapeRepresentation;
           ent: handle[StepShape_ConnectedFaceShapeRepresentation];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWConnectedFaceShapeRepresentation.hxx".}