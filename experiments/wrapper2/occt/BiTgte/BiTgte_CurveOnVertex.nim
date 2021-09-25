##  Created on: 1997-03-21
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
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
  BiTgteCurveOnVertex* {.importcpp: "BiTgte_CurveOnVertex",
                        header: "BiTgte_CurveOnVertex.hxx", bycopy.} = object of Adaptor3dCurve


proc constructBiTgteCurveOnVertex*(): BiTgteCurveOnVertex {.constructor,
    importcpp: "BiTgte_CurveOnVertex(@)", header: "BiTgte_CurveOnVertex.hxx".}
proc constructBiTgteCurveOnVertex*(eonF: TopoDS_Edge; v: TopoDS_Vertex): BiTgteCurveOnVertex {.
    constructor, importcpp: "BiTgte_CurveOnVertex(@)",
    header: "BiTgte_CurveOnVertex.hxx".}
proc init*(this: var BiTgteCurveOnVertex; eonF: TopoDS_Edge; v: TopoDS_Vertex) {.
    importcpp: "Init", header: "BiTgte_CurveOnVertex.hxx".}
proc firstParameter*(this: BiTgteCurveOnVertex): float {.noSideEffect,
    importcpp: "FirstParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc lastParameter*(this: BiTgteCurveOnVertex): float {.noSideEffect,
    importcpp: "LastParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc continuity*(this: BiTgteCurveOnVertex): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BiTgte_CurveOnVertex.hxx".}
proc nbIntervals*(this: BiTgteCurveOnVertex; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BiTgte_CurveOnVertex.hxx".}
proc intervals*(this: BiTgteCurveOnVertex; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BiTgte_CurveOnVertex.hxx".}
proc trim*(this: BiTgteCurveOnVertex; first: float; last: float; tol: float): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim",
                      header: "BiTgte_CurveOnVertex.hxx".}
proc isClosed*(this: BiTgteCurveOnVertex): bool {.noSideEffect,
    importcpp: "IsClosed", header: "BiTgte_CurveOnVertex.hxx".}
proc isPeriodic*(this: BiTgteCurveOnVertex): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "BiTgte_CurveOnVertex.hxx".}
proc period*(this: BiTgteCurveOnVertex): float {.noSideEffect, importcpp: "Period",
    header: "BiTgte_CurveOnVertex.hxx".}
proc value*(this: BiTgteCurveOnVertex; u: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "BiTgte_CurveOnVertex.hxx".}
proc d0*(this: BiTgteCurveOnVertex; u: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "BiTgte_CurveOnVertex.hxx".}
proc d1*(this: BiTgteCurveOnVertex; u: float; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "BiTgte_CurveOnVertex.hxx".}
proc d2*(this: BiTgteCurveOnVertex; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "BiTgte_CurveOnVertex.hxx".}
proc d3*(this: BiTgteCurveOnVertex; u: float; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3",
                    header: "BiTgte_CurveOnVertex.hxx".}
proc dn*(this: BiTgteCurveOnVertex; u: float; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "BiTgte_CurveOnVertex.hxx".}
proc resolution*(this: BiTgteCurveOnVertex; r3d: float): float {.noSideEffect,
    importcpp: "Resolution", header: "BiTgte_CurveOnVertex.hxx".}
proc getType*(this: BiTgteCurveOnVertex): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "BiTgte_CurveOnVertex.hxx".}
proc line*(this: BiTgteCurveOnVertex): Lin {.noSideEffect, importcpp: "Line",
    header: "BiTgte_CurveOnVertex.hxx".}
proc circle*(this: BiTgteCurveOnVertex): Circ {.noSideEffect, importcpp: "Circle",
    header: "BiTgte_CurveOnVertex.hxx".}
proc ellipse*(this: BiTgteCurveOnVertex): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "BiTgte_CurveOnVertex.hxx".}
proc hyperbola*(this: BiTgteCurveOnVertex): Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BiTgte_CurveOnVertex.hxx".}
proc parabola*(this: BiTgteCurveOnVertex): Parab {.noSideEffect,
    importcpp: "Parabola", header: "BiTgte_CurveOnVertex.hxx".}
proc degree*(this: BiTgteCurveOnVertex): int {.noSideEffect, importcpp: "Degree",
    header: "BiTgte_CurveOnVertex.hxx".}
proc isRational*(this: BiTgteCurveOnVertex): bool {.noSideEffect,
    importcpp: "IsRational", header: "BiTgte_CurveOnVertex.hxx".}
proc nbPoles*(this: BiTgteCurveOnVertex): int {.noSideEffect, importcpp: "NbPoles",
    header: "BiTgte_CurveOnVertex.hxx".}
proc nbKnots*(this: BiTgteCurveOnVertex): int {.noSideEffect, importcpp: "NbKnots",
    header: "BiTgte_CurveOnVertex.hxx".}
proc bezier*(this: BiTgteCurveOnVertex): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BiTgte_CurveOnVertex.hxx".}
proc bSpline*(this: BiTgteCurveOnVertex): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BiTgte_CurveOnVertex.hxx".}
