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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt2d,
  ../gp/gp_Vec2d, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin2d, ../gp/gp_Circ2d,
  ../gp/gp_Elips2d, ../gp/gp_Hypr2d, ../gp/gp_Parab2d

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  IntPatch_HCurve2dTool* {.importcpp: "IntPatch_HCurve2dTool",
                          header: "IntPatch_HCurve2dTool.hxx", bycopy.} = object


proc FirstParameter*(C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "IntPatch_HCurve2dTool::FirstParameter(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc LastParameter*(C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "IntPatch_HCurve2dTool::LastParameter(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Continuity*(C: handle[Adaptor2d_HCurve2d]): GeomAbs_Shape {.
    importcpp: "IntPatch_HCurve2dTool::Continuity(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc NbIntervals*(C: handle[Adaptor2d_HCurve2d]; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "IntPatch_HCurve2dTool::NbIntervals(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Intervals*(C: handle[Adaptor2d_HCurve2d]; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.importcpp: "IntPatch_HCurve2dTool::Intervals(@)",
                                 header: "IntPatch_HCurve2dTool.hxx".}
proc IsClosed*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "IntPatch_HCurve2dTool::IsClosed(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc IsPeriodic*(C: handle[Adaptor2d_HCurve2d]): Standard_Boolean {.
    importcpp: "IntPatch_HCurve2dTool::IsPeriodic(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Period*(C: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "IntPatch_HCurve2dTool::Period(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Value*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real): gp_Pnt2d {.
    importcpp: "IntPatch_HCurve2dTool::Value(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc D0*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "IntPatch_HCurve2dTool::D0(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc D1*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real; P: var gp_Pnt2d;
        V: var gp_Vec2d) {.importcpp: "IntPatch_HCurve2dTool::D1(@)",
                        header: "IntPatch_HCurve2dTool.hxx".}
proc D2*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d) {.importcpp: "IntPatch_HCurve2dTool::D2(@)",
                                        header: "IntPatch_HCurve2dTool.hxx".}
proc D3*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d; V3: var gp_Vec2d) {.
    importcpp: "IntPatch_HCurve2dTool::D3(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc DN*(C: handle[Adaptor2d_HCurve2d]; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "IntPatch_HCurve2dTool::DN(@)", header: "IntPatch_HCurve2dTool.hxx".}
proc Resolution*(C: handle[Adaptor2d_HCurve2d]; R3d: Standard_Real): Standard_Real {.
    importcpp: "IntPatch_HCurve2dTool::Resolution(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc GetType*(C: handle[Adaptor2d_HCurve2d]): GeomAbs_CurveType {.
    importcpp: "IntPatch_HCurve2dTool::GetType(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Line*(C: handle[Adaptor2d_HCurve2d]): gp_Lin2d {.
    importcpp: "IntPatch_HCurve2dTool::Line(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Circle*(C: handle[Adaptor2d_HCurve2d]): gp_Circ2d {.
    importcpp: "IntPatch_HCurve2dTool::Circle(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Ellipse*(C: handle[Adaptor2d_HCurve2d]): gp_Elips2d {.
    importcpp: "IntPatch_HCurve2dTool::Ellipse(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Hyperbola*(C: handle[Adaptor2d_HCurve2d]): gp_Hypr2d {.
    importcpp: "IntPatch_HCurve2dTool::Hyperbola(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Parabola*(C: handle[Adaptor2d_HCurve2d]): gp_Parab2d {.
    importcpp: "IntPatch_HCurve2dTool::Parabola(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc Bezier*(C: handle[Adaptor2d_HCurve2d]): handle[Geom2d_BezierCurve] {.
    importcpp: "IntPatch_HCurve2dTool::Bezier(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc BSpline*(C: handle[Adaptor2d_HCurve2d]): handle[Geom2d_BSplineCurve] {.
    importcpp: "IntPatch_HCurve2dTool::BSpline(@)",
    header: "IntPatch_HCurve2dTool.hxx".}
proc NbSamples*(C: handle[Adaptor2d_HCurve2d]; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "IntPatch_HCurve2dTool::NbSamples(@)",
    header: "IntPatch_HCurve2dTool.hxx".}