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
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepRepr_RWQuantifiedAssemblyComponentUsage* {.
      importcpp: "RWStepRepr_RWQuantifiedAssemblyComponentUsage",
      header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructRWStepRepr_RWQuantifiedAssemblyComponentUsage*(): RWStepRepr_RWQuantifiedAssemblyComponentUsage {.
    constructor, importcpp: "RWStepRepr_RWQuantifiedAssemblyComponentUsage(@)",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc ReadStep*(this: RWStepRepr_RWQuantifiedAssemblyComponentUsage;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_QuantifiedAssemblyComponentUsage]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc WriteStep*(this: RWStepRepr_RWQuantifiedAssemblyComponentUsage;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_QuantifiedAssemblyComponentUsage]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc Share*(this: RWStepRepr_RWQuantifiedAssemblyComponentUsage;
           ent: handle[StepRepr_QuantifiedAssemblyComponentUsage];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}