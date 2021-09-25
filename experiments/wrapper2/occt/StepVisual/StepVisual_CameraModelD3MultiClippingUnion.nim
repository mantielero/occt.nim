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

discard "forward decl of StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepVisual_CameraModelD3MultiClippingUnion"
type
  HandleStepVisualCameraModelD3MultiClippingUnion* = Handle[
      StepVisualCameraModelD3MultiClippingUnion]
  StepVisualCameraModelD3MultiClippingUnion* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingUnion",
      header: "StepVisual_CameraModelD3MultiClippingUnion.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## StepVisual_CameraModelD3MultiClippingUnion


proc constructStepVisualCameraModelD3MultiClippingUnion*(): StepVisualCameraModelD3MultiClippingUnion {.
    constructor, importcpp: "StepVisual_CameraModelD3MultiClippingUnion(@)",
    header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
proc init*(this: var StepVisualCameraModelD3MultiClippingUnion;
          theName: Handle[TCollectionHAsciiString]; theShapeClipping: Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect]) {.
    importcpp: "Init", header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
proc setShapeClipping*(this: var StepVisualCameraModelD3MultiClippingUnion;
    theShapeClipping: Handle[StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect]) {.
    importcpp: "SetShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
proc shapeClipping*(this: var StepVisualCameraModelD3MultiClippingUnion): Handle[
    StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect] {.
    importcpp: "ShapeClipping",
    header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
type
  StepVisualCameraModelD3MultiClippingUnionbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraModelD3MultiClippingUnion::get_type_name(@)", header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_CameraModelD3MultiClippingUnion::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
proc dynamicType*(this: StepVisualCameraModelD3MultiClippingUnion): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_CameraModelD3MultiClippingUnion.hxx".}
