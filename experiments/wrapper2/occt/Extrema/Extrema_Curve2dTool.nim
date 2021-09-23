##  Created on: 1995-07-18
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin2d, ../gp/gp_Circ2d, ../gp/gp_Elips2d,
  ../gp/gp_Hypr2d, ../gp/gp_Parab2d

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  Extrema_Curve2dTool* {.importcpp: "Extrema_Curve2dTool",
                        header: "Extrema_Curve2dTool.hxx", bycopy.} = object


proc FirstParameter*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Extrema_Curve2dTool::FirstParameter(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc LastParameter*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Extrema_Curve2dTool::LastParameter(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Continuity*(C: Adaptor2d_Curve2d): GeomAbs_Shape {.
    importcpp: "Extrema_Curve2dTool::Continuity(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc NbIntervals*(C: Adaptor2d_Curve2d; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Extrema_Curve2dTool::NbIntervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Intervals*(C: Adaptor2d_Curve2d; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    importcpp: "Extrema_Curve2dTool::Intervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc DeflCurvIntervals*(C: Adaptor2d_Curve2d): handle[TColStd_HArray1OfReal] {.
    importcpp: "Extrema_Curve2dTool::DeflCurvIntervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc IsClosed*(C: Adaptor2d_Curve2d): Standard_Boolean {.
    importcpp: "Extrema_Curve2dTool::IsClosed(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc IsPeriodic*(C: Adaptor2d_Curve2d): Standard_Boolean {.
    importcpp: "Extrema_Curve2dTool::IsPeriodic(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Period*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Extrema_Curve2dTool::Period(@)", header: "Extrema_Curve2dTool.hxx".}
proc Value*(C: Adaptor2d_Curve2d; U: Standard_Real): gp_Pnt2d {.
    importcpp: "Extrema_Curve2dTool::Value(@)", header: "Extrema_Curve2dTool.hxx".}
proc D0*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "Extrema_Curve2dTool::D0(@)", header: "Extrema_Curve2dTool.hxx".}
proc D1*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    importcpp: "Extrema_Curve2dTool::D1(@)", header: "Extrema_Curve2dTool.hxx".}
proc D2*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "Extrema_Curve2dTool::D2(@)",
                         header: "Extrema_Curve2dTool.hxx".}
proc D3*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "Extrema_Curve2dTool::D3(@)",
                                        header: "Extrema_Curve2dTool.hxx".}
proc DN*(C: Adaptor2d_Curve2d; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "Extrema_Curve2dTool::DN(@)", header: "Extrema_Curve2dTool.hxx".}
proc Resolution*(C: Adaptor2d_Curve2d; R3d: Standard_Real): Standard_Real {.
    importcpp: "Extrema_Curve2dTool::Resolution(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc GetType*(C: Adaptor2d_Curve2d): GeomAbs_CurveType {.
    importcpp: "Extrema_Curve2dTool::GetType(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Line*(C: Adaptor2d_Curve2d): gp_Lin2d {.
    importcpp: "Extrema_Curve2dTool::Line(@)", header: "Extrema_Curve2dTool.hxx".}
proc Circle*(C: Adaptor2d_Curve2d): gp_Circ2d {.
    importcpp: "Extrema_Curve2dTool::Circle(@)", header: "Extrema_Curve2dTool.hxx".}
proc Ellipse*(C: Adaptor2d_Curve2d): gp_Elips2d {.
    importcpp: "Extrema_Curve2dTool::Ellipse(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Hyperbola*(C: Adaptor2d_Curve2d): gp_Hypr2d {.
    importcpp: "Extrema_Curve2dTool::Hyperbola(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Parabola*(C: Adaptor2d_Curve2d): gp_Parab2d {.
    importcpp: "Extrema_Curve2dTool::Parabola(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Degree*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Extrema_Curve2dTool::Degree(@)", header: "Extrema_Curve2dTool.hxx".}
proc IsRational*(C: Adaptor2d_Curve2d): Standard_Boolean {.
    importcpp: "Extrema_Curve2dTool::IsRational(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc NbPoles*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Extrema_Curve2dTool::NbPoles(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc NbKnots*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Extrema_Curve2dTool::NbKnots(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc Bezier*(C: Adaptor2d_Curve2d): handle[Geom2d_BezierCurve] {.
    importcpp: "Extrema_Curve2dTool::Bezier(@)", header: "Extrema_Curve2dTool.hxx".}
proc BSpline*(C: Adaptor2d_Curve2d): handle[Geom2d_BSplineCurve] {.
    importcpp: "Extrema_Curve2dTool::BSpline(@)",
    header: "Extrema_Curve2dTool.hxx".}