import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import adaptor3d_types
import ../../tkmath/geomabs/geomabs_types
import ../tkg3d/geom/geom_types



##  Created on: 1994-02-23
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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





proc curve*(this: Adaptor3dHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "Adaptor3d_HCurve.hxx".}
proc getCurve*(this: var Adaptor3dHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "Adaptor3d_HCurve.hxx".}
proc firstParameter*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Adaptor3d_HCurve.hxx".}
proc lastParameter*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Adaptor3d_HCurve.hxx".}
proc continuity*(this: Adaptor3dHCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Adaptor3d_HCurve.hxx".}
proc nbIntervals*(this: Adaptor3dHCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Adaptor3d_HCurve.hxx".}
proc intervals*(this: Adaptor3dHCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Adaptor3d_HCurve.hxx".}
proc trim*(this: Adaptor3dHCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "Adaptor3d_HCurve.hxx".}
proc isClosed*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Adaptor3d_HCurve.hxx".}
proc isPeriodic*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Adaptor3d_HCurve.hxx".}
proc period*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Adaptor3d_HCurve.hxx".}
proc value*(this: Adaptor3dHCurve; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor3d_HCurve.hxx".}
proc d0*(this: Adaptor3dHCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor3d_HCurve.hxx".}
proc d1*(this: Adaptor3dHCurve; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Adaptor3d_HCurve.hxx".}
proc d2*(this: Adaptor3dHCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Adaptor3d_HCurve.hxx".}
proc d3*(this: Adaptor3dHCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Adaptor3d_HCurve.hxx".}
proc dn*(this: Adaptor3dHCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Adaptor3d_HCurve.hxx".}
proc resolution*(this: Adaptor3dHCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "Adaptor3d_HCurve.hxx".}
proc getType*(this: Adaptor3dHCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor3d_HCurve.hxx".}
proc line*(this: Adaptor3dHCurve): LinObj {.noSideEffect, cdecl, importcpp: "Line",
                                     header: "Adaptor3d_HCurve.hxx".}
proc circle*(this: Adaptor3dHCurve): CircObj {.noSideEffect, cdecl, importcpp: "Circle",
                                        header: "Adaptor3d_HCurve.hxx".}
proc ellipse*(this: Adaptor3dHCurve): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Adaptor3d_HCurve.hxx".}
proc hyperbola*(this: Adaptor3dHCurve): HyprObj {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Adaptor3d_HCurve.hxx".}
proc parabola*(this: Adaptor3dHCurve): ParabObj {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Adaptor3d_HCurve.hxx".}
proc degree*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                        header: "Adaptor3d_HCurve.hxx".}
proc isRational*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Adaptor3d_HCurve.hxx".}
proc nbPoles*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Adaptor3d_HCurve.hxx".}
proc nbKnots*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Adaptor3d_HCurve.hxx".}
proc bezier*(this: Adaptor3dHCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", header: "Adaptor3d_HCurve.hxx".}
proc bSpline*(this: Adaptor3dHCurve): Handle[GeomBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "BSpline", header: "Adaptor3d_HCurve.hxx".}
proc offsetCurve*(this: Adaptor3dHCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", header: "Adaptor3d_HCurve.hxx".}

