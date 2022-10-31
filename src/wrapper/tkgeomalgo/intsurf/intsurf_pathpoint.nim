import intsurf_types
import ../../tkmath/gp/gp_types



##  Created on: 1992-11-10
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newIntSurfPathPoint*(): IntSurfPathPoint {.cdecl, constructor,
    importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc newIntSurfPathPoint*(p: PntObj; u: cfloat; v: cfloat): IntSurfPathPoint {.cdecl,
    constructor, importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc setValue*(this: var IntSurfPathPoint; p: PntObj; u: cfloat; v: cfloat) {.cdecl,
    importcpp: "SetValue", header: "IntSurf_PathPoint.hxx".}
proc addUV*(this: var IntSurfPathPoint; u: cfloat; v: cfloat) {.cdecl,
    importcpp: "AddUV", header: "IntSurf_PathPoint.hxx".}
proc setDirections*(this: var IntSurfPathPoint; v: VecObj; d: Dir2dObj) {.cdecl,
    importcpp: "SetDirections", header: "IntSurf_PathPoint.hxx".}
proc setTangency*(this: var IntSurfPathPoint; tang: bool) {.cdecl,
    importcpp: "SetTangency", header: "IntSurf_PathPoint.hxx".}
proc setPassing*(this: var IntSurfPathPoint; pass: bool) {.cdecl,
    importcpp: "SetPassing", header: "IntSurf_PathPoint.hxx".}
proc value*(this: IntSurfPathPoint): PntObj {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "IntSurf_PathPoint.hxx".}
proc value2d*(this: IntSurfPathPoint; u: var cfloat; v: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Value2d", header: "IntSurf_PathPoint.hxx".}
proc isPassingPnt*(this: IntSurfPathPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsPassingPnt", header: "IntSurf_PathPoint.hxx".}
proc isTangent*(this: IntSurfPathPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsTangent", header: "IntSurf_PathPoint.hxx".}
proc direction3d*(this: IntSurfPathPoint): VecObj {.noSideEffect, cdecl,
    importcpp: "Direction3d", header: "IntSurf_PathPoint.hxx".}
proc direction2d*(this: IntSurfPathPoint): Dir2dObj {.noSideEffect, cdecl,
    importcpp: "Direction2d", header: "IntSurf_PathPoint.hxx".}
proc multiplicity*(this: IntSurfPathPoint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", header: "IntSurf_PathPoint.hxx".}
proc parameters*(this: IntSurfPathPoint; index: cint; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "IntSurf_PathPoint.hxx".}

