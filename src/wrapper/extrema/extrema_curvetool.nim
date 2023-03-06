import extrema_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types
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
discard "forward decl of PntObj"
discard "forward decl of VecObj"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"

proc FirstParameter*(C: Adaptor3d_Curve): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::FirstParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc LastParameter*(C: Adaptor3d_Curve): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::LastParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc Continuity*(C: Adaptor3d_Curve): GeomAbs_Shape {.cdecl,
    importcpp: "Extrema_CurveTool::Continuity(@)", header: "Extrema_CurveTool.hxx".}
proc NbIntervals*(C: var Adaptor3d_Curve; S: GeomAbs_Shape): cint {.cdecl,
    importcpp: "Extrema_CurveTool::NbIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc Intervals*(C: var Adaptor3d_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    cdecl, importcpp: "Extrema_CurveTool::Intervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc DeflCurvIntervals*(C: Adaptor3d_Curve): Handle[TColStd_HArray1OfReal] {.cdecl,
    importcpp: "Extrema_CurveTool::DeflCurvIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc IsPeriodic*(C: Adaptor3d_Curve): bool {.cdecl,
    importcpp: "Extrema_CurveTool::IsPeriodic(@)", header: "Extrema_CurveTool.hxx".}
proc Period*(C: Adaptor3d_Curve): cfloat {.cdecl, importcpp: "Extrema_CurveTool::Period(@)",
                                       header: "Extrema_CurveTool.hxx".}
proc Resolution*(C: Adaptor3d_Curve; R3d: cfloat): cfloat {.cdecl,
    importcpp: "Extrema_CurveTool::Resolution(@)", header: "Extrema_CurveTool.hxx".}
proc GetType*(C: Adaptor3d_Curve): GeomAbs_CurveType {.cdecl,
    importcpp: "Extrema_CurveTool::GetType(@)", header: "Extrema_CurveTool.hxx".}
proc Value*(C: Adaptor3d_Curve; U: cfloat): PntObj {.cdecl,
    importcpp: "Extrema_CurveTool::Value(@)", header: "Extrema_CurveTool.hxx".}
proc D0*(C: Adaptor3d_Curve; U: cfloat; P: var PntObj) {.cdecl,
    importcpp: "Extrema_CurveTool::D0(@)", header: "Extrema_CurveTool.hxx".}
proc D1*(C: Adaptor3d_Curve; U: cfloat; P: var PntObj; V: var VecObj) {.cdecl,
    importcpp: "Extrema_CurveTool::D1(@)", header: "Extrema_CurveTool.hxx".}
proc D2*(C: Adaptor3d_Curve; U: cfloat; P: var PntObj; V1: var VecObj; V2: var VecObj) {.
    cdecl, importcpp: "Extrema_CurveTool::D2(@)", header: "Extrema_CurveTool.hxx".}
proc D3*(C: Adaptor3d_Curve; U: cfloat; P: var PntObj; V1: var VecObj; V2: var VecObj;
        V3: var VecObj) {.cdecl, importcpp: "Extrema_CurveTool::D3(@)",
                       header: "Extrema_CurveTool.hxx".}
proc DN*(C: Adaptor3d_Curve; U: cfloat; N: cint): VecObj {.cdecl,
    importcpp: "Extrema_CurveTool::DN(@)", header: "Extrema_CurveTool.hxx".}
proc Line*(C: Adaptor3d_Curve): LinObj {.cdecl,
                                     importcpp: "Extrema_CurveTool::Line(@)",
                                     header: "Extrema_CurveTool.hxx".}
proc Circle*(C: Adaptor3d_Curve): CircObj {.cdecl, importcpp: "Extrema_CurveTool::Circle(@)",
                                        header: "Extrema_CurveTool.hxx".}
proc Ellipse*(C: Adaptor3d_Curve): ElipsObj {.cdecl,
    importcpp: "Extrema_CurveTool::Ellipse(@)", header: "Extrema_CurveTool.hxx".}
proc Hyperbola*(C: Adaptor3d_Curve): HyprObj {.cdecl,
    importcpp: "Extrema_CurveTool::Hyperbola(@)", header: "Extrema_CurveTool.hxx".}
proc Parabola*(C: Adaptor3d_Curve): ParabObj {.cdecl,
    importcpp: "Extrema_CurveTool::Parabola(@)", header: "Extrema_CurveTool.hxx".}
proc Degree*(C: Adaptor3d_Curve): cint {.cdecl,
                                     importcpp: "Extrema_CurveTool::Degree(@)",
                                     header: "Extrema_CurveTool.hxx".}
proc IsRational*(C: Adaptor3d_Curve): bool {.cdecl,
    importcpp: "Extrema_CurveTool::IsRational(@)", header: "Extrema_CurveTool.hxx".}
proc NbPoles*(C: Adaptor3d_Curve): cint {.cdecl, importcpp: "Extrema_CurveTool::NbPoles(@)",
                                      header: "Extrema_CurveTool.hxx".}
proc NbKnots*(C: Adaptor3d_Curve): cint {.cdecl, importcpp: "Extrema_CurveTool::NbKnots(@)",
                                      header: "Extrema_CurveTool.hxx".}
proc Bezier*(C: Adaptor3d_Curve): Handle[Geom_BezierCurve] {.cdecl,
    importcpp: "Extrema_CurveTool::Bezier(@)", header: "Extrema_CurveTool.hxx".}
proc BSpline*(C: Adaptor3d_Curve): Handle[Geom_BSplineCurve] {.cdecl,
    importcpp: "Extrema_CurveTool::BSpline(@)", header: "Extrema_CurveTool.hxx".}