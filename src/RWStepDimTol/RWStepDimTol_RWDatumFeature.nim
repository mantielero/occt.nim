##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
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
discard "forward decl of StepDimTol_DatumFeature"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWDatumFeature* {.importcpp: "RWStepDimTol_RWDatumFeature",
                               header: "RWStepDimTol_RWDatumFeature.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructRWStepDimTolRWDatumFeature*(): RWStepDimTolRWDatumFeature {.
    constructor, importcpp: "RWStepDimTol_RWDatumFeature(@)",
    header: "RWStepDimTol_RWDatumFeature.hxx".}
proc readStep*(this: RWStepDimTolRWDatumFeature;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepDimTolDatumFeature]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepDimTol_RWDatumFeature.hxx".}
proc writeStep*(this: RWStepDimTolRWDatumFeature; sw: var StepDataStepWriter;
               ent: Handle[StepDimTolDatumFeature]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWDatumFeature.hxx".}
proc share*(this: RWStepDimTolRWDatumFeature; ent: Handle[StepDimTolDatumFeature];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWDatumFeature.hxx".}

























