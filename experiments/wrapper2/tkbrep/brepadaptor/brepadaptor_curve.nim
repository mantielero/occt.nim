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
    importcpp: "BRepAdaptor_Curve(@)", dynlib: tkbrep.}
proc newBRepAdaptorCurve*(e: TopoDS_Edge): BRepAdaptorCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_Curve(@)", dynlib: tkbrep.}
proc newBRepAdaptorCurve*(e: TopoDS_Edge; f: TopoDS_Face): BRepAdaptorCurve {.cdecl,
    constructor, importcpp: "BRepAdaptor_Curve(@)", dynlib: tkbrep.}
proc reset*(this: var BRepAdaptorCurve) {.cdecl, importcpp: "Reset", dynlib: tkbrep.}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge) {.cdecl,
    importcpp: "Initialize", dynlib: tkbrep.}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge; f: TopoDS_Face) {.cdecl,
    importcpp: "Initialize", dynlib: tkbrep.}
proc trsf*(this: BRepAdaptorCurve): Trsf {.noSideEffect, cdecl, importcpp: "Trsf",
                                       dynlib: tkbrep.}
proc is3DCurve*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "Is3DCurve", dynlib: tkbrep.}
proc isCurveOnSurface*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", dynlib: tkbrep.}
proc curve*(this: BRepAdaptorCurve): GeomAdaptorCurve {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkbrep.}
proc curveOnSurface*(this: BRepAdaptorCurve): Adaptor3dCurveOnSurface {.
    noSideEffect, cdecl, importcpp: "CurveOnSurface", dynlib: tkbrep.}
proc edge*(this: BRepAdaptorCurve): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkbrep.}
proc tolerance*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkbrep.}
proc firstParameter*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkbrep.}
proc lastParameter*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkbrep.}
proc continuity*(this: BRepAdaptorCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc nbIntervals*(this: BRepAdaptorCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkbrep.}
proc intervals*(this: BRepAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkbrep.}
proc trim*(this: BRepAdaptorCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkbrep.}
proc isClosed*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkbrep.}
proc isPeriodic*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkbrep.}
proc period*(this: BRepAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkbrep.}
proc value*(this: BRepAdaptorCurve; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkbrep.}
proc d0*(this: BRepAdaptorCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkbrep.}
proc d1*(this: BRepAdaptorCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkbrep.}
proc d2*(this: BRepAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkbrep.}
proc d3*(this: BRepAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkbrep.}
proc dn*(this: BRepAdaptorCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkbrep.}
proc resolution*(this: BRepAdaptorCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkbrep.}
proc getType*(this: BRepAdaptorCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkbrep.}
proc line*(this: BRepAdaptorCurve): Lin {.noSideEffect, cdecl, importcpp: "Line",
                                      dynlib: tkbrep.}
proc circle*(this: BRepAdaptorCurve): Circ {.noSideEffect, cdecl, importcpp: "Circle",
    dynlib: tkbrep.}
proc ellipse*(this: BRepAdaptorCurve): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkbrep.}
proc hyperbola*(this: BRepAdaptorCurve): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkbrep.}
proc parabola*(this: BRepAdaptorCurve): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkbrep.}
proc degree*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    dynlib: tkbrep.}
proc isRational*(this: BRepAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkbrep.}
proc nbPoles*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkbrep.}
proc nbKnots*(this: BRepAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkbrep.}
proc bezier*(this: BRepAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", dynlib: tkbrep.}
proc bSpline*(this: BRepAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkbrep.}
proc offsetCurve*(this: BRepAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", dynlib: tkbrep.}