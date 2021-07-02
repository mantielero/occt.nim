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


proc firstParameter*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "BRepBlend_HCurveTool::FirstParameter(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc lastParameter*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "BRepBlend_HCurveTool::LastParameter(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc continuity*(c: Handle[Adaptor3dHCurve]): GeomAbsShape {.
    importcpp: "BRepBlend_HCurveTool::Continuity(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor3dHCurve]; s: GeomAbsShape): StandardInteger {.
    importcpp: "BRepBlend_HCurveTool::NbIntervals(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc intervals*(c: Handle[Adaptor3dHCurve]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.importcpp: "BRepBlend_HCurveTool::Intervals(@)",
                                header: "BRepBlend_HCurveTool.hxx".}
proc isClosed*(c: Handle[Adaptor3dHCurve]): StandardBoolean {.
    importcpp: "BRepBlend_HCurveTool::IsClosed(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor3dHCurve]): StandardBoolean {.
    importcpp: "BRepBlend_HCurveTool::IsPeriodic(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc period*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "BRepBlend_HCurveTool::Period(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc value*(c: Handle[Adaptor3dHCurve]; u: StandardReal): GpPnt {.
    importcpp: "BRepBlend_HCurveTool::Value(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc d0*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt) {.
    importcpp: "BRepBlend_HCurveTool::D0(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d1*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    importcpp: "BRepBlend_HCurveTool::D1(@)", header: "BRepBlend_HCurveTool.hxx".}
proc d2*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.importcpp: "BRepBlend_HCurveTool::D2(@)",
                      header: "BRepBlend_HCurveTool.hxx".}
proc d3*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.importcpp: "BRepBlend_HCurveTool::D3(@)",
                                  header: "BRepBlend_HCurveTool.hxx".}
proc dn*(c: Handle[Adaptor3dHCurve]; u: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "BRepBlend_HCurveTool::DN(@)", header: "BRepBlend_HCurveTool.hxx".}
proc resolution*(c: Handle[Adaptor3dHCurve]; r3d: StandardReal): StandardReal {.
    importcpp: "BRepBlend_HCurveTool::Resolution(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc getType*(c: Handle[Adaptor3dHCurve]): GeomAbsCurveType {.
    importcpp: "BRepBlend_HCurveTool::GetType(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc line*(c: Handle[Adaptor3dHCurve]): GpLin {.
    importcpp: "BRepBlend_HCurveTool::Line(@)", header: "BRepBlend_HCurveTool.hxx".}
proc circle*(c: Handle[Adaptor3dHCurve]): GpCirc {.
    importcpp: "BRepBlend_HCurveTool::Circle(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc ellipse*(c: Handle[Adaptor3dHCurve]): GpElips {.
    importcpp: "BRepBlend_HCurveTool::Ellipse(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc hyperbola*(c: Handle[Adaptor3dHCurve]): GpHypr {.
    importcpp: "BRepBlend_HCurveTool::Hyperbola(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc parabola*(c: Handle[Adaptor3dHCurve]): GpParab {.
    importcpp: "BRepBlend_HCurveTool::Parabola(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc bezier*(c: Handle[Adaptor3dHCurve]): Handle[GeomBezierCurve] {.
    importcpp: "BRepBlend_HCurveTool::Bezier(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc bSpline*(c: Handle[Adaptor3dHCurve]): Handle[GeomBSplineCurve] {.
    importcpp: "BRepBlend_HCurveTool::BSpline(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc nbSamples*(c: Handle[Adaptor3dHCurve]; u0: StandardReal; u1: StandardReal): StandardInteger {.
    importcpp: "BRepBlend_HCurveTool::NbSamples(@)",
    header: "BRepBlend_HCurveTool.hxx".}

