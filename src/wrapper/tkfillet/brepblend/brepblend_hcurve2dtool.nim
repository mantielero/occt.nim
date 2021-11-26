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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  BRepBlendHCurve2dTool* {.importcpp: "BRepBlend_HCurve2dTool",
                          header: "BRepBlend_HCurve2dTool.hxx", bycopy.} = object


proc firstParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::FirstParameter(@)", dynlib: tkfillet.}
proc lastParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::LastParameter(@)", dynlib: tkfillet.}
proc continuity*(c: Handle[Adaptor2dHCurve2d]): GeomAbsShape {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Continuity(@)", dynlib: tkfillet.}
proc nbIntervals*(c: Handle[Adaptor2dHCurve2d]; s: GeomAbsShape): cint {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::NbIntervals(@)", dynlib: tkfillet.}
proc intervals*(c: Handle[Adaptor2dHCurve2d]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.cdecl, importcpp: "BRepBlend_HCurve2dTool::Intervals(@)",
                                dynlib: tkfillet.}
proc isClosed*(c: Handle[Adaptor2dHCurve2d]): bool {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::IsClosed(@)", dynlib: tkfillet.}
proc isPeriodic*(c: Handle[Adaptor2dHCurve2d]): bool {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::IsPeriodic(@)", dynlib: tkfillet.}
proc period*(c: Handle[Adaptor2dHCurve2d]): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Period(@)", dynlib: tkfillet.}
proc value*(c: Handle[Adaptor2dHCurve2d]; u: cfloat): Pnt2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Value(@)", dynlib: tkfillet.}
proc d0*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d) {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::D0(@)", dynlib: tkfillet.}
proc d1*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v: var Vec2d) {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::D1(@)", dynlib: tkfillet.}
proc d2*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d) {.cdecl, importcpp: "BRepBlend_HCurve2dTool::D2(@)",
                      dynlib: tkfillet.}
proc d3*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d; v3: var Vec2d) {.cdecl,
                                  importcpp: "BRepBlend_HCurve2dTool::D3(@)",
                                  dynlib: tkfillet.}
proc dn*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; n: cint): Vec2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::DN(@)", dynlib: tkfillet.}
proc resolution*(c: Handle[Adaptor2dHCurve2d]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Resolution(@)", dynlib: tkfillet.}
proc getType*(c: Handle[Adaptor2dHCurve2d]): GeomAbsCurveType {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::GetType(@)", dynlib: tkfillet.}
proc line*(c: Handle[Adaptor2dHCurve2d]): Lin2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Line(@)", dynlib: tkfillet.}
proc circle*(c: Handle[Adaptor2dHCurve2d]): Circ2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Circle(@)", dynlib: tkfillet.}
proc ellipse*(c: Handle[Adaptor2dHCurve2d]): Elips2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Ellipse(@)", dynlib: tkfillet.}
proc hyperbola*(c: Handle[Adaptor2dHCurve2d]): Hypr2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Hyperbola(@)", dynlib: tkfillet.}
proc parabola*(c: Handle[Adaptor2dHCurve2d]): Parab2d {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Parabola(@)", dynlib: tkfillet.}
proc bezier*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBezierCurve] {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::Bezier(@)", dynlib: tkfillet.}
proc bSpline*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBSplineCurve] {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::BSpline(@)", dynlib: tkfillet.}
proc nbSamples*(c: Handle[Adaptor2dHCurve2d]; u0: cfloat; u1: cfloat): cint {.cdecl,
    importcpp: "BRepBlend_HCurve2dTool::NbSamples(@)", dynlib: tkfillet.}