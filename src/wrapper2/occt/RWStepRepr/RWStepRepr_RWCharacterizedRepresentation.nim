##  Created on: 2016-08-25
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
discard "forward decl of StepRepr_CharacterizedRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWCharacterizedRepresentation* {.
      importcpp: "RWStepRepr_RWCharacterizedRepresentation",
      header: "RWStepRepr_RWCharacterizedRepresentation.hxx", bycopy.} = object


proc constructRWStepReprRWCharacterizedRepresentation*(): RWStepReprRWCharacterizedRepresentation {.
    constructor, importcpp: "RWStepRepr_RWCharacterizedRepresentation(@)",
    header: "RWStepRepr_RWCharacterizedRepresentation.hxx".}
proc readStep*(this: RWStepReprRWCharacterizedRepresentation;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprCharacterizedRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWCharacterizedRepresentation.hxx".}
proc writeStep*(this: RWStepReprRWCharacterizedRepresentation;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprCharacterizedRepresentation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWCharacterizedRepresentation.hxx".}
proc share*(this: RWStepReprRWCharacterizedRepresentation;
           ent: Handle[StepReprCharacterizedRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWCharacterizedRepresentation.hxx".}

