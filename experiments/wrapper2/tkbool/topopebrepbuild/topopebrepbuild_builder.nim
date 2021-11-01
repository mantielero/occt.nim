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
when defined(FillSolid):
  discard
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


proc newTopOpeBRepBuildBuilder*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Builder(@)", dynlib: tkfillet.}
proc destroyTopOpeBRepBuildBuilder*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_Builder()", dynlib: tkfillet.}
proc changeBuildTool*(this: var TopOpeBRepBuildBuilder): var TopOpeBRepDS_BuildTool {.
    cdecl, importcpp: "ChangeBuildTool", dynlib: tkfillet.}
proc buildTool*(this: TopOpeBRepBuildBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, cdecl, importcpp: "BuildTool", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.cdecl, importcpp: "Perform", dynlib: tkfillet.}
proc dataStructure*(this: TopOpeBRepBuildBuilder): Handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, cdecl, importcpp: "DataStructure",
                                  dynlib: tkfillet.}
proc clear*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "Clear",
    dynlib: tkfillet.}
proc mergeEdges*(this: var TopOpeBRepBuildBuilder; l1: TopToolsListOfShape;
                tb1: TopAbsState; l2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.cdecl,
    importcpp: "MergeEdges", dynlib: tkfillet.}
proc mergeFaces*(this: var TopOpeBRepBuildBuilder; s1: TopToolsListOfShape;
                tb1: TopAbsState; s2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.cdecl,
    importcpp: "MergeFaces", dynlib: tkfillet.}
proc mergeSolids*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeSolids", dynlib: tkfillet.}
proc mergeShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeShapes", dynlib: tkfillet.}
proc `end`*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "End",
    dynlib: tkfillet.}
proc classify*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Classify", dynlib: tkfillet.}
proc changeClassify*(this: var TopOpeBRepBuildBuilder; b: bool) {.cdecl,
    importcpp: "ChangeClassify", dynlib: tkfillet.}
proc mergeSolid*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState) {.
    cdecl, importcpp: "MergeSolid", dynlib: tkfillet.}
proc newVertex*(this: TopOpeBRepBuildBuilder; i: cint): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "NewVertex", dynlib: tkfillet.}
proc newEdges*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewEdges", dynlib: tkfillet.}
proc newFaces*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewFaces", dynlib: tkfillet.}
proc isSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsSplit", dynlib: tkfillet.}
proc splits*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Splits", dynlib: tkfillet.}
proc isMerged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsMerged", dynlib: tkfillet.}
proc merged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Merged", dynlib: tkfillet.}
proc initSection*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "InitSection", dynlib: tkfillet.}
proc splitSectionEdges*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "SplitSectionEdges", dynlib: tkfillet.}
proc splitSectionEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape) {.cdecl,
    importcpp: "SplitSectionEdge", dynlib: tkfillet.}
proc sectionCurves*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "SectionCurves", dynlib: tkfillet.}
proc sectionEdges*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "SectionEdges", dynlib: tkfillet.}
proc fillSecEdgeAncestorMap*(this: TopOpeBRepBuildBuilder; aShapeRank: cint;
                            aMapON: TopToolsMapOfShape;
                            anAncMap: var TopToolsDataMapOfShapeShape) {.
    noSideEffect, cdecl, importcpp: "FillSecEdgeAncestorMap", dynlib: tkfillet.}
proc section*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var TopOpeBRepBuildBuilder): TopToolsListOfShape {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc buildVertices*(this: var TopOpeBRepBuildBuilder;
                   ds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "BuildVertices", dynlib: tkfillet.}
proc buildEdges*(this: var TopOpeBRepBuildBuilder;
                ds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "BuildEdges", dynlib: tkfillet.}
proc mSplit*(this: TopOpeBRepBuildBuilder; s: TopAbsState): TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    noSideEffect, cdecl, importcpp: "MSplit", dynlib: tkfillet.}
proc changeMSplit*(this: var TopOpeBRepBuildBuilder; s: TopAbsState): var TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    cdecl, importcpp: "ChangeMSplit", dynlib: tkfillet.}
proc makeEdges*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
               b: var TopOpeBRepBuildEdgeBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "MakeEdges", dynlib: tkfillet.}
proc makeFaces*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
               b: var TopOpeBRepBuildFaceBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "MakeFaces", dynlib: tkfillet.}
proc makeSolids*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "MakeSolids", dynlib: tkfillet.}
proc makeShells*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "MakeShells", dynlib: tkfillet.}
proc changeSplit*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeSplit", dynlib: tkfillet.}
proc opec12*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opec12", dynlib: tkfillet.}
proc opec21*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opec21", dynlib: tkfillet.}
proc opecom*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opecom", dynlib: tkfillet.}
proc opefus*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opefus", dynlib: tkfillet.}
proc shapePosition*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: TopToolsListOfShape): TopAbsState {.cdecl,
    importcpp: "ShapePosition", dynlib: tkfillet.}
proc keepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
               ls: TopToolsListOfShape; t: TopAbsState): bool {.cdecl,
    importcpp: "KeepShape", dynlib: tkfillet.}
proc topType*(s: TopoDS_Shape): TopAbsShapeEnum {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::TopType(@)", dynlib: tkfillet.}
proc reverse*(t1: TopAbsState; t2: TopAbsState): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Reverse(@)", dynlib: tkfillet.}
proc orient*(o: TopAbsOrientation; r: bool): TopAbsOrientation {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Orient(@)", dynlib: tkfillet.}
proc findSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                    l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindSameDomain", dynlib: tkfillet.}
proc findSameDomainSameOrientation*(this: TopOpeBRepBuildBuilder;
                                   lso: var TopToolsListOfShape;
                                   ldo: var TopToolsListOfShape) {.noSideEffect,
    cdecl, importcpp: "FindSameDomainSameOrientation", dynlib: tkfillet.}
proc mapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "MapShapes", dynlib: tkfillet.}
proc clearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "ClearMaps",
    dynlib: tkfillet.}
proc findSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                  l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindSameRank", dynlib: tkfillet.}
proc shapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "ShapeRank", dynlib: tkfillet.}
proc isShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsShapeOf", dynlib: tkfillet.}
proc contains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Contains(@)", dynlib: tkfillet.}
proc findIsKPart*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "FindIsKPart", dynlib: tkfillet.}
proc isKPart*(this: TopOpeBRepBuildBuilder): cint {.noSideEffect, cdecl,
    importcpp: "IsKPart", dynlib: tkfillet.}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "MergeKPart",
    dynlib: tkfillet.}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder; tb1: TopAbsState; tb2: TopAbsState) {.
    cdecl, importcpp: "MergeKPart", dynlib: tkfillet.}
proc mergeKPartiskole*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartiskole", dynlib: tkfillet.}
proc mergeKPartiskoletge*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartiskoletge", dynlib: tkfillet.}
proc mergeKPartisdisj*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartisdisj", dynlib: tkfillet.}
proc mergeKPartisfafa*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartisfafa", dynlib: tkfillet.}
proc mergeKPartissoso*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartissoso", dynlib: tkfillet.}
proc kPiskole*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPiskole",
    dynlib: tkfillet.}
proc kPiskoletge*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "KPiskoletge", dynlib: tkfillet.}
proc kPisdisj*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPisdisj",
    dynlib: tkfillet.}
proc kPisfafa*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPisfafa",
    dynlib: tkfillet.}
proc kPissoso*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPissoso",
    dynlib: tkfillet.}
proc kPClearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "KPClearMaps", dynlib: tkfillet.}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
           L: var TopToolsListOfShape): cint {.noSideEffect, cdecl,
    importcpp: "KPlhg", dynlib: tkfillet.}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, cdecl, importcpp: "KPlhg", dynlib: tkfillet.}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
            L: var TopToolsListOfShape): cint {.noSideEffect, cdecl,
    importcpp: "KPlhsd", dynlib: tkfillet.}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, cdecl, importcpp: "KPlhsd", dynlib: tkfillet.}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptLS1: TopToolsListOfShape; s2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "KPclasSS", dynlib: tkfillet.}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptS1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "KPclasSS", dynlib: tkfillet.}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "KPclasSS", dynlib: tkfillet.}
proc kPiskolesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "KPiskolesh", dynlib: tkfillet.}
proc kPiskoletgesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "KPiskoletgesh", dynlib: tkfillet.}
proc kPSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                  l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "KPSameDomain", dynlib: tkfillet.}
proc kPisdisjsh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPisdisjsh", dynlib: tkfillet.}
proc kPisfafash*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPisfafash", dynlib: tkfillet.}
proc kPissososh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPissososh", dynlib: tkfillet.}
proc kPiskoleanalyse*(this: TopOpeBRepBuildBuilder; ft1: TopAbsState;
                     ft2: TopAbsState; st1: TopAbsState; st2: TopAbsState;
                     i: var cint; i1: var cint; i2: var cint) {.noSideEffect, cdecl,
    importcpp: "KPiskoleanalyse", dynlib: tkfillet.}
proc kPiskoletgeanalyse*(this: TopOpeBRepBuildBuilder; conf: TopOpeBRepDS_Config;
                        st1: TopAbsState; st2: TopAbsState; i: var cint) {.
    noSideEffect, cdecl, importcpp: "KPiskoletgeanalyse", dynlib: tkfillet.}
proc kPisdisjanalyse*(this: TopOpeBRepBuildBuilder; st1: TopAbsState;
                     st2: TopAbsState; i: var cint; ic1: var cint; ic2: var cint) {.
    noSideEffect, cdecl, importcpp: "KPisdisjanalyse", dynlib: tkfillet.}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum; L: var TopToolsListOfShape): cint {.
    cdecl, importcpp: "TopOpeBRepBuild_Builder::KPls(@)", dynlib: tkfillet.}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)", dynlib: tkfillet.}
proc kPclassF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "KPclassF", dynlib: tkfillet.}
proc kPclassFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
               t1: var TopAbsState; t2: var TopAbsState) {.cdecl,
    importcpp: "KPclassFF", dynlib: tkfillet.}
proc kPiskoleFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
                t1: var TopAbsState; t2: var TopAbsState): bool {.cdecl,
    importcpp: "KPiskoleFF", dynlib: tkfillet.}
proc kPContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::KPContains(@)", dynlib: tkfillet.}
proc kPmakeface*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                lf2: TopToolsListOfShape; t1: TopAbsState; t2: TopAbsState; r1: bool;
                r2: bool): TopoDS_Shape {.cdecl, importcpp: "KPmakeface",
                                       dynlib: tkfillet.}
proc kPreturn*(kp: cint): cint {.cdecl,
                             importcpp: "TopOpeBRepBuild_Builder::KPreturn(@)",
                             dynlib: tkfillet.}
proc splitEvisoONperiodicF*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "SplitEvisoONperiodicF", dynlib: tkfillet.}
proc gMergeSolids*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeSolids", dynlib: tkfillet.}
proc gFillSolidsSFS*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                    lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidsSFS", dynlib: tkfillet.}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidSFS", dynlib: tkfillet.}
proc gFillSurfaceTopologySFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSurfaceTopologySFS", dynlib: tkfillet.}
proc gFillSurfaceTopologySFS*(this: TopOpeBRepBuildBuilder;
                             it: TopOpeBRepDS_SurfaceIterator;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.noSideEffect,
    cdecl, importcpp: "GFillSurfaceTopologySFS", dynlib: tkfillet.}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillShellSFS", dynlib: tkfillet.}
proc gFillFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceSFS", dynlib: tkfillet.}
proc gSplitFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                   lSclass: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GSplitFaceSFS", dynlib: tkfillet.}
proc gMergeFaceSFS*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; sfs: var TopOpeBRepBuildShellFaceSet) {.
    cdecl, importcpp: "GMergeFaceSFS", dynlib: tkfillet.}
proc gSplitFace*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.cdecl,
    importcpp: "GSplitFace", dynlib: tkfillet.}
proc addONPatchesSFS*(this: var TopOpeBRepBuildBuilder; g: TopOpeBRepBuildGTopo;
                     sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "AddONPatchesSFS", dynlib: tkfillet.}
proc fillOnPatches*(this: var TopOpeBRepBuildBuilder;
                   anEdgesON: TopToolsListOfShape; aBaseFace: TopoDS_Shape;
                   avoidMap: TopToolsIndexedMapOfOrientedShape) {.cdecl,
    importcpp: "FillOnPatches", dynlib: tkfillet.}
proc findFacesTouchingEdge*(this: TopOpeBRepBuildBuilder; aFace: TopoDS_Shape;
                           anEdge: TopoDS_Shape; aShRank: cint;
                           aFaces: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindFacesTouchingEdge", dynlib: tkfillet.}
proc gMergeFaces*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                 lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeFaces", dynlib: tkfillet.}
proc gFillFacesWES*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFacesWES", dynlib: tkfillet.}
proc gFillFacesWESK*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                    lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet; k: cint) {.cdecl,
    importcpp: "GFillFacesWESK", dynlib: tkfillet.}
proc gFillFacesWESMakeFaces*(this: var TopOpeBRepBuildBuilder;
                            lf1: TopToolsListOfShape; lf2: TopToolsListOfShape;
                            lso: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    cdecl, importcpp: "GFillFacesWESMakeFaces", dynlib: tkfillet.}
proc gFillFaceWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceWES", dynlib: tkfillet.}
proc gFillCurveTopologyWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillCurveTopologyWES", dynlib: tkfillet.}
proc gFillCurveTopologyWES*(this: TopOpeBRepBuildBuilder;
                           it: TopOpeBRepDS_CurveIterator;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.noSideEffect,
    cdecl, importcpp: "GFillCurveTopologyWES", dynlib: tkfillet.}
proc gFillONPartsWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                     g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape;
                     wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillONPartsWES", dynlib: tkfillet.}
proc gFillWireWES*(this: var TopOpeBRepBuildBuilder; w: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireWES", dynlib: tkfillet.}
proc gFillEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeWES", dynlib: tkfillet.}
proc gSplitEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GSplitEdgeWES", dynlib: tkfillet.}
proc gMergeEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; wes: var TopOpeBRepBuildWireEdgeSet) {.
    cdecl, importcpp: "GMergeEdgeWES", dynlib: tkfillet.}
proc gSplitEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.cdecl,
    importcpp: "GSplitEdge", dynlib: tkfillet.}
proc gMergeEdges*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                 le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeEdges", dynlib: tkfillet.}
proc gFillEdgesPVS*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                   le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillEdgesPVS", dynlib: tkfillet.}
proc gFillEdgePVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillEdgePVS", dynlib: tkfillet.}
proc gFillPointTopologyPVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillPointTopologyPVS", dynlib: tkfillet.}
proc gFillPointTopologyPVS*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           it: TopOpeBRepDS_PointIterator;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.noSideEffect, cdecl,
    importcpp: "GFillPointTopologyPVS", dynlib: tkfillet.}
proc gParamOnReference*(this: TopOpeBRepBuildBuilder; v: TopoDS_Vertex;
                       e: TopoDS_Edge; p: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GParamOnReference", dynlib: tkfillet.}
proc gKeepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                lref: TopToolsListOfShape; t: TopAbsState): bool {.cdecl,
    importcpp: "GKeepShape", dynlib: tkfillet.}
proc gKeepShape1*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState; pos: var TopAbsState): bool {.
    cdecl, importcpp: "GKeepShape1", dynlib: tkfillet.}
proc gKeepShapes*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState;
                 lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "GKeepShapes", dynlib: tkfillet.}
proc gSFSMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                    sfs: var TopOpeBRepBuildShellFaceSet;
                    loso: var TopToolsListOfShape) {.cdecl,
    importcpp: "GSFSMakeSolids", dynlib: tkfillet.}
proc gSOBUMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                     sobu: var TopOpeBRepBuildSolidBuilder;
                     loso: var TopToolsListOfShape) {.cdecl,
    importcpp: "GSOBUMakeSolids", dynlib: tkfillet.}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "GWESMakeFaces", dynlib: tkfillet.}
proc gFABUMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    fabu: var TopOpeBRepBuildFaceBuilder;
                    lof: var TopToolsListOfShape;
                    mWisOld: var TopToolsDataMapOfShapeInteger) {.cdecl,
    importcpp: "GFABUMakeFaces", dynlib: tkfillet.}
proc regularizeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                     lnewFace: TopToolsListOfShape; lof: var TopToolsListOfShape) {.
    cdecl, importcpp: "RegularizeFaces", dynlib: tkfillet.}
proc regularizeFace*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    newFace: TopoDS_Shape; lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "RegularizeFace", dynlib: tkfillet.}
proc regularizeSolids*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                      lnewSolid: TopToolsListOfShape; los: var TopToolsListOfShape) {.
    cdecl, importcpp: "RegularizeSolids", dynlib: tkfillet.}
proc regularizeSolid*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                     newSolid: TopoDS_Shape; los: var TopToolsListOfShape) {.cdecl,
    importcpp: "RegularizeSolid", dynlib: tkfillet.}
proc gPVSMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                   pvs: var TopOpeBRepBuildPaveSet; loe: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GPVSMakeEdges", dynlib: tkfillet.}
proc gEDBUMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                    edbu: var TopOpeBRepBuildEdgeBuilder;
                    loe: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GEDBUMakeEdges", dynlib: tkfillet.}
proc gToSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "GToSplit", dynlib: tkfillet.}
proc gToMerge*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "GToMerge", dynlib: tkfillet.}
proc gTakeCommonOfSame*(g: TopOpeBRepBuildGTopo): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfSame(@)", dynlib: tkfillet.}
proc gTakeCommonOfDiff*(g: TopOpeBRepBuildGTopo): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfDiff(@)", dynlib: tkfillet.}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 l1: var TopToolsListOfShape; l2: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GFindSamDom", dynlib: tkfillet.}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                 l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSamDom", dynlib: tkfillet.}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                     lso: var TopToolsListOfShape; ldo: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GFindSamDomSODO", dynlib: tkfillet.}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; lso: var TopToolsListOfShape;
                     ldo: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSamDomSODO", dynlib: tkfillet.}
