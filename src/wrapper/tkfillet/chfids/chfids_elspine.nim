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
  ChFiDS_ElSpine* {.importcpp: "ChFiDS_ElSpine", header: "ChFiDS_ElSpine.hxx", bycopy.} = object of Adaptor3dCurve


proc newChFiDS_ElSpine*(): ChFiDS_ElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_ElSpine(@)", dynlib: tkfillet.}
proc firstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkfillet.}
proc lastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkfillet.}
proc getSavedFirstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSavedFirstParameter", dynlib: tkfillet.}
proc getSavedLastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSavedLastParameter", dynlib: tkfillet.}
proc continuity*(this: ChFiDS_ElSpine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkfillet.}
proc nbIntervals*(this: ChFiDS_ElSpine; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: ChFiDS_ElSpine; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkfillet.}
proc trim*(this: ChFiDS_ElSpine; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkfillet.}
proc resolution*(this: ChFiDS_ElSpine; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkfillet.}
proc getType*(this: ChFiDS_ElSpine): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkfillet.}
proc isPeriodic*(this: ChFiDS_ElSpine): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkfillet.}
proc setPeriodic*(this: var ChFiDS_ElSpine; i: bool) {.cdecl, importcpp: "SetPeriodic",
    dynlib: tkfillet.}
proc period*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl, importcpp: "Period",
    dynlib: tkfillet.}
proc value*(this: ChFiDS_ElSpine; absC: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc d0*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkfillet.}
proc d1*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkfillet.}
proc d2*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkfillet.}
proc d3*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkfillet.}
proc firstParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.cdecl,
    importcpp: "FirstParameter", dynlib: tkfillet.}
proc lastParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.cdecl,
    importcpp: "LastParameter", dynlib: tkfillet.}
proc saveFirstParameter*(this: var ChFiDS_ElSpine) {.cdecl,
    importcpp: "SaveFirstParameter", dynlib: tkfillet.}
proc saveLastParameter*(this: var ChFiDS_ElSpine) {.cdecl,
    importcpp: "SaveLastParameter", dynlib: tkfillet.}
proc setOrigin*(this: var ChFiDS_ElSpine; o: cfloat) {.cdecl, importcpp: "SetOrigin",
    dynlib: tkfillet.}
proc firstPointAndTgt*(this: ChFiDS_ElSpine; p: var Pnt; t: var Vec) {.noSideEffect,
    cdecl, importcpp: "FirstPointAndTgt", dynlib: tkfillet.}
proc lastPointAndTgt*(this: ChFiDS_ElSpine; p: var Pnt; t: var Vec) {.noSideEffect, cdecl,
    importcpp: "LastPointAndTgt", dynlib: tkfillet.}
proc nbVertices*(this: ChFiDS_ElSpine): cint {.noSideEffect, cdecl,
    importcpp: "NbVertices", dynlib: tkfillet.}
proc vertexWithTangent*(this: ChFiDS_ElSpine; index: cint): Ax1 {.noSideEffect, cdecl,
    importcpp: "VertexWithTangent", dynlib: tkfillet.}
proc setFirstPointAndTgt*(this: var ChFiDS_ElSpine; p: Pnt; t: Vec) {.cdecl,
    importcpp: "SetFirstPointAndTgt", dynlib: tkfillet.}
proc setLastPointAndTgt*(this: var ChFiDS_ElSpine; p: Pnt; t: Vec) {.cdecl,
    importcpp: "SetLastPointAndTgt", dynlib: tkfillet.}
proc addVertexWithTangent*(this: var ChFiDS_ElSpine; anAx1: Ax1) {.cdecl,
    importcpp: "AddVertexWithTangent", dynlib: tkfillet.}
proc setCurve*(this: var ChFiDS_ElSpine; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkfillet.}
proc previous*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect, cdecl,
    importcpp: "Previous", dynlib: tkfillet.}
proc changePrevious*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.cdecl,
    importcpp: "ChangePrevious", dynlib: tkfillet.}
proc next*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect, cdecl,
    importcpp: "Next", dynlib: tkfillet.}
proc changeNext*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.cdecl,
    importcpp: "ChangeNext", dynlib: tkfillet.}
proc line*(this: ChFiDS_ElSpine): Lin {.noSideEffect, cdecl, importcpp: "Line",
                                    dynlib: tkfillet.}
proc circle*(this: ChFiDS_ElSpine): Circ {.noSideEffect, cdecl, importcpp: "Circle",
                                       dynlib: tkfillet.}
proc ellipse*(this: ChFiDS_ElSpine): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkfillet.}
proc hyperbola*(this: ChFiDS_ElSpine): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkfillet.}
proc parabola*(this: ChFiDS_ElSpine): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkfillet.}
proc bezier*(this: ChFiDS_ElSpine): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", dynlib: tkfillet.}
proc bSpline*(this: ChFiDS_ElSpine): Handle[GeomBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "BSpline", dynlib: tkfillet.}