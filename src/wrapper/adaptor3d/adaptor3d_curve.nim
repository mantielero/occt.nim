import ../gp/gp_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import adaptor3d_types
import ../geom/geom_types
import ../geomabs/geomabs_types





##  Created on: 1993-03-31
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



proc firstParameter*(this: Adaptor3dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Adaptor3d_Curve.hxx".}
proc lastParameter*(this: Adaptor3dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Adaptor3d_Curve.hxx".}
proc continuity*(this: Adaptor3dCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Adaptor3d_Curve.hxx".}
proc nbIntervals*(this: Adaptor3dCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Adaptor3d_Curve.hxx".}
proc intervals*(this: Adaptor3dCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Adaptor3d_Curve.hxx".}
proc trim*(this: Adaptor3dCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "Adaptor3d_Curve.hxx".}
proc isClosed*(this: Adaptor3dCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Adaptor3d_Curve.hxx".}
proc isPeriodic*(this: Adaptor3dCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Adaptor3d_Curve.hxx".}
proc period*(this: Adaptor3dCurve): cfloat {.noSideEffect, cdecl, importcpp: "Period",
    header: "Adaptor3d_Curve.hxx".}
proc value*(this: Adaptor3dCurve; u: cfloat): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor3d_Curve.hxx".}
proc d0*(this: Adaptor3dCurve; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor3d_Curve.hxx".}
proc d1*(this: Adaptor3dCurve; u: cfloat; p: var gp_Pnt; v: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Adaptor3d_Curve.hxx".}
proc d2*(this: Adaptor3dCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Adaptor3d_Curve.hxx".}
proc d3*(this: Adaptor3dCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Adaptor3d_Curve.hxx".}
proc dn*(this: Adaptor3dCurve; u: cfloat; n: cint): gp_Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Adaptor3d_Curve.hxx".}
proc resolution*(this: Adaptor3dCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "Adaptor3d_Curve.hxx".}
proc getType*(this: Adaptor3dCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor3d_Curve.hxx".}
proc line*(this: Adaptor3dCurve): gp_Lin {.noSideEffect, cdecl, importcpp: "Line",
                                    header: "Adaptor3d_Curve.hxx".}
proc circle*(this: Adaptor3dCurve): gp_Circ {.noSideEffect, cdecl, importcpp: "Circle",
                                       header: "Adaptor3d_Curve.hxx".}
proc ellipse*(this: Adaptor3dCurve): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Adaptor3d_Curve.hxx".}
proc hyperbola*(this: Adaptor3dCurve): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Adaptor3d_Curve.hxx".}
proc parabola*(this: Adaptor3dCurve): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Adaptor3d_Curve.hxx".}
proc degree*(this: Adaptor3dCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                       header: "Adaptor3d_Curve.hxx".}
proc isRational*(this: Adaptor3dCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Adaptor3d_Curve.hxx".}
proc nbPoles*(this: Adaptor3dCurve): cint {.noSideEffect, cdecl, importcpp: "NbPoles",
                                        header: "Adaptor3d_Curve.hxx".}
proc nbKnots*(this: Adaptor3dCurve): cint {.noSideEffect, cdecl, importcpp: "NbKnots",
                                        header: "Adaptor3d_Curve.hxx".}
proc bezier*(this: Adaptor3dCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", header: "Adaptor3d_Curve.hxx".}
proc bSpline*(this: Adaptor3dCurve): Handle[GeomBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "BSpline", header: "Adaptor3d_Curve.hxx".}
proc offsetCurve*(this: Adaptor3dCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", header: "Adaptor3d_Curve.hxx".}
proc destroyAdaptor3dCurve*(this: var Adaptor3dCurve) {.cdecl,
    importcpp: "#.~Adaptor3d_Curve()", header: "Adaptor3d_Curve.hxx".}


