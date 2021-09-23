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
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../gp/gp_Lin, ../gp/gp_Circ, ../gp/gp_Elips, ../gp/gp_Hypr,
  ../gp/gp_Parab

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  Extrema_CurveTool* {.importcpp: "Extrema_CurveTool",
                      header: "Extrema_CurveTool.hxx", bycopy.} = object


proc FirstParameter*(C: Adaptor3d_Curve): Standard_Real {.
    importcpp: "Extrema_CurveTool::FirstParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc LastParameter*(C: Adaptor3d_Curve): Standard_Real {.
    importcpp: "Extrema_CurveTool::LastParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc Continuity*(C: Adaptor3d_Curve): GeomAbs_Shape {.
    importcpp: "Extrema_CurveTool::Continuity(@)", header: "Extrema_CurveTool.hxx".}
proc NbIntervals*(C: var Adaptor3d_Curve; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Extrema_CurveTool::NbIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc Intervals*(C: var Adaptor3d_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    importcpp: "Extrema_CurveTool::Intervals(@)", header: "Extrema_CurveTool.hxx".}
proc DeflCurvIntervals*(C: Adaptor3d_Curve): handle[TColStd_HArray1OfReal] {.
    importcpp: "Extrema_CurveTool::DeflCurvIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc IsPeriodic*(C: Adaptor3d_Curve): Standard_Boolean {.
    importcpp: "Extrema_CurveTool::IsPeriodic(@)", header: "Extrema_CurveTool.hxx".}
proc Period*(C: Adaptor3d_Curve): Standard_Real {.
    importcpp: "Extrema_CurveTool::Period(@)", header: "Extrema_CurveTool.hxx".}
proc Resolution*(C: Adaptor3d_Curve; R3d: Standard_Real): Standard_Real {.
    importcpp: "Extrema_CurveTool::Resolution(@)", header: "Extrema_CurveTool.hxx".}
proc GetType*(C: Adaptor3d_Curve): GeomAbs_CurveType {.
    importcpp: "Extrema_CurveTool::GetType(@)", header: "Extrema_CurveTool.hxx".}
proc Value*(C: Adaptor3d_Curve; U: Standard_Real): gp_Pnt {.
    importcpp: "Extrema_CurveTool::Value(@)", header: "Extrema_CurveTool.hxx".}
proc D0*(C: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "Extrema_CurveTool::D0(@)", header: "Extrema_CurveTool.hxx".}
proc D1*(C: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "Extrema_CurveTool::D1(@)", header: "Extrema_CurveTool.hxx".}
proc D2*(C: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "Extrema_CurveTool::D2(@)",
                       header: "Extrema_CurveTool.hxx".}
proc D3*(C: Adaptor3d_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "Extrema_CurveTool::D3(@)",
                                    header: "Extrema_CurveTool.hxx".}
proc DN*(C: Adaptor3d_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "Extrema_CurveTool::DN(@)", header: "Extrema_CurveTool.hxx".}
proc Line*(C: Adaptor3d_Curve): gp_Lin {.importcpp: "Extrema_CurveTool::Line(@)",
                                     header: "Extrema_CurveTool.hxx".}
proc Circle*(C: Adaptor3d_Curve): gp_Circ {.importcpp: "Extrema_CurveTool::Circle(@)",
                                        header: "Extrema_CurveTool.hxx".}
proc Ellipse*(C: Adaptor3d_Curve): gp_Elips {.
    importcpp: "Extrema_CurveTool::Ellipse(@)", header: "Extrema_CurveTool.hxx".}
proc Hyperbola*(C: Adaptor3d_Curve): gp_Hypr {.
    importcpp: "Extrema_CurveTool::Hyperbola(@)", header: "Extrema_CurveTool.hxx".}
proc Parabola*(C: Adaptor3d_Curve): gp_Parab {.
    importcpp: "Extrema_CurveTool::Parabola(@)", header: "Extrema_CurveTool.hxx".}
proc Degree*(C: Adaptor3d_Curve): Standard_Integer {.
    importcpp: "Extrema_CurveTool::Degree(@)", header: "Extrema_CurveTool.hxx".}
proc IsRational*(C: Adaptor3d_Curve): Standard_Boolean {.
    importcpp: "Extrema_CurveTool::IsRational(@)", header: "Extrema_CurveTool.hxx".}
proc NbPoles*(C: Adaptor3d_Curve): Standard_Integer {.
    importcpp: "Extrema_CurveTool::NbPoles(@)", header: "Extrema_CurveTool.hxx".}
proc NbKnots*(C: Adaptor3d_Curve): Standard_Integer {.
    importcpp: "Extrema_CurveTool::NbKnots(@)", header: "Extrema_CurveTool.hxx".}
proc Bezier*(C: Adaptor3d_Curve): handle[Geom_BezierCurve] {.
    importcpp: "Extrema_CurveTool::Bezier(@)", header: "Extrema_CurveTool.hxx".}
proc BSpline*(C: Adaptor3d_Curve): handle[Geom_BSplineCurve] {.
    importcpp: "Extrema_CurveTool::BSpline(@)", header: "Extrema_CurveTool.hxx".}