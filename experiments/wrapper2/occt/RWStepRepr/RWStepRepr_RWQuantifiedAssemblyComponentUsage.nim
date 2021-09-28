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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWQuantifiedAssemblyComponentUsage* {.
      importcpp: "RWStepRepr_RWQuantifiedAssemblyComponentUsage",
      header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructRWStepReprRWQuantifiedAssemblyComponentUsage*(): RWStepReprRWQuantifiedAssemblyComponentUsage {.
    constructor, importcpp: "RWStepRepr_RWQuantifiedAssemblyComponentUsage(@)",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc readStep*(this: RWStepReprRWQuantifiedAssemblyComponentUsage;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprQuantifiedAssemblyComponentUsage]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc writeStep*(this: RWStepReprRWQuantifiedAssemblyComponentUsage;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprQuantifiedAssemblyComponentUsage]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}
proc share*(this: RWStepReprRWQuantifiedAssemblyComponentUsage;
           ent: Handle[StepReprQuantifiedAssemblyComponentUsage];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWQuantifiedAssemblyComponentUsage.hxx".}

























