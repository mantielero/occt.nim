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
discard "forward decl of StepGeom_Circle"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepGeomRWCircle* {.importcpp: "RWStepGeom_RWCircle",
                       header: "RWStepGeom_RWCircle.hxx", bycopy.} = object


proc constructRWStepGeomRWCircle*(): RWStepGeomRWCircle {.constructor,
    importcpp: "RWStepGeom_RWCircle(@)", header: "RWStepGeom_RWCircle.hxx".}
proc readStep*(this: RWStepGeomRWCircle; data: Handle[StepDataStepReaderData];
              num: int; ach: var Handle[InterfaceCheck]; ent: Handle[StepGeomCircle]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepGeom_RWCircle.hxx".}
proc writeStep*(this: RWStepGeomRWCircle; sw: var StepDataStepWriter;
               ent: Handle[StepGeomCircle]) {.noSideEffect, importcpp: "WriteStep",
    header: "RWStepGeom_RWCircle.hxx".}
proc share*(this: RWStepGeomRWCircle; ent: Handle[StepGeomCircle];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepGeom_RWCircle.hxx".}
