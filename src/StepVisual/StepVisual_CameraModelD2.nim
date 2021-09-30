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

discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD2"
discard "forward decl of StepVisual_CameraModelD2"
type
  HandleC1C1* = Handle[StepVisualCameraModelD2]
  StepVisualCameraModelD2* {.importcpp: "StepVisual_CameraModelD2",
                            header: "StepVisual_CameraModelD2.hxx", bycopy.} = object of StepVisualCameraModel ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## CameraModelD2


proc constructStepVisualCameraModelD2*(): StepVisualCameraModelD2 {.constructor,
    importcpp: "StepVisual_CameraModelD2(@)",
    header: "StepVisual_CameraModelD2.hxx".}
proc init*(this: var StepVisualCameraModelD2;
          aName: Handle[TCollectionHAsciiString];
          aViewWindow: Handle[StepVisualPlanarBox]; aViewWindowClipping: bool) {.
    importcpp: "Init", header: "StepVisual_CameraModelD2.hxx".}
proc setViewWindow*(this: var StepVisualCameraModelD2;
                   aViewWindow: Handle[StepVisualPlanarBox]) {.
    importcpp: "SetViewWindow", header: "StepVisual_CameraModelD2.hxx".}
proc viewWindow*(this: StepVisualCameraModelD2): Handle[StepVisualPlanarBox] {.
    noSideEffect, importcpp: "ViewWindow", header: "StepVisual_CameraModelD2.hxx".}
proc setViewWindowClipping*(this: var StepVisualCameraModelD2;
                           aViewWindowClipping: bool) {.
    importcpp: "SetViewWindowClipping", header: "StepVisual_CameraModelD2.hxx".}
proc viewWindowClipping*(this: StepVisualCameraModelD2): bool {.noSideEffect,
    importcpp: "ViewWindowClipping", header: "StepVisual_CameraModelD2.hxx".}
type
  StepVisualCameraModelD2baseType* = StepVisualCameraModel

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraModelD2::get_type_name(@)",
                            header: "StepVisual_CameraModelD2.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CameraModelD2::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD2.hxx".}
proc dynamicType*(this: StepVisualCameraModelD2): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD2.hxx".}

























