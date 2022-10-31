import ../../tkmath/tcolgp/tcolgp_types
import ../../tkbool/topopebrepbuild/topopebrepbuild_types
import ../tkfillet/chfids/chfids_types
import ../tkfillet/chfi3d/chfi3d_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import brepfilletapi_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkgeomalgo/law/law_types



##  Created on: 1994-06-17
##  Created by: Modeling
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newFillet*(s: TopoDS_Shape;
                                 fShape: ChFi3dFilletShape = chFi3dRational): BRepFilletAPI_MakeFillet {.
    cdecl, constructor, importcpp: "BRepFilletAPI_MakeFillet(@)", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setParams*(this: var BRepFilletAPI_MakeFillet; tang: cfloat; tesp: cfloat;
               t2d: cfloat; tApp3d: cfloat; tolApp2d: cfloat; fleche: cfloat) {.cdecl,
    importcpp: "SetParams", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setContinuity*(this: var BRepFilletAPI_MakeFillet;
                   internalContinuity: GeomAbsShape; angularTolerance: cfloat) {.
    cdecl, importcpp: "SetContinuity", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; r1: cfloat; r2: cfloat; e: TopoDS_Edge) {.
    cdecl, importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; e: TopoDS_Edge) {.
    cdecl, importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
         e: TopoDS_Edge) {.cdecl, importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint; iinC: cint) {.
    cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; r1: cfloat; r2: cfloat; ic: cint;
               iinC: cint) {.cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; ic: cint;
               iinC: cint) {.cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
               ic: cint; iinC: cint) {.cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc resetContour*(this: var BRepFilletAPI_MakeFillet; ic: cint) {.cdecl,
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: cint): bool {.cdecl,
    importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: cint): cfloat {.cdecl,
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): bool {.
    cdecl, importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): cfloat {.
    cdecl, importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint;
               e: TopoDS_Edge) {.cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint;
               v: TopoDS_Vertex) {.cdecl, importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc getBounds*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge;
               f: var cfloat; L: var cfloat): bool {.cdecl, importcpp: "GetBounds",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc getLaw*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): Handle[
    LawFunction] {.cdecl, importcpp: "GetLaw", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setLaw*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.cdecl, importcpp: "SetLaw", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setFilletShape*(this: var BRepFilletAPI_MakeFillet; fShape: ChFi3dFilletShape) {.
    cdecl, importcpp: "SetFilletShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc getFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3dFilletShape {.
    noSideEffect, cdecl, importcpp: "GetFilletShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbContours*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc contour*(this: BRepFilletAPI_MakeFillet; e: TopoDS_Edge): cint {.noSideEffect,
    cdecl, importcpp: "Contour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbEdges*(this: BRepFilletAPI_MakeFillet; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", header: "BRepFilletAPI_MakeFillet.hxx".}
proc edge*(this: BRepFilletAPI_MakeFillet; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "Edge", header: "BRepFilletAPI_MakeFillet.hxx".}
proc remove*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.cdecl,
    importcpp: "Remove", header: "BRepFilletAPI_MakeFillet.hxx".}
proc length*(this: BRepFilletAPI_MakeFillet; ic: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", header: "BRepFilletAPI_MakeFillet.hxx".}
proc firstVertex*(this: BRepFilletAPI_MakeFillet; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc lastVertex*(this: BRepFilletAPI_MakeFillet; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "LastVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc abscissa*(this: BRepFilletAPI_MakeFillet; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "Abscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeFillet; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc closedAndTangent*(this: BRepFilletAPI_MakeFillet; ic: cint): bool {.noSideEffect,
    cdecl, importcpp: "ClosedAndTangent", header: "BRepFilletAPI_MakeFillet.hxx".}
proc closed*(this: BRepFilletAPI_MakeFillet; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", header: "BRepFilletAPI_MakeFillet.hxx".}
proc build*(this: var BRepFilletAPI_MakeFillet) {.cdecl, importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc reset*(this: var BRepFilletAPI_MakeFillet) {.cdecl, importcpp: "Reset",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc builder*(this: BRepFilletAPI_MakeFillet): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, cdecl, importcpp: "Builder", header: "BRepFilletAPI_MakeFillet.hxx".}
proc generated*(this: var BRepFilletAPI_MakeFillet; eorV: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BRepFilletAPI_MakeFillet.hxx".}
proc modified*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepFilletAPI_MakeFillet.hxx".}
proc isDeleted*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbSurfaces*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc newFaces*(this: var BRepFilletAPI_MakeFillet; i: cint): TopToolsListOfShape {.
    cdecl, importcpp: "NewFaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc simulate*(this: var BRepFilletAPI_MakeFillet; ic: cint) {.cdecl,
    importcpp: "Simulate", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbSurf*(this: BRepFilletAPI_MakeFillet; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbSurf", header: "BRepFilletAPI_MakeFillet.hxx".}
proc sect*(this: BRepFilletAPI_MakeFillet; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, cdecl, importcpp: "Sect", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbFaultyContours*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc faultyContour*(this: BRepFilletAPI_MakeFillet; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "FaultyContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; ic: cint): cint {.
    noSideEffect, cdecl, importcpp: "NbComputedSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc computedSurface*(this: BRepFilletAPI_MakeFillet; ic: cint; `is`: cint): Handle[
    GeomSurface] {.noSideEffect, cdecl, importcpp: "ComputedSurface",
                  header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbFaultyVertices*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyVertices", header: "BRepFilletAPI_MakeFillet.hxx".}
proc faultyVertex*(this: BRepFilletAPI_MakeFillet; iv: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FaultyVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc hasResult*(this: BRepFilletAPI_MakeFillet): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "BRepFilletAPI_MakeFillet.hxx".}
proc badShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "BadShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc stripeStatus*(this: BRepFilletAPI_MakeFillet; ic: cint): ChFiDS_ErrorStatus {.
    noSideEffect, cdecl, importcpp: "StripeStatus", header: "BRepFilletAPI_MakeFillet.hxx".}

