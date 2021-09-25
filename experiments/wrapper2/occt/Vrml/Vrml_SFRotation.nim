##  Created on: 1996-12-23
##  Created by: Alexander BRIVIN
##  Copyright (c) 1996-1999 Matra Datavision
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

## ! defines SFRotation type of VRML field types.
## ! The  4  values  represent  an  axis  of  rotation  followed  by  amount  of
## ! right-handed  rotation  about  the  that  axis, in  radians.

type
  VrmlSFRotation* {.importcpp: "Vrml_SFRotation", header: "Vrml_SFRotation.hxx",
                   bycopy.} = object


proc constructVrmlSFRotation*(): VrmlSFRotation {.constructor,
    importcpp: "Vrml_SFRotation(@)", header: "Vrml_SFRotation.hxx".}
proc constructVrmlSFRotation*(aRotationX: float; aRotationY: float;
                             aRotationZ: float; anAngle: float): VrmlSFRotation {.
    constructor, importcpp: "Vrml_SFRotation(@)", header: "Vrml_SFRotation.hxx".}
proc setRotationX*(this: var VrmlSFRotation; aRotationX: float) {.
    importcpp: "SetRotationX", header: "Vrml_SFRotation.hxx".}
proc rotationX*(this: VrmlSFRotation): float {.noSideEffect, importcpp: "RotationX",
    header: "Vrml_SFRotation.hxx".}
proc setRotationY*(this: var VrmlSFRotation; aRotationY: float) {.
    importcpp: "SetRotationY", header: "Vrml_SFRotation.hxx".}
proc rotationY*(this: VrmlSFRotation): float {.noSideEffect, importcpp: "RotationY",
    header: "Vrml_SFRotation.hxx".}
proc setRotationZ*(this: var VrmlSFRotation; aRotationZ: float) {.
    importcpp: "SetRotationZ", header: "Vrml_SFRotation.hxx".}
proc rotationZ*(this: VrmlSFRotation): float {.noSideEffect, importcpp: "RotationZ",
    header: "Vrml_SFRotation.hxx".}
proc setAngle*(this: var VrmlSFRotation; anAngle: float) {.importcpp: "SetAngle",
    header: "Vrml_SFRotation.hxx".}
proc angle*(this: VrmlSFRotation): float {.noSideEffect, importcpp: "Angle",
                                       header: "Vrml_SFRotation.hxx".}
