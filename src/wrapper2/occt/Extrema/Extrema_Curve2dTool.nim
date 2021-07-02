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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ExtremaCurve2dTool* {.importcpp: "Extrema_Curve2dTool",
                       header: "Extrema_Curve2dTool.hxx", bycopy.} = object


proc firstParameter*(c: Adaptor2dCurve2d): StandardReal {.
    importcpp: "Extrema_Curve2dTool::FirstParameter(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc lastParameter*(c: Adaptor2dCurve2d): StandardReal {.
    importcpp: "Extrema_Curve2dTool::LastParameter(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc continuity*(c: Adaptor2dCurve2d): GeomAbsShape {.
    importcpp: "Extrema_Curve2dTool::Continuity(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc nbIntervals*(c: Adaptor2dCurve2d; s: GeomAbsShape): StandardInteger {.
    importcpp: "Extrema_Curve2dTool::NbIntervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc intervals*(c: Adaptor2dCurve2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    importcpp: "Extrema_Curve2dTool::Intervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc deflCurvIntervals*(c: Adaptor2dCurve2d): Handle[TColStdHArray1OfReal] {.
    importcpp: "Extrema_Curve2dTool::DeflCurvIntervals(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc isClosed*(c: Adaptor2dCurve2d): StandardBoolean {.
    importcpp: "Extrema_Curve2dTool::IsClosed(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc isPeriodic*(c: Adaptor2dCurve2d): StandardBoolean {.
    importcpp: "Extrema_Curve2dTool::IsPeriodic(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc period*(c: Adaptor2dCurve2d): StandardReal {.
    importcpp: "Extrema_Curve2dTool::Period(@)", header: "Extrema_Curve2dTool.hxx".}
proc value*(c: Adaptor2dCurve2d; u: StandardReal): GpPnt2d {.
    importcpp: "Extrema_Curve2dTool::Value(@)", header: "Extrema_Curve2dTool.hxx".}
proc d0*(c: Adaptor2dCurve2d; u: StandardReal; p: var GpPnt2d) {.
    importcpp: "Extrema_Curve2dTool::D0(@)", header: "Extrema_Curve2dTool.hxx".}
proc d1*(c: Adaptor2dCurve2d; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    importcpp: "Extrema_Curve2dTool::D1(@)", header: "Extrema_Curve2dTool.hxx".}
proc d2*(c: Adaptor2dCurve2d; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "Extrema_Curve2dTool::D2(@)",
                        header: "Extrema_Curve2dTool.hxx".}
proc d3*(c: Adaptor2dCurve2d; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "Extrema_Curve2dTool::D3(@)",
                                      header: "Extrema_Curve2dTool.hxx".}
proc dn*(c: Adaptor2dCurve2d; u: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "Extrema_Curve2dTool::DN(@)", header: "Extrema_Curve2dTool.hxx".}
proc resolution*(c: Adaptor2dCurve2d; r3d: StandardReal): StandardReal {.
    importcpp: "Extrema_Curve2dTool::Resolution(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc getType*(c: Adaptor2dCurve2d): GeomAbsCurveType {.
    importcpp: "Extrema_Curve2dTool::GetType(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc line*(c: Adaptor2dCurve2d): GpLin2d {.importcpp: "Extrema_Curve2dTool::Line(@)",
                                       header: "Extrema_Curve2dTool.hxx".}
proc circle*(c: Adaptor2dCurve2d): GpCirc2d {.
    importcpp: "Extrema_Curve2dTool::Circle(@)", header: "Extrema_Curve2dTool.hxx".}
proc ellipse*(c: Adaptor2dCurve2d): GpElips2d {.
    importcpp: "Extrema_Curve2dTool::Ellipse(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc hyperbola*(c: Adaptor2dCurve2d): GpHypr2d {.
    importcpp: "Extrema_Curve2dTool::Hyperbola(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc parabola*(c: Adaptor2dCurve2d): GpParab2d {.
    importcpp: "Extrema_Curve2dTool::Parabola(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc degree*(c: Adaptor2dCurve2d): StandardInteger {.
    importcpp: "Extrema_Curve2dTool::Degree(@)", header: "Extrema_Curve2dTool.hxx".}
proc isRational*(c: Adaptor2dCurve2d): StandardBoolean {.
    importcpp: "Extrema_Curve2dTool::IsRational(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc nbPoles*(c: Adaptor2dCurve2d): StandardInteger {.
    importcpp: "Extrema_Curve2dTool::NbPoles(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc nbKnots*(c: Adaptor2dCurve2d): StandardInteger {.
    importcpp: "Extrema_Curve2dTool::NbKnots(@)",
    header: "Extrema_Curve2dTool.hxx".}
proc bezier*(c: Adaptor2dCurve2d): Handle[Geom2dBezierCurve] {.
    importcpp: "Extrema_Curve2dTool::Bezier(@)", header: "Extrema_Curve2dTool.hxx".}
proc bSpline*(c: Adaptor2dCurve2d): Handle[Geom2dBSplineCurve] {.
    importcpp: "Extrema_Curve2dTool::BSpline(@)",
    header: "Extrema_Curve2dTool.hxx".}

