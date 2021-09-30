##  Created on: 2000-01-13
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

discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepVisual_DraughtingModel"
type
  HandleC1C1* = Handle[StepVisualDraughtingModel]

## ! Representation of STEP entity DraughtingModel

type
  StepVisualDraughtingModel* {.importcpp: "StepVisual_DraughtingModel",
                              header: "StepVisual_DraughtingModel.hxx", bycopy.} = object of StepReprRepresentation ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepVisualDraughtingModel*(): StepVisualDraughtingModel {.
    constructor, importcpp: "StepVisual_DraughtingModel(@)",
    header: "StepVisual_DraughtingModel.hxx".}
type
  StepVisualDraughtingModelbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepVisual_DraughtingModel::get_type_name(@)",
                            header: "StepVisual_DraughtingModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_DraughtingModel::get_type_descriptor(@)",
    header: "StepVisual_DraughtingModel.hxx".}
proc dynamicType*(this: StepVisualDraughtingModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_DraughtingModel.hxx".}

























