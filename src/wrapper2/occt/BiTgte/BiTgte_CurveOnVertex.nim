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
proc firstParameter*(this: BiTgteCurveOnVertex): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc lastParameter*(this: BiTgteCurveOnVertex): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc continuity*(this: BiTgteCurveOnVertex): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BiTgte_CurveOnVertex.hxx".}
proc nbIntervals*(this: BiTgteCurveOnVertex; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BiTgte_CurveOnVertex.hxx".}
proc intervals*(this: BiTgteCurveOnVertex; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BiTgte_CurveOnVertex.hxx".}
proc trim*(this: BiTgteCurveOnVertex; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Trim", header: "BiTgte_CurveOnVertex.hxx".}
proc isClosed*(this: BiTgteCurveOnVertex): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "BiTgte_CurveOnVertex.hxx".}
proc isPeriodic*(this: BiTgteCurveOnVertex): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BiTgte_CurveOnVertex.hxx".}
proc period*(this: BiTgteCurveOnVertex): StandardReal {.noSideEffect,
    importcpp: "Period", header: "BiTgte_CurveOnVertex.hxx".}
proc value*(this: BiTgteCurveOnVertex; u: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Value", header: "BiTgte_CurveOnVertex.hxx".}
proc d0*(this: BiTgteCurveOnVertex; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "BiTgte_CurveOnVertex.hxx".}
proc d1*(this: BiTgteCurveOnVertex; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "BiTgte_CurveOnVertex.hxx".}
proc d2*(this: BiTgteCurveOnVertex; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "BiTgte_CurveOnVertex.hxx".}
proc d3*(this: BiTgteCurveOnVertex; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "BiTgte_CurveOnVertex.hxx".}
proc dn*(this: BiTgteCurveOnVertex; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "BiTgte_CurveOnVertex.hxx".}
proc resolution*(this: BiTgteCurveOnVertex; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "BiTgte_CurveOnVertex.hxx".}
proc getType*(this: BiTgteCurveOnVertex): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "BiTgte_CurveOnVertex.hxx".}
proc line*(this: BiTgteCurveOnVertex): GpLin {.noSideEffect, importcpp: "Line",
    header: "BiTgte_CurveOnVertex.hxx".}
proc circle*(this: BiTgteCurveOnVertex): GpCirc {.noSideEffect, importcpp: "Circle",
    header: "BiTgte_CurveOnVertex.hxx".}
proc ellipse*(this: BiTgteCurveOnVertex): GpElips {.noSideEffect,
    importcpp: "Ellipse", header: "BiTgte_CurveOnVertex.hxx".}
proc hyperbola*(this: BiTgteCurveOnVertex): GpHypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BiTgte_CurveOnVertex.hxx".}
proc parabola*(this: BiTgteCurveOnVertex): GpParab {.noSideEffect,
    importcpp: "Parabola", header: "BiTgte_CurveOnVertex.hxx".}
proc degree*(this: BiTgteCurveOnVertex): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "BiTgte_CurveOnVertex.hxx".}
proc isRational*(this: BiTgteCurveOnVertex): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BiTgte_CurveOnVertex.hxx".}
proc nbPoles*(this: BiTgteCurveOnVertex): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "BiTgte_CurveOnVertex.hxx".}
proc nbKnots*(this: BiTgteCurveOnVertex): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "BiTgte_CurveOnVertex.hxx".}
proc bezier*(this: BiTgteCurveOnVertex): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BiTgte_CurveOnVertex.hxx".}
proc bSpline*(this: BiTgteCurveOnVertex): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BiTgte_CurveOnVertex.hxx".}

