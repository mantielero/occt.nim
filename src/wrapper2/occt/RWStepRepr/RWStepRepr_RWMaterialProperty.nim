##  Created on: 2002-12-14
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
discard "forward decl of StepRepr_MaterialProperty"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWMaterialProperty* {.importcpp: "RWStepRepr_RWMaterialProperty",
                                 header: "RWStepRepr_RWMaterialProperty.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructRWStepReprRWMaterialProperty*(): RWStepReprRWMaterialProperty {.
    constructor, importcpp: "RWStepRepr_RWMaterialProperty(@)",
    header: "RWStepRepr_RWMaterialProperty.hxx".}
proc readStep*(this: RWStepReprRWMaterialProperty;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprMaterialProperty]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWMaterialProperty.hxx".}
proc writeStep*(this: RWStepReprRWMaterialProperty; sw: var StepDataStepWriter;
               ent: Handle[StepReprMaterialProperty]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWMaterialProperty.hxx".}
proc share*(this: RWStepReprRWMaterialProperty;
           ent: Handle[StepReprMaterialProperty];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWMaterialProperty.hxx".}

