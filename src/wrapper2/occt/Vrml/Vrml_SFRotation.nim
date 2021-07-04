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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real

## ! defines SFRotation type of VRML field types.
## ! The  4  values  represent  an  axis  of  rotation  followed  by  amount  of
## ! right-handed  rotation  about  the  that  axis, in  radians.

type
  Vrml_SFRotation* {.importcpp: "Vrml_SFRotation", header: "Vrml_SFRotation.hxx",
                    bycopy.} = object


proc constructVrml_SFRotation*(): Vrml_SFRotation {.constructor,
    importcpp: "Vrml_SFRotation(@)", header: "Vrml_SFRotation.hxx".}
proc constructVrml_SFRotation*(aRotationX: Standard_Real;
                              aRotationY: Standard_Real;
                              aRotationZ: Standard_Real; anAngle: Standard_Real): Vrml_SFRotation {.
    constructor, importcpp: "Vrml_SFRotation(@)", header: "Vrml_SFRotation.hxx".}
proc SetRotationX*(this: var Vrml_SFRotation; aRotationX: Standard_Real) {.
    importcpp: "SetRotationX", header: "Vrml_SFRotation.hxx".}
proc RotationX*(this: Vrml_SFRotation): Standard_Real {.noSideEffect,
    importcpp: "RotationX", header: "Vrml_SFRotation.hxx".}
proc SetRotationY*(this: var Vrml_SFRotation; aRotationY: Standard_Real) {.
    importcpp: "SetRotationY", header: "Vrml_SFRotation.hxx".}
proc RotationY*(this: Vrml_SFRotation): Standard_Real {.noSideEffect,
    importcpp: "RotationY", header: "Vrml_SFRotation.hxx".}
proc SetRotationZ*(this: var Vrml_SFRotation; aRotationZ: Standard_Real) {.
    importcpp: "SetRotationZ", header: "Vrml_SFRotation.hxx".}
proc RotationZ*(this: Vrml_SFRotation): Standard_Real {.noSideEffect,
    importcpp: "RotationZ", header: "Vrml_SFRotation.hxx".}
proc SetAngle*(this: var Vrml_SFRotation; anAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "Vrml_SFRotation.hxx".}
proc Angle*(this: Vrml_SFRotation): Standard_Real {.noSideEffect, importcpp: "Angle",
    header: "Vrml_SFRotation.hxx".}