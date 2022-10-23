##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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

discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_CurveOnSurface"
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
discard "forward decl of Geom_OffsetCurve"
type
  BRepAdaptorCurve* {.importcpp: "BRepAdaptor_Curve",
                     header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## undefined
                                                                                   ## Curve
                                                                                   ## with
                                                                                   ## no
                                                                                   ## Edge
                                                                                   ## loaded.


proc newBRepAdaptorCurve*(): BRepAdaptorCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc newBRepAdaptorCurve*(e: TopoDS_Edge): BRepAdaptorCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc newBRepAdaptorCurve*(e: TopoDS_Edge; f: TopoDS_Face): BRepAdaptorCurve {.cdecl,
    constructor, importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc reset*(this: var BRepAdaptorCurve) {.cdecl, importcpp: "Reset", header: "BRepAdaptor_Curve.hxx".}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge) {.cdecl,
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge; f: TopoDS_Face) {.cdecl,
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc trsf*(this: BRepAdaptorCurve): TrsfObj {.noSideEffect, cdecl, importcpp: "Trsf",
                                       header: "BRepAdaptor_Curve.hxx".}
proc is3DCurve*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "Is3DCurve", header: "BRepAdaptor_Curve.hxx".}
proc isCurveOnSurface*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc curve*(this: BRepAdaptorCurve): GeomAdaptorCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "BRepAdaptor_Curve.hxx".}
proc curveOnSurface*(this: BRepAdaptorCurve): Adaptor3dCurveOnSurface {.
    noSideEffect, cdecl, importcpp: "CurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc edge*(this: BRepAdaptorCurve): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", header: "BRepAdaptor_Curve.hxx".}
proc tolerance*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepAdaptor_Curve.hxx".}
proc firstParameter*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "BRepAdaptor_Curve.hxx".}
proc lastParameter*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "BRepAdaptor_Curve.hxx".}
proc continuity*(this: BRepAdaptorCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "BRepAdaptor_Curve.hxx".}
proc nbIntervals*(this: BRepAdaptorCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "BRepAdaptor_Curve.hxx".}
proc intervals*(this: BRepAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BRepAdaptor_Curve.hxx".}
proc trim*(this: BRepAdaptorCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "BRepAdaptor_Curve.hxx".}
proc isClosed*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "BRepAdaptor_Curve.hxx".}
proc isPeriodic*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "BRepAdaptor_Curve.hxx".}
proc period*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "BRepAdaptor_Curve.hxx".}
proc value*(this: BRepAdaptorCurve; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "BRepAdaptor_Curve.hxx".}
proc d0*(this: BRepAdaptorCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "BRepAdaptor_Curve.hxx".}
proc d1*(this: BRepAdaptorCurve; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "BRepAdaptor_Curve.hxx".}
proc d2*(this: BRepAdaptorCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "BRepAdaptor_Curve.hxx".}
proc d3*(this: BRepAdaptorCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "BRepAdaptor_Curve.hxx".}
proc dn*(this: BRepAdaptorCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "BRepAdaptor_Curve.hxx".}
proc resolution*(this: BRepAdaptorCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "BRepAdaptor_Curve.hxx".}
proc getType*(this: BRepAdaptorCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "BRepAdaptor_Curve.hxx".}
proc line*(this: BRepAdaptorCurve): LinObj {.noSideEffect, cdecl, importcpp: "Line",
                                      header: "BRepAdaptor_Curve.hxx".}
proc circle*(this: BRepAdaptorCurve): CircObj {.noSideEffect, cdecl, importcpp: "Circle",
    header: "BRepAdaptor_Curve.hxx".}
proc ellipse*(this: BRepAdaptorCurve): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "BRepAdaptor_Curve.hxx".}
proc hyperbola*(this: BRepAdaptorCurve): HyprObj {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "BRepAdaptor_Curve.hxx".}
proc parabola*(this: BRepAdaptorCurve): ParabObj {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "BRepAdaptor_Curve.hxx".}
proc degree*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    header: "BRepAdaptor_Curve.hxx".}
proc isRational*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepAdaptor_Curve.hxx".}
proc nbPoles*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "BRepAdaptor_Curve.hxx".}
proc nbKnots*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "BRepAdaptor_Curve.hxx".}
proc bezier*(this: BRepAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", header: "BRepAdaptor_Curve.hxx".}
proc bSpline*(this: BRepAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "BRepAdaptor_Curve.hxx".}
proc offsetCurve*(this: BRepAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", header: "BRepAdaptor_Curve.hxx".}