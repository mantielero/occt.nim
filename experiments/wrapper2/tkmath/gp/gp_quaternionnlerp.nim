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

## ! Class perform linear interpolation (approximate rotation interpolation),
## ! result quaternion nonunit, its length lay between. sqrt(2)/2  and 1.0

type
  GpQuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                      header: "gp_QuaternionNLerp.hxx", bycopy.} = object ## ! Compute
                                                                     ## interpolated quaternion between two
                                                                     ## quaternions.
                                                                     ## ! @param theStart first  quaternion
                                                                     ## ! @param theEnd   second quaternion
                                                                     ## ! @param theT normalized
                                                                     ## interpolation coefficient within 0..1 range,
                                                                     ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                     ## ! Empty
                                                                     ## constructor,


proc interpolate*(theQStart: GpQuaternion; theQEnd: GpQuaternion; theT: cfloat): GpQuaternion {.
    cdecl, importcpp: "gp_QuaternionNLerp::Interpolate(@)", dynlib: tkmath.}
proc constructGpQuaternionNLerp*(): GpQuaternionNLerp {.cdecl, constructor,
    importcpp: "gp_QuaternionNLerp(@)", dynlib: tkmath.}
proc constructGpQuaternionNLerp*(theQStart: GpQuaternion; theQEnd: GpQuaternion): GpQuaternionNLerp {.
    cdecl, constructor, importcpp: "gp_QuaternionNLerp(@)", dynlib: tkmath.}
proc init*(this: var GpQuaternionNLerp; theQStart: GpQuaternion; theQEnd: GpQuaternion) {.
    cdecl, importcpp: "Init", dynlib: tkmath.}
proc initFromUnit*(this: var GpQuaternionNLerp; theQStart: GpQuaternion;
                  theQEnd: GpQuaternion) {.cdecl, importcpp: "InitFromUnit",
    dynlib: tkmath.}
proc interpolate*(this: GpQuaternionNLerp; theT: cfloat; theResultQ: var GpQuaternion) {.
    noSideEffect, cdecl, importcpp: "Interpolate", dynlib: tkmath.}