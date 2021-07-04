##  Created on: 2016-03-31
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWProductDefinitionReference* {.
      importcpp: "RWStepBasic_RWProductDefinitionReference",
      header: "RWStepBasic_RWProductDefinitionReference.hxx", bycopy.} = object


proc constructRWStepBasic_RWProductDefinitionReference*(): RWStepBasic_RWProductDefinitionReference {.
    constructor, importcpp: "RWStepBasic_RWProductDefinitionReference(@)",
    header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc ReadStep*(this: RWStepBasic_RWProductDefinitionReference;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_ProductDefinitionReference]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc WriteStep*(this: RWStepBasic_RWProductDefinitionReference;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_ProductDefinitionReference]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc Share*(this: RWStepBasic_RWProductDefinitionReference;
           ent: handle[StepBasic_ProductDefinitionReference];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWProductDefinitionReference.hxx".}