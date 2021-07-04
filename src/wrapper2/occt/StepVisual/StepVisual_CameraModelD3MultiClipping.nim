##  Created on: 2016-10-25
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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_CameraModelD3

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD3"
discard "forward decl of StepVisual_CameraModelD3MultiClipping"
type
  Handle_StepVisual_CameraModelD3MultiClipping* = handle[
      StepVisual_CameraModelD3MultiClipping]
  StepVisual_CameraModelD3MultiClipping* {.
      importcpp: "StepVisual_CameraModelD3MultiClipping",
      header: "StepVisual_CameraModelD3MultiClipping.hxx", bycopy.} = object of StepVisual_CameraModelD3 ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## CameraModelD3MultiClipping


proc constructStepVisual_CameraModelD3MultiClipping*(): StepVisual_CameraModelD3MultiClipping {.
    constructor, importcpp: "StepVisual_CameraModelD3MultiClipping(@)",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc Init*(this: var StepVisual_CameraModelD3MultiClipping;
          theName: handle[TCollection_HAsciiString];
          theViewReferenceSystem: handle[StepGeom_Axis2Placement3d];
          thePerspectiveOfVolume: handle[StepVisual_ViewVolume]; theShapeClipping: handle[
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "Init", header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc SetShapeClipping*(this: var StepVisual_CameraModelD3MultiClipping;
    theShapeClipping: handle[StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "SetShapeClipping",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc ShapeClipping*(this: var StepVisual_CameraModelD3MultiClipping): handle[
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect] {.
    importcpp: "ShapeClipping",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
type
  StepVisual_CameraModelD3MultiClippingbase_type* = StepVisual_CameraModelD3

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraModelD3MultiClipping::get_type_name(@)", header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CameraModelD3MultiClipping::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc DynamicType*(this: StepVisual_CameraModelD3MultiClipping): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_CameraModelD3MultiClipping.hxx".}