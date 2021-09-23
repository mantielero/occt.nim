##  Created on: 1995-05-04
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard_Handle, ../GeomAdaptor/GeomAdaptor_Curve, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../TColgp/TColgp_SequenceOfAx1, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Adaptor3d/Adaptor3d_Curve,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_CurveType

discard "forward decl of ChFiDS_SurfData"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Ax1"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  ChFiDS_ElSpine* {.importcpp: "ChFiDS_ElSpine", header: "ChFiDS_ElSpine.hxx", bycopy.} = object of Adaptor3d_Curve


proc constructChFiDS_ElSpine*(): ChFiDS_ElSpine {.constructor,
    importcpp: "ChFiDS_ElSpine(@)", header: "ChFiDS_ElSpine.hxx".}
proc FirstParameter*(this: ChFiDS_ElSpine): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc LastParameter*(this: ChFiDS_ElSpine): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_ElSpine.hxx".}
proc GetSavedFirstParameter*(this: ChFiDS_ElSpine): Standard_Real {.noSideEffect,
    importcpp: "GetSavedFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc GetSavedLastParameter*(this: ChFiDS_ElSpine): Standard_Real {.noSideEffect,
    importcpp: "GetSavedLastParameter", header: "ChFiDS_ElSpine.hxx".}
proc Continuity*(this: ChFiDS_ElSpine): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "ChFiDS_ElSpine.hxx".}
proc NbIntervals*(this: ChFiDS_ElSpine; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "ChFiDS_ElSpine.hxx".}
proc Intervals*(this: ChFiDS_ElSpine; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "ChFiDS_ElSpine.hxx".}
proc Trim*(this: ChFiDS_ElSpine; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "ChFiDS_ElSpine.hxx".}
proc Resolution*(this: ChFiDS_ElSpine; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "ChFiDS_ElSpine.hxx".}
proc GetType*(this: ChFiDS_ElSpine): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ChFiDS_ElSpine.hxx".}
proc IsPeriodic*(this: ChFiDS_ElSpine): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ChFiDS_ElSpine.hxx".}
proc SetPeriodic*(this: var ChFiDS_ElSpine; I: Standard_Boolean) {.
    importcpp: "SetPeriodic", header: "ChFiDS_ElSpine.hxx".}
proc Period*(this: ChFiDS_ElSpine): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "ChFiDS_ElSpine.hxx".}
proc Value*(this: ChFiDS_ElSpine; AbsC: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "ChFiDS_ElSpine.hxx".}
proc D0*(this: ChFiDS_ElSpine; AbsC: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "ChFiDS_ElSpine.hxx".}
proc D1*(this: ChFiDS_ElSpine; AbsC: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "ChFiDS_ElSpine.hxx".}
proc D2*(this: ChFiDS_ElSpine; AbsC: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2", header: "ChFiDS_ElSpine.hxx".}
proc D3*(this: ChFiDS_ElSpine; AbsC: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "ChFiDS_ElSpine.hxx".}
proc FirstParameter*(this: var ChFiDS_ElSpine; P: Standard_Real) {.
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc LastParameter*(this: var ChFiDS_ElSpine; P: Standard_Real) {.
    importcpp: "LastParameter", header: "ChFiDS_ElSpine.hxx".}
proc SaveFirstParameter*(this: var ChFiDS_ElSpine) {.
    importcpp: "SaveFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc SaveLastParameter*(this: var ChFiDS_ElSpine) {.importcpp: "SaveLastParameter",
    header: "ChFiDS_ElSpine.hxx".}
proc SetOrigin*(this: var ChFiDS_ElSpine; O: Standard_Real) {.importcpp: "SetOrigin",
    header: "ChFiDS_ElSpine.hxx".}
proc FirstPointAndTgt*(this: ChFiDS_ElSpine; P: var gp_Pnt; T: var gp_Vec) {.
    noSideEffect, importcpp: "FirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc LastPointAndTgt*(this: ChFiDS_ElSpine; P: var gp_Pnt; T: var gp_Vec) {.noSideEffect,
    importcpp: "LastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc NbVertices*(this: ChFiDS_ElSpine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertices", header: "ChFiDS_ElSpine.hxx".}
proc VertexWithTangent*(this: ChFiDS_ElSpine; Index: Standard_Integer): gp_Ax1 {.
    noSideEffect, importcpp: "VertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc SetFirstPointAndTgt*(this: var ChFiDS_ElSpine; P: gp_Pnt; T: gp_Vec) {.
    importcpp: "SetFirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc SetLastPointAndTgt*(this: var ChFiDS_ElSpine; P: gp_Pnt; T: gp_Vec) {.
    importcpp: "SetLastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc AddVertexWithTangent*(this: var ChFiDS_ElSpine; anAx1: gp_Ax1) {.
    importcpp: "AddVertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc SetCurve*(this: var ChFiDS_ElSpine; C: handle[Geom_Curve]) {.
    importcpp: "SetCurve", header: "ChFiDS_ElSpine.hxx".}
proc Previous*(this: ChFiDS_ElSpine): handle[ChFiDS_SurfData] {.noSideEffect,
    importcpp: "Previous", header: "ChFiDS_ElSpine.hxx".}
proc ChangePrevious*(this: var ChFiDS_ElSpine): var handle[ChFiDS_SurfData] {.
    importcpp: "ChangePrevious", header: "ChFiDS_ElSpine.hxx".}
proc Next*(this: ChFiDS_ElSpine): handle[ChFiDS_SurfData] {.noSideEffect,
    importcpp: "Next", header: "ChFiDS_ElSpine.hxx".}
proc ChangeNext*(this: var ChFiDS_ElSpine): var handle[ChFiDS_SurfData] {.
    importcpp: "ChangeNext", header: "ChFiDS_ElSpine.hxx".}
proc Line*(this: ChFiDS_ElSpine): gp_Lin {.noSideEffect, importcpp: "Line",
                                       header: "ChFiDS_ElSpine.hxx".}
proc Circle*(this: ChFiDS_ElSpine): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "ChFiDS_ElSpine.hxx".}
proc Ellipse*(this: ChFiDS_ElSpine): gp_Elips {.noSideEffect, importcpp: "Ellipse",
    header: "ChFiDS_ElSpine.hxx".}
proc Hyperbola*(this: ChFiDS_ElSpine): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "ChFiDS_ElSpine.hxx".}
proc Parabola*(this: ChFiDS_ElSpine): gp_Parab {.noSideEffect, importcpp: "Parabola",
    header: "ChFiDS_ElSpine.hxx".}
proc Bezier*(this: ChFiDS_ElSpine): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ChFiDS_ElSpine.hxx".}
proc BSpline*(this: ChFiDS_ElSpine): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ChFiDS_ElSpine.hxx".}