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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_Representation

discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepVisual_DraughtingModel"
type
  Handle_StepVisual_DraughtingModel* = handle[StepVisual_DraughtingModel]

## ! Representation of STEP entity DraughtingModel

type
  StepVisual_DraughtingModel* {.importcpp: "StepVisual_DraughtingModel",
                               header: "StepVisual_DraughtingModel.hxx", bycopy.} = object of StepRepr_Representation ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepVisual_DraughtingModel*(): StepVisual_DraughtingModel {.
    constructor, importcpp: "StepVisual_DraughtingModel(@)",
    header: "StepVisual_DraughtingModel.hxx".}
type
  StepVisual_DraughtingModelbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepVisual_DraughtingModel::get_type_name(@)",
                              header: "StepVisual_DraughtingModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_DraughtingModel::get_type_descriptor(@)",
    header: "StepVisual_DraughtingModel.hxx".}
proc DynamicType*(this: StepVisual_DraughtingModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_DraughtingModel.hxx".}