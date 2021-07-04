##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_CameraImage

discard "forward decl of StepVisual_CameraImage2dWithScale"
discard "forward decl of StepVisual_CameraImage2dWithScale"
type
  Handle_StepVisual_CameraImage2dWithScale* = handle[
      StepVisual_CameraImage2dWithScale]
  StepVisual_CameraImage2dWithScale* {.importcpp: "StepVisual_CameraImage2dWithScale", header: "StepVisual_CameraImage2dWithScale.hxx",
                                      bycopy.} = object of StepVisual_CameraImage


proc constructStepVisual_CameraImage2dWithScale*(): StepVisual_CameraImage2dWithScale {.
    constructor, importcpp: "StepVisual_CameraImage2dWithScale(@)",
    header: "StepVisual_CameraImage2dWithScale.hxx".}
type
  StepVisual_CameraImage2dWithScalebase_type* = StepVisual_CameraImage

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraImage2dWithScale::get_type_name(@)",
                              header: "StepVisual_CameraImage2dWithScale.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CameraImage2dWithScale::get_type_descriptor(@)",
    header: "StepVisual_CameraImage2dWithScale.hxx".}
proc DynamicType*(this: StepVisual_CameraImage2dWithScale): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CameraImage2dWithScale.hxx".}