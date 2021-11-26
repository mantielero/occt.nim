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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD3"
discard "forward decl of StepVisual_CameraModelD3MultiClipping"
type
  HandleC1C1* = Handle[StepVisualCameraModelD3MultiClipping]
  StepVisualCameraModelD3MultiClipping* {.
      importcpp: "StepVisual_CameraModelD3MultiClipping",
      header: "StepVisual_CameraModelD3MultiClipping.hxx", bycopy.} = object of StepVisualCameraModelD3 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## CameraModelD3MultiClipping


proc constructStepVisualCameraModelD3MultiClipping*(): StepVisualCameraModelD3MultiClipping {.
    constructor, importcpp: "StepVisual_CameraModelD3MultiClipping(@)",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc init*(this: var StepVisualCameraModelD3MultiClipping;
          theName: Handle[TCollectionHAsciiString];
          theViewReferenceSystem: Handle[StepGeomAxis2Placement3d];
          thePerspectiveOfVolume: Handle[StepVisualViewVolume]; theShapeClipping: Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "Init", header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc setShapeClipping*(this: var StepVisualCameraModelD3MultiClipping;
    theShapeClipping: Handle[StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect]) {.
    importcpp: "SetShapeClipping",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc shapeClipping*(this: var StepVisualCameraModelD3MultiClipping): Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect] {.
    importcpp: "ShapeClipping",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
type
  StepVisualCameraModelD3MultiClippingbaseType* = StepVisualCameraModelD3

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraModelD3MultiClipping::get_type_name(@)",
                            header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CameraModelD3MultiClipping::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}
proc dynamicType*(this: StepVisualCameraModelD3MultiClipping): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CameraModelD3MultiClipping.hxx".}