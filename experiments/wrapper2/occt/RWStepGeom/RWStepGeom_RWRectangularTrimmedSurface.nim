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
discard "forward decl of StepGeom_RectangularTrimmedSurface"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepGeomRWRectangularTrimmedSurface* {.
      importcpp: "RWStepGeom_RWRectangularTrimmedSurface",
      header: "RWStepGeom_RWRectangularTrimmedSurface.hxx", bycopy.} = object


proc constructRWStepGeomRWRectangularTrimmedSurface*(): RWStepGeomRWRectangularTrimmedSurface {.
    constructor, importcpp: "RWStepGeom_RWRectangularTrimmedSurface(@)",
    header: "RWStepGeom_RWRectangularTrimmedSurface.hxx".}
proc readStep*(this: RWStepGeomRWRectangularTrimmedSurface;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepGeomRectangularTrimmedSurface]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepGeom_RWRectangularTrimmedSurface.hxx".}
proc writeStep*(this: RWStepGeomRWRectangularTrimmedSurface;
               sw: var StepDataStepWriter;
               ent: Handle[StepGeomRectangularTrimmedSurface]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepGeom_RWRectangularTrimmedSurface.hxx".}
proc share*(this: RWStepGeomRWRectangularTrimmedSurface;
           ent: Handle[StepGeomRectangularTrimmedSurface];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepGeom_RWRectangularTrimmedSurface.hxx".}
