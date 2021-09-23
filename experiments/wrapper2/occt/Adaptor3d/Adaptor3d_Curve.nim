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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
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
  Adaptor3d_Curve* {.importcpp: "Adaptor3d_Curve", header: "Adaptor3d_Curve.hxx",
                    bycopy.} = object


proc FirstParameter*(this: Adaptor3d_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_Curve.hxx".}
proc LastParameter*(this: Adaptor3d_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_Curve.hxx".}
proc Continuity*(this: Adaptor3d_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_Curve.hxx".}
proc NbIntervals*(this: Adaptor3d_Curve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor3d_Curve.hxx".}
proc Intervals*(this: Adaptor3d_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor3d_Curve.hxx".}
proc Trim*(this: Adaptor3d_Curve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor3d_Curve.hxx".}
proc IsClosed*(this: Adaptor3d_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor3d_Curve.hxx".}
proc IsPeriodic*(this: Adaptor3d_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor3d_Curve.hxx".}
proc Period*(this: Adaptor3d_Curve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Adaptor3d_Curve.hxx".}
proc Value*(this: Adaptor3d_Curve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_Curve.hxx".}
proc D0*(this: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Adaptor3d_Curve.hxx".}
proc D1*(this: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Adaptor3d_Curve.hxx".}
proc D2*(this: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2", header: "Adaptor3d_Curve.hxx".}
proc D3*(this: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Adaptor3d_Curve.hxx".}
proc DN*(this: Adaptor3d_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Adaptor3d_Curve.hxx".}
proc Resolution*(this: Adaptor3d_Curve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor3d_Curve.hxx".}
proc GetType*(this: Adaptor3d_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_Curve.hxx".}
proc Line*(this: Adaptor3d_Curve): gp_Lin {.noSideEffect, importcpp: "Line",
                                        header: "Adaptor3d_Curve.hxx".}
proc Circle*(this: Adaptor3d_Curve): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "Adaptor3d_Curve.hxx".}
proc Ellipse*(this: Adaptor3d_Curve): gp_Elips {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor3d_Curve.hxx".}
proc Hyperbola*(this: Adaptor3d_Curve): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor3d_Curve.hxx".}
proc Parabola*(this: Adaptor3d_Curve): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor3d_Curve.hxx".}
proc Degree*(this: Adaptor3d_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Adaptor3d_Curve.hxx".}
proc IsRational*(this: Adaptor3d_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor3d_Curve.hxx".}
proc NbPoles*(this: Adaptor3d_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor3d_Curve.hxx".}
proc NbKnots*(this: Adaptor3d_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor3d_Curve.hxx".}
proc Bezier*(this: Adaptor3d_Curve): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_Curve.hxx".}
proc BSpline*(this: Adaptor3d_Curve): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_Curve.hxx".}
proc OffsetCurve*(this: Adaptor3d_Curve): handle[Geom_OffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "Adaptor3d_Curve.hxx".}
proc destroyAdaptor3d_Curve*(this: var Adaptor3d_Curve) {.
    importcpp: "#.~Adaptor3d_Curve()", header: "Adaptor3d_Curve.hxx".}