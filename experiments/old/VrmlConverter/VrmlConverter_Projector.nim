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

discard "forward decl of HLRAlgo_Projector"
discard "forward decl of VrmlConverter_Projector"
discard "forward decl of VrmlConverter_Projector"
type
  HandleC1C1* = Handle[VrmlConverterProjector]

## ! defines projector  and calculates properties of cameras and lights from Vrml
## ! ( OrthograpicCamera, PerspectiveCamera, DirectionalLight, PointLight, SpotLight
## ! and  MatrixTransform  )  to display all scene  shapes  with  arbitrary locations
## ! for requested the Projection Vector,  High Point Direction and the Focus
## ! and adds them ( method Add ) to anOSream.

type
  VrmlConverterProjector* {.importcpp: "VrmlConverter_Projector",
                           header: "VrmlConverter_Projector.hxx", bycopy.} = object of StandardTransient


proc constructVrmlConverterProjector*(shapes: TopToolsArray1OfShape; focus: cfloat;
                                     dx: cfloat; dy: cfloat; dz: cfloat; xUp: cfloat;
                                     yUp: cfloat; zUp: cfloat; camera: VrmlConverterTypeOfCamera = vrmlConverterNoCamera;
    light: VrmlConverterTypeOfLight = vrmlConverterNoLight): VrmlConverterProjector {.
    constructor, importcpp: "VrmlConverter_Projector(@)",
    header: "VrmlConverter_Projector.hxx".}
proc setCamera*(this: var VrmlConverterProjector; aCamera: VrmlConverterTypeOfCamera) {.
    importcpp: "SetCamera", header: "VrmlConverter_Projector.hxx".}
proc camera*(this: VrmlConverterProjector): VrmlConverterTypeOfCamera {.
    noSideEffect, importcpp: "Camera", header: "VrmlConverter_Projector.hxx".}
proc setLight*(this: var VrmlConverterProjector; aLight: VrmlConverterTypeOfLight) {.
    importcpp: "SetLight", header: "VrmlConverter_Projector.hxx".}
proc light*(this: VrmlConverterProjector): VrmlConverterTypeOfLight {.noSideEffect,
    importcpp: "Light", header: "VrmlConverter_Projector.hxx".}
proc add*(this: VrmlConverterProjector; anOStream: var StandardOStream) {.
    noSideEffect, importcpp: "Add", header: "VrmlConverter_Projector.hxx".}
proc projector*(this: VrmlConverterProjector): HLRAlgoProjector {.noSideEffect,
    importcpp: "Projector", header: "VrmlConverter_Projector.hxx".}
type
  VrmlConverterProjectorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_Projector::get_type_name(@)",
                            header: "VrmlConverter_Projector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_Projector::get_type_descriptor(@)",
    header: "VrmlConverter_Projector.hxx".}
proc dynamicType*(this: VrmlConverterProjector): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_Projector.hxx".}

























