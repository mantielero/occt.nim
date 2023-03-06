import ../gp/gp_types
import adaptor2d_types
import ../standard/standard_types
import ../geom2d/geom2d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





##  Created on: 1993-04-02
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



proc firstParameter*(this: Adaptor2dCurve2d): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Adaptor2d_Curve2d.hxx".}
proc lastParameter*(this: Adaptor2dCurve2d): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Adaptor2d_Curve2d.hxx".}
proc continuity*(this: Adaptor2dCurve2d): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Adaptor2d_Curve2d.hxx".}
proc nbIntervals*(this: Adaptor2dCurve2d; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Adaptor2d_Curve2d.hxx".}
proc intervals*(this: Adaptor2dCurve2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Adaptor2d_Curve2d.hxx".}
proc trim*(this: Adaptor2dCurve2d; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, cdecl, importcpp: "Trim", header: "Adaptor2d_Curve2d.hxx".}
proc isClosed*(this: Adaptor2dCurve2d): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Adaptor2d_Curve2d.hxx".}
proc isPeriodic*(this: Adaptor2dCurve2d): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Adaptor2d_Curve2d.hxx".}
proc period*(this: Adaptor2dCurve2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Adaptor2d_Curve2d.hxx".}
proc value*(this: Adaptor2dCurve2d; u: cfloat): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor2d_Curve2d.hxx".}
proc d0*(this: Adaptor2dCurve2d; u: cfloat; p: var gp_Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor2d_Curve2d.hxx".}
proc d1*(this: Adaptor2dCurve2d; u: cfloat; p: var gp_Pnt2d; v: var gp_Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Adaptor2d_Curve2d.hxx".}
proc d2*(this: Adaptor2dCurve2d; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Adaptor2d_Curve2d.hxx".}
proc d3*(this: Adaptor2dCurve2d; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Adaptor2d_Curve2d.hxx".}
proc dn*(this: Adaptor2dCurve2d; u: cfloat; n: cint): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Adaptor2d_Curve2d.hxx".}
proc resolution*(this: Adaptor2dCurve2d; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "Adaptor2d_Curve2d.hxx".}
proc getType*(this: Adaptor2dCurve2d): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor2d_Curve2d.hxx".}
proc line*(this: Adaptor2dCurve2d): gp_Lin2d {.noSideEffect, cdecl, importcpp: "Line",
                                        header: "Adaptor2d_Curve2d.hxx".}
proc circle*(this: Adaptor2dCurve2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Circle", header: "Adaptor2d_Curve2d.hxx".}
proc ellipse*(this: Adaptor2dCurve2d): gp_Elips2d {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Adaptor2d_Curve2d.hxx".}
proc hyperbola*(this: Adaptor2dCurve2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Adaptor2d_Curve2d.hxx".}
proc parabola*(this: Adaptor2dCurve2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Adaptor2d_Curve2d.hxx".}
proc degree*(this: Adaptor2dCurve2d): cint {.noSideEffect, cdecl, importcpp: "Degree",
    header: "Adaptor2d_Curve2d.hxx".}
proc isRational*(this: Adaptor2dCurve2d): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Adaptor2d_Curve2d.hxx".}
proc nbPoles*(this: Adaptor2dCurve2d): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Adaptor2d_Curve2d.hxx".}
proc nbKnots*(this: Adaptor2dCurve2d): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Adaptor2d_Curve2d.hxx".}
proc nbSamples*(this: Adaptor2dCurve2d): cint {.noSideEffect, cdecl,
    importcpp: "NbSamples", header: "Adaptor2d_Curve2d.hxx".}
proc bezier*(this: Adaptor2dCurve2d): Handle[Geom2dBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Adaptor2d_Curve2d.hxx".}
proc bSpline*(this: Adaptor2dCurve2d): Handle[Geom2dBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "Adaptor2d_Curve2d.hxx".}
proc destroyAdaptor2dCurve2d*(this: var Adaptor2dCurve2d) {.cdecl,
    importcpp: "#.~Adaptor2d_Curve2d()", header: "Adaptor2d_Curve2d.hxx".}


