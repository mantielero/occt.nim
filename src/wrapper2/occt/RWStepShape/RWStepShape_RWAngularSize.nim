##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepShape_AngularSize"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShape_RWAngularSize* {.importcpp: "RWStepShape_RWAngularSize",
                              header: "RWStepShape_RWAngularSize.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructRWStepShape_RWAngularSize*(): RWStepShape_RWAngularSize {.
    constructor, importcpp: "RWStepShape_RWAngularSize(@)",
    header: "RWStepShape_RWAngularSize.hxx".}
proc ReadStep*(this: RWStepShape_RWAngularSize;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check]; ent: handle[StepShape_AngularSize]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepShape_RWAngularSize.hxx".}
proc WriteStep*(this: RWStepShape_RWAngularSize; SW: var StepData_StepWriter;
               ent: handle[StepShape_AngularSize]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWAngularSize.hxx".}
proc Share*(this: RWStepShape_RWAngularSize; ent: handle[StepShape_AngularSize];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWAngularSize.hxx".}