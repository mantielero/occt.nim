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
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin, ../gp/gp_Circ,
  ../gp/gp_Elips, ../gp/gp_Hypr, ../gp/gp_Parab, ../TColgp/TColgp_Array1OfPnt

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  HLRBRep_BCurveTool* {.importcpp: "HLRBRep_BCurveTool",
                       header: "HLRBRep_BCurveTool.hxx", bycopy.} = object


proc FirstParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "HLRBRep_BCurveTool::FirstParameter(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc LastParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "HLRBRep_BCurveTool::LastParameter(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc Continuity*(C: BRepAdaptor_Curve): GeomAbs_Shape {.
    importcpp: "HLRBRep_BCurveTool::Continuity(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc NbIntervals*(C: BRepAdaptor_Curve; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_BCurveTool::NbIntervals(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc Intervals*(C: BRepAdaptor_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    importcpp: "HLRBRep_BCurveTool::Intervals(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc IsClosed*(C: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "HLRBRep_BCurveTool::IsClosed(@)", header: "HLRBRep_BCurveTool.hxx".}
proc IsPeriodic*(C: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "HLRBRep_BCurveTool::IsPeriodic(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc Period*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "HLRBRep_BCurveTool::Period(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Value*(C: BRepAdaptor_Curve; U: Standard_Real): gp_Pnt {.
    importcpp: "HLRBRep_BCurveTool::Value(@)", header: "HLRBRep_BCurveTool.hxx".}
proc D0*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "HLRBRep_BCurveTool::D0(@)", header: "HLRBRep_BCurveTool.hxx".}
proc D1*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "HLRBRep_BCurveTool::D1(@)", header: "HLRBRep_BCurveTool.hxx".}
proc D2*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "HLRBRep_BCurveTool::D2(@)",
                       header: "HLRBRep_BCurveTool.hxx".}
proc D3*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "HLRBRep_BCurveTool::D3(@)",
                                    header: "HLRBRep_BCurveTool.hxx".}
proc DN*(C: BRepAdaptor_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "HLRBRep_BCurveTool::DN(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Resolution*(C: BRepAdaptor_Curve; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_BCurveTool::Resolution(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc GetType*(C: BRepAdaptor_Curve): GeomAbs_CurveType {.
    importcpp: "HLRBRep_BCurveTool::GetType(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Line*(C: BRepAdaptor_Curve): gp_Lin {.importcpp: "HLRBRep_BCurveTool::Line(@)",
                                       header: "HLRBRep_BCurveTool.hxx".}
proc Circle*(C: BRepAdaptor_Curve): gp_Circ {.
    importcpp: "HLRBRep_BCurveTool::Circle(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Ellipse*(C: BRepAdaptor_Curve): gp_Elips {.
    importcpp: "HLRBRep_BCurveTool::Ellipse(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Hyperbola*(C: BRepAdaptor_Curve): gp_Hypr {.
    importcpp: "HLRBRep_BCurveTool::Hyperbola(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc Parabola*(C: BRepAdaptor_Curve): gp_Parab {.
    importcpp: "HLRBRep_BCurveTool::Parabola(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Bezier*(C: BRepAdaptor_Curve): handle[Geom_BezierCurve] {.
    importcpp: "HLRBRep_BCurveTool::Bezier(@)", header: "HLRBRep_BCurveTool.hxx".}
proc BSpline*(C: BRepAdaptor_Curve): handle[Geom_BSplineCurve] {.
    importcpp: "HLRBRep_BCurveTool::BSpline(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Degree*(C: BRepAdaptor_Curve): Standard_Integer {.
    importcpp: "HLRBRep_BCurveTool::Degree(@)", header: "HLRBRep_BCurveTool.hxx".}
proc IsRational*(C: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "HLRBRep_BCurveTool::IsRational(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc NbPoles*(C: BRepAdaptor_Curve): Standard_Integer {.
    importcpp: "HLRBRep_BCurveTool::NbPoles(@)", header: "HLRBRep_BCurveTool.hxx".}
proc NbKnots*(C: BRepAdaptor_Curve): Standard_Integer {.
    importcpp: "HLRBRep_BCurveTool::NbKnots(@)", header: "HLRBRep_BCurveTool.hxx".}
proc Poles*(C: BRepAdaptor_Curve; T: var TColgp_Array1OfPnt) {.
    importcpp: "HLRBRep_BCurveTool::Poles(@)", header: "HLRBRep_BCurveTool.hxx".}
proc PolesAndWeights*(C: BRepAdaptor_Curve; T: var TColgp_Array1OfPnt;
                     W: var TColStd_Array1OfReal) {.
    importcpp: "HLRBRep_BCurveTool::PolesAndWeights(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc NbSamples*(C: BRepAdaptor_Curve; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_BCurveTool::NbSamples(@)",
    header: "HLRBRep_BCurveTool.hxx".}