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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType,
  ../Standard/Standard_Boolean, ../gp/gp_Lin2d, ../gp/gp_Circ2d, ../gp/gp_Elips2d,
  ../gp/gp_Parab2d, ../gp/gp_Hypr2d, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dInt_Geom2dCurveTool* {.importcpp: "Geom2dInt_Geom2dCurveTool",
                              header: "Geom2dInt_Geom2dCurveTool.hxx", bycopy.} = object


proc GetType*(C: Adaptor2d_Curve2d): GeomAbs_CurveType {.
    importcpp: "Geom2dInt_Geom2dCurveTool::GetType(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc IsComposite*(C: Adaptor2d_Curve2d): Standard_Boolean {.
    importcpp: "Geom2dInt_Geom2dCurveTool::IsComposite(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Line*(C: Adaptor2d_Curve2d): gp_Lin2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Line(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Circle*(C: Adaptor2d_Curve2d): gp_Circ2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Circle(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Ellipse*(C: Adaptor2d_Curve2d): gp_Elips2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Ellipse(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Parabola*(C: Adaptor2d_Curve2d): gp_Parab2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Parabola(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Hyperbola*(C: Adaptor2d_Curve2d): gp_Hypr2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Hyperbola(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc EpsX*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Geom2dInt_Geom2dCurveTool::EpsX(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc EpsX*(C: Adaptor2d_Curve2d; Eps_XYZ: Standard_Real): Standard_Real {.
    importcpp: "Geom2dInt_Geom2dCurveTool::EpsX(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc NbSamples*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Geom2dInt_Geom2dCurveTool::NbSamples(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc NbSamples*(C: Adaptor2d_Curve2d; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "Geom2dInt_Geom2dCurveTool::NbSamples(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc FirstParameter*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Geom2dInt_Geom2dCurveTool::FirstParameter(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc LastParameter*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "Geom2dInt_Geom2dCurveTool::LastParameter(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Value*(C: Adaptor2d_Curve2d; X: Standard_Real): gp_Pnt2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Value(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc D0*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D0(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc D1*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::D1(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc D2*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d) {.importcpp: "Geom2dInt_Geom2dCurveTool::D2(@)",
                        header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc D3*(C: Adaptor2d_Curve2d; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d; V: var gp_Vec2d) {.importcpp: "Geom2dInt_Geom2dCurveTool::D3(@)",
                                      header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc DN*(C: Adaptor2d_Curve2d; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "Geom2dInt_Geom2dCurveTool::DN(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc NbIntervals*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Geom2dInt_Geom2dCurveTool::NbIntervals(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Intervals*(C: Adaptor2d_Curve2d; Tab: var TColStd_Array1OfReal) {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Intervals(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc GetInterval*(C: Adaptor2d_Curve2d; Index: Standard_Integer;
                 Tab: TColStd_Array1OfReal; U1: var Standard_Real;
                 U2: var Standard_Real) {.importcpp: "Geom2dInt_Geom2dCurveTool::GetInterval(@)",
                                       header: "Geom2dInt_Geom2dCurveTool.hxx".}
proc Degree*(C: Adaptor2d_Curve2d): Standard_Integer {.
    importcpp: "Geom2dInt_Geom2dCurveTool::Degree(@)",
    header: "Geom2dInt_Geom2dCurveTool.hxx".}