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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of Geom_Surface"
type
  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation


proc `new`*(this: var BRepFilletAPI_MakeFillet; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc `new[]`*(this: var BRepFilletAPI_MakeFillet; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new[]",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc `delete[]`*(this: var BRepFilletAPI_MakeFillet; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete[]",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc `new`*(this: var BRepFilletAPI_MakeFillet; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc makeFillet*(s: TopoDS_Shape; fShape: ChFi3dFilletShape = ChFi3dRational): BRepFilletAPI_MakeFillet {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet(@)",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc setParams*(this: var BRepFilletAPI_MakeFillet; tang: StandardReal;
               tesp: StandardReal; t2d: StandardReal; tApp3d: StandardReal;
               tolApp2d: StandardReal; fleche: StandardReal) {.
    importcpp: "SetParams", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc setContinuity*(this: var BRepFilletAPI_MakeFillet;
                   internalContinuity: GeomAbsShape;
                   angularTolerance: StandardReal) {.importcpp: "SetContinuity",
    header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc add*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal; e: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc add*(this: var BRepFilletAPI_MakeFillet; r1: StandardReal; r2: StandardReal;
         e: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc add*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; e: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc add*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
         e: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal; ic: int;
               iinC: int) {.importcpp: "SetRadius",
                          header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; r1: StandardReal;
               r2: StandardReal; ic: int; iinC: int) {.importcpp: "SetRadius",
    header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc setRadius*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; ic: int;
               iinC: int) {.importcpp: "SetRadius",
                          header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc setRadius*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
               ic: int; iinC: int) {.importcpp: "SetRadius",
                                 header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc resetContour*(this: var BRepFilletAPI_MakeFillet; ic: int) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: int): StandardBoolean {.
    importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: int): StandardReal {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: int; e: TopoDS_Edge): StandardBoolean {.
    importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: int; e: TopoDS_Edge): StandardReal {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal; ic: int;
               e: TopoDS_Edge) {.importcpp: "SetRadius",
                               header: "BRepFilletAPI_MakeFillet.hxx".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal; ic: int;
               v: TopoDS_Vertex) {.importcpp: "SetRadius",
                                 header: "BRepFilletAPI_MakeFillet.hxx".}
proc getBounds*(this: var BRepFilletAPI_MakeFillet; ic: int; e: TopoDS_Edge;
               f: var StandardReal; L: var StandardReal): StandardBoolean {.
    importcpp: "GetBounds", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc getLaw*(this: var BRepFilletAPI_MakeFillet; ic: int; e: TopoDS_Edge): Handle[
    LawFunction] {.importcpp: "GetLaw", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc setLaw*(this: var BRepFilletAPI_MakeFillet; ic: int; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.importcpp: "SetLaw",
                                    header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc setFilletShape*(this: var BRepFilletAPI_MakeFillet; fShape: ChFi3dFilletShape) {.
    importcpp: "SetFilletShape", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc getFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3dFilletShape {.
    noSideEffect, importcpp: "GetFilletShape",
    header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc nbContours*(this: BRepFilletAPI_MakeFillet): int {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc contour*(this: BRepFilletAPI_MakeFillet; e: TopoDS_Edge): int {.noSideEffect,
    importcpp: "Contour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbEdges*(this: BRepFilletAPI_MakeFillet; i: int): int {.noSideEffect,
    importcpp: "NbEdges", header: "BRepFilletAPI_MakeFillet.hxx".}
proc edge*(this: BRepFilletAPI_MakeFillet; i: int; j: int): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepFilletAPI_MakeFillet.hxx".}
proc remove*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeFillet.hxx".}
proc length*(this: BRepFilletAPI_MakeFillet; ic: int): StandardReal {.noSideEffect,
    importcpp: "Length", header: "BRepFilletAPI_MakeFillet.hxx".}
proc firstVertex*(this: BRepFilletAPI_MakeFillet; ic: int): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc lastVertex*(this: BRepFilletAPI_MakeFillet; ic: int): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc abscissa*(this: BRepFilletAPI_MakeFillet; ic: int; v: TopoDS_Vertex): StandardReal {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeFillet; ic: int; v: TopoDS_Vertex): StandardReal {.
    noSideEffect, importcpp: "RelativeAbscissa",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc closedAndTangent*(this: BRepFilletAPI_MakeFillet; ic: int): StandardBoolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc closed*(this: BRepFilletAPI_MakeFillet; ic: int): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: "BRepFilletAPI_MakeFillet.hxx".}
proc build*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc reset*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Reset",
    header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc builder*(this: BRepFilletAPI_MakeFillet): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc generated*(this: var BRepFilletAPI_MakeFillet; eorV: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
#[ proc modified*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc isDeleted*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbSurfaces*(this: BRepFilletAPI_MakeFillet): int {.noSideEffect,
    importcpp: "NbSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc newFaces*(this: var BRepFilletAPI_MakeFillet; i: int): TopToolsListOfShape {.
    importcpp: "NewFaces", header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc simulate*(this: var BRepFilletAPI_MakeFillet; ic: int) {.importcpp: "Simulate",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbSurf*(this: BRepFilletAPI_MakeFillet; ic: int): int {.noSideEffect,
    importcpp: "NbSurf", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc sect*(this: BRepFilletAPI_MakeFillet; ic: int; `is`: int): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "BRepFilletAPI_MakeFillet.hxx".} ]#
proc nbFaultyContours*(this: BRepFilletAPI_MakeFillet): int {.noSideEffect,
    importcpp: "NbFaultyContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc faultyContour*(this: BRepFilletAPI_MakeFillet; i: int): int {.noSideEffect,
    importcpp: "FaultyContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; ic: int): int {.noSideEffect,
    importcpp: "NbComputedSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc computedSurface*(this: BRepFilletAPI_MakeFillet; ic: int; `is`: int): Handle[
    GeomSurface] {.noSideEffect, importcpp: "ComputedSurface",
                  header: "BRepFilletAPI_MakeFillet.hxx".}
proc nbFaultyVertices*(this: BRepFilletAPI_MakeFillet): int {.noSideEffect,
    importcpp: "NbFaultyVertices", header: "BRepFilletAPI_MakeFillet.hxx".}
proc faultyVertex*(this: BRepFilletAPI_MakeFillet; iv: int): TopoDS_Vertex {.
    noSideEffect, importcpp: "FaultyVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc hasResult*(this: BRepFilletAPI_MakeFillet): StandardBoolean {.noSideEffect,
    importcpp: "HasResult", header: "BRepFilletAPI_MakeFillet.hxx".}
proc badShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape", header: "BRepFilletAPI_MakeFillet.hxx".}
#[ proc stripeStatus*(this: BRepFilletAPI_MakeFillet; ic: int): ChFiDS_ErrorStatus {.
    noSideEffect, importcpp: "StripeStatus", header: "BRepFilletAPI_MakeFillet.hxx".} ]#