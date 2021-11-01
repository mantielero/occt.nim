##  Created on: 1995-12-08
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

## ! Class  (should    be  a  structure)   storing  the
## ! informations         about     continuity, normals
## ! parallelism,  coons conditions and bounds tangents
## ! angle on the corner of contour to be filled.

type
  GeomFillCornerState* {.importcpp: "GeomFill_CornerState",
                        header: "GeomFill_CornerState.hxx", bycopy.} = object


proc newGeomFillCornerState*(): GeomFillCornerState {.cdecl, constructor,
    importcpp: "GeomFill_CornerState(@)", dynlib: tkgeomalgo.}
proc gap*(this: GeomFillCornerState): cfloat {.noSideEffect, cdecl, importcpp: "Gap",
    dynlib: tkgeomalgo.}
proc gap*(this: var GeomFillCornerState; g: cfloat) {.cdecl, importcpp: "Gap",
    dynlib: tkgeomalgo.}
proc tgtAng*(this: GeomFillCornerState): cfloat {.noSideEffect, cdecl,
    importcpp: "TgtAng", dynlib: tkgeomalgo.}
proc tgtAng*(this: var GeomFillCornerState; ang: cfloat) {.cdecl, importcpp: "TgtAng",
    dynlib: tkgeomalgo.}
proc hasConstraint*(this: GeomFillCornerState): bool {.noSideEffect, cdecl,
    importcpp: "HasConstraint", dynlib: tkgeomalgo.}
proc constraint*(this: var GeomFillCornerState) {.cdecl, importcpp: "Constraint",
    dynlib: tkgeomalgo.}
proc norAng*(this: GeomFillCornerState): cfloat {.noSideEffect, cdecl,
    importcpp: "NorAng", dynlib: tkgeomalgo.}
proc norAng*(this: var GeomFillCornerState; ang: cfloat) {.cdecl, importcpp: "NorAng",
    dynlib: tkgeomalgo.}
proc isToKill*(this: GeomFillCornerState; scal: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsToKill", dynlib: tkgeomalgo.}
proc doKill*(this: var GeomFillCornerState; scal: cfloat) {.cdecl, importcpp: "DoKill",
    dynlib: tkgeomalgo.}