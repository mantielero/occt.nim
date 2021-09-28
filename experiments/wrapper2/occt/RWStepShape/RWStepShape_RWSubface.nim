##  Created on: 2002-01-04
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
discard "forward decl of StepShape_Subface"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWSubface* {.importcpp: "RWStepShape_RWSubface",
                         header: "RWStepShape_RWSubface.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepShapeRWSubface*(): RWStepShapeRWSubface {.constructor,
    importcpp: "RWStepShape_RWSubface(@)", header: "RWStepShape_RWSubface.hxx".}
proc readStep*(this: RWStepShapeRWSubface; data: Handle[StepDataStepReaderData];
              num: cint; ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeSubface]) {.noSideEffect, importcpp: "ReadStep",
    header: "RWStepShape_RWSubface.hxx".}
proc writeStep*(this: RWStepShapeRWSubface; sw: var StepDataStepWriter;
               ent: Handle[StepShapeSubface]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWSubface.hxx".}
proc share*(this: RWStepShapeRWSubface; ent: Handle[StepShapeSubface];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWSubface.hxx".}

























