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

## ! Class perform linear interpolation (approximate rotation interpolation),
## ! result quaternion nonunit, its length lay between. sqrt(2)/2  and 1.0

type
  gp_QuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                       header: "gp_QuaternionNLerp.hxx", bycopy.} = object ## ! Compute
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
    importcpp: "gp_QuaternionNLerp::Interpolate(@)",
    header: "gp_QuaternionNLerp.hxx".}
proc constructgp_QuaternionNLerp*(): gp_QuaternionNLerp {.constructor,
    importcpp: "gp_QuaternionNLerp(@)", header: "gp_QuaternionNLerp.hxx".}
proc constructgp_QuaternionNLerp*(theQStart: gp_Quaternion; theQEnd: gp_Quaternion): gp_QuaternionNLerp {.
    constructor, importcpp: "gp_QuaternionNLerp(@)",
    header: "gp_QuaternionNLerp.hxx".}
proc Init*(this: var gp_QuaternionNLerp; theQStart: gp_Quaternion;
          theQEnd: gp_Quaternion) {.importcpp: "Init",
                                  header: "gp_QuaternionNLerp.hxx".}
proc InitFromUnit*(this: var gp_QuaternionNLerp; theQStart: gp_Quaternion;
                  theQEnd: gp_Quaternion) {.importcpp: "InitFromUnit",
    header: "gp_QuaternionNLerp.hxx".}
proc Interpolate*(this: gp_QuaternionNLerp; theT: Standard_Real;
                 theResultQ: var gp_Quaternion) {.noSideEffect,
    importcpp: "Interpolate", header: "gp_QuaternionNLerp.hxx".}