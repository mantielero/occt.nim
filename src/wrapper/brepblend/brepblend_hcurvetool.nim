import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types





##  Created on: 1995-07-17
##  Created by: Laurent BUCHARD
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



proc firstParameter*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::FirstParameter(@)", header: "BRepBlend_HCurveTool.hxx".}
proc lastParameter*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::LastParameter(@)", header: "BRepBlend_HCurveTool.hxx".}
proc continuity*(c: Handle[Adaptor3dHCurve]): GeomAbsShape {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Continuity(@)", header: "BRepBlend_HCurveTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor3dHCurve]; s: GeomAbsShape): cint {.cdecl,
    importcpp: "BRepBlend_HCurveTool::NbIntervals(@)", header: "BRepBlend_HCurveTool.hxx".}
proc intervals*(c: Handle[Adaptor3dHCurve]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.cdecl, importcpp: "BRepBlend_HCurveTool::Intervals(@)",
                                header: "BRepBlend_HCurveTool.hxx".}
proc isClosed*(c: Handle[Adaptor3dHCurve]): bool {.cdecl,
    importcpp: "BRepBlend_HCurveTool::IsClosed(@)", header: "BRepBlend_HCurveTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor3dHCurve]): bool {.cdecl,
    importcpp: "BRepBlend_HCurveTool::IsPeriodic(@)", header: "BRepBlend_HCurveTool.hxx".}
proc period*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Period(@)", header: "BRepBlend_HCurveTool.hxx".}
proc value*(c: Handle[Adaptor3dHCurve]; u: cfloat): gp_Pnt {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Value(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d0*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var gp_Pnt) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D0(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d1*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var gp_Pnt; v: var gp_Vec) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D1(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d2*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D2(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d3*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec;
        v3: var gp_Vec) {.cdecl, importcpp: "BRepBlend_HCurveTool::D3(@)",
                    header: "BRepBlend_HCurveTool.hxx".}
proc dn*(c: Handle[Adaptor3dHCurve]; u: cfloat; n: cint): gp_Vec {.cdecl,
    importcpp: "BRepBlend_HCurveTool::DN(@)", header: "BRepBlend_HCurveTool.hxx".}
proc resolution*(c: Handle[Adaptor3dHCurve]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Resolution(@)", header: "BRepBlend_HCurveTool.hxx".}
proc getType*(c: Handle[Adaptor3dHCurve]): GeomAbsCurveType {.cdecl,
    importcpp: "BRepBlend_HCurveTool::GetType(@)", header: "BRepBlend_HCurveTool.hxx".}
proc line*(c: Handle[Adaptor3dHCurve]): gp_Lin {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Line(@)", header: "BRepBlend_HCurveTool.hxx".}
proc circle*(c: Handle[Adaptor3dHCurve]): gp_Circ {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Circle(@)", header: "BRepBlend_HCurveTool.hxx".}
proc ellipse*(c: Handle[Adaptor3dHCurve]): gp_Elips {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Ellipse(@)", header: "BRepBlend_HCurveTool.hxx".}
proc hyperbola*(c: Handle[Adaptor3dHCurve]): gp_Hypr {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Hyperbola(@)", header: "BRepBlend_HCurveTool.hxx".}
proc parabola*(c: Handle[Adaptor3dHCurve]): gp_Parab {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Parabola(@)", header: "BRepBlend_HCurveTool.hxx".}
proc bezier*(c: Handle[Adaptor3dHCurve]): Handle[GeomBezierCurve] {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Bezier(@)", header: "BRepBlend_HCurveTool.hxx".}
proc bSpline*(c: Handle[Adaptor3dHCurve]): Handle[GeomBSplineCurve] {.cdecl,
    importcpp: "BRepBlend_HCurveTool::BSpline(@)", header: "BRepBlend_HCurveTool.hxx".}
proc nbSamples*(c: Handle[Adaptor3dHCurve]; u0: cfloat; u1: cfloat): cint {.cdecl,
    importcpp: "BRepBlend_HCurveTool::NbSamples(@)", header: "BRepBlend_HCurveTool.hxx".}


