##  Created on: 1992-10-22
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dIntGeom2dCurveTool* {.importcpp: "Geom2dInt_Geom2dCurveTool",
                             header: "Geom2dInt_Geom2dCurveTool.hxx", bycopy.} = object


proc getType*(c: Adaptor2dCurve2d): GeomAbsCurveType {.
    importcpp: "Geom2dInt_Geom2dCurveTool::GetType(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc isComposite*(c: Adaptor2dCurve2d): bool {.
    importcpp: "Geom2dInt_Geom2dCurveTool::IsComposite(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc line*(c: Adaptor2dCurve2d): Lin2d {.importcpp: "Geom2dInt_Geom2dCurveTool::Line(@)",
                                     header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc circle*(c: Adaptor2dCurve2d): Circ2d {.importcpp: "Geom2dInt_Geom2dCurveTool::Circle(@)",
                                        header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc ellipse*(c: Adaptor2dCurve2d): Elips2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Ellipse(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc parabola*(c: Adaptor2dCurve2d): Parab2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Parabola(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc hyperbola*(c: Adaptor2dCurve2d): Hypr2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Hyperbola(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc epsX*(c: Adaptor2dCurve2d): float {.importcpp: "Geom2dInt_Geom2dCurveTool::EpsX(@)",
                                     header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc epsX*(c: Adaptor2dCurve2d; epsXYZ: float): float {.
    importcpp: "Geom2dInt_Geom2dCurveTool::EpsX(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc nbSamples*(c: Adaptor2dCurve2d): int {.importcpp: "Geom2dInt_Geom2dCurveTool::NbSamples(@)",
                                        header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc nbSamples*(c: Adaptor2dCurve2d; u0: float; u1: float): int {.
    importcpp: "Geom2dInt_Geom2dCurveTool::NbSamples(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc firstParameter*(c: Adaptor2dCurve2d): float {.
    importcpp: "Geom2dInt_Geom2dCurveTool::FirstParameter(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc lastParameter*(c: Adaptor2dCurve2d): float {.
    importcpp: "Geom2dInt_Geom2dCurveTool::LastParameter(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc value*(c: Adaptor2dCurve2d; x: float): Pnt2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Value(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc d0*(c: Adaptor2dCurve2d; u: float; p: var Pnt2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D0(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc d1*(c: Adaptor2dCurve2d; u: float; p: var Pnt2d; t: var Vec2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D1(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc d2*(c: Adaptor2dCurve2d; u: float; p: var Pnt2d; t: var Vec2d; n: var Vec2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D2(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc d3*(c: Adaptor2dCurve2d; u: float; p: var Pnt2d; t: var Vec2d; n: var Vec2d; v: var Vec2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D3(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc dn*(c: Adaptor2dCurve2d; u: float; n: int): Vec2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::DN(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc nbIntervals*(c: Adaptor2dCurve2d): int {.
    importcpp: "Geom2dInt_Geom2dCurveTool::NbIntervals(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc intervals*(c: Adaptor2dCurve2d; tab: var TColStdArray1OfReal) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Intervals(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc getInterval*(c: Adaptor2dCurve2d; index: int; tab: TColStdArray1OfReal;
                 u1: var float; u2: var float) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::GetInterval(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc degree*(c: Adaptor2dCurve2d): int {.importcpp: "Geom2dInt_Geom2dCurveTool::Degree(@)",
                                     header: "Geom2dInt_Geom2dCurveTool.hxx".}
