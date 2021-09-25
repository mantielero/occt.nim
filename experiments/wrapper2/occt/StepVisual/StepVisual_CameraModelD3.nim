##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD3"
discard "forward decl of StepVisual_CameraModelD3"
type
  HandleStepVisualCameraModelD3* = Handle[StepVisualCameraModelD3]
  StepVisualCameraModelD3* {.importcpp: "StepVisual_CameraModelD3",
                            header: "StepVisual_CameraModelD3.hxx", bycopy.} = object of StepVisualCameraModel ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## CameraModelD3


proc constructStepVisualCameraModelD3*(): StepVisualCameraModelD3 {.constructor,
    importcpp: "StepVisual_CameraModelD3(@)",
    header: "StepVisual_CameraModelD3.hxx".}
proc init*(this: var StepVisualCameraModelD3;
          aName: Handle[TCollectionHAsciiString];
          aViewReferenceSystem: Handle[StepGeomAxis2Placement3d];
          aPerspectiveOfVolume: Handle[StepVisualViewVolume]) {.importcpp: "Init",
    header: "StepVisual_CameraModelD3.hxx".}
proc setViewReferenceSystem*(this: var StepVisualCameraModelD3; aViewReferenceSystem: Handle[
    StepGeomAxis2Placement3d]) {.importcpp: "SetViewReferenceSystem",
                                header: "StepVisual_CameraModelD3.hxx".}
proc viewReferenceSystem*(this: StepVisualCameraModelD3): Handle[
    StepGeomAxis2Placement3d] {.noSideEffect, importcpp: "ViewReferenceSystem",
                               header: "StepVisual_CameraModelD3.hxx".}
proc setPerspectiveOfVolume*(this: var StepVisualCameraModelD3;
                            aPerspectiveOfVolume: Handle[StepVisualViewVolume]) {.
    importcpp: "SetPerspectiveOfVolume", header: "StepVisual_CameraModelD3.hxx".}
proc perspectiveOfVolume*(this: StepVisualCameraModelD3): Handle[
    StepVisualViewVolume] {.noSideEffect, importcpp: "PerspectiveOfVolume",
                           header: "StepVisual_CameraModelD3.hxx".}
type
  StepVisualCameraModelD3baseType* = StepVisualCameraModel

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraModelD3::get_type_name(@)",
                            header: "StepVisual_CameraModelD3.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CameraModelD3::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3.hxx".}
proc dynamicType*(this: StepVisualCameraModelD3): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD3.hxx".}
