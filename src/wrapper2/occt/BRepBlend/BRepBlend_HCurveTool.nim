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
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin, ../gp/gp_Circ,
  ../gp/gp_Elips, ../gp/gp_Hypr, ../gp/gp_Parab

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  BRepBlend_HCurveTool* {.importcpp: "BRepBlend_HCurveTool",
                         header: "BRepBlend_HCurveTool.hxx", bycopy.} = object


proc FirstParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "BRepBlend_HCurveTool::FirstParameter(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc LastParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "BRepBlend_HCurveTool::LastParameter(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Continuity*(C: handle[Adaptor3d_HCurve]): GeomAbs_Shape {.
    importcpp: "BRepBlend_HCurveTool::Continuity(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc NbIntervals*(C: handle[Adaptor3d_HCurve]; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "BRepBlend_HCurveTool::NbIntervals(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Intervals*(C: handle[Adaptor3d_HCurve]; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.importcpp: "BRepBlend_HCurveTool::Intervals(@)",
                                 header: "BRepBlend_HCurveTool.hxx".}
proc IsClosed*(C: handle[Adaptor3d_HCurve]): Standard_Boolean {.
    importcpp: "BRepBlend_HCurveTool::IsClosed(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc IsPeriodic*(C: handle[Adaptor3d_HCurve]): Standard_Boolean {.
    importcpp: "BRepBlend_HCurveTool::IsPeriodic(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Period*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "BRepBlend_HCurveTool::Period(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Value*(C: handle[Adaptor3d_HCurve]; U: Standard_Real): gp_Pnt {.
    importcpp: "BRepBlend_HCurveTool::Value(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc D0*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "BRepBlend_HCurveTool::D0(@)", header: "BRepBlend_HCurveTool.hxx".}
proc D1*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "BRepBlend_HCurveTool::D1(@)", header: "BRepBlend_HCurveTool.hxx".}
proc D2*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "BRepBlend_HCurveTool::D2(@)",
                       header: "BRepBlend_HCurveTool.hxx".}
proc D3*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "BRepBlend_HCurveTool::D3(@)",
                                    header: "BRepBlend_HCurveTool.hxx".}
proc DN*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "BRepBlend_HCurveTool::DN(@)", header: "BRepBlend_HCurveTool.hxx".}
proc Resolution*(C: handle[Adaptor3d_HCurve]; R3d: Standard_Real): Standard_Real {.
    importcpp: "BRepBlend_HCurveTool::Resolution(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc GetType*(C: handle[Adaptor3d_HCurve]): GeomAbs_CurveType {.
    importcpp: "BRepBlend_HCurveTool::GetType(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Line*(C: handle[Adaptor3d_HCurve]): gp_Lin {.
    importcpp: "BRepBlend_HCurveTool::Line(@)", header: "BRepBlend_HCurveTool.hxx".}
proc Circle*(C: handle[Adaptor3d_HCurve]): gp_Circ {.
    importcpp: "BRepBlend_HCurveTool::Circle(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Ellipse*(C: handle[Adaptor3d_HCurve]): gp_Elips {.
    importcpp: "BRepBlend_HCurveTool::Ellipse(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Hyperbola*(C: handle[Adaptor3d_HCurve]): gp_Hypr {.
    importcpp: "BRepBlend_HCurveTool::Hyperbola(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Parabola*(C: handle[Adaptor3d_HCurve]): gp_Parab {.
    importcpp: "BRepBlend_HCurveTool::Parabola(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc Bezier*(C: handle[Adaptor3d_HCurve]): handle[Geom_BezierCurve] {.
    importcpp: "BRepBlend_HCurveTool::Bezier(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc BSpline*(C: handle[Adaptor3d_HCurve]): handle[Geom_BSplineCurve] {.
    importcpp: "BRepBlend_HCurveTool::BSpline(@)",
    header: "BRepBlend_HCurveTool.hxx".}
proc NbSamples*(C: handle[Adaptor3d_HCurve]; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "BRepBlend_HCurveTool::NbSamples(@)",
    header: "BRepBlend_HCurveTool.hxx".}