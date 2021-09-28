##  Created on: 2003-08-22
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* {.importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol", header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx",
      bycopy.} = object


proc constructRWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*(): RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {.
    constructor, importcpp: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(@)",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc readStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc writeStep*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
               sw: var StepDataStepWriter; ent: Handle[
    StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc share*(this: RWStepDimTolRWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol; ent: Handle[
    StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}

























