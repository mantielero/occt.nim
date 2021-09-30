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

discard "forward decl of StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel"
discard "forward decl of StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel"
type
  HandleC1C1* = Handle[StepVisualCharacterizedObjAndRepresentationAndDraughtingModel]

## ! Added for Dimensional Tolerances
## ! Complex STEP entity Characterized_Object & Characterized_Representation & Draughting_Model & Representation

type
  StepVisualCharacterizedObjAndRepresentationAndDraughtingModel* {.importcpp: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel", header: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel.hxx",
      bycopy.} = object of StepVisualDraughtingModel


proc constructStepVisualCharacterizedObjAndRepresentationAndDraughtingModel*(): StepVisualCharacterizedObjAndRepresentationAndDraughtingModel {.
    constructor, importcpp: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel(@)", header: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
type
  StepVisualCharacterizedObjAndRepresentationAndDraughtingModelbaseType* = StepVisualDraughtingModel

proc getTypeName*(): cstring {.importcpp: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel::get_type_name(@)", header: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel::get_type_descriptor(@)", header: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel.hxx".}
proc dynamicType*(this: StepVisualCharacterizedObjAndRepresentationAndDraughtingModel): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_CharacterizedObjAndRepresentationAndDraughtingModel.hxx".}

























