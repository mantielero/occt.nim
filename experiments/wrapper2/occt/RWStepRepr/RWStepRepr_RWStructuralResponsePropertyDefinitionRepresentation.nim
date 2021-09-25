##  Created on: 2002-12-15
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
discard "forward decl of StepRepr_StructuralResponsePropertyDefinitionRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWStructuralResponsePropertyDefinitionRepresentation* {.importcpp: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation", header: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation.hxx",
      bycopy.} = object         ## ! Empty constructor


proc constructRWStepReprRWStructuralResponsePropertyDefinitionRepresentation*(): RWStepReprRWStructuralResponsePropertyDefinitionRepresentation {.
    constructor, importcpp: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation(@)", header: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation.hxx".}
proc readStep*(this: RWStepReprRWStructuralResponsePropertyDefinitionRepresentation;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepReprStructuralResponsePropertyDefinitionRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation.hxx".}
proc writeStep*(this: RWStepReprRWStructuralResponsePropertyDefinitionRepresentation;
               sw: var StepDataStepWriter; ent: Handle[
    StepReprStructuralResponsePropertyDefinitionRepresentation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation.hxx".}
proc share*(this: RWStepReprRWStructuralResponsePropertyDefinitionRepresentation;
    ent: Handle[StepReprStructuralResponsePropertyDefinitionRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share", header: "RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation.hxx".}
