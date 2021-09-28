##  Created on: 1993-06-14
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopOpeBRepTool_ShapeExplorer"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
discard "forward decl of TopOpeBRepBuild_EdgeBuilder"
discard "forward decl of TopOpeBRepBuild_FaceBuilder"
discard "forward decl of TopOpeBRepBuild_SolidBuilder"
discard "forward decl of TopOpeBRepBuild_WireEdgeSet"
discard "forward decl of TopOpeBRepDS_PointIterator"
discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_GTopo"
discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopOpeBRepDS_SurfaceIterator"
discard "forward decl of TopOpeBRepDS_CurveIterator"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
# when defined(FillSolid):
#   discard
## ! The Builder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.

type
  TopOpeBRepBuildBuilder* {.importcpp: "TopOpeBRepBuild_Builder",
                           header: "TopOpeBRepBuild_Builder.hxx", bycopy.} = object ## !
                                                                               ## update
                                                                               ## the
                                                                               ## DS
                                                                               ## by
                                                                               ## creating
                                                                               ## new
                                                                               ## geometries.
                                                                               ## !
                                                                               ## create
                                                                               ## edges
                                                                               ## on
                                                                               ## the
                                                                               ## new
                                                                               ## curve
                                                                               ## <Icurv>.


proc constructTopOpeBRepBuildBuilder*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Builder(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc destroyTopOpeBRepBuildBuilder*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "#.~TopOpeBRepBuild_Builder()",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc changeBuildTool*(this: var TopOpeBRepBuildBuilder): var TopOpeBRepDS_BuildTool {.
    importcpp: "ChangeBuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildTool*(this: TopOpeBRepBuildBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, importcpp: "BuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc dataStructure*(this: TopOpeBRepBuildBuilder): Handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, importcpp: "DataStructure",
                                  header: "TopOpeBRepBuild_Builder.hxx".}
proc clear*(this: var TopOpeBRepBuildBuilder) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeEdges*(this: var TopOpeBRepBuildBuilder; l1: TopToolsListOfShape;
                tb1: TopAbsState; l2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.
    importcpp: "MergeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeFaces*(this: var TopOpeBRepBuildBuilder; s1: TopToolsListOfShape;
                tb1: TopAbsState; s2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.
    importcpp: "MergeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeSolids*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.
    importcpp: "MergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.
    importcpp: "MergeShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc `end`*(this: var TopOpeBRepBuildBuilder) {.importcpp: "End",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc classify*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect,
    importcpp: "Classify", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeClassify*(this: var TopOpeBRepBuildBuilder; b: bool) {.
    importcpp: "ChangeClassify", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeSolid*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState) {.
    importcpp: "MergeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc newVertex*(this: TopOpeBRepBuildBuilder; i: cint): TopoDS_Shape {.noSideEffect,
    importcpp: "NewVertex", header: "TopOpeBRepBuild_Builder.hxx".}
proc newEdges*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc newFaces*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "NewFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc isSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, importcpp: "IsSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc splits*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, importcpp: "Splits", header: "TopOpeBRepBuild_Builder.hxx".}
proc isMerged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, importcpp: "IsMerged", header: "TopOpeBRepBuild_Builder.hxx".}
proc merged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, importcpp: "Merged", header: "TopOpeBRepBuild_Builder.hxx".}
proc initSection*(this: var TopOpeBRepBuildBuilder) {.importcpp: "InitSection",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc splitSectionEdges*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "SplitSectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc splitSectionEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape) {.
    importcpp: "SplitSectionEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc sectionCurves*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    importcpp: "SectionCurves", header: "TopOpeBRepBuild_Builder.hxx".}
proc sectionEdges*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    importcpp: "SectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc fillSecEdgeAncestorMap*(this: TopOpeBRepBuildBuilder; aShapeRank: cint;
                            aMapON: TopToolsMapOfShape;
                            anAncMap: var TopToolsDataMapOfShapeShape) {.
    noSideEffect, importcpp: "FillSecEdgeAncestorMap",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc section*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc section*(this: var TopOpeBRepBuildBuilder): TopToolsListOfShape {.
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildVertices*(this: var TopOpeBRepBuildBuilder;
                   ds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "BuildVertices", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildEdges*(this: var TopOpeBRepBuildBuilder;
                ds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "BuildEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc mSplit*(this: TopOpeBRepBuildBuilder; s: TopAbsState): TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    noSideEffect, importcpp: "MSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeMSplit*(this: var TopOpeBRepBuildBuilder; s: TopAbsState): var TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    importcpp: "ChangeMSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeEdges*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
               b: var TopOpeBRepBuildEdgeBuilder; L: var TopToolsListOfShape) {.
    importcpp: "MakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeFaces*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
               b: var TopOpeBRepBuildFaceBuilder; L: var TopToolsListOfShape) {.
    importcpp: "MakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeSolids*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    importcpp: "MakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeShells*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    importcpp: "MakeShells", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeSplit*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): var TopToolsListOfShape {.
    importcpp: "ChangeSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc opec12*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, importcpp: "Opec12",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc opec21*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, importcpp: "Opec21",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc opecom*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, importcpp: "Opecom",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc opefus*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, importcpp: "Opefus",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc shapePosition*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: TopToolsListOfShape): TopAbsState {.
    importcpp: "ShapePosition", header: "TopOpeBRepBuild_Builder.hxx".}
proc keepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
               ls: TopToolsListOfShape; t: TopAbsState): bool {.
    importcpp: "KeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc topType*(s: TopoDS_Shape): TopAbsShapeEnum {.
    importcpp: "TopOpeBRepBuild_Builder::TopType(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc reverse*(t1: TopAbsState; t2: TopAbsState): bool {.
    importcpp: "TopOpeBRepBuild_Builder::Reverse(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc orient*(o: TopAbsOrientation; r: bool): TopAbsOrientation {.
    importcpp: "TopOpeBRepBuild_Builder::Orient(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                    l2: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "FindSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameDomainSameOrientation*(this: TopOpeBRepBuildBuilder;
                                   lso: var TopToolsListOfShape;
                                   ldo: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "FindSameDomainSameOrientation",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc mapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "MapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc clearMaps*(this: var TopOpeBRepBuildBuilder) {.importcpp: "ClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                  l2: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "FindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc shapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "ShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc isShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, importcpp: "IsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc contains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.
    importcpp: "TopOpeBRepBuild_Builder::Contains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc findIsKPart*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "FindIsKPart",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc isKPart*(this: TopOpeBRepBuildBuilder): cint {.noSideEffect,
    importcpp: "IsKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder) {.importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder; tb1: TopAbsState; tb2: TopAbsState) {.
    importcpp: "MergeKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartiskole*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "MergeKPartiskole", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartiskoletge*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "MergeKPartiskoletge", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartisdisj*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "MergeKPartisdisj", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartisfafa*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "MergeKPartisfafa", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartissoso*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "MergeKPartissoso", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskole*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "KPiskole",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletge*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "KPiskoletge",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisj*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "KPisdisj",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisfafa*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "KPisfafa",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPissoso*(this: var TopOpeBRepBuildBuilder): cint {.importcpp: "KPissoso",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPClearMaps*(this: var TopOpeBRepBuildBuilder) {.importcpp: "KPClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
           L: var TopToolsListOfShape): cint {.noSideEffect, importcpp: "KPlhg",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, importcpp: "KPlhg", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
            L: var TopToolsListOfShape): cint {.noSideEffect, importcpp: "KPlhsd",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, importcpp: "KPlhsd", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptLS1: TopToolsListOfShape; s2: TopoDS_Shape): TopAbsState {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptS1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskolesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, importcpp: "KPiskolesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletgesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, importcpp: "KPiskoletgesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                  l2: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "KPSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisjsh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "KPisdisjsh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisfafash*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "KPisfafash", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPissososh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "KPissososh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoleanalyse*(this: TopOpeBRepBuildBuilder; ft1: TopAbsState;
                     ft2: TopAbsState; st1: TopAbsState; st2: TopAbsState;
                     i: var cint; i1: var cint; i2: var cint) {.noSideEffect,
    importcpp: "KPiskoleanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletgeanalyse*(this: TopOpeBRepBuildBuilder; conf: TopOpeBRepDS_Config;
                        st1: TopAbsState; st2: TopAbsState; i: var cint) {.
    noSideEffect, importcpp: "KPiskoletgeanalyse",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisjanalyse*(this: TopOpeBRepBuildBuilder; st1: TopAbsState;
                     st2: TopAbsState; i: var cint; ic1: var cint; ic2: var cint) {.
    noSideEffect, importcpp: "KPisdisjanalyse",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum; L: var TopToolsListOfShape): cint {.
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclassF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape): TopAbsState {.
    importcpp: "KPclassF", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclassFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
               t1: var TopAbsState; t2: var TopAbsState) {.importcpp: "KPclassFF",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoleFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
                t1: var TopAbsState; t2: var TopAbsState): bool {.
    importcpp: "KPiskoleFF", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.
    importcpp: "TopOpeBRepBuild_Builder::KPContains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPmakeface*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                lf2: TopToolsListOfShape; t1: TopAbsState; t2: TopAbsState; r1: bool;
                r2: bool): TopoDS_Shape {.importcpp: "KPmakeface",
                                       header: "TopOpeBRepBuild_Builder.hxx".}
proc kPreturn*(kp: cint): cint {.importcpp: "TopOpeBRepBuild_Builder::KPreturn(@)",
                             header: "TopOpeBRepBuild_Builder.hxx".}
proc splitEvisoONperiodicF*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "SplitEvisoONperiodicF", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeSolids*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    importcpp: "GMergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSolidsSFS*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                    lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillSolidsSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSurfaceTopologySFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSurfaceTopologySFS*(this: TopOpeBRepBuildBuilder;
                             it: TopOpeBRepDS_SurfaceIterator;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.noSideEffect,
    importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                   lSclass: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GSplitFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeFaceSFS*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GMergeFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitFace*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.
    importcpp: "GSplitFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc addONPatchesSFS*(this: var TopOpeBRepBuildBuilder; g: TopOpeBRepBuildGTopo;
                     sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "AddONPatchesSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc fillOnPatches*(this: var TopOpeBRepBuildBuilder;
                   anEdgesON: TopToolsListOfShape; aBaseFace: TopoDS_Shape;
                   avoidMap: TopToolsIndexedMapOfOrientedShape) {.
    importcpp: "FillOnPatches", header: "TopOpeBRepBuild_Builder.hxx".}
proc findFacesTouchingEdge*(this: TopOpeBRepBuildBuilder; aFace: TopoDS_Shape;
                           anEdge: TopoDS_Shape; aShRank: cint;
                           aFaces: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "FindFacesTouchingEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeFaces*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                 lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    importcpp: "GMergeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWES*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillFacesWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWESK*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                    lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet; k: cint) {.
    importcpp: "GFillFacesWESK", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWESMakeFaces*(this: var TopOpeBRepBuildBuilder;
                            lf1: TopToolsListOfShape; lf2: TopToolsListOfShape;
                            lso: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    importcpp: "GFillFacesWESMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFaceWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.importcpp: "GFillFaceWES",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillCurveTopologyWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillCurveTopologyWES*(this: TopOpeBRepBuildBuilder;
                           it: TopOpeBRepDS_CurveIterator;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.noSideEffect,
    importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillONPartsWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                     g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape;
                     wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillONPartsWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillWireWES*(this: var TopOpeBRepBuildBuilder; w: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.importcpp: "GFillWireWES",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.importcpp: "GFillEdgeWES",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GSplitEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GMergeEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.
    importcpp: "GSplitEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeEdges*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                 le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    importcpp: "GMergeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgesPVS*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                   le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   pvs: var TopOpeBRepBuildPaveSet) {.importcpp: "GFillEdgesPVS",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgePVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  pvs: var TopOpeBRepBuildPaveSet) {.importcpp: "GFillEdgePVS",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillPointTopologyPVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillPointTopologyPVS*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           it: TopOpeBRepDS_PointIterator;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.noSideEffect,
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gParamOnReference*(this: TopOpeBRepBuildBuilder; v: TopoDS_Vertex;
                       e: TopoDS_Edge; p: var cfloat): bool {.noSideEffect,
    importcpp: "GParamOnReference", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                lref: TopToolsListOfShape; t: TopAbsState): bool {.
    importcpp: "GKeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShape1*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState; pos: var TopAbsState): bool {.
    importcpp: "GKeepShape1", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShapes*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState;
                 lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.
    importcpp: "GKeepShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSFSMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                    sfs: var TopOpeBRepBuildShellFaceSet;
                    loso: var TopToolsListOfShape) {.importcpp: "GSFSMakeSolids",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gSOBUMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                     sobu: var TopOpeBRepBuildSolidBuilder;
                     loso: var TopToolsListOfShape) {.importcpp: "GSOBUMakeSolids",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.importcpp: "GWESMakeFaces",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFABUMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    fabu: var TopOpeBRepBuildFaceBuilder;
                    lof: var TopToolsListOfShape;
                    mWisOld: var TopToolsDataMapOfShapeInteger) {.
    importcpp: "GFABUMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                     lnewFace: TopToolsListOfShape; lof: var TopToolsListOfShape) {.
    importcpp: "RegularizeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeFace*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    newFace: TopoDS_Shape; lof: var TopToolsListOfShape) {.
    importcpp: "RegularizeFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeSolids*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                      lnewSolid: TopToolsListOfShape; los: var TopToolsListOfShape) {.
    importcpp: "RegularizeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeSolid*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                     newSolid: TopoDS_Shape; los: var TopToolsListOfShape) {.
    importcpp: "RegularizeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc gPVSMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                   pvs: var TopOpeBRepBuildPaveSet; loe: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "GPVSMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gEDBUMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                    edbu: var TopOpeBRepBuildEdgeBuilder;
                    loe: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "GEDBUMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gToSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, importcpp: "GToSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc gToMerge*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "GToMerge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gTakeCommonOfSame*(g: TopOpeBRepBuildGTopo): bool {.
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfSame(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gTakeCommonOfDiff*(g: TopOpeBRepBuildGTopo): bool {.
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfDiff(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 l1: var TopToolsListOfShape; l2: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                 l2: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                     lso: var TopToolsListOfShape; ldo: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "GFindSamDomSODO",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; lso: var TopToolsListOfShape;
                     ldo: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "GFindSamDomSODO", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "GMapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc gClearMaps*(this: var TopOpeBRepBuildBuilder) {.importcpp: "GClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                   l2: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "GFindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc gShapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "GShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc gIsShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, importcpp: "GIsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc gContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.
    importcpp: "TopOpeBRepBuild_Builder::GContains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gCopyList*(lin: TopToolsListOfShape; i1: cint; i2: cint;
               lou: var TopToolsListOfShape) {.
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gCopyList*(lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpLS*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape) {.noSideEffect,
    importcpp: "GdumpLS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpPNT*(p: Pnt) {.importcpp: "TopOpeBRepBuild_Builder::GdumpPNT(@)",
                      header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpORIPARPNT*(o: TopAbsOrientation; p: cfloat; pnt: Pnt) {.
    importcpp: "TopOpeBRepBuild_Builder::GdumpORIPARPNT(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
              str: StandardAddress = nil) {.noSideEffect, importcpp: "GdumpSHA",
                                        header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHAORI*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 str: StandardAddress = nil) {.noSideEffect,
    importcpp: "GdumpSHAORI", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHAORIGEO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                    str: StandardAddress = nil) {.noSideEffect,
    importcpp: "GdumpSHAORIGEO", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 a: TCollectionAsciiString = ""; b: TCollectionAsciiString = "") {.
    noSideEffect, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsState;
                 a: TCollectionAsciiString = ""; b: TCollectionAsciiString = "") {.
    noSideEffect, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 ss: TopOpeBRepBuildShapeSet; a: TCollectionAsciiString = "";
                 b: TCollectionAsciiString = ""; c: TCollectionAsciiString = "\n") {.
    noSideEffect, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDG*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
              str: StandardAddress = nil) {.noSideEffect, importcpp: "GdumpEDG",
                                        header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDGVER*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape; v: TopoDS_Shape;
                 str: StandardAddress = nil) {.noSideEffect,
    importcpp: "GdumpEDGVER", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSAMDOM*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape;
                 str: StandardAddress = nil) {.noSideEffect,
    importcpp: "GdumpSAMDOM", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEXP*(this: TopOpeBRepBuildBuilder; e: TopOpeBRepToolShapeExplorer) {.
    noSideEffect, importcpp: "GdumpEXP", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSOBU*(this: TopOpeBRepBuildBuilder; sb: var TopOpeBRepBuildSolidBuilder) {.
    noSideEffect, importcpp: "GdumpSOBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpFABU*(this: TopOpeBRepBuildBuilder; fb: var TopOpeBRepBuildFaceBuilder) {.
    noSideEffect, importcpp: "GdumpFABU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDBU*(this: TopOpeBRepBuildBuilder; eb: var TopOpeBRepBuildEdgeBuilder) {.
    noSideEffect, importcpp: "GdumpEDBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint): bool {.noSideEffect,
    importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint; jS: cint): bool {.
    noSideEffect, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; `is`: var cint): bool {.
    noSideEffect, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASETreset*(this: var TopOpeBRepBuildBuilder) {.
    importcpp: "GdumpSHASETreset", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASETindex*(this: var TopOpeBRepBuildBuilder): cint {.
    importcpp: "GdumpSHASETindex", header: "TopOpeBRepBuild_Builder.hxx".}
proc printGeo*(s: TopoDS_Shape) {.importcpp: "TopOpeBRepBuild_Builder::PrintGeo(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc printSur*(f: TopoDS_Face) {.importcpp: "TopOpeBRepBuild_Builder::PrintSur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc printCur*(e: TopoDS_Edge) {.importcpp: "TopOpeBRepBuild_Builder::PrintCur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc printPnt*(v: TopoDS_Vertex) {.importcpp: "TopOpeBRepBuild_Builder::PrintPnt(@)",
                                header: "TopOpeBRepBuild_Builder.hxx".}
proc printOri*(s: TopoDS_Shape) {.importcpp: "TopOpeBRepBuild_Builder::PrintOri(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc stringState*(s: TopAbsState): TCollectionAsciiString {.
    importcpp: "TopOpeBRepBuild_Builder::StringState(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gcheckNBOUNDS*(e: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepBuild_Builder::GcheckNBOUNDS(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}

























