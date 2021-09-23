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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Trsf, ../GeomAdaptor/GeomAdaptor_Curve,
  ../TopoDS/TopoDS_Edge, ../Adaptor3d/Adaptor3d_Curve,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_CurveType

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
  BRepAdaptor_Curve* {.importcpp: "BRepAdaptor_Curve",
                      header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3d_Curve ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## undefined
                                                                                     ## Curve
                                                                                     ## with
                                                                                     ## no
                                                                                     ## Edge
                                                                                     ## loaded.


proc constructBRepAdaptor_Curve*(): BRepAdaptor_Curve {.constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc constructBRepAdaptor_Curve*(E: TopoDS_Edge): BRepAdaptor_Curve {.constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc constructBRepAdaptor_Curve*(E: TopoDS_Edge; F: TopoDS_Face): BRepAdaptor_Curve {.
    constructor, importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc Reset*(this: var BRepAdaptor_Curve) {.importcpp: "Reset",
                                       header: "BRepAdaptor_Curve.hxx".}
proc Initialize*(this: var BRepAdaptor_Curve; E: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc Initialize*(this: var BRepAdaptor_Curve; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc Trsf*(this: BRepAdaptor_Curve): gp_Trsf {.noSideEffect, importcpp: "Trsf",
    header: "BRepAdaptor_Curve.hxx".}
proc Is3DCurve*(this: BRepAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "Is3DCurve", header: "BRepAdaptor_Curve.hxx".}
proc IsCurveOnSurface*(this: BRepAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc Curve*(this: BRepAdaptor_Curve): GeomAdaptor_Curve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_Curve.hxx".}
proc CurveOnSurface*(this: BRepAdaptor_Curve): Adaptor3d_CurveOnSurface {.
    noSideEffect, importcpp: "CurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc Edge*(this: BRepAdaptor_Curve): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepAdaptor_Curve.hxx".}
proc Tolerance*(this: BRepAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRepAdaptor_Curve.hxx".}
proc FirstParameter*(this: BRepAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepAdaptor_Curve.hxx".}
proc LastParameter*(this: BRepAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "BRepAdaptor_Curve.hxx".}
proc Continuity*(this: BRepAdaptor_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepAdaptor_Curve.hxx".}
proc NbIntervals*(this: BRepAdaptor_Curve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepAdaptor_Curve.hxx".}
proc Intervals*(this: BRepAdaptor_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "BRepAdaptor_Curve.hxx".}
proc Trim*(this: BRepAdaptor_Curve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "BRepAdaptor_Curve.hxx".}
proc IsClosed*(this: BRepAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "BRepAdaptor_Curve.hxx".}
proc IsPeriodic*(this: BRepAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BRepAdaptor_Curve.hxx".}
proc Period*(this: BRepAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "BRepAdaptor_Curve.hxx".}
proc Value*(this: BRepAdaptor_Curve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "BRepAdaptor_Curve.hxx".}
proc D0*(this: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRepAdaptor_Curve.hxx".}
proc D1*(this: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "BRepAdaptor_Curve.hxx".}
proc D2*(this: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "BRepAdaptor_Curve.hxx".}
proc D3*(this: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "BRepAdaptor_Curve.hxx".}
proc DN*(this: BRepAdaptor_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "BRepAdaptor_Curve.hxx".}
proc Resolution*(this: BRepAdaptor_Curve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "BRepAdaptor_Curve.hxx".}
proc GetType*(this: BRepAdaptor_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "BRepAdaptor_Curve.hxx".}
proc Line*(this: BRepAdaptor_Curve): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "BRepAdaptor_Curve.hxx".}
proc Circle*(this: BRepAdaptor_Curve): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "BRepAdaptor_Curve.hxx".}
proc Ellipse*(this: BRepAdaptor_Curve): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "BRepAdaptor_Curve.hxx".}
proc Hyperbola*(this: BRepAdaptor_Curve): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BRepAdaptor_Curve.hxx".}
proc Parabola*(this: BRepAdaptor_Curve): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "BRepAdaptor_Curve.hxx".}
proc Degree*(this: BRepAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "BRepAdaptor_Curve.hxx".}
proc IsRational*(this: BRepAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepAdaptor_Curve.hxx".}
proc NbPoles*(this: BRepAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "BRepAdaptor_Curve.hxx".}
proc NbKnots*(this: BRepAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "BRepAdaptor_Curve.hxx".}
proc Bezier*(this: BRepAdaptor_Curve): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BRepAdaptor_Curve.hxx".}
proc BSpline*(this: BRepAdaptor_Curve): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BRepAdaptor_Curve.hxx".}
proc OffsetCurve*(this: BRepAdaptor_Curve): handle[Geom_OffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "BRepAdaptor_Curve.hxx".}