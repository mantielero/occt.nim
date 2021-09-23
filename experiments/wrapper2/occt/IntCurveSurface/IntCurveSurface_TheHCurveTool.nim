##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntCurveSurface_TheHCurveTool_HeaderFile [NewLine] # _IntCurveSurface_TheHCurveTool_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../GeomAbs/GeomAbs_Shape.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../GeomAbs/GeomAbs_CurveType.hxx [NewLine] # ../gp/gp_Lin.hxx [NewLine] # ../gp/gp_Circ.hxx [NewLine] # ../gp/gp_Elips.hxx [NewLine] # ../gp/gp_Hypr.hxx [NewLine] # ../gp/gp_Parab.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  IntCurveSurface_TheHCurveTool* {.importcpp: "IntCurveSurface_TheHCurveTool",
                                  header: "IntCurveSurface_TheHCurveTool.hxx",
                                  bycopy.} = object


proc FirstParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "IntCurveSurface_TheHCurveTool::FirstParameter(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc LastParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "IntCurveSurface_TheHCurveTool::LastParameter(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Continuity*(C: handle[Adaptor3d_HCurve]): GeomAbs_Shape {.
    importcpp: "IntCurveSurface_TheHCurveTool::Continuity(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc NbIntervals*(C: handle[Adaptor3d_HCurve]; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "IntCurveSurface_TheHCurveTool::NbIntervals(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Intervals*(C: handle[Adaptor3d_HCurve]; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.importcpp: "IntCurveSurface_TheHCurveTool::Intervals(@)",
                                 header: "IntCurveSurface_TheHCurveTool.hxx".}
proc IsClosed*(C: handle[Adaptor3d_HCurve]): Standard_Boolean {.
    importcpp: "IntCurveSurface_TheHCurveTool::IsClosed(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc IsPeriodic*(C: handle[Adaptor3d_HCurve]): Standard_Boolean {.
    importcpp: "IntCurveSurface_TheHCurveTool::IsPeriodic(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Period*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "IntCurveSurface_TheHCurveTool::Period(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Value*(C: handle[Adaptor3d_HCurve]; U: Standard_Real): gp_Pnt {.
    importcpp: "IntCurveSurface_TheHCurveTool::Value(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc D0*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "IntCurveSurface_TheHCurveTool::D0(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc D1*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "IntCurveSurface_TheHCurveTool::D1(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc D2*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "IntCurveSurface_TheHCurveTool::D2(@)",
                       header: "IntCurveSurface_TheHCurveTool.hxx".}
proc D3*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "IntCurveSurface_TheHCurveTool::D3(@)",
                                    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc DN*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "IntCurveSurface_TheHCurveTool::DN(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Resolution*(C: handle[Adaptor3d_HCurve]; R3d: Standard_Real): Standard_Real {.
    importcpp: "IntCurveSurface_TheHCurveTool::Resolution(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc GetType*(C: handle[Adaptor3d_HCurve]): GeomAbs_CurveType {.
    importcpp: "IntCurveSurface_TheHCurveTool::GetType(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Line*(C: handle[Adaptor3d_HCurve]): gp_Lin {.
    importcpp: "IntCurveSurface_TheHCurveTool::Line(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Circle*(C: handle[Adaptor3d_HCurve]): gp_Circ {.
    importcpp: "IntCurveSurface_TheHCurveTool::Circle(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Ellipse*(C: handle[Adaptor3d_HCurve]): gp_Elips {.
    importcpp: "IntCurveSurface_TheHCurveTool::Ellipse(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Hyperbola*(C: handle[Adaptor3d_HCurve]): gp_Hypr {.
    importcpp: "IntCurveSurface_TheHCurveTool::Hyperbola(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Parabola*(C: handle[Adaptor3d_HCurve]): gp_Parab {.
    importcpp: "IntCurveSurface_TheHCurveTool::Parabola(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc Bezier*(C: handle[Adaptor3d_HCurve]): handle[Geom_BezierCurve] {.
    importcpp: "IntCurveSurface_TheHCurveTool::Bezier(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc BSpline*(C: handle[Adaptor3d_HCurve]): handle[Geom_BSplineCurve] {.
    importcpp: "IntCurveSurface_TheHCurveTool::BSpline(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc NbSamples*(C: handle[Adaptor3d_HCurve]; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "IntCurveSurface_TheHCurveTool::NbSamples(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc SamplePars*(C: handle[Adaptor3d_HCurve]; U0: Standard_Real; U1: Standard_Real;
                Defl: Standard_Real; NbMin: Standard_Integer;
                Pars: var handle[TColStd_HArray1OfReal]) {.
    importcpp: "IntCurveSurface_TheHCurveTool::SamplePars(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
## !!!Ignored construct:  # CurveGen opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # CurveGen_hxx < Adaptor3d_HCurve . hxx > [NewLine] # IntCurveSurface_HCurveTool IntCurveSurface_TheHCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx < IntCurveSurface_TheHCurveTool . hxx > [NewLine] # < IntCurveSurface_HCurveTool . lxx > [NewLine] # CurveGen [NewLine] # CurveGen_hxx [NewLine] # IntCurveSurface_HCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx [NewLine] #  _IntCurveSurface_TheHCurveTool_HeaderFile [NewLine]
## Error: did not expect <!!!
