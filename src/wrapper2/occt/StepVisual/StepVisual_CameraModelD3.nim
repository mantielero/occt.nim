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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_CameraModel

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD3"
discard "forward decl of StepVisual_CameraModelD3"
type
  Handle_StepVisual_CameraModelD3* = handle[StepVisual_CameraModelD3]
  StepVisual_CameraModelD3* {.importcpp: "StepVisual_CameraModelD3",
                             header: "StepVisual_CameraModelD3.hxx", bycopy.} = object of StepVisual_CameraModel ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## CameraModelD3


proc constructStepVisual_CameraModelD3*(): StepVisual_CameraModelD3 {.constructor,
    importcpp: "StepVisual_CameraModelD3(@)",
    header: "StepVisual_CameraModelD3.hxx".}
proc Init*(this: var StepVisual_CameraModelD3;
          aName: handle[TCollection_HAsciiString];
          aViewReferenceSystem: handle[StepGeom_Axis2Placement3d];
          aPerspectiveOfVolume: handle[StepVisual_ViewVolume]) {.
    importcpp: "Init", header: "StepVisual_CameraModelD3.hxx".}
proc SetViewReferenceSystem*(this: var StepVisual_CameraModelD3;
    aViewReferenceSystem: handle[StepGeom_Axis2Placement3d]) {.
    importcpp: "SetViewReferenceSystem", header: "StepVisual_CameraModelD3.hxx".}
proc ViewReferenceSystem*(this: StepVisual_CameraModelD3): handle[
    StepGeom_Axis2Placement3d] {.noSideEffect, importcpp: "ViewReferenceSystem",
                                header: "StepVisual_CameraModelD3.hxx".}
proc SetPerspectiveOfVolume*(this: var StepVisual_CameraModelD3;
                            aPerspectiveOfVolume: handle[StepVisual_ViewVolume]) {.
    importcpp: "SetPerspectiveOfVolume", header: "StepVisual_CameraModelD3.hxx".}
proc PerspectiveOfVolume*(this: StepVisual_CameraModelD3): handle[
    StepVisual_ViewVolume] {.noSideEffect, importcpp: "PerspectiveOfVolume",
                            header: "StepVisual_CameraModelD3.hxx".}
type
  StepVisual_CameraModelD3base_type* = StepVisual_CameraModel

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraModelD3::get_type_name(@)",
                              header: "StepVisual_CameraModelD3.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CameraModelD3::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD3.hxx".}
proc DynamicType*(this: StepVisual_CameraModelD3): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD3.hxx".}