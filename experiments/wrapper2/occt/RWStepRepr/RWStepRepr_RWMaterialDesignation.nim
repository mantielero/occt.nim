##  Created on: 1998-07-24
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepRepr_RWMaterialDesignation* {.importcpp: "RWStepRepr_RWMaterialDesignation", header: "RWStepRepr_RWMaterialDesignation.hxx",
                                     bycopy.} = object


proc constructRWStepRepr_RWMaterialDesignation*(): RWStepRepr_RWMaterialDesignation {.
    constructor, importcpp: "RWStepRepr_RWMaterialDesignation(@)",
    header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc ReadStep*(this: RWStepRepr_RWMaterialDesignation;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_MaterialDesignation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc WriteStep*(this: RWStepRepr_RWMaterialDesignation;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_MaterialDesignation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc Share*(this: RWStepRepr_RWMaterialDesignation;
           ent: handle[StepRepr_MaterialDesignation];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWMaterialDesignation.hxx".}