import ../adaptor2d/adaptor2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../geom2d/geom2d_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geom2dadaptor_types





##  Created on: 1993-06-03
##  Created by: Bruno DUMORTIER
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



proc newGeom2dAdaptorCurve*(): Geom2dAdaptorCurve {.cdecl, constructor,
    importcpp: "Geom2dAdaptor_Curve(@)", header: "Geom2dAdaptor_Curve.hxx".}
proc newGeom2dAdaptorCurve*(c: Handle[Geom2dCurve]): Geom2dAdaptorCurve {.cdecl,
    constructor, importcpp: "Geom2dAdaptor_Curve(@)", header: "Geom2dAdaptor_Curve.hxx".}
proc newGeom2dAdaptorCurve*(c: Handle[Geom2dCurve]; uFirst: cfloat; uLast: cfloat): Geom2dAdaptorCurve {.
    cdecl, constructor, importcpp: "Geom2dAdaptor_Curve(@)", header: "Geom2dAdaptor_Curve.hxx".}
proc reset*(this: var Geom2dAdaptorCurve) {.cdecl, importcpp: "Reset", header: "Geom2dAdaptor_Curve.hxx".}
proc load*(this: var Geom2dAdaptorCurve; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "Load", header: "Geom2dAdaptor_Curve.hxx".}
proc load*(this: var Geom2dAdaptorCurve; c: Handle[Geom2dCurve]; uFirst: cfloat;
          uLast: cfloat) {.cdecl, importcpp: "Load", header: "Geom2dAdaptor_Curve.hxx".}
proc curve*(this: Geom2dAdaptorCurve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", header: "Geom2dAdaptor_Curve.hxx".}
proc firstParameter*(this: Geom2dAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc lastParameter*(this: Geom2dAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc continuity*(this: Geom2dAdaptorCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2dAdaptor_Curve.hxx".}
proc nbIntervals*(this: Geom2dAdaptorCurve; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Geom2dAdaptor_Curve.hxx".}
proc intervals*(this: Geom2dAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Geom2dAdaptor_Curve.hxx".}
proc trim*(this: Geom2dAdaptorCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, cdecl, importcpp: "Trim", header: "Geom2dAdaptor_Curve.hxx".}
proc isClosed*(this: Geom2dAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2dAdaptor_Curve.hxx".}
proc isPeriodic*(this: Geom2dAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2dAdaptor_Curve.hxx".}
proc period*(this: Geom2dAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom2dAdaptor_Curve.hxx".}
proc value*(this: Geom2dAdaptorCurve; u: cfloat): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "Geom2dAdaptor_Curve.hxx".}
proc d0*(this: Geom2dAdaptorCurve; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2dAdaptor_Curve.hxx".}
proc d1*(this: Geom2dAdaptorCurve; u: cfloat; p: var Pnt2dObj; v: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2dAdaptor_Curve.hxx".}
proc d2*(this: Geom2dAdaptorCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2dAdaptor_Curve.hxx".}
proc d3*(this: Geom2dAdaptorCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2dAdaptor_Curve.hxx".}
proc dn*(this: Geom2dAdaptorCurve; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2dAdaptor_Curve.hxx".}
proc resolution*(this: Geom2dAdaptorCurve; ruv: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "Geom2dAdaptor_Curve.hxx".}
proc getType*(this: Geom2dAdaptorCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Geom2dAdaptor_Curve.hxx".}
proc line*(this: Geom2dAdaptorCurve): Lin2dObj {.noSideEffect, cdecl, importcpp: "Line",
    header: "Geom2dAdaptor_Curve.hxx".}
proc circle*(this: Geom2dAdaptorCurve): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Circle", header: "Geom2dAdaptor_Curve.hxx".}
proc ellipse*(this: Geom2dAdaptorCurve): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Geom2dAdaptor_Curve.hxx".}
proc hyperbola*(this: Geom2dAdaptorCurve): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Geom2dAdaptor_Curve.hxx".}
proc parabola*(this: Geom2dAdaptorCurve): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Geom2dAdaptor_Curve.hxx".}
proc degree*(this: Geom2dAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Geom2dAdaptor_Curve.hxx".}
proc isRational*(this: Geom2dAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Geom2dAdaptor_Curve.hxx".}
proc nbPoles*(this: Geom2dAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Geom2dAdaptor_Curve.hxx".}
proc nbKnots*(this: Geom2dAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Geom2dAdaptor_Curve.hxx".}
proc nbSamples*(this: Geom2dAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbSamples", header: "Geom2dAdaptor_Curve.hxx".}
proc bezier*(this: Geom2dAdaptorCurve): Handle[Geom2dBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Geom2dAdaptor_Curve.hxx".}
proc bSpline*(this: Geom2dAdaptorCurve): Handle[Geom2dBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "Geom2dAdaptor_Curve.hxx".}


