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
discard "forward decl of StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel* {.importcpp: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel", header: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel.hxx",
      bycopy.} = object


proc constructRWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel*(): RWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel {.
    constructor, importcpp: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel(@)", header: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
proc readStep*(this: RWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepVisualCharacterizedObjAndRepresentationAndDraughtingModel]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
proc writeStep*(this: RWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel;
               sw: var StepDataStepWriter; ent: Handle[
    StepVisualCharacterizedObjAndRepresentationAndDraughtingModel]) {.
    noSideEffect, importcpp: "WriteStep", header: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
proc share*(this: RWStepVisualRWCharacterizedObjAndRepresentationAndDraughtingModel;
    ent: Handle[StepVisualCharacterizedObjAndRepresentationAndDraughtingModel];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share", header: "RWStepVisual_RWCharacterizedObjAndRepresentationAndDraughtingModel.hxx".}

