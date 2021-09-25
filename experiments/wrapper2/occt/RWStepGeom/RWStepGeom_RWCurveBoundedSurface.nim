##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepGeomRWCurveBoundedSurface* {.importcpp: "RWStepGeom_RWCurveBoundedSurface", header: "RWStepGeom_RWCurveBoundedSurface.hxx",
                                    bycopy.} = object ## ! Empty constructor


proc constructRWStepGeomRWCurveBoundedSurface*(): RWStepGeomRWCurveBoundedSurface {.
    constructor, importcpp: "RWStepGeom_RWCurveBoundedSurface(@)",
    header: "RWStepGeom_RWCurveBoundedSurface.hxx".}
proc readStep*(this: RWStepGeomRWCurveBoundedSurface;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepGeomCurveBoundedSurface]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepGeom_RWCurveBoundedSurface.hxx".}
proc writeStep*(this: RWStepGeomRWCurveBoundedSurface; sw: var StepDataStepWriter;
               ent: Handle[StepGeomCurveBoundedSurface]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepGeom_RWCurveBoundedSurface.hxx".}
proc share*(this: RWStepGeomRWCurveBoundedSurface;
           ent: Handle[StepGeomCurveBoundedSurface];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepGeom_RWCurveBoundedSurface.hxx".}
