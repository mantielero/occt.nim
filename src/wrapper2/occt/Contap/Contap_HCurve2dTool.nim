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
  ContapHCurve2dTool* {.importcpp: "Contap_HCurve2dTool",
                       header: "Contap_HCurve2dTool.hxx", bycopy.} = object


proc firstParameter*(c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Contap_HCurve2dTool::FirstParameter(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc lastParameter*(c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Contap_HCurve2dTool::LastParameter(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc continuity*(c: Handle[Adaptor2dHCurve2d]): GeomAbsShape {.
    importcpp: "Contap_HCurve2dTool::Continuity(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor2dHCurve2d]; s: GeomAbsShape): StandardInteger {.
    importcpp: "Contap_HCurve2dTool::NbIntervals(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc intervals*(c: Handle[Adaptor2dHCurve2d]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.importcpp: "Contap_HCurve2dTool::Intervals(@)",
                                header: "Contap_HCurve2dTool.hxx".}
proc isClosed*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "Contap_HCurve2dTool::IsClosed(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor2dHCurve2d]): StandardBoolean {.
    importcpp: "Contap_HCurve2dTool::IsPeriodic(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc period*(c: Handle[Adaptor2dHCurve2d]): StandardReal {.
    importcpp: "Contap_HCurve2dTool::Period(@)", header: "Contap_HCurve2dTool.hxx".}
proc value*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal): GpPnt2d {.
    importcpp: "Contap_HCurve2dTool::Value(@)", header: "Contap_HCurve2dTool.hxx".}
proc d0*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal; p: var GpPnt2d) {.
    importcpp: "Contap_HCurve2dTool::D0(@)", header: "Contap_HCurve2dTool.hxx".}
proc d1*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    importcpp: "Contap_HCurve2dTool::D1(@)", header: "Contap_HCurve2dTool.hxx".}
proc d2*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "Contap_HCurve2dTool::D2(@)",
                        header: "Contap_HCurve2dTool.hxx".}
proc d3*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "Contap_HCurve2dTool::D3(@)",
                                      header: "Contap_HCurve2dTool.hxx".}
proc dn*(c: Handle[Adaptor2dHCurve2d]; u: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "Contap_HCurve2dTool::DN(@)", header: "Contap_HCurve2dTool.hxx".}
proc resolution*(c: Handle[Adaptor2dHCurve2d]; r3d: StandardReal): StandardReal {.
    importcpp: "Contap_HCurve2dTool::Resolution(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc getType*(c: Handle[Adaptor2dHCurve2d]): GeomAbsCurveType {.
    importcpp: "Contap_HCurve2dTool::GetType(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc line*(c: Handle[Adaptor2dHCurve2d]): GpLin2d {.
    importcpp: "Contap_HCurve2dTool::Line(@)", header: "Contap_HCurve2dTool.hxx".}
proc circle*(c: Handle[Adaptor2dHCurve2d]): GpCirc2d {.
    importcpp: "Contap_HCurve2dTool::Circle(@)", header: "Contap_HCurve2dTool.hxx".}
proc ellipse*(c: Handle[Adaptor2dHCurve2d]): GpElips2d {.
    importcpp: "Contap_HCurve2dTool::Ellipse(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc hyperbola*(c: Handle[Adaptor2dHCurve2d]): GpHypr2d {.
    importcpp: "Contap_HCurve2dTool::Hyperbola(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc parabola*(c: Handle[Adaptor2dHCurve2d]): GpParab2d {.
    importcpp: "Contap_HCurve2dTool::Parabola(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc bezier*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBezierCurve] {.
    importcpp: "Contap_HCurve2dTool::Bezier(@)", header: "Contap_HCurve2dTool.hxx".}
proc bSpline*(c: Handle[Adaptor2dHCurve2d]): Handle[Geom2dBSplineCurve] {.
    importcpp: "Contap_HCurve2dTool::BSpline(@)",
    header: "Contap_HCurve2dTool.hxx".}
proc nbSamples*(c: Handle[Adaptor2dHCurve2d]; u0: StandardReal; u1: StandardReal): StandardInteger {.
    importcpp: "Contap_HCurve2dTool::NbSamples(@)",
    header: "Contap_HCurve2dTool.hxx".}

