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
discard "forward decl of StepBasic_ProductDefinitionReferenceWithLocalRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation* {.importcpp: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation", header: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation.hxx",
      bycopy.} = object


proc constructRWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation*(): RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation {.
    constructor, importcpp: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation(@)", header: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc ReadStep*(this: RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check]; ent: handle[
    StepBasic_ProductDefinitionReferenceWithLocalRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc WriteStep*(this: RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation;
               SW: var StepData_StepWriter; ent: handle[
    StepBasic_ProductDefinitionReferenceWithLocalRepresentation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc Share*(this: RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation;
    ent: handle[StepBasic_ProductDefinitionReferenceWithLocalRepresentation];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share", header: "RWStepBasic_RWProductDefinitionReferenceWithLocalRepresentation.hxx".}