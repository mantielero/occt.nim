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


proc firstParameter*(c: Adaptor2dCurve2d): cfloat {.cdecl,
    importcpp: "Extrema_Curve2dTool::FirstParameter(@)", dynlib: tkgeombase.}
proc lastParameter*(c: Adaptor2dCurve2d): cfloat {.cdecl,
    importcpp: "Extrema_Curve2dTool::LastParameter(@)", dynlib: tkgeombase.}
proc continuity*(c: Adaptor2dCurve2d): GeomAbsShape {.cdecl,
    importcpp: "Extrema_Curve2dTool::Continuity(@)", dynlib: tkgeombase.}
proc nbIntervals*(c: Adaptor2dCurve2d; s: GeomAbsShape): cint {.cdecl,
    importcpp: "Extrema_Curve2dTool::NbIntervals(@)", dynlib: tkgeombase.}
proc intervals*(c: Adaptor2dCurve2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    cdecl, importcpp: "Extrema_Curve2dTool::Intervals(@)", dynlib: tkgeombase.}
proc deflCurvIntervals*(c: Adaptor2dCurve2d): Handle[TColStdHArray1OfReal] {.cdecl,
    importcpp: "Extrema_Curve2dTool::DeflCurvIntervals(@)", dynlib: tkgeombase.}
proc isClosed*(c: Adaptor2dCurve2d): bool {.cdecl, importcpp: "Extrema_Curve2dTool::IsClosed(@)",
                                        dynlib: tkgeombase.}
proc isPeriodic*(c: Adaptor2dCurve2d): bool {.cdecl,
    importcpp: "Extrema_Curve2dTool::IsPeriodic(@)", dynlib: tkgeombase.}
proc period*(c: Adaptor2dCurve2d): cfloat {.cdecl, importcpp: "Extrema_Curve2dTool::Period(@)",
                                        dynlib: tkgeombase.}
proc value*(c: Adaptor2dCurve2d; u: cfloat): Pnt2d {.cdecl,
    importcpp: "Extrema_Curve2dTool::Value(@)", dynlib: tkgeombase.}
proc d0*(c: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d) {.cdecl,
    importcpp: "Extrema_Curve2dTool::D0(@)", dynlib: tkgeombase.}
proc d1*(c: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v: var Vec2d) {.cdecl,
    importcpp: "Extrema_Curve2dTool::D1(@)", dynlib: tkgeombase.}
proc d2*(c: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.cdecl,
    importcpp: "Extrema_Curve2dTool::D2(@)", dynlib: tkgeombase.}
proc d3*(c: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.cdecl, importcpp: "Extrema_Curve2dTool::D3(@)",
                      dynlib: tkgeombase.}
proc dn*(c: Adaptor2dCurve2d; u: cfloat; n: cint): Vec2d {.cdecl,
    importcpp: "Extrema_Curve2dTool::DN(@)", dynlib: tkgeombase.}
proc resolution*(c: Adaptor2dCurve2d; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Extrema_Curve2dTool::Resolution(@)", dynlib: tkgeombase.}
proc getType*(c: Adaptor2dCurve2d): GeomAbsCurveType {.cdecl,
    importcpp: "Extrema_Curve2dTool::GetType(@)", dynlib: tkgeombase.}
proc line*(c: Adaptor2dCurve2d): Lin2d {.cdecl,
                                     importcpp: "Extrema_Curve2dTool::Line(@)",
                                     dynlib: tkgeombase.}
proc circle*(c: Adaptor2dCurve2d): Circ2d {.cdecl, importcpp: "Extrema_Curve2dTool::Circle(@)",
                                        dynlib: tkgeombase.}
proc ellipse*(c: Adaptor2dCurve2d): Elips2d {.cdecl,
    importcpp: "Extrema_Curve2dTool::Ellipse(@)", dynlib: tkgeombase.}
proc hyperbola*(c: Adaptor2dCurve2d): Hypr2d {.cdecl,
    importcpp: "Extrema_Curve2dTool::Hyperbola(@)", dynlib: tkgeombase.}
proc parabola*(c: Adaptor2dCurve2d): Parab2d {.cdecl,
    importcpp: "Extrema_Curve2dTool::Parabola(@)", dynlib: tkgeombase.}
proc degree*(c: Adaptor2dCurve2d): cint {.cdecl, importcpp: "Extrema_Curve2dTool::Degree(@)",
                                      dynlib: tkgeombase.}
proc isRational*(c: Adaptor2dCurve2d): bool {.cdecl,
    importcpp: "Extrema_Curve2dTool::IsRational(@)", dynlib: tkgeombase.}
proc nbPoles*(c: Adaptor2dCurve2d): cint {.cdecl, importcpp: "Extrema_Curve2dTool::NbPoles(@)",
                                       dynlib: tkgeombase.}
proc nbKnots*(c: Adaptor2dCurve2d): cint {.cdecl, importcpp: "Extrema_Curve2dTool::NbKnots(@)",
                                       dynlib: tkgeombase.}
proc bezier*(c: Adaptor2dCurve2d): Handle[Geom2dBezierCurve] {.cdecl,
    importcpp: "Extrema_Curve2dTool::Bezier(@)", dynlib: tkgeombase.}
proc bSpline*(c: Adaptor2dCurve2d): Handle[Geom2dBSplineCurve] {.cdecl,
    importcpp: "Extrema_Curve2dTool::BSpline(@)", dynlib: tkgeombase.}