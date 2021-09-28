##  Created on: 2015-08-10
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
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod* {.
      importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod",
      header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx", bycopy.} = object


proc constructRWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod*(): RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod {.
    constructor,
    importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod(@)",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc readStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc writeStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc share*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
           ent: Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}

























