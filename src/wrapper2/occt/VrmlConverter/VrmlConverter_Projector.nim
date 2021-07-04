##  Created on: 1997-06-06
##  Created by: Alexander BRIVIN
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
  ../Standard/Standard, ../Standard/Standard_Type, ../HLRAlgo/HLRAlgo_Projector,
  ../Vrml/Vrml_PerspectiveCamera, ../Vrml/Vrml_OrthographicCamera,
  ../Vrml/Vrml_DirectionalLight, ../Vrml/Vrml_PointLight, ../Vrml/Vrml_SpotLight,
  VrmlConverter_TypeOfCamera, VrmlConverter_TypeOfLight,
  ../Vrml/Vrml_MatrixTransform, ../Standard/Standard_Transient,
  ../TopTools/TopTools_Array1OfShape, ../Standard/Standard_OStream

discard "forward decl of HLRAlgo_Projector"
discard "forward decl of VrmlConverter_Projector"
discard "forward decl of VrmlConverter_Projector"
type
  Handle_VrmlConverter_Projector* = handle[VrmlConverter_Projector]

## ! defines projector  and calculates properties of cameras and lights from Vrml
## ! ( OrthograpicCamera, PerspectiveCamera, DirectionalLight, PointLight, SpotLight
## ! and  MatrixTransform  )  to display all scene  shapes  with  arbitrary locations
## ! for requested the Projection Vector,  High Point Direction and the Focus
## ! and adds them ( method Add ) to anOSream.

type
  VrmlConverter_Projector* {.importcpp: "VrmlConverter_Projector",
                            header: "VrmlConverter_Projector.hxx", bycopy.} = object of Standard_Transient


proc constructVrmlConverter_Projector*(Shapes: TopTools_Array1OfShape;
                                      Focus: Standard_Real; DX: Standard_Real;
                                      DY: Standard_Real; DZ: Standard_Real;
                                      XUp: Standard_Real; YUp: Standard_Real;
                                      ZUp: Standard_Real; Camera: VrmlConverter_TypeOfCamera = VrmlConverter_NoCamera;
    Light: VrmlConverter_TypeOfLight = VrmlConverter_NoLight): VrmlConverter_Projector {.
    constructor, importcpp: "VrmlConverter_Projector(@)",
    header: "VrmlConverter_Projector.hxx".}
proc SetCamera*(this: var VrmlConverter_Projector;
               aCamera: VrmlConverter_TypeOfCamera) {.importcpp: "SetCamera",
    header: "VrmlConverter_Projector.hxx".}
proc Camera*(this: VrmlConverter_Projector): VrmlConverter_TypeOfCamera {.
    noSideEffect, importcpp: "Camera", header: "VrmlConverter_Projector.hxx".}
proc SetLight*(this: var VrmlConverter_Projector; aLight: VrmlConverter_TypeOfLight) {.
    importcpp: "SetLight", header: "VrmlConverter_Projector.hxx".}
proc Light*(this: VrmlConverter_Projector): VrmlConverter_TypeOfLight {.
    noSideEffect, importcpp: "Light", header: "VrmlConverter_Projector.hxx".}
proc Add*(this: VrmlConverter_Projector; anOStream: var Standard_OStream) {.
    noSideEffect, importcpp: "Add", header: "VrmlConverter_Projector.hxx".}
proc Projector*(this: VrmlConverter_Projector): HLRAlgo_Projector {.noSideEffect,
    importcpp: "Projector", header: "VrmlConverter_Projector.hxx".}
type
  VrmlConverter_Projectorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_Projector::get_type_name(@)",
                              header: "VrmlConverter_Projector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_Projector::get_type_descriptor(@)",
    header: "VrmlConverter_Projector.hxx".}
proc DynamicType*(this: VrmlConverter_Projector): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_Projector.hxx".}