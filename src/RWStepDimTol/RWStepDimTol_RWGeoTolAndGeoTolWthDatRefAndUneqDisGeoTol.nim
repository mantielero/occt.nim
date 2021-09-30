##  Created on: 2015-08-11
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
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol* {.
      importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol",
      header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx",
      bycopy.} = object


proc constructRWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol*(): RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {.
    constructor,
    importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(@)",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc readStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc writeStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc share*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
           ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}

























