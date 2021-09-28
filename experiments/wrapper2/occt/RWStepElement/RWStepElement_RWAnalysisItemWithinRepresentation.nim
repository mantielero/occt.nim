##  Created on: 2002-12-12
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
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepElementRWAnalysisItemWithinRepresentation* {.
      importcpp: "RWStepElement_RWAnalysisItemWithinRepresentation",
      header: "RWStepElement_RWAnalysisItemWithinRepresentation.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructRWStepElementRWAnalysisItemWithinRepresentation*(): RWStepElementRWAnalysisItemWithinRepresentation {.
    constructor,
    importcpp: "RWStepElement_RWAnalysisItemWithinRepresentation(@)",
    header: "RWStepElement_RWAnalysisItemWithinRepresentation.hxx".}
proc readStep*(this: RWStepElementRWAnalysisItemWithinRepresentation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepElement_RWAnalysisItemWithinRepresentation.hxx".}
proc writeStep*(this: RWStepElementRWAnalysisItemWithinRepresentation;
               sw: var StepDataStepWriter;
               ent: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepElement_RWAnalysisItemWithinRepresentation.hxx".}
proc share*(this: RWStepElementRWAnalysisItemWithinRepresentation;
           ent: Handle[StepElementAnalysisItemWithinRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepElement_RWAnalysisItemWithinRepresentation.hxx".}

























