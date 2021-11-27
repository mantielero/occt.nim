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

## ! Perform Spherical Linear Interpolation of the quaternions,
## ! return unit length quaternion.

type
  QuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                    header: "gp_QuaternionSLerp.hxx", bycopy.} = object ## ! Compute interpolated quaternion between two quaternions.
                                                                   ## ! @param theStart first  quaternion
                                                                   ## ! @param theEnd   second quaternion
                                                                   ## ! @param theT normalized interpolation coefficient within 0..1 range,
                                                                   ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                   ## ! Empty constructor,


proc interpolateSlerp*(theQStart: Quaternion; theQEnd: Quaternion; theT: cfloat): Quaternion {.
    cdecl, importcpp: "gp_QuaternionSLerp::Interpolate(@)", header: "gp_QuaternionSLerp.hxx".}
proc newQuaternionSLerp*(): QuaternionSLerp {.cdecl, constructor,
    importcpp: "gp_QuaternionSLerp(@)", header: "gp_QuaternionSLerp.hxx".}
proc newQuaternionSLerp*(theQStart: Quaternion; theQEnd: Quaternion): QuaternionSLerp {.
    cdecl, constructor, importcpp: "gp_QuaternionSLerp(@)", header: "gp_QuaternionSLerp.hxx".}
proc init*(this: var QuaternionSLerp; theQStart: Quaternion; theQEnd: Quaternion) {.
    cdecl, importcpp: "Init", header: "gp_QuaternionSLerp.hxx".}
proc initFromUnit*(this: var QuaternionSLerp; theQStart: Quaternion;
                  theQEnd: Quaternion) {.cdecl, importcpp: "InitFromUnit",
                                       header: "gp_QuaternionSLerp.hxx".}
proc interpolateSlerp*(this: QuaternionSLerp; theT: cfloat; theResultQ: var Quaternion) {.
    noSideEffect, cdecl, importcpp: "Interpolate", header: "gp_QuaternionSLerp.hxx".}