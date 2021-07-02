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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWProductDefinitionReference* {.
      importcpp: "RWStepBasic_RWProductDefinitionReference",
      header: "RWStepBasic_RWProductDefinitionReference.hxx", bycopy.} = object


proc constructRWStepBasicRWProductDefinitionReference*(): RWStepBasicRWProductDefinitionReference {.
    constructor, importcpp: "RWStepBasic_RWProductDefinitionReference(@)",
    header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc readStep*(this: RWStepBasicRWProductDefinitionReference;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicProductDefinitionReference]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc writeStep*(this: RWStepBasicRWProductDefinitionReference;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicProductDefinitionReference]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWProductDefinitionReference.hxx".}
proc share*(this: RWStepBasicRWProductDefinitionReference;
           ent: Handle[StepBasicProductDefinitionReference];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWProductDefinitionReference.hxx".}

