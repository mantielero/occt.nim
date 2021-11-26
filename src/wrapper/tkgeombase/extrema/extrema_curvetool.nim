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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  ExtremaCurveTool* {.importcpp: "Extrema_CurveTool",
                     header: "Extrema_CurveTool.hxx", bycopy.} = object


proc firstParameter*(c: Adaptor3dCurve): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::FirstParameter(@)", dynlib: tkgeombase.}
proc lastParameter*(c: Adaptor3dCurve): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::LastParameter(@)", dynlib: tkgeombase.}
proc continuity*(c: Adaptor3dCurve): GeomAbsShape {.cdecl,
    importcpp: "Extrema_CurveTool::Continuity(@)", dynlib: tkgeombase.}
proc nbIntervals*(c: var Adaptor3dCurve; s: GeomAbsShape): cint {.cdecl,
    importcpp: "Extrema_CurveTool::NbIntervals(@)", dynlib: tkgeombase.}
proc intervals*(c: var Adaptor3dCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    cdecl, importcpp: "Extrema_CurveTool::Intervals(@)", dynlib: tkgeombase.}
proc deflCurvIntervals*(c: Adaptor3dCurve): Handle[TColStdHArray1OfReal] {.cdecl,
    importcpp: "Extrema_CurveTool::DeflCurvIntervals(@)", dynlib: tkgeombase.}
proc isPeriodic*(c: Adaptor3dCurve): bool {.cdecl, importcpp: "Extrema_CurveTool::IsPeriodic(@)",
                                        dynlib: tkgeombase.}
proc period*(c: Adaptor3dCurve): cfloat {.cdecl, importcpp: "Extrema_CurveTool::Period(@)",
                                      dynlib: tkgeombase.}
proc resolution*(c: Adaptor3dCurve; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::Resolution(@)", dynlib: tkgeombase.}
proc getType*(c: Adaptor3dCurve): GeomAbsCurveType {.cdecl,
    importcpp: "Extrema_CurveTool::GetType(@)", dynlib: tkgeombase.}
proc value*(c: Adaptor3dCurve; u: cfloat): Pnt {.cdecl,
    importcpp: "Extrema_CurveTool::Value(@)", dynlib: tkgeombase.}
proc d0*(c: Adaptor3dCurve; u: cfloat; p: var Pnt) {.cdecl,
    importcpp: "Extrema_CurveTool::D0(@)", dynlib: tkgeombase.}
proc d1*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v: var Vec) {.cdecl,
    importcpp: "Extrema_CurveTool::D1(@)", dynlib: tkgeombase.}
proc d2*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.cdecl,
    importcpp: "Extrema_CurveTool::D2(@)", dynlib: tkgeombase.}
proc d3*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    cdecl, importcpp: "Extrema_CurveTool::D3(@)", dynlib: tkgeombase.}
proc dn*(c: Adaptor3dCurve; u: cfloat; n: cint): Vec {.cdecl,
    importcpp: "Extrema_CurveTool::DN(@)", dynlib: tkgeombase.}
proc line*(c: Adaptor3dCurve): Lin {.cdecl, importcpp: "Extrema_CurveTool::Line(@)",
                                 dynlib: tkgeombase.}
proc circle*(c: Adaptor3dCurve): Circ {.cdecl,
                                    importcpp: "Extrema_CurveTool::Circle(@)",
                                    dynlib: tkgeombase.}
proc ellipse*(c: Adaptor3dCurve): Elips {.cdecl, importcpp: "Extrema_CurveTool::Ellipse(@)",
                                      dynlib: tkgeombase.}
proc hyperbola*(c: Adaptor3dCurve): Hypr {.cdecl, importcpp: "Extrema_CurveTool::Hyperbola(@)",
                                       dynlib: tkgeombase.}
proc parabola*(c: Adaptor3dCurve): Parab {.cdecl, importcpp: "Extrema_CurveTool::Parabola(@)",
                                       dynlib: tkgeombase.}
proc degree*(c: Adaptor3dCurve): cint {.cdecl,
                                    importcpp: "Extrema_CurveTool::Degree(@)",
                                    dynlib: tkgeombase.}
proc isRational*(c: Adaptor3dCurve): bool {.cdecl, importcpp: "Extrema_CurveTool::IsRational(@)",
                                        dynlib: tkgeombase.}
proc nbPoles*(c: Adaptor3dCurve): cint {.cdecl, importcpp: "Extrema_CurveTool::NbPoles(@)",
                                     dynlib: tkgeombase.}
proc nbKnots*(c: Adaptor3dCurve): cint {.cdecl, importcpp: "Extrema_CurveTool::NbKnots(@)",
                                     dynlib: tkgeombase.}
proc bezier*(c: Adaptor3dCurve): Handle[GeomBezierCurve] {.cdecl,
    importcpp: "Extrema_CurveTool::Bezier(@)", dynlib: tkgeombase.}
proc bSpline*(c: Adaptor3dCurve): Handle[GeomBSplineCurve] {.cdecl,
    importcpp: "Extrema_CurveTool::BSpline(@)", dynlib: tkgeombase.}