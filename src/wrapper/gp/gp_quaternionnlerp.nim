import gp_types

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


proc interpolate*(theQStart: gp_Quaternion; theQEnd: gp_Quaternion; theT: cfloat): gp_Quaternion {.
    cdecl, importcpp: "gp_QuaternionNLerp::Interpolate(@)", header: "gp_QuaternionNLerp.hxx".}
proc newQuaternionNLerp*(): QuaternionNLerp {.cdecl, constructor,
    importcpp: "gp_QuaternionNLerp(@)", header: "gp_QuaternionNLerp.hxx".}
proc newQuaternionNLerp*(theQStart: gp_Quaternion; theQEnd: gp_Quaternion): QuaternionNLerp {.
    cdecl, constructor, importcpp: "gp_QuaternionNLerp(@)", header: "gp_QuaternionNLerp.hxx".}
proc init*(this: var QuaternionNLerp; theQStart: gp_Quaternion; theQEnd: gp_Quaternion) {.
    cdecl, importcpp: "Init", header: "gp_QuaternionNLerp.hxx".}
proc initFromUnit*(this: var QuaternionNLerp; theQStart: gp_Quaternion;
                  theQEnd: gp_Quaternion) {.cdecl, importcpp: "InitFromUnit",
                                       header: "gp_QuaternionNLerp.hxx".}
proc interpolate*(this: QuaternionNLerp; theT: cfloat; theResultQ: var gp_Quaternion) {.
    noSideEffect, cdecl, importcpp: "Interpolate", header: "gp_QuaternionNLerp.hxx".}
