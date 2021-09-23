##  Created on: 2000-07-03
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
discard "forward decl of StepRepr_SpecifiedHigherUsageOccurrence"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepRepr_RWSpecifiedHigherUsageOccurrence* {.
      importcpp: "RWStepRepr_RWSpecifiedHigherUsageOccurrence",
      header: "RWStepRepr_RWSpecifiedHigherUsageOccurrence.hxx", bycopy.} = object ## !
                                                                              ## Empty
                                                                              ## constructor


proc constructRWStepRepr_RWSpecifiedHigherUsageOccurrence*(): RWStepRepr_RWSpecifiedHigherUsageOccurrence {.
    constructor, importcpp: "RWStepRepr_RWSpecifiedHigherUsageOccurrence(@)",
    header: "RWStepRepr_RWSpecifiedHigherUsageOccurrence.hxx".}
proc ReadStep*(this: RWStepRepr_RWSpecifiedHigherUsageOccurrence;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_SpecifiedHigherUsageOccurrence]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWSpecifiedHigherUsageOccurrence.hxx".}
proc WriteStep*(this: RWStepRepr_RWSpecifiedHigherUsageOccurrence;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_SpecifiedHigherUsageOccurrence]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWSpecifiedHigherUsageOccurrence.hxx".}
proc Share*(this: RWStepRepr_RWSpecifiedHigherUsageOccurrence;
           ent: handle[StepRepr_SpecifiedHigherUsageOccurrence];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWSpecifiedHigherUsageOccurrence.hxx".}