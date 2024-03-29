import ../gp/gp_types
import ../standard/standard_types
import ../adaptor2d/adaptor2d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types





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



proc firstParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::FirstParameter(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc lastParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::LastParameter(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc continuity*(c: Handle[Adaptor2dHCurve2d]): GeomAbsShape {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Continuity(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor2dHCurve2d]; s: GeomAbsShape): cint {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::NbIntervals(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc intervals*(c: Handle[Adaptor2dHCurve2d]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.cdecl, importcpp: "BRepBlend_HCurve2dTool::Intervals(@)",
                                header: "BRepBlend_HCurve2dTool.hxx".}
proc isClosed*(c: Handle[Adaptor2dHCurve2d]): bool {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::IsClosed(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor2dHCurve2d]): bool {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::IsPeriodic(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc period*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Period(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc value*(c: Handle[Adaptor2dHCurve2d]; u: cfloat): gp_Pnt2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Value(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc d0*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var gp_Pnt2d) {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::D0(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc d1*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var gp_Pnt2d; v: var gp_Vec2d) {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::D1(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc d2*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d;
        v2: var gp_Vec2d) {.cdecl, importcpp: "BRepBlend_HCurve2dTool::D2(@)",
                      header: "BRepBlend_HCurve2dTool.hxx".}
proc d3*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d;
        v2: var gp_Vec2d; v3: var gp_Vec2d) {.cdecl,
                                  importcpp: "BRepBlend_HCurve2dTool::D3(@)",
                                  header: "BRepBlend_HCurve2dTool.hxx".}
proc dn*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; n: cint): gp_Vec2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::DN(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc resolution*(c: Handle[Adaptor2dHCurve2d]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Resolution(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc getType*(c: Handle[Adaptor2dHCurve2d]): GeomAbsCurveType {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::GetType(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc line*(c: Handle[Adaptor2dHCurve2d]): gp_Lin2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Line(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc circle*(c: Handle[Adaptor2dHCurve2d]): gp_Circ2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Circle(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc ellipse*(c: Handle[Adaptor2dHCurve2d]): gp_Elips2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Ellipse(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc hyperbola*(c: Handle[Adaptor2dHCurve2d]): gp_Hypr2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Hyperbola(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc parabola*(c: Handle[Adaptor2dHCurve2d]): gp_Parab2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Parabola(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc bezier*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBezierCurve] {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Bezier(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc bSpline*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBSplineCurve] {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::BSpline(@)", header: "BRepBlend_HCurve2dTool.hxx".}
proc nbSamples*(c: Handle[Adaptor2dHCurve2d]; u0: cfloat; u1: cfloat): cint {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::NbSamples(@)", header: "BRepBlend_HCurve2dTool.hxx".}


