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
  VrmlOrthographicCamera* {.importcpp: "Vrml_OrthographicCamera",
                           header: "Vrml_OrthographicCamera.hxx", bycopy.} = object


proc constructVrmlOrthographicCamera*(): VrmlOrthographicCamera {.constructor,
    importcpp: "Vrml_OrthographicCamera(@)", header: "Vrml_OrthographicCamera.hxx".}
proc constructVrmlOrthographicCamera*(aPosition: Vec; aOrientation: VrmlSFRotation;
                                     aFocalDistance: float; aHeight: float): VrmlOrthographicCamera {.
    constructor, importcpp: "Vrml_OrthographicCamera(@)",
    header: "Vrml_OrthographicCamera.hxx".}
proc setPosition*(this: var VrmlOrthographicCamera; aPosition: Vec) {.
    importcpp: "SetPosition", header: "Vrml_OrthographicCamera.hxx".}
proc position*(this: VrmlOrthographicCamera): Vec {.noSideEffect,
    importcpp: "Position", header: "Vrml_OrthographicCamera.hxx".}
proc setOrientation*(this: var VrmlOrthographicCamera; aOrientation: VrmlSFRotation) {.
    importcpp: "SetOrientation", header: "Vrml_OrthographicCamera.hxx".}
proc orientation*(this: VrmlOrthographicCamera): VrmlSFRotation {.noSideEffect,
    importcpp: "Orientation", header: "Vrml_OrthographicCamera.hxx".}
proc setFocalDistance*(this: var VrmlOrthographicCamera; aFocalDistance: float) {.
    importcpp: "SetFocalDistance", header: "Vrml_OrthographicCamera.hxx".}
proc focalDistance*(this: VrmlOrthographicCamera): float {.noSideEffect,
    importcpp: "FocalDistance", header: "Vrml_OrthographicCamera.hxx".}
proc setHeight*(this: var VrmlOrthographicCamera; aHeight: float) {.
    importcpp: "SetHeight", header: "Vrml_OrthographicCamera.hxx".}
proc height*(this: VrmlOrthographicCamera): float {.noSideEffect,
    importcpp: "Height", header: "Vrml_OrthographicCamera.hxx".}
proc print*(this: VrmlOrthographicCamera; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_OrthographicCamera.hxx".}
