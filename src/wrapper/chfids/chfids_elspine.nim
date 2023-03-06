import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import chfids_types





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



proc newChFiDS_ElSpine*(): ChFiDS_ElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_ElSpine(@)", header: "ChFiDS_ElSpine.hxx".}
proc firstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc lastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "ChFiDS_ElSpine.hxx".}
proc getSavedFirstParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSavedFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc getSavedLastParameter*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSavedLastParameter", header: "ChFiDS_ElSpine.hxx".}
proc continuity*(this: ChFiDS_ElSpine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "ChFiDS_ElSpine.hxx".}
proc nbIntervals*(this: ChFiDS_ElSpine; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "ChFiDS_ElSpine.hxx".}
proc intervals*(this: ChFiDS_ElSpine; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "ChFiDS_ElSpine.hxx".}
proc trim*(this: ChFiDS_ElSpine; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "ChFiDS_ElSpine.hxx".}
proc resolution*(this: ChFiDS_ElSpine; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "ChFiDS_ElSpine.hxx".}
proc getType*(this: ChFiDS_ElSpine): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "ChFiDS_ElSpine.hxx".}
proc isPeriodic*(this: ChFiDS_ElSpine): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "ChFiDS_ElSpine.hxx".}
proc setPeriodic*(this: var ChFiDS_ElSpine; i: bool) {.cdecl, importcpp: "SetPeriodic",
    header: "ChFiDS_ElSpine.hxx".}
proc period*(this: ChFiDS_ElSpine): cfloat {.noSideEffect, cdecl, importcpp: "Period",
    header: "ChFiDS_ElSpine.hxx".}
proc value*(this: ChFiDS_ElSpine; absC: cfloat): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "ChFiDS_ElSpine.hxx".}
proc d0*(this: ChFiDS_ElSpine; absC: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "ChFiDS_ElSpine.hxx".}
proc d1*(this: ChFiDS_ElSpine; absC: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "ChFiDS_ElSpine.hxx".}
proc d2*(this: ChFiDS_ElSpine; absC: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D2", header: "ChFiDS_ElSpine.hxx".}
proc d3*(this: ChFiDS_ElSpine; absC: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "ChFiDS_ElSpine.hxx".}
proc firstParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.cdecl,
    importcpp: "FirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc lastParameter*(this: var ChFiDS_ElSpine; p: cfloat) {.cdecl,
    importcpp: "LastParameter", header: "ChFiDS_ElSpine.hxx".}
proc saveFirstParameter*(this: var ChFiDS_ElSpine) {.cdecl,
    importcpp: "SaveFirstParameter", header: "ChFiDS_ElSpine.hxx".}
proc saveLastParameter*(this: var ChFiDS_ElSpine) {.cdecl,
    importcpp: "SaveLastParameter", header: "ChFiDS_ElSpine.hxx".}
proc setOrigin*(this: var ChFiDS_ElSpine; o: cfloat) {.cdecl, importcpp: "SetOrigin",
    header: "ChFiDS_ElSpine.hxx".}
proc firstPointAndTgt*(this: ChFiDS_ElSpine; p: var gp_Pnt; t: var gp_Vec) {.noSideEffect,
    cdecl, importcpp: "FirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc lastPointAndTgt*(this: ChFiDS_ElSpine; p: var gp_Pnt; t: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "LastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc nbVertices*(this: ChFiDS_ElSpine): cint {.noSideEffect, cdecl,
    importcpp: "NbVertices", header: "ChFiDS_ElSpine.hxx".}
proc vertexWithTangent*(this: ChFiDS_ElSpine; index: cint): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "VertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc setFirstPointAndTgt*(this: var ChFiDS_ElSpine; p: gp_Pnt; t: gp_Vec) {.cdecl,
    importcpp: "SetFirstPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc setLastPointAndTgt*(this: var ChFiDS_ElSpine; p: gp_Pnt; t: gp_Vec) {.cdecl,
    importcpp: "SetLastPointAndTgt", header: "ChFiDS_ElSpine.hxx".}
proc addVertexWithTangent*(this: var ChFiDS_ElSpine; anAx1: Ax1Obj) {.cdecl,
    importcpp: "AddVertexWithTangent", header: "ChFiDS_ElSpine.hxx".}
proc setCurve*(this: var ChFiDS_ElSpine; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "SetCurve", header: "ChFiDS_ElSpine.hxx".}
proc previous*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect, cdecl,
    importcpp: "Previous", header: "ChFiDS_ElSpine.hxx".}
proc changePrevious*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.cdecl,
    importcpp: "ChangePrevious", header: "ChFiDS_ElSpine.hxx".}
proc next*(this: ChFiDS_ElSpine): Handle[ChFiDS_SurfData] {.noSideEffect, cdecl,
    importcpp: "Next", header: "ChFiDS_ElSpine.hxx".}
proc changeNext*(this: var ChFiDS_ElSpine): var Handle[ChFiDS_SurfData] {.cdecl,
    importcpp: "ChangeNext", header: "ChFiDS_ElSpine.hxx".}
proc line*(this: ChFiDS_ElSpine): gp_Lin {.noSideEffect, cdecl, importcpp: "Line",
                                    header: "ChFiDS_ElSpine.hxx".}
proc circle*(this: ChFiDS_ElSpine): gp_Circ {.noSideEffect, cdecl, importcpp: "Circle",
                                       header: "ChFiDS_ElSpine.hxx".}
proc ellipse*(this: ChFiDS_ElSpine): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "ChFiDS_ElSpine.hxx".}
proc hyperbola*(this: ChFiDS_ElSpine): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "ChFiDS_ElSpine.hxx".}
proc parabola*(this: ChFiDS_ElSpine): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "ChFiDS_ElSpine.hxx".}
proc bezier*(this: ChFiDS_ElSpine): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", header: "ChFiDS_ElSpine.hxx".}
proc bSpline*(this: ChFiDS_ElSpine): Handle[GeomBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "BSpline", header: "ChFiDS_ElSpine.hxx".}


