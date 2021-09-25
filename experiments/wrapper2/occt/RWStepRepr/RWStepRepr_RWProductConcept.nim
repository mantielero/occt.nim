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
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWProductConcept* {.importcpp: "RWStepRepr_RWProductConcept",
                               header: "RWStepRepr_RWProductConcept.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructRWStepReprRWProductConcept*(): RWStepReprRWProductConcept {.
    constructor, importcpp: "RWStepRepr_RWProductConcept(@)",
    header: "RWStepRepr_RWProductConcept.hxx".}
proc readStep*(this: RWStepReprRWProductConcept;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepReprProductConcept]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepRepr_RWProductConcept.hxx".}
proc writeStep*(this: RWStepReprRWProductConcept; sw: var StepDataStepWriter;
               ent: Handle[StepReprProductConcept]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWProductConcept.hxx".}
proc share*(this: RWStepReprRWProductConcept; ent: Handle[StepReprProductConcept];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWProductConcept.hxx".}
