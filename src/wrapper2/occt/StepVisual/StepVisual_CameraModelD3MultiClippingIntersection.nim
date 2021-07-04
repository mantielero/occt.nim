##  Created on: 2016-11-14
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepVisual_CameraModelD3MultiClippingIntersection"
type
  Handle_StepVisual_CameraModelD3MultiClippingIntersection* = handle[
      StepVisual_CameraModelD3MultiClippingIntersection]
  StepVisual_CameraModelD3MultiClippingIntersection* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingIntersection",
      header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                          ## !
                                                                                                                          ## Returns
                                                                                                                          ## a
                                                                                                                          ## StepVisual_CameraModelD3MultiClippingIntersection


proc constructStepVisual_CameraModelD3MultiClippingIntersection*(): StepVisual_CameraModelD3MultiClippingIntersection {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingIntersection(@)",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc Init*(this: var StepVisual_CameraModelD3MultiClippingIntersection;
          theName: handle[TCollection_HAsciiString]; theShapeClipping: handle[
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "Init",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc SetShapeClipping*(this: var StepVisual_CameraModelD3MultiClippingIntersection;
    theShapeClipping: handle[StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "SetShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc ShapeClipping*(this: var StepVisual_CameraModelD3MultiClippingIntersection): handle[
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect] {.
    importcpp: "ShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
type
  StepVisual_CameraModelD3MultiClippingIntersectionbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraModelD3MultiClippingIntersection::get_type_name(@)", header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_CameraModelD3MultiClippingIntersection::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc DynamicType*(this: StepVisual_CameraModelD3MultiClippingIntersection): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}