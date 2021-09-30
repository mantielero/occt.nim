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
  IntPatchHCurve2dTool* {.importcpp: "IntPatch_HCurve2dTool",
                         header: "IntPatch_HCurve2dTool.hxx", bycopy.} = object


proc firstParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "IntPatch_HCurve2dTool::FirstParameter(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc lastParameter*(c: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "IntPatch_HCurve2dTool::LastParameter(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc continuity*(c: Handle[Adaptor2dHCurve2d]): GeomAbsShape {.
    importcpp: "IntPatch_HCurve2dTool::Continuity(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor2dHCurve2d]; s: GeomAbsShape): cint {.
    importcpp: "IntPatch_HCurve2dTool::NbIntervals(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc intervals*(c: Handle[Adaptor2dHCurve2d]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.importcpp: "IntPatch_HCurve2dTool::Intervals(@)",
                                header: "IntPatch_HCurve2dTool.hxx".}
proc isClosed*(c: Handle[Adaptor2dHCurve2d]): bool {.
    importcpp: "IntPatch_HCurve2dTool::IsClosed(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor2dHCurve2d]): bool {.
    importcpp: "IntPatch_HCurve2dTool::IsPeriodic(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc period*(c: Handle[Adaptor2dHCurve2d]): cfloat {.
    importcpp: "IntPatch_HCurve2dTool::Period(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc value*(c: Handle[Adaptor2dHCurve2d]; u: cfloat): Pnt2d {.
    importcpp: "IntPatch_HCurve2dTool::Value(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc d0*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d) {.
    importcpp: "IntPatch_HCurve2dTool::D0(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc d1*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v: var Vec2d) {.
    importcpp: "IntPatch_HCurve2dTool::D1(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc d2*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d) {.importcpp: "IntPatch_HCurve2dTool::D2(@)",
                      header: "IntPatch_HCurve2dTool.hxx".}
proc d3*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d; v3: var Vec2d) {.importcpp: "IntPatch_HCurve2dTool::D3(@)",
                                  header: "IntPatch_HCurve2dTool.hxx".}
proc dn*(c: Handle[Adaptor2dHCurve2d]; u: cfloat; n: cint): Vec2d {.
    importcpp: "IntPatch_HCurve2dTool::DN(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc resolution*(c: Handle[Adaptor2dHCurve2d]; r3d: cfloat): cfloat {.
    importcpp: "IntPatch_HCurve2dTool::Resolution(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc getType*(c: Handle[Adaptor2dHCurve2d]): GeomAbsCurveType {.
    importcpp: "IntPatch_HCurve2dTool::GetType(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc line*(c: Handle[Adaptor2dHCurve2d]): Lin2d {.
    importcpp: "IntPatch_HCurve2dTool::Line(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc circle*(c: Handle[Adaptor2dHCurve2d]): Circ2d {.
    importcpp: "IntPatch_HCurve2dTool::Circle(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc ellipse*(c: Handle[Adaptor2dHCurve2d]): Elips2d {.
    importcpp: "IntPatch_HCurve2dTool::Ellipse(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc hyperbola*(c: Handle[Adaptor2dHCurve2d]): Hypr2d {.
    importcpp: "IntPatch_HCurve2dTool::Hyperbola(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc parabola*(c: Handle[Adaptor2dHCurve2d]): Parab2d {.
    importcpp: "IntPatch_HCurve2dTool::Parabola(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc bezier*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBezierCurve] {.
    importcpp: "IntPatch_HCurve2dTool::Bezier(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc bSpline*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBSplineCurve] {.
    importcpp: "IntPatch_HCurve2dTool::BSpline(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc nbSamples*(c: Handle[Adaptor2dHCurve2d]; u0: cfloat; u1: cfloat): cint {.
    importcpp: "IntPatch_HCurve2dTool::NbSamples(@)",
    header: "IntPatch_HCurve2dTool.hxx".}

























