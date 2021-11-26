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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  BRepBlendHCurveTool* {.importcpp: "BRepBlend_HCurveTool",
                        header: "BRepBlend_HCurveTool.hxx", bycopy.} = object


proc firstParameter*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::FirstParameter(@)", dynlib: tkfillet.}
proc lastParameter*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::LastParameter(@)", dynlib: tkfillet.}
proc continuity*(c: Handle[Adaptor3dHCurve]): GeomAbsShape {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Continuity(@)", dynlib: tkfillet.}
proc nbIntervals*(c: Handle[Adaptor3dHCurve]; s: GeomAbsShape): cint {.cdecl,
    importcpp: "BRepBlend_HCurveTool::NbIntervals(@)", dynlib: tkfillet.}
proc intervals*(c: Handle[Adaptor3dHCurve]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.cdecl, importcpp: "BRepBlend_HCurveTool::Intervals(@)",
                                dynlib: tkfillet.}
proc isClosed*(c: Handle[Adaptor3dHCurve]): bool {.cdecl,
    importcpp: "BRepBlend_HCurveTool::IsClosed(@)", dynlib: tkfillet.}
proc isPeriodic*(c: Handle[Adaptor3dHCurve]): bool {.cdecl,
    importcpp: "BRepBlend_HCurveTool::IsPeriodic(@)", dynlib: tkfillet.}
proc period*(c: Handle[Adaptor3dHCurve]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Period(@)", dynlib: tkfillet.}
proc value*(c: Handle[Adaptor3dHCurve]; u: cfloat): Pnt {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Value(@)", dynlib: tkfillet.}
proc d0*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var Pnt) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D0(@)", dynlib: tkfillet.}
proc d1*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var Pnt; v: var Vec) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D1(@)", dynlib: tkfillet.}
proc d2*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.cdecl,
    importcpp: "BRepBlend_HCurveTool::D2(@)", dynlib: tkfillet.}
proc d3*(c: Handle[Adaptor3dHCurve]; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.cdecl, importcpp: "BRepBlend_HCurveTool::D3(@)",
                    dynlib: tkfillet.}
proc dn*(c: Handle[Adaptor3dHCurve]; u: cfloat; n: cint): Vec {.cdecl,
    importcpp: "BRepBlend_HCurveTool::DN(@)", dynlib: tkfillet.}
proc resolution*(c: Handle[Adaptor3dHCurve]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Resolution(@)", dynlib: tkfillet.}
proc getType*(c: Handle[Adaptor3dHCurve]): GeomAbsCurveType {.cdecl,
    importcpp: "BRepBlend_HCurveTool::GetType(@)", dynlib: tkfillet.}
proc line*(c: Handle[Adaptor3dHCurve]): Lin {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Line(@)", dynlib: tkfillet.}
proc circle*(c: Handle[Adaptor3dHCurve]): Circ {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Circle(@)", dynlib: tkfillet.}
proc ellipse*(c: Handle[Adaptor3dHCurve]): Elips {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Ellipse(@)", dynlib: tkfillet.}
proc hyperbola*(c: Handle[Adaptor3dHCurve]): Hypr {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Hyperbola(@)", dynlib: tkfillet.}
proc parabola*(c: Handle[Adaptor3dHCurve]): Parab {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Parabola(@)", dynlib: tkfillet.}
proc bezier*(c: Handle[Adaptor3dHCurve]): Handle[GeomBezierCurve] {.cdecl,
    importcpp: "BRepBlend_HCurveTool::Bezier(@)", dynlib: tkfillet.}
proc bSpline*(c: Handle[Adaptor3dHCurve]): Handle[GeomBSplineCurve] {.cdecl,
    importcpp: "BRepBlend_HCurveTool::BSpline(@)", dynlib: tkfillet.}
proc nbSamples*(c: Handle[Adaptor3dHCurve]; u0: cfloat; u1: cfloat): cint {.cdecl,
    importcpp: "BRepBlend_HCurveTool::NbSamples(@)", dynlib: tkfillet.}