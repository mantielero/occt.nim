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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepVisual_CameraModel

discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CameraModelD2"
discard "forward decl of StepVisual_CameraModelD2"
type
  Handle_StepVisual_CameraModelD2* = handle[StepVisual_CameraModelD2]
  StepVisual_CameraModelD2* {.importcpp: "StepVisual_CameraModelD2",
                             header: "StepVisual_CameraModelD2.hxx", bycopy.} = object of StepVisual_CameraModel ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## CameraModelD2


proc constructStepVisual_CameraModelD2*(): StepVisual_CameraModelD2 {.constructor,
    importcpp: "StepVisual_CameraModelD2(@)",
    header: "StepVisual_CameraModelD2.hxx".}
proc Init*(this: var StepVisual_CameraModelD2;
          aName: handle[TCollection_HAsciiString];
          aViewWindow: handle[StepVisual_PlanarBox];
          aViewWindowClipping: Standard_Boolean) {.importcpp: "Init",
    header: "StepVisual_CameraModelD2.hxx".}
proc SetViewWindow*(this: var StepVisual_CameraModelD2;
                   aViewWindow: handle[StepVisual_PlanarBox]) {.
    importcpp: "SetViewWindow", header: "StepVisual_CameraModelD2.hxx".}
proc ViewWindow*(this: StepVisual_CameraModelD2): handle[StepVisual_PlanarBox] {.
    noSideEffect, importcpp: "ViewWindow", header: "StepVisual_CameraModelD2.hxx".}
proc SetViewWindowClipping*(this: var StepVisual_CameraModelD2;
                           aViewWindowClipping: Standard_Boolean) {.
    importcpp: "SetViewWindowClipping", header: "StepVisual_CameraModelD2.hxx".}
proc ViewWindowClipping*(this: StepVisual_CameraModelD2): Standard_Boolean {.
    noSideEffect, importcpp: "ViewWindowClipping",
    header: "StepVisual_CameraModelD2.hxx".}
type
  StepVisual_CameraModelD2base_type* = StepVisual_CameraModel

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraModelD2::get_type_name(@)",
                              header: "StepVisual_CameraModelD2.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CameraModelD2::get_type_descriptor(@)",
    header: "StepVisual_CameraModelD2.hxx".}
proc DynamicType*(this: StepVisual_CameraModelD2): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModelD2.hxx".}