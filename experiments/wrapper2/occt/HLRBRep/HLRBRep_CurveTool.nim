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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Address, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin2d, ../gp/gp_Circ2d, ../gp/gp_Elips2d,
  ../gp/gp_Hypr2d, ../gp/gp_Parab2d

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  HLRBRep_CurveTool* {.importcpp: "HLRBRep_CurveTool",
                      header: "HLRBRep_CurveTool.hxx", bycopy.} = object


proc FirstParameter*(C: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_CurveTool::FirstParameter(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc LastParameter*(C: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_CurveTool::LastParameter(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc Continuity*(C: Standard_Address): GeomAbs_Shape {.
    importcpp: "HLRBRep_CurveTool::Continuity(@)", header: "HLRBRep_CurveTool.hxx".}
proc NbIntervals*(C: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_CurveTool::NbIntervals(@)",
    header: "HLRBRep_CurveTool.hxx".}
proc Intervals*(C: Standard_Address; T: var TColStd_Array1OfReal) {.
    importcpp: "HLRBRep_CurveTool::Intervals(@)", header: "HLRBRep_CurveTool.hxx".}
proc GetInterval*(C: Standard_Address; Index: Standard_Integer;
                 Tab: TColStd_Array1OfReal; U1: var Standard_Real;
                 U2: var Standard_Real) {.importcpp: "HLRBRep_CurveTool::GetInterval(@)",
                                       header: "HLRBRep_CurveTool.hxx".}
proc IsClosed*(C: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_CurveTool::IsClosed(@)", header: "HLRBRep_CurveTool.hxx".}
proc IsPeriodic*(C: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_CurveTool::IsPeriodic(@)", header: "HLRBRep_CurveTool.hxx".}
proc Period*(C: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_CurveTool::Period(@)", header: "HLRBRep_CurveTool.hxx".}
proc Value*(C: Standard_Address; U: Standard_Real): gp_Pnt2d {.
    importcpp: "HLRBRep_CurveTool::Value(@)", header: "HLRBRep_CurveTool.hxx".}
proc D0*(C: Standard_Address; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "HLRBRep_CurveTool::D0(@)", header: "HLRBRep_CurveTool.hxx".}
proc D1*(C: Standard_Address; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    importcpp: "HLRBRep_CurveTool::D1(@)", header: "HLRBRep_CurveTool.hxx".}
proc D2*(C: Standard_Address; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "HLRBRep_CurveTool::D2(@)",
                         header: "HLRBRep_CurveTool.hxx".}
proc D3*(C: Standard_Address; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "HLRBRep_CurveTool::D3(@)",
                                        header: "HLRBRep_CurveTool.hxx".}
proc DN*(C: Standard_Address; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "HLRBRep_CurveTool::DN(@)", header: "HLRBRep_CurveTool.hxx".}
proc Resolution*(C: Standard_Address; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_CurveTool::Resolution(@)", header: "HLRBRep_CurveTool.hxx".}
proc GetType*(C: Standard_Address): GeomAbs_CurveType {.
    importcpp: "HLRBRep_CurveTool::GetType(@)", header: "HLRBRep_CurveTool.hxx".}
proc TheType*(C: Standard_Address): GeomAbs_CurveType {.
    importcpp: "HLRBRep_CurveTool::TheType(@)", header: "HLRBRep_CurveTool.hxx".}
proc Line*(C: Standard_Address): gp_Lin2d {.importcpp: "HLRBRep_CurveTool::Line(@)",
                                        header: "HLRBRep_CurveTool.hxx".}
proc Circle*(C: Standard_Address): gp_Circ2d {.
    importcpp: "HLRBRep_CurveTool::Circle(@)", header: "HLRBRep_CurveTool.hxx".}
proc Ellipse*(C: Standard_Address): gp_Elips2d {.
    importcpp: "HLRBRep_CurveTool::Ellipse(@)", header: "HLRBRep_CurveTool.hxx".}
proc Hyperbola*(C: Standard_Address): gp_Hypr2d {.
    importcpp: "HLRBRep_CurveTool::Hyperbola(@)", header: "HLRBRep_CurveTool.hxx".}
proc Parabola*(C: Standard_Address): gp_Parab2d {.
    importcpp: "HLRBRep_CurveTool::Parabola(@)", header: "HLRBRep_CurveTool.hxx".}
proc Bezier*(C: Standard_Address): handle[Geom2d_BezierCurve] {.
    importcpp: "HLRBRep_CurveTool::Bezier(@)", header: "HLRBRep_CurveTool.hxx".}
proc BSpline*(C: Standard_Address): handle[Geom2d_BSplineCurve] {.
    importcpp: "HLRBRep_CurveTool::BSpline(@)", header: "HLRBRep_CurveTool.hxx".}
proc EpsX*(C: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_CurveTool::EpsX(@)", header: "HLRBRep_CurveTool.hxx".}
proc NbSamples*(C: Standard_Address; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_CurveTool::NbSamples(@)", header: "HLRBRep_CurveTool.hxx".}
proc NbSamples*(C: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_CurveTool::NbSamples(@)", header: "HLRBRep_CurveTool.hxx".}
proc Degree*(C: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_CurveTool::Degree(@)", header: "HLRBRep_CurveTool.hxx".}