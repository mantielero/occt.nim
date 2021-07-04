##  Created on: 1993-08-18
##  Created by: Christophe MARION
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin, ../gp/gp_Circ,
  ../gp/gp_Elips, ../gp/gp_Hypr, ../gp/gp_Parab, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  HLRBRep_LineTool* {.importcpp: "HLRBRep_LineTool",
                     header: "HLRBRep_LineTool.hxx", bycopy.} = object


proc FirstParameter*(C: gp_Lin): Standard_Real {.
    importcpp: "HLRBRep_LineTool::FirstParameter(@)",
    header: "HLRBRep_LineTool.hxx".}
proc LastParameter*(C: gp_Lin): Standard_Real {.
    importcpp: "HLRBRep_LineTool::LastParameter(@)",
    header: "HLRBRep_LineTool.hxx".}
proc Continuity*(C: gp_Lin): GeomAbs_Shape {.
    importcpp: "HLRBRep_LineTool::Continuity(@)", header: "HLRBRep_LineTool.hxx".}
proc NbIntervals*(C: gp_Lin; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_LineTool::NbIntervals(@)", header: "HLRBRep_LineTool.hxx".}
proc Intervals*(C: gp_Lin; T: var TColStd_Array1OfReal; Sh: GeomAbs_Shape) {.
    importcpp: "HLRBRep_LineTool::Intervals(@)", header: "HLRBRep_LineTool.hxx".}
proc IntervalFirst*(C: gp_Lin): Standard_Real {.
    importcpp: "HLRBRep_LineTool::IntervalFirst(@)",
    header: "HLRBRep_LineTool.hxx".}
proc IntervalLast*(C: gp_Lin): Standard_Real {.
    importcpp: "HLRBRep_LineTool::IntervalLast(@)", header: "HLRBRep_LineTool.hxx".}
proc IntervalContinuity*(C: gp_Lin): GeomAbs_Shape {.
    importcpp: "HLRBRep_LineTool::IntervalContinuity(@)",
    header: "HLRBRep_LineTool.hxx".}
proc IsClosed*(C: gp_Lin): Standard_Boolean {.
    importcpp: "HLRBRep_LineTool::IsClosed(@)", header: "HLRBRep_LineTool.hxx".}
proc IsPeriodic*(C: gp_Lin): Standard_Boolean {.
    importcpp: "HLRBRep_LineTool::IsPeriodic(@)", header: "HLRBRep_LineTool.hxx".}
proc Period*(C: gp_Lin): Standard_Real {.importcpp: "HLRBRep_LineTool::Period(@)",
                                     header: "HLRBRep_LineTool.hxx".}
proc Value*(C: gp_Lin; U: Standard_Real): gp_Pnt {.
    importcpp: "HLRBRep_LineTool::Value(@)", header: "HLRBRep_LineTool.hxx".}
proc D0*(C: gp_Lin; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "HLRBRep_LineTool::D0(@)", header: "HLRBRep_LineTool.hxx".}
proc D1*(C: gp_Lin; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "HLRBRep_LineTool::D1(@)", header: "HLRBRep_LineTool.hxx".}
proc D2*(C: gp_Lin; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "HLRBRep_LineTool::D2(@)", header: "HLRBRep_LineTool.hxx".}
proc D3*(C: gp_Lin; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.importcpp: "HLRBRep_LineTool::D3(@)",
                       header: "HLRBRep_LineTool.hxx".}
proc DN*(C: gp_Lin; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "HLRBRep_LineTool::DN(@)", header: "HLRBRep_LineTool.hxx".}
proc Resolution*(C: gp_Lin; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_LineTool::Resolution(@)", header: "HLRBRep_LineTool.hxx".}
proc GetType*(C: gp_Lin): GeomAbs_CurveType {.
    importcpp: "HLRBRep_LineTool::GetType(@)", header: "HLRBRep_LineTool.hxx".}
proc Line*(C: gp_Lin): gp_Lin {.importcpp: "HLRBRep_LineTool::Line(@)",
                            header: "HLRBRep_LineTool.hxx".}
proc Circle*(C: gp_Lin): gp_Circ {.importcpp: "HLRBRep_LineTool::Circle(@)",
                               header: "HLRBRep_LineTool.hxx".}
proc Ellipse*(C: gp_Lin): gp_Elips {.importcpp: "HLRBRep_LineTool::Ellipse(@)",
                                 header: "HLRBRep_LineTool.hxx".}
proc Hyperbola*(C: gp_Lin): gp_Hypr {.importcpp: "HLRBRep_LineTool::Hyperbola(@)",
                                  header: "HLRBRep_LineTool.hxx".}
proc Parabola*(C: gp_Lin): gp_Parab {.importcpp: "HLRBRep_LineTool::Parabola(@)",
                                  header: "HLRBRep_LineTool.hxx".}
proc Bezier*(C: gp_Lin): handle[Geom_BezierCurve] {.
    importcpp: "HLRBRep_LineTool::Bezier(@)", header: "HLRBRep_LineTool.hxx".}
proc BSpline*(C: gp_Lin): handle[Geom_BSplineCurve] {.
    importcpp: "HLRBRep_LineTool::BSpline(@)", header: "HLRBRep_LineTool.hxx".}
proc Degree*(C: gp_Lin): Standard_Integer {.importcpp: "HLRBRep_LineTool::Degree(@)",
                                        header: "HLRBRep_LineTool.hxx".}
proc NbPoles*(C: gp_Lin): Standard_Integer {.
    importcpp: "HLRBRep_LineTool::NbPoles(@)", header: "HLRBRep_LineTool.hxx".}
proc Poles*(C: gp_Lin; TP: var TColgp_Array1OfPnt) {.
    importcpp: "HLRBRep_LineTool::Poles(@)", header: "HLRBRep_LineTool.hxx".}
proc IsRational*(C: gp_Lin): Standard_Boolean {.
    importcpp: "HLRBRep_LineTool::IsRational(@)", header: "HLRBRep_LineTool.hxx".}
proc PolesAndWeights*(C: gp_Lin; TP: var TColgp_Array1OfPnt;
                     TW: var TColStd_Array1OfReal) {.
    importcpp: "HLRBRep_LineTool::PolesAndWeights(@)",
    header: "HLRBRep_LineTool.hxx".}
proc NbKnots*(C: gp_Lin): Standard_Integer {.
    importcpp: "HLRBRep_LineTool::NbKnots(@)", header: "HLRBRep_LineTool.hxx".}
proc KnotsAndMultiplicities*(C: gp_Lin; TK: var TColStd_Array1OfReal;
                            TM: var TColStd_Array1OfInteger) {.
    importcpp: "HLRBRep_LineTool::KnotsAndMultiplicities(@)",
    header: "HLRBRep_LineTool.hxx".}
proc NbSamples*(C: gp_Lin; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_LineTool::NbSamples(@)", header: "HLRBRep_LineTool.hxx".}
proc SamplePars*(C: gp_Lin; U0: Standard_Real; U1: Standard_Real; Defl: Standard_Real;
                NbMin: Standard_Integer; Pars: var handle[TColStd_HArray1OfReal]) {.
    importcpp: "HLRBRep_LineTool::SamplePars(@)", header: "HLRBRep_LineTool.hxx".}