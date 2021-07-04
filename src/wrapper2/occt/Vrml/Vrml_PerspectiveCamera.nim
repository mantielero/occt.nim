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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Vec, Vrml_SFRotation,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of gp_Vec"
discard "forward decl of Vrml_SFRotation"
type
  Vrml_PerspectiveCamera* {.importcpp: "Vrml_PerspectiveCamera",
                           header: "Vrml_PerspectiveCamera.hxx", bycopy.} = object


proc constructVrml_PerspectiveCamera*(): Vrml_PerspectiveCamera {.constructor,
    importcpp: "Vrml_PerspectiveCamera(@)", header: "Vrml_PerspectiveCamera.hxx".}
proc constructVrml_PerspectiveCamera*(aPosition: gp_Vec;
                                     aOrientation: Vrml_SFRotation;
                                     aFocalDistance: Standard_Real;
                                     aHeightAngle: Standard_Real): Vrml_PerspectiveCamera {.
    constructor, importcpp: "Vrml_PerspectiveCamera(@)",
    header: "Vrml_PerspectiveCamera.hxx".}
proc SetPosition*(this: var Vrml_PerspectiveCamera; aPosition: gp_Vec) {.
    importcpp: "SetPosition", header: "Vrml_PerspectiveCamera.hxx".}
proc Position*(this: Vrml_PerspectiveCamera): gp_Vec {.noSideEffect,
    importcpp: "Position", header: "Vrml_PerspectiveCamera.hxx".}
proc SetOrientation*(this: var Vrml_PerspectiveCamera; aOrientation: Vrml_SFRotation) {.
    importcpp: "SetOrientation", header: "Vrml_PerspectiveCamera.hxx".}
proc Orientation*(this: Vrml_PerspectiveCamera): Vrml_SFRotation {.noSideEffect,
    importcpp: "Orientation", header: "Vrml_PerspectiveCamera.hxx".}
proc SetFocalDistance*(this: var Vrml_PerspectiveCamera;
                      aFocalDistance: Standard_Real) {.
    importcpp: "SetFocalDistance", header: "Vrml_PerspectiveCamera.hxx".}
proc FocalDistance*(this: Vrml_PerspectiveCamera): Standard_Real {.noSideEffect,
    importcpp: "FocalDistance", header: "Vrml_PerspectiveCamera.hxx".}
proc SetAngle*(this: var Vrml_PerspectiveCamera; aHeightAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "Vrml_PerspectiveCamera.hxx".}
proc Angle*(this: Vrml_PerspectiveCamera): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "Vrml_PerspectiveCamera.hxx".}
proc Print*(this: Vrml_PerspectiveCamera; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_PerspectiveCamera.hxx".}