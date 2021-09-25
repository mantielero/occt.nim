##  Created on: 1997-02-12
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

discard "forward decl of gp_Vec"
discard "forward decl of Vrml_SFRotation"
type
  VrmlPerspectiveCamera* {.importcpp: "Vrml_PerspectiveCamera",
                          header: "Vrml_PerspectiveCamera.hxx", bycopy.} = object


proc constructVrmlPerspectiveCamera*(): VrmlPerspectiveCamera {.constructor,
    importcpp: "Vrml_PerspectiveCamera(@)", header: "Vrml_PerspectiveCamera.hxx".}
proc constructVrmlPerspectiveCamera*(aPosition: Vec; aOrientation: VrmlSFRotation;
                                    aFocalDistance: float; aHeightAngle: float): VrmlPerspectiveCamera {.
    constructor, importcpp: "Vrml_PerspectiveCamera(@)",
    header: "Vrml_PerspectiveCamera.hxx".}
proc setPosition*(this: var VrmlPerspectiveCamera; aPosition: Vec) {.
    importcpp: "SetPosition", header: "Vrml_PerspectiveCamera.hxx".}
proc position*(this: VrmlPerspectiveCamera): Vec {.noSideEffect,
    importcpp: "Position", header: "Vrml_PerspectiveCamera.hxx".}
proc setOrientation*(this: var VrmlPerspectiveCamera; aOrientation: VrmlSFRotation) {.
    importcpp: "SetOrientation", header: "Vrml_PerspectiveCamera.hxx".}
proc orientation*(this: VrmlPerspectiveCamera): VrmlSFRotation {.noSideEffect,
    importcpp: "Orientation", header: "Vrml_PerspectiveCamera.hxx".}
proc setFocalDistance*(this: var VrmlPerspectiveCamera; aFocalDistance: float) {.
    importcpp: "SetFocalDistance", header: "Vrml_PerspectiveCamera.hxx".}
proc focalDistance*(this: VrmlPerspectiveCamera): float {.noSideEffect,
    importcpp: "FocalDistance", header: "Vrml_PerspectiveCamera.hxx".}
proc setAngle*(this: var VrmlPerspectiveCamera; aHeightAngle: float) {.
    importcpp: "SetAngle", header: "Vrml_PerspectiveCamera.hxx".}
proc angle*(this: VrmlPerspectiveCamera): float {.noSideEffect, importcpp: "Angle",
    header: "Vrml_PerspectiveCamera.hxx".}
proc print*(this: VrmlPerspectiveCamera; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_PerspectiveCamera.hxx".}
