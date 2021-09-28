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


proc constructChFiDS_ElSpine*(): ChFiDS_ElSpine {.constructor,
    importcpp: "ChFiDS_ElSpine(@)", header: "ChFiDS_ElSpine.hxx".}
proc firstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc lastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_ElSpine.hxx".}
proc getSavedFirstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect,
    importcpp: "GetSavedFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc getSavedLastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect,
    importcpp: "GetSavedLastParameter", header: "ChFiDS_ElSpine.hxx".}
proc continuity*(this: ChFiDS_ElSpine): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ChFiDS_ElSpine.hxx".}
proc nbIntervals*(this: ChFiDS_ElSpine; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "ChFiDS_ElSpine.hxx".}
proc intervals*(this: ChFiDS_ElSpine; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "ChFiDS_ElSpine.hxx".}
proc trim*(this: ChFiDS_ElSpine; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim", header: "ChFiDS_ElSpine.hxx".}
proc resolution*(this: ChFiDS_ElSpine; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "ChFiDS_ElSpine.hxx".}
proc getType*(this: ChFiDS_ElSpine): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ChFiDS_ElSpine.hxx".}
proc isPeriodic*(this: ChFiDS_ElSpine): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "ChFiDS_ElSpine.hxx".}
proc setPeriodic*(this: var ChFiDS_ElSpine; i: bool) {.importcpp: "SetPeriodic",
    header: "ChFiDS_ElSpine.hxx".}
proc period*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, importcpp: "Period",
    header: "ChFiDS_ElSpine.hxx".}
proc value*(this: ChFiDS_ElSpine; absC: cfloat): Pnt {.noSideEffect,
    importcpp: "Value", header: "ChFiDS_ElSpine.hxx".}
proc d0*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "ChFiDS_ElSpine.hxx".}
proc d1*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "ChFiDS_ElSpine.hxx".}
proc d2*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "ChFiDS_ElSpine.hxx".}
proc d3*(this: ChFiDS_ElSpine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "ChFiDS_ElSpine.hxx".}
proc firstParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc lastParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.importcpp: "LastParameter",
    header: "ChFiDS_ElSpine.hxx".}
proc saveFirstParameter*(this: var ChFiDS_ElSpine) {.
    importcpp: "SaveFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc saveLastParameter*(this: var ChFiDS_ElSpine) {.importcpp: "SaveLastParameter",
    header: "ChFiDS_ElSpine.hxx".}
proc setOrigin*(this: var ChFiDS_ElSpine; o: cfloat) {.importcpp: "SetOrigin",
    header: "ChFiDS_ElSpine.hxx".}
proc firstPointAndTgt*(this: ChFiDS_ElSpine; p: var Pnt; t: var Vec) {.noSideEffect,
    importcpp: "FirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc lastPointAndTgt*(this: ChFiDS_ElSpine; p: var Pnt; t: var Vec) {.noSideEffect,
    importcpp: "LastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc nbVertices*(this: ChFiDS_ElSpine): cint {.noSideEffect, importcpp: "NbVertices",
    header: "ChFiDS_ElSpine.hxx".}
proc vertexWithTangent*(this: ChFiDS_ElSpine; index: cint): Ax1 {.noSideEffect,
    importcpp: "VertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc setFirstPointAndTgt*(this: var ChFiDS_ElSpine; p: Pnt; t: Vec) {.
    importcpp: "SetFirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc setLastPointAndTgt*(this: var ChFiDS_ElSpine; p: Pnt; t: Vec) {.
    importcpp: "SetLastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc addVertexWithTangent*(this: var ChFiDS_ElSpine; anAx1: Ax1) {.
    importcpp: "AddVertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc setCurve*(this: var ChFiDS_ElSpine; c: Handle[GeomCurve]) {.
    importcpp: "SetCurve", header: "ChFiDS_ElSpine.hxx".}
proc previous*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect,
    importcpp: "Previous", header: "ChFiDS_ElSpine.hxx".}
proc changePrevious*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.
    importcpp: "ChangePrevious", header: "ChFiDS_ElSpine.hxx".}
proc next*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect,
    importcpp: "Next", header: "ChFiDS_ElSpine.hxx".}
proc changeNext*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.
    importcpp: "ChangeNext", header: "ChFiDS_ElSpine.hxx".}
proc line*(this: ChFiDS_ElSpine): Lin {.noSideEffect, importcpp: "Line",
                                    header: "ChFiDS_ElSpine.hxx".}
proc circle*(this: ChFiDS_ElSpine): Circ {.noSideEffect, importcpp: "Circle",
                                       header: "ChFiDS_ElSpine.hxx".}
proc ellipse*(this: ChFiDS_ElSpine): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "ChFiDS_ElSpine.hxx".}
proc hyperbola*(this: ChFiDS_ElSpine): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "ChFiDS_ElSpine.hxx".}
proc parabola*(this: ChFiDS_ElSpine): Parab {.noSideEffect, importcpp: "Parabola",
    header: "ChFiDS_ElSpine.hxx".}
proc bezier*(this: ChFiDS_ElSpine): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ChFiDS_ElSpine.hxx".}
proc bSpline*(this: ChFiDS_ElSpine): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ChFiDS_ElSpine.hxx".}

























