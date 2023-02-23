import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkmath/geomabs/geomabs_types





##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newGeom2dTrimmedCurve2*[T:Geom2dCurve | Geom2dEllipse](c: Handle[T]; u1: cfloat; u2: cfloat;
            sense: bool = true; theAdjustPeriodic: bool = true): Geom2dTrimmedCurve {.
    cdecl, constructor, importcpp: "Geom2d_TrimmedCurve(@)", header: "Geom2d_TrimmedCurve.hxx".}


proc newGeom2dTrimmedCurve*(c: Handle[Geom2dCurve]; u1: cfloat; u2: cfloat;
            sense: bool = true; theAdjustPeriodic: bool = true): Geom2dTrimmedCurve {.
    cdecl, constructor, importcpp: "Geom2d_TrimmedCurve(@)", header: "Geom2d_TrimmedCurve.hxx".}

proc reverse*(this: var Geom2dTrimmedCurve) {.cdecl, importcpp: "Reverse",
    header: "Geom2d_TrimmedCurve.hxx".}
proc reversedParameter*(this: Geom2dTrimmedCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc setTrim*(this: var Geom2dTrimmedCurve; u1: cfloat; u2: cfloat; sense: bool = true;
             theAdjustPeriodic: bool = true) {.cdecl, importcpp: "SetTrim",
    header: "Geom2d_TrimmedCurve.hxx".}
proc basisCurve*(this: Geom2dTrimmedCurve): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", header: "Geom2d_TrimmedCurve.hxx".}
proc continuity*(this: Geom2dTrimmedCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_TrimmedCurve.hxx".}
proc isCN*(this: Geom2dTrimmedCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom2d_TrimmedCurve.hxx".}
proc endPoint*(this: Geom2dTrimmedCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc firstParameter*(this: Geom2dTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc isClosed*(this: Geom2dTrimmedCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_TrimmedCurve.hxx".}
proc isPeriodic*(this: Geom2dTrimmedCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_TrimmedCurve.hxx".}
proc period*(this: Geom2dTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom2d_TrimmedCurve.hxx".}
proc lastParameter*(this: Geom2dTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc startPoint*(this: Geom2dTrimmedCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc d0*(this: Geom2dTrimmedCurve; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_TrimmedCurve.hxx".}
proc d1*(this: Geom2dTrimmedCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_TrimmedCurve.hxx".}
proc d2*(this: Geom2dTrimmedCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_TrimmedCurve.hxx".}
proc d3*(this: Geom2dTrimmedCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_TrimmedCurve.hxx".}
proc dn*(this: Geom2dTrimmedCurve; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_TrimmedCurve.hxx".}
proc transform*(this: var Geom2dTrimmedCurve; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_TrimmedCurve.hxx".}
proc transformedParameter*(this: Geom2dTrimmedCurve; u: cfloat; t: Trsf2dObj): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc parametricTransformation*(this: Geom2dTrimmedCurve; t: Trsf2dObj): cfloat {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom2d_TrimmedCurve.hxx".}
proc copy*(this: Geom2dTrimmedCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_TrimmedCurve.hxx".}
proc dumpJson*(this: Geom2dTrimmedCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_TrimmedCurve.hxx".}


