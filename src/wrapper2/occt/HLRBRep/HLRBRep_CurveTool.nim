##  Created on: 1995-07-17
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  HLRBRepCurveTool* {.importcpp: "HLRBRep_CurveTool",
                     header: "HLRBRep_CurveTool.hxx", bycopy.} = object


proc firstParameter*(c: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_CurveTool::FirstParameter(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc lastParameter*(c: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_CurveTool::LastParameter(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc continuity*(c: StandardAddress): GeomAbsShape {.
    importcpp: "HLRBRep_CurveTool::Continuity(@)", header: "HLRBRep_CurveTool.hxx".}
proc nbIntervals*(c: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_CurveTool::NbIntervals(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc intervals*(c: StandardAddress; t: var TColStdArray1OfReal) {.
    importcpp: "HLRBRep_CurveTool::Intervals(@)", header: "HLRBRep_CurveTool.hxx".}
proc getInterval*(c: StandardAddress; index: StandardInteger;
                 tab: TColStdArray1OfReal; u1: var StandardReal; u2: var StandardReal) {.
    importcpp: "HLRBRep_CurveTool::GetInterval(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc isClosed*(c: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_CurveTool::IsClosed(@)", header: "HLRBRep_CurveTool.hxx".}
proc isPeriodic*(c: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_CurveTool::IsPeriodic(@)", header: "HLRBRep_CurveTool.hxx".}
proc period*(c: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_CurveTool::Period(@)", header: "HLRBRep_CurveTool.hxx".}
proc value*(c: StandardAddress; u: StandardReal): GpPnt2d {.
    importcpp: "HLRBRep_CurveTool::Value(@)", header: "HLRBRep_CurveTool.hxx".}
proc d0*(c: StandardAddress; u: StandardReal; p: var GpPnt2d) {.
    importcpp: "HLRBRep_CurveTool::D0(@)", header: "HLRBRep_CurveTool.hxx".}
proc d1*(c: StandardAddress; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    importcpp: "HLRBRep_CurveTool::D1(@)", header: "HLRBRep_CurveTool.hxx".}
proc d2*(c: StandardAddress; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "HLRBRep_CurveTool::D2(@)",
                        header: "HLRBRep_CurveTool.hxx".}
proc d3*(c: StandardAddress; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "HLRBRep_CurveTool::D3(@)",
                                      header: "HLRBRep_CurveTool.hxx".}
proc dn*(c: StandardAddress; u: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "HLRBRep_CurveTool::DN(@)", header: "HLRBRep_CurveTool.hxx".}
proc resolution*(c: StandardAddress; r3d: StandardReal): StandardReal {.
    importcpp: "HLRBRep_CurveTool::Resolution(@)", header: "HLRBRep_CurveTool.hxx".}
proc getType*(c: StandardAddress): GeomAbsCurveType {.
    importcpp: "HLRBRep_CurveTool::GetType(@)", header: "HLRBRep_CurveTool.hxx".}
proc theType*(c: StandardAddress): GeomAbsCurveType {.
    importcpp: "HLRBRep_CurveTool::TheType(@)", header: "HLRBRep_CurveTool.hxx".}
proc line*(c: StandardAddress): GpLin2d {.importcpp: "HLRBRep_CurveTool::Line(@)",
                                      header: "HLRBRep_CurveTool.hxx".}
proc circle*(c: StandardAddress): GpCirc2d {.
    importcpp: "HLRBRep_CurveTool::Circle(@)", header: "HLRBRep_CurveTool.hxx".}
proc ellipse*(c: StandardAddress): GpElips2d {.
    importcpp: "HLRBRep_CurveTool::Ellipse(@)", header: "HLRBRep_CurveTool.hxx".}
proc hyperbola*(c: StandardAddress): GpHypr2d {.
    importcpp: "HLRBRep_CurveTool::Hyperbola(@)", header: "HLRBRep_CurveTool.hxx".}
proc parabola*(c: StandardAddress): GpParab2d {.
    importcpp: "HLRBRep_CurveTool::Parabola(@)", header: "HLRBRep_CurveTool.hxx".}
proc bezier*(c: StandardAddress): Handle[Geom2dBezierCurve] {.
    importcpp: "HLRBRep_CurveTool::Bezier(@)", header: "HLRBRep_CurveTool.hxx".}
proc bSpline*(c: StandardAddress): Handle[Geom2dBSplineCurve] {.
    importcpp: "HLRBRep_CurveTool::BSpline(@)", header: "HLRBRep_CurveTool.hxx".}
proc epsX*(c: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_CurveTool::EpsX(@)", header: "HLRBRep_CurveTool.hxx".}
proc nbSamples*(c: StandardAddress; u0: StandardReal; u1: StandardReal): StandardInteger {.
    importcpp: "HLRBRep_CurveTool::NbSamples(@)", header: "HLRBRep_CurveTool.hxx".}
proc nbSamples*(c: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_CurveTool::NbSamples(@)", header: "HLRBRep_CurveTool.hxx".}
proc degree*(c: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_CurveTool::Degree(@)", header: "HLRBRep_CurveTool.hxx".}

