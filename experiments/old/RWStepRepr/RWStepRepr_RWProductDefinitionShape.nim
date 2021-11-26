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
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWProductDefinitionShape* {.importcpp: "RWStepRepr_RWProductDefinitionShape", header: "RWStepRepr_RWProductDefinitionShape.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepReprRWProductDefinitionShape*(): RWStepReprRWProductDefinitionShape {.
    constructor, importcpp: "RWStepRepr_RWProductDefinitionShape(@)",
    header: "RWStepRepr_RWProductDefinitionShape.hxx".}
proc readStep*(this: RWStepReprRWProductDefinitionShape;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprProductDefinitionShape]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWProductDefinitionShape.hxx".}
proc writeStep*(this: RWStepReprRWProductDefinitionShape;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprProductDefinitionShape]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWProductDefinitionShape.hxx".}
proc share*(this: RWStepReprRWProductDefinitionShape;
           ent: Handle[StepReprProductDefinitionShape];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWProductDefinitionShape.hxx".}

























