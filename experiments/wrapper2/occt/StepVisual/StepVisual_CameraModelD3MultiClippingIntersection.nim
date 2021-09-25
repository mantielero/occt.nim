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

discard "forward decl of StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepVisual_CameraModelD3MultiClippingIntersection"
type
  HandleStepVisualCameraModelD3MultiClippingIntersection* = Handle[
      StepVisualCameraModelD3MultiClippingIntersection]
  StepVisualCameraModelD3MultiClippingIntersection* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingIntersection",
      header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                         ## !
                                                                                                                         ## Returns
                                                                                                                         ## a
                                                                                                                         ## StepVisual_CameraModelD3MultiClippingIntersection


proc constructStepVisualCameraModelD3MultiClippingIntersection*(): StepVisualCameraModelD3MultiClippingIntersection {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingIntersection(@)",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc init*(this: var StepVisualCameraModelD3MultiClippingIntersection;
          theName: Handle[TCollectionHAsciiString]; theShapeClipping: Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "Init",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc setShapeClipping*(this: var StepVisualCameraModelD3MultiClippingIntersection;
    theShapeClipping: Handle[StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "SetShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc shapeClipping*(this: var StepVisualCameraModelD3MultiClippingIntersection): Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect] {.
    importcpp: "ShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
type
  StepVisualCameraModelD3MultiClippingIntersectionbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraModelD3MultiClippingIntersection::get_type_name(@)", header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_CameraModelD3MultiClippingIntersection::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
proc dynamicType*(this: StepVisualCameraModelD3MultiClippingIntersection): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD3MultiClippingIntersection.hxx".}
