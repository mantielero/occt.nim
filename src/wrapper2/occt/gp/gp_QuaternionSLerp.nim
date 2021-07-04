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
  gp_Quaternion

## ! Perform Spherical Linear Interpolation of the quaternions,
## ! return unit length quaternion.

type
  gp_QuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                       header: "gp_QuaternionSLerp.hxx", bycopy.} = object ## ! Compute
                                                                      ## interpolated quaternion between two
                                                                      ## quaternions.
                                                                      ## ! @param theStart first  quaternion
                                                                      ## ! @param theEnd   second quaternion
                                                                      ## ! @param theT normalized
                                                                      ## interpolation
                                                                      ## coefficient within 0..1 range,
                                                                      ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                      ## ! Empty
                                                                      ## constructor,


proc Interpolate*(theQStart: gp_Quaternion; theQEnd: gp_Quaternion;
                 theT: Standard_Real): gp_Quaternion {.
    importcpp: "gp_QuaternionSLerp::Interpolate(@)",
    header: "gp_QuaternionSLerp.hxx".}
proc constructgp_QuaternionSLerp*(): gp_QuaternionSLerp {.constructor,
    importcpp: "gp_QuaternionSLerp(@)", header: "gp_QuaternionSLerp.hxx".}
proc constructgp_QuaternionSLerp*(theQStart: gp_Quaternion; theQEnd: gp_Quaternion): gp_QuaternionSLerp {.
    constructor, importcpp: "gp_QuaternionSLerp(@)",
    header: "gp_QuaternionSLerp.hxx".}
proc Init*(this: var gp_QuaternionSLerp; theQStart: gp_Quaternion;
          theQEnd: gp_Quaternion) {.importcpp: "Init",
                                  header: "gp_QuaternionSLerp.hxx".}
proc InitFromUnit*(this: var gp_QuaternionSLerp; theQStart: gp_Quaternion;
                  theQEnd: gp_Quaternion) {.importcpp: "InitFromUnit",
    header: "gp_QuaternionSLerp.hxx".}
proc Interpolate*(this: gp_QuaternionSLerp; theT: Standard_Real;
                 theResultQ: var gp_Quaternion) {.noSideEffect,
    importcpp: "Interpolate", header: "gp_QuaternionSLerp.hxx".}