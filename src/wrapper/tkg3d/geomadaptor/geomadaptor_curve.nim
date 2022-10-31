import ../../tkmath/gp/gp_types
import geomadaptor_types
import ../adaptor3d/adaptor3d_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../geom/geom_types
import ../../tkmath/geomabs/geomabs_types





##  Created on: 1992-09-01
##  Created by: Modelistation
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



proc newGeomAdaptorCurve*(): GeomAdaptorCurve {.cdecl, constructor,
    importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc newGeomAdaptorCurve*(c: Handle[GeomCurve]): GeomAdaptorCurve {.cdecl,
    constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc newGeomAdaptorCurve*(c: Handle[GeomCurve]; uFirst: cfloat; uLast: cfloat): GeomAdaptorCurve {.
    cdecl, constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc reset*(this: var GeomAdaptorCurve) {.cdecl, importcpp: "Reset", header: "GeomAdaptor_Curve.hxx".}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Load", header: "GeomAdaptor_Curve.hxx".}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]; uFirst: cfloat;
          uLast: cfloat) {.cdecl, importcpp: "Load", header: "GeomAdaptor_Curve.hxx".}
proc curve*(this: GeomAdaptorCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", header: "GeomAdaptor_Curve.hxx".}
proc firstParameter*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "GeomAdaptor_Curve.hxx".}
proc lastParameter*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "GeomAdaptor_Curve.hxx".}
proc continuity*(this: GeomAdaptorCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "GeomAdaptor_Curve.hxx".}
proc nbIntervals*(this: GeomAdaptorCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "GeomAdaptor_Curve.hxx".}
proc intervals*(this: GeomAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "GeomAdaptor_Curve.hxx".}
proc trim*(this: GeomAdaptorCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "GeomAdaptor_Curve.hxx".}
proc isClosed*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "GeomAdaptor_Curve.hxx".}
proc isPeriodic*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "GeomAdaptor_Curve.hxx".}
proc period*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "GeomAdaptor_Curve.hxx".}
proc value*(this: GeomAdaptorCurve; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomAdaptor_Curve.hxx".}
proc d0*(this: GeomAdaptorCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "GeomAdaptor_Curve.hxx".}
proc d1*(this: GeomAdaptorCurve; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "GeomAdaptor_Curve.hxx".}
proc d2*(this: GeomAdaptorCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "GeomAdaptor_Curve.hxx".}
proc d3*(this: GeomAdaptorCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "GeomAdaptor_Curve.hxx".}
proc dn*(this: GeomAdaptorCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "GeomAdaptor_Curve.hxx".}
proc resolution*(this: GeomAdaptorCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "GeomAdaptor_Curve.hxx".}
proc getType*(this: GeomAdaptorCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "GeomAdaptor_Curve.hxx".}
proc line*(this: GeomAdaptorCurve): LinObj {.noSideEffect, cdecl, importcpp: "Line",
                                      header: "GeomAdaptor_Curve.hxx".}
proc circle*(this: GeomAdaptorCurve): CircObj {.noSideEffect, cdecl, importcpp: "Circle",
    header: "GeomAdaptor_Curve.hxx".}
proc ellipse*(this: GeomAdaptorCurve): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "GeomAdaptor_Curve.hxx".}
proc hyperbola*(this: GeomAdaptorCurve): HyprObj {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "GeomAdaptor_Curve.hxx".}
proc parabola*(this: GeomAdaptorCurve): ParabObj {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "GeomAdaptor_Curve.hxx".}
proc degree*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    header: "GeomAdaptor_Curve.hxx".}
proc isRational*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "GeomAdaptor_Curve.hxx".}
proc nbPoles*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "GeomAdaptor_Curve.hxx".}
proc nbKnots*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "GeomAdaptor_Curve.hxx".}
proc bezier*(this: GeomAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", header: "GeomAdaptor_Curve.hxx".}
proc bSpline*(this: GeomAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "GeomAdaptor_Curve.hxx".}
proc offsetCurve*(this: GeomAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", header: "GeomAdaptor_Curve.hxx".}


