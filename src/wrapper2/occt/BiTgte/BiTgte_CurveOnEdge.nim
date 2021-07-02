##  Created on: 1997-01-10
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  BiTgteCurveOnEdge* {.importcpp: "BiTgte_CurveOnEdge",
                      header: "BiTgte_CurveOnEdge.hxx", bycopy.} = object of Adaptor3dCurve


proc constructBiTgteCurveOnEdge*(): BiTgteCurveOnEdge {.constructor,
    importcpp: "BiTgte_CurveOnEdge(@)", header: "BiTgte_CurveOnEdge.hxx".}
proc constructBiTgteCurveOnEdge*(eonF: TopoDS_Edge; edge: TopoDS_Edge): BiTgteCurveOnEdge {.
    constructor, importcpp: "BiTgte_CurveOnEdge(@)",
    header: "BiTgte_CurveOnEdge.hxx".}
proc init*(this: var BiTgteCurveOnEdge; eonF: TopoDS_Edge; edge: TopoDS_Edge) {.
    importcpp: "Init", header: "BiTgte_CurveOnEdge.hxx".}
proc firstParameter*(this: BiTgteCurveOnEdge): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "BiTgte_CurveOnEdge.hxx".}
proc lastParameter*(this: BiTgteCurveOnEdge): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "BiTgte_CurveOnEdge.hxx".}
proc continuity*(this: BiTgteCurveOnEdge): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BiTgte_CurveOnEdge.hxx".}
proc nbIntervals*(this: BiTgteCurveOnEdge; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BiTgte_CurveOnEdge.hxx".}
proc intervals*(this: BiTgteCurveOnEdge; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BiTgte_CurveOnEdge.hxx".}
proc trim*(this: BiTgteCurveOnEdge; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Trim", header: "BiTgte_CurveOnEdge.hxx".}
proc isClosed*(this: BiTgteCurveOnEdge): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "BiTgte_CurveOnEdge.hxx".}
proc isPeriodic*(this: BiTgteCurveOnEdge): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BiTgte_CurveOnEdge.hxx".}
proc period*(this: BiTgteCurveOnEdge): StandardReal {.noSideEffect,
    importcpp: "Period", header: "BiTgte_CurveOnEdge.hxx".}
proc value*(this: BiTgteCurveOnEdge; u: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Value", header: "BiTgte_CurveOnEdge.hxx".}
proc d0*(this: BiTgteCurveOnEdge; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "BiTgte_CurveOnEdge.hxx".}
proc d1*(this: BiTgteCurveOnEdge; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "BiTgte_CurveOnEdge.hxx".}
proc d2*(this: BiTgteCurveOnEdge; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "BiTgte_CurveOnEdge.hxx".}
proc d3*(this: BiTgteCurveOnEdge; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "BiTgte_CurveOnEdge.hxx".}
proc dn*(this: BiTgteCurveOnEdge; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "BiTgte_CurveOnEdge.hxx".}
proc resolution*(this: BiTgteCurveOnEdge; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "BiTgte_CurveOnEdge.hxx".}
proc getType*(this: BiTgteCurveOnEdge): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "BiTgte_CurveOnEdge.hxx".}
proc line*(this: BiTgteCurveOnEdge): GpLin {.noSideEffect, importcpp: "Line",
    header: "BiTgte_CurveOnEdge.hxx".}
proc circle*(this: BiTgteCurveOnEdge): GpCirc {.noSideEffect, importcpp: "Circle",
    header: "BiTgte_CurveOnEdge.hxx".}
proc ellipse*(this: BiTgteCurveOnEdge): GpElips {.noSideEffect, importcpp: "Ellipse",
    header: "BiTgte_CurveOnEdge.hxx".}
proc hyperbola*(this: BiTgteCurveOnEdge): GpHypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BiTgte_CurveOnEdge.hxx".}
proc parabola*(this: BiTgteCurveOnEdge): GpParab {.noSideEffect,
    importcpp: "Parabola", header: "BiTgte_CurveOnEdge.hxx".}
proc degree*(this: BiTgteCurveOnEdge): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "BiTgte_CurveOnEdge.hxx".}
proc isRational*(this: BiTgteCurveOnEdge): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BiTgte_CurveOnEdge.hxx".}
proc nbPoles*(this: BiTgteCurveOnEdge): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "BiTgte_CurveOnEdge.hxx".}
proc nbKnots*(this: BiTgteCurveOnEdge): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "BiTgte_CurveOnEdge.hxx".}
proc bezier*(this: BiTgteCurveOnEdge): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BiTgte_CurveOnEdge.hxx".}
proc bSpline*(this: BiTgteCurveOnEdge): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BiTgte_CurveOnEdge.hxx".}