proc gMapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "GMapShapes", dynlib: tkfillet.}
proc gClearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "GClearMaps",
    dynlib: tkfillet.}
proc gFindSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                   l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSameRank", dynlib: tkfillet.}
proc gShapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "GShapeRank", dynlib: tkfillet.}
proc gIsShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, cdecl, importcpp: "GIsShapeOf", dynlib: tkfillet.}
proc gContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GContains(@)", dynlib: tkfillet.}
proc gCopyList*(lin: TopToolsListOfShape; i1: cint; i2: cint;
               lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)", dynlib: tkfillet.}
proc gCopyList*(lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)", dynlib: tkfillet.}
proc gdumpLS*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape) {.noSideEffect,
    cdecl, importcpp: "GdumpLS", dynlib: tkfillet.}
proc gdumpPNT*(p: Pnt) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::GdumpPNT(@)",
                      dynlib: tkfillet.}
proc gdumpORIPARPNT*(o: TopAbsOrientation; p: cfloat; pnt: Pnt) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GdumpORIPARPNT(@)", dynlib: tkfillet.}
proc gdumpSHA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpSHA", dynlib: tkfillet.}
proc gdumpSHAORI*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpSHAORI", dynlib: tkfillet.}
proc gdumpSHAORIGEO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                    str: pointer = nil) {.noSideEffect, cdecl,
                                      importcpp: "GdumpSHAORIGEO",
                                      dynlib: tkfillet.}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 a: TCollectionAsciiString = ""; b: TCollectionAsciiString = "") {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", dynlib: tkfillet.}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsState;
                 a: TCollectionAsciiString = ""; b: TCollectionAsciiString = "") {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", dynlib: tkfillet.}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 ss: TopOpeBRepBuildShapeSet; a: TCollectionAsciiString = "";
                 b: TCollectionAsciiString = ""; c: TCollectionAsciiString = "\n") {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", dynlib: tkfillet.}
proc gdumpEDG*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpEDG", dynlib: tkfillet.}
proc gdumpEDGVER*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape; v: TopoDS_Shape;
                 str: pointer = nil) {.noSideEffect, cdecl, importcpp: "GdumpEDGVER",
                                   dynlib: tkfillet.}
proc gdumpSAMDOM*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape;
                 str: pointer = nil) {.noSideEffect, cdecl, importcpp: "GdumpSAMDOM",
                                   dynlib: tkfillet.}
proc gdumpEXP*(this: TopOpeBRepBuildBuilder; e: TopOpeBRepToolShapeExplorer) {.
    noSideEffect, cdecl, importcpp: "GdumpEXP", dynlib: tkfillet.}
proc gdumpSOBU*(this: TopOpeBRepBuildBuilder; sb: var TopOpeBRepBuildSolidBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpSOBU", dynlib: tkfillet.}
proc gdumpFABU*(this: TopOpeBRepBuildBuilder; fb: var TopOpeBRepBuildFaceBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpFABU", dynlib: tkfillet.}
proc gdumpEDBU*(this: TopOpeBRepBuildBuilder; eb: var TopOpeBRepBuildEdgeBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpEDBU", dynlib: tkfillet.}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint): bool {.noSideEffect, cdecl,
    importcpp: "GtraceSPS", dynlib: tkfillet.}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint; jS: cint): bool {.
    noSideEffect, cdecl, importcpp: "GtraceSPS", dynlib: tkfillet.}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "GtraceSPS", dynlib: tkfillet.}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; `is`: var cint): bool {.
    noSideEffect, cdecl, importcpp: "GtraceSPS", dynlib: tkfillet.}
proc gdumpSHASETreset*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "GdumpSHASETreset", dynlib: tkfillet.}
proc gdumpSHASETindex*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "GdumpSHASETindex", dynlib: tkfillet.}
proc printGeo*(s: TopoDS_Shape) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintGeo(@)",
                               dynlib: tkfillet.}
proc printSur*(f: TopoDS_Face) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintSur(@)",
                              dynlib: tkfillet.}
proc printCur*(e: TopoDS_Edge) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintCur(@)",
                              dynlib: tkfillet.}
proc printPnt*(v: TopoDS_Vertex) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintPnt(@)",
                                dynlib: tkfillet.}
proc printOri*(s: TopoDS_Shape) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintOri(@)",
                               dynlib: tkfillet.}
proc stringState*(s: TopAbsState): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::StringState(@)", dynlib: tkfillet.}
proc gcheckNBOUNDS*(e: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GcheckNBOUNDS(@)", dynlib: tkfillet.}