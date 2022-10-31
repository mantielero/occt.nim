import ../../tkmath/tcolgp/tcolgp_types
import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
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





proc newGeom2dBezierCurve*(curvePoles: TColgpArray1OfPnt2d): Geom2dBezierCurve {.
    cdecl, constructor, importcpp: "Geom2d_BezierCurve(@)", header: "Geom2d_BezierCurve.hxx".}
proc newGeom2dBezierCurve*(curvePoles: TColgpArray1OfPnt2d;
                          poleWeights: TColStdArray1OfReal): Geom2dBezierCurve {.
    cdecl, constructor, importcpp: "Geom2d_BezierCurve(@)", header: "Geom2d_BezierCurve.hxx".}
proc increase*(this: var Geom2dBezierCurve; degree: cint) {.cdecl,
    importcpp: "Increase", header: "Geom2d_BezierCurve.hxx".}
proc insertPoleAfter*(this: var Geom2dBezierCurve; index: cint; p: Pnt2dObj;
                     weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleAfter",
    header: "Geom2d_BezierCurve.hxx".}
proc insertPoleBefore*(this: var Geom2dBezierCurve; index: cint; p: Pnt2dObj;
                      weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleBefore",
    header: "Geom2d_BezierCurve.hxx".}
proc removePole*(this: var Geom2dBezierCurve; index: cint) {.cdecl,
    importcpp: "RemovePole", header: "Geom2d_BezierCurve.hxx".}
proc reverse*(this: var Geom2dBezierCurve) {.cdecl, importcpp: "Reverse", header: "Geom2d_BezierCurve.hxx".}
proc reversedParameter*(this: Geom2dBezierCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_BezierCurve.hxx".}
proc segment*(this: var Geom2dBezierCurve; u1: cfloat; u2: cfloat) {.cdecl,
    importcpp: "Segment", header: "Geom2d_BezierCurve.hxx".}
proc setPole*(this: var Geom2dBezierCurve; index: cint; p: Pnt2dObj) {.cdecl,
    importcpp: "SetPole", header: "Geom2d_BezierCurve.hxx".}
proc setPole*(this: var Geom2dBezierCurve; index: cint; p: Pnt2dObj; weight: cfloat) {.cdecl,
    importcpp: "SetPole", header: "Geom2d_BezierCurve.hxx".}
proc setWeight*(this: var Geom2dBezierCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", header: "Geom2d_BezierCurve.hxx".}
proc isClosed*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_BezierCurve.hxx".}
proc isCN*(this: Geom2dBezierCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom2d_BezierCurve.hxx".}
proc isPeriodic*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_BezierCurve.hxx".}
proc isRational*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Geom2d_BezierCurve.hxx".}
proc continuity*(this: Geom2dBezierCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_BezierCurve.hxx".}
proc degree*(this: Geom2dBezierCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Geom2d_BezierCurve.hxx".}
proc d0*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_BezierCurve.hxx".}
proc d1*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_BezierCurve.hxx".}
proc d2*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_BezierCurve.hxx".}
proc d3*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_BezierCurve.hxx".}
proc dn*(this: Geom2dBezierCurve; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_BezierCurve.hxx".}
proc endPoint*(this: Geom2dBezierCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom2d_BezierCurve.hxx".}
proc firstParameter*(this: Geom2dBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_BezierCurve.hxx".}
proc lastParameter*(this: Geom2dBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_BezierCurve.hxx".}
proc nbPoles*(this: Geom2dBezierCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Geom2d_BezierCurve.hxx".}
proc pole*(this: Geom2dBezierCurve; index: cint): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pole", header: "Geom2d_BezierCurve.hxx".}
proc poles*(this: Geom2dBezierCurve; p: var TColgpArray1OfPnt2d) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom2d_BezierCurve.hxx".}
proc poles*(this: Geom2dBezierCurve): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom2d_BezierCurve.hxx".}
proc startPoint*(this: Geom2dBezierCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom2d_BezierCurve.hxx".}
proc weight*(this: Geom2dBezierCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", header: "Geom2d_BezierCurve.hxx".}
proc weights*(this: Geom2dBezierCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom2d_BezierCurve.hxx".}
proc weights*(this: Geom2dBezierCurve): ptr TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom2d_BezierCurve.hxx".}
proc transform*(this: var Geom2dBezierCurve; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_BezierCurve.hxx".}
proc maxDegree*(): cint {.cdecl, importcpp: "Geom2d_BezierCurve::MaxDegree(@)",
                       header: "Geom2d_BezierCurve.hxx".}
proc resolution*(this: var Geom2dBezierCurve; toleranceUV: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       header: "Geom2d_BezierCurve.hxx".}
proc copy*(this: Geom2dBezierCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_BezierCurve.hxx".}
proc dumpJson*(this: Geom2dBezierCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_BezierCurve.hxx".}


