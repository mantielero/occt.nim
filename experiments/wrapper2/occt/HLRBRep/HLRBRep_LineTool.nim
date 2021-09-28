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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  HLRBRepLineTool* {.importcpp: "HLRBRep_LineTool", header: "HLRBRep_LineTool.hxx",
                    bycopy.} = object


proc firstParameter*(c: Lin): cfloat {.importcpp: "HLRBRep_LineTool::FirstParameter(@)",
                                   header: "HLRBRep_LineTool.hxx".}
proc lastParameter*(c: Lin): cfloat {.importcpp: "HLRBRep_LineTool::LastParameter(@)",
                                  header: "HLRBRep_LineTool.hxx".}
proc continuity*(c: Lin): GeomAbsShape {.importcpp: "HLRBRep_LineTool::Continuity(@)",
                                     header: "HLRBRep_LineTool.hxx".}
proc nbIntervals*(c: Lin; s: GeomAbsShape): cint {.
    importcpp: "HLRBRep_LineTool::NbIntervals(@)", header: "HLRBRep_LineTool.hxx".}
proc intervals*(c: Lin; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "HLRBRep_LineTool::Intervals(@)", header: "HLRBRep_LineTool.hxx".}
proc intervalFirst*(c: Lin): cfloat {.importcpp: "HLRBRep_LineTool::IntervalFirst(@)",
                                  header: "HLRBRep_LineTool.hxx".}
proc intervalLast*(c: Lin): cfloat {.importcpp: "HLRBRep_LineTool::IntervalLast(@)",
                                 header: "HLRBRep_LineTool.hxx".}
proc intervalContinuity*(c: Lin): GeomAbsShape {.
    importcpp: "HLRBRep_LineTool::IntervalContinuity(@)",
    header: "HLRBRep_LineTool.hxx".}
proc isClosed*(c: Lin): bool {.importcpp: "HLRBRep_LineTool::IsClosed(@)",
                           header: "HLRBRep_LineTool.hxx".}
proc isPeriodic*(c: Lin): bool {.importcpp: "HLRBRep_LineTool::IsPeriodic(@)",
                             header: "HLRBRep_LineTool.hxx".}
proc period*(c: Lin): cfloat {.importcpp: "HLRBRep_LineTool::Period(@)",
                           header: "HLRBRep_LineTool.hxx".}
proc value*(c: Lin; u: cfloat): Pnt {.importcpp: "HLRBRep_LineTool::Value(@)",
                                header: "HLRBRep_LineTool.hxx".}
proc d0*(c: Lin; u: cfloat; p: var Pnt) {.importcpp: "HLRBRep_LineTool::D0(@)",
                                  header: "HLRBRep_LineTool.hxx".}
proc d1*(c: Lin; u: cfloat; p: var Pnt; v: var Vec) {.importcpp: "HLRBRep_LineTool::D1(@)",
    header: "HLRBRep_LineTool.hxx".}
proc d2*(c: Lin; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "HLRBRep_LineTool::D2(@)", header: "HLRBRep_LineTool.hxx".}
proc d3*(c: Lin; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "HLRBRep_LineTool::D3(@)", header: "HLRBRep_LineTool.hxx".}
proc dn*(c: Lin; u: cfloat; n: cint): Vec {.importcpp: "HLRBRep_LineTool::DN(@)",
                                    header: "HLRBRep_LineTool.hxx".}
proc resolution*(c: Lin; r3d: cfloat): cfloat {.
    importcpp: "HLRBRep_LineTool::Resolution(@)", header: "HLRBRep_LineTool.hxx".}
proc getType*(c: Lin): GeomAbsCurveType {.importcpp: "HLRBRep_LineTool::GetType(@)",
                                      header: "HLRBRep_LineTool.hxx".}
proc line*(c: Lin): Lin {.importcpp: "HLRBRep_LineTool::Line(@)",
                      header: "HLRBRep_LineTool.hxx".}
proc circle*(c: Lin): Circ {.importcpp: "HLRBRep_LineTool::Circle(@)",
                         header: "HLRBRep_LineTool.hxx".}
proc ellipse*(c: Lin): Elips {.importcpp: "HLRBRep_LineTool::Ellipse(@)",
                           header: "HLRBRep_LineTool.hxx".}
proc hyperbola*(c: Lin): Hypr {.importcpp: "HLRBRep_LineTool::Hyperbola(@)",
                            header: "HLRBRep_LineTool.hxx".}
proc parabola*(c: Lin): Parab {.importcpp: "HLRBRep_LineTool::Parabola(@)",
                            header: "HLRBRep_LineTool.hxx".}
proc bezier*(c: Lin): Handle[GeomBezierCurve] {.
    importcpp: "HLRBRep_LineTool::Bezier(@)", header: "HLRBRep_LineTool.hxx".}
proc bSpline*(c: Lin): Handle[GeomBSplineCurve] {.
    importcpp: "HLRBRep_LineTool::BSpline(@)", header: "HLRBRep_LineTool.hxx".}
proc degree*(c: Lin): cint {.importcpp: "HLRBRep_LineTool::Degree(@)",
                         header: "HLRBRep_LineTool.hxx".}
proc nbPoles*(c: Lin): cint {.importcpp: "HLRBRep_LineTool::NbPoles(@)",
                          header: "HLRBRep_LineTool.hxx".}
proc poles*(c: Lin; tp: var TColgpArray1OfPnt) {.
    importcpp: "HLRBRep_LineTool::Poles(@)", header: "HLRBRep_LineTool.hxx".}
proc isRational*(c: Lin): bool {.importcpp: "HLRBRep_LineTool::IsRational(@)",
                             header: "HLRBRep_LineTool.hxx".}
proc polesAndWeights*(c: Lin; tp: var TColgpArray1OfPnt; tw: var TColStdArray1OfReal) {.
    importcpp: "HLRBRep_LineTool::PolesAndWeights(@)",
    header: "HLRBRep_LineTool.hxx".}
proc nbKnots*(c: Lin): cint {.importcpp: "HLRBRep_LineTool::NbKnots(@)",
                          header: "HLRBRep_LineTool.hxx".}
proc knotsAndMultiplicities*(c: Lin; tk: var TColStdArray1OfReal;
                            tm: var TColStdArray1OfInteger) {.
    importcpp: "HLRBRep_LineTool::KnotsAndMultiplicities(@)",
    header: "HLRBRep_LineTool.hxx".}
proc nbSamples*(c: Lin; u0: cfloat; u1: cfloat): cint {.
    importcpp: "HLRBRep_LineTool::NbSamples(@)", header: "HLRBRep_LineTool.hxx".}
proc samplePars*(c: Lin; u0: cfloat; u1: cfloat; defl: cfloat; nbMin: cint;
                pars: var Handle[TColStdHArray1OfReal]) {.
    importcpp: "HLRBRep_LineTool::SamplePars(@)", header: "HLRBRep_LineTool.hxx".}

























