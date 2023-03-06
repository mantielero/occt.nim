import ../gp/gp_types
import ../topabs/topabs_types
import ../tcollection/[tcollection_types, tcollection_asciistring]
import ../topopebreptool/topopebreptool_types
import ../standard/standard_types
import ../toptools/toptools_types
import ../topopebrepds/topopebrepds_types
import ../topods/topods_types
import topopebrepbuild_types





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

when defined(FillSolid):
  discard
## ! The Builder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.



proc newTopOpeBRepBuildBuilder*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Builder(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc destroyTopOpeBRepBuildBuilder*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_Builder()", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeBuildTool*(this: var TopOpeBRepBuildBuilder): var TopOpeBRepDS_BuildTool {.
    cdecl, importcpp: "ChangeBuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildTool*(this: TopOpeBRepBuildBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, cdecl, importcpp: "BuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "Perform", header: "TopOpeBRepBuild_Builder.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.cdecl, importcpp: "Perform", header: "TopOpeBRepBuild_Builder.hxx".}
proc dataStructure*(this: TopOpeBRepBuildBuilder): Handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, cdecl, importcpp: "DataStructure",
                                  header: "TopOpeBRepBuild_Builder.hxx".}
proc clear*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeEdges*(this: var TopOpeBRepBuildBuilder; l1: TopToolsListOfShape;
                tb1: TopAbsState; l2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.cdecl,
    importcpp: "MergeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeFaces*(this: var TopOpeBRepBuildBuilder; s1: TopToolsListOfShape;
                tb1: TopAbsState; s2: TopToolsListOfShape; tb2: TopAbsState;
                onA: bool = false; onB: bool = false; onAB: bool = false) {.cdecl,
    importcpp: "MergeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeSolids*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc `end`*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "End", header: "TopOpeBRepBuild_Builder.hxx".}
proc classify*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Classify", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeClassify*(this: var TopOpeBRepBuildBuilder; b: bool) {.cdecl,
    importcpp: "ChangeClassify", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeSolid*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState) {.
    cdecl, importcpp: "MergeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc newVertex*(this: TopOpeBRepBuildBuilder; i: cint): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "NewVertex", header: "TopOpeBRepBuild_Builder.hxx".}
proc newEdges*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc newFaces*(this: TopOpeBRepBuildBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc isSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc splits*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Splits", header: "TopOpeBRepBuild_Builder.hxx".}
proc isMerged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsMerged", header: "TopOpeBRepBuild_Builder.hxx".}
proc merged*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Merged", header: "TopOpeBRepBuild_Builder.hxx".}
proc initSection*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "InitSection", header: "TopOpeBRepBuild_Builder.hxx".}
proc splitSectionEdges*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "SplitSectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc splitSectionEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape) {.cdecl,
    importcpp: "SplitSectionEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc sectionCurves*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "SectionCurves", header: "TopOpeBRepBuild_Builder.hxx".}
proc sectionEdges*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "SectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc fillSecEdgeAncestorMap*(this: TopOpeBRepBuildBuilder; aShapeRank: cint;
                            aMapON: TopToolsMapOfShape;
                            anAncMap: var TopToolsDataMapOfShapeShape) {.
    noSideEffect, cdecl, importcpp: "FillSecEdgeAncestorMap", header: "TopOpeBRepBuild_Builder.hxx".}
proc section*(this: var TopOpeBRepBuildBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc section*(this: var TopOpeBRepBuildBuilder): TopToolsListOfShape {.cdecl,
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildVertices*(this: var TopOpeBRepBuildBuilder;
                   ds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "BuildVertices", header: "TopOpeBRepBuild_Builder.hxx".}
proc buildEdges*(this: var TopOpeBRepBuildBuilder;
                ds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "BuildEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc mSplit*(this: TopOpeBRepBuildBuilder; s: TopAbsState): TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    noSideEffect, cdecl, importcpp: "MSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeMSplit*(this: var TopOpeBRepBuildBuilder; s: TopAbsState): var TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    cdecl, importcpp: "ChangeMSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeEdges*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
               b: var TopOpeBRepBuildEdgeBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "MakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeFaces*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
               b: var TopOpeBRepBuildFaceBuilder; L: var TopToolsListOfShape) {.cdecl,
    importcpp: "MakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeSolids*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "MakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc makeShells*(this: var TopOpeBRepBuildBuilder;
                b: var TopOpeBRepBuildSolidBuilder; L: var TopToolsListOfShape) {.
    cdecl, importcpp: "MakeShells", header: "TopOpeBRepBuild_Builder.hxx".}
proc changeSplit*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc opec12*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opec12", header: "TopOpeBRepBuild_Builder.hxx".}
proc opec21*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opec21", header: "TopOpeBRepBuild_Builder.hxx".}
proc opecom*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opecom", header: "TopOpeBRepBuild_Builder.hxx".}
proc opefus*(this: TopOpeBRepBuildBuilder): bool {.noSideEffect, cdecl,
    importcpp: "Opefus", header: "TopOpeBRepBuild_Builder.hxx".}
proc shapePosition*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: TopToolsListOfShape): TopAbsState {.cdecl,
    importcpp: "ShapePosition", header: "TopOpeBRepBuild_Builder.hxx".}
proc keepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
               ls: TopToolsListOfShape; t: TopAbsState): bool {.cdecl,
    importcpp: "KeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc topType*(s: TopoDS_Shape): TopAbsShapeEnum {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::TopType(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc reverse*(t1: TopAbsState; t2: TopAbsState): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Reverse(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc orient*(o: TopAbsOrientation; r: bool): TopAbsOrientation {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Orient(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                    l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameDomainSameOrientation*(this: TopOpeBRepBuildBuilder;
                                   lso: var TopToolsListOfShape;
                                   ldo: var TopToolsListOfShape) {.noSideEffect,
    cdecl, importcpp: "FindSameDomainSameOrientation", header: "TopOpeBRepBuild_Builder.hxx".}
proc mapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "MapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc clearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "ClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc findSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                  l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc shapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "ShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc isShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc contains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::Contains(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc findIsKPart*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "FindIsKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc isKPart*(this: TopOpeBRepBuildBuilder): cint {.noSideEffect, cdecl,
    importcpp: "IsKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder; tb1: TopAbsState; tb2: TopAbsState) {.
    cdecl, importcpp: "MergeKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartiskole*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartiskole", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartiskoletge*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartiskoletge", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartisdisj*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartisdisj", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartisfafa*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartisfafa", header: "TopOpeBRepBuild_Builder.hxx".}
proc mergeKPartissoso*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "MergeKPartissoso", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskole*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPiskole",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletge*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "KPiskoletge", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisj*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPisdisj",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisfafa*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPisfafa",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPissoso*(this: var TopOpeBRepBuildBuilder): cint {.cdecl, importcpp: "KPissoso",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc kPClearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "KPClearMaps", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
           L: var TopToolsListOfShape): cint {.noSideEffect, cdecl,
    importcpp: "KPlhg", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhg*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, cdecl, importcpp: "KPlhg", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum;
            L: var TopToolsListOfShape): cint {.noSideEffect, cdecl,
    importcpp: "KPlhsd", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPlhsd*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.
    noSideEffect, cdecl, importcpp: "KPlhsd", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptLS1: TopToolsListOfShape; s2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape;
              exceptS1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclasSS*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskolesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "KPiskolesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletgesh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                   ls: var TopToolsListOfShape; lf: var TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "KPiskoletgesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPSameDomain*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                  l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "KPSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisjsh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPisdisjsh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisfafash*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPisfafash", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPissososh*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "KPissososh", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoleanalyse*(this: TopOpeBRepBuildBuilder; ft1: TopAbsState;
                     ft2: TopAbsState; st1: TopAbsState; st2: TopAbsState;
                     i: var cint; i1: var cint; i2: var cint) {.noSideEffect, cdecl,
    importcpp: "KPiskoleanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoletgeanalyse*(this: TopOpeBRepBuildBuilder; conf: TopOpeBRepDS_Config;
                        st1: TopAbsState; st2: TopAbsState; i: var cint) {.
    noSideEffect, cdecl, importcpp: "KPiskoletgeanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPisdisjanalyse*(this: TopOpeBRepBuildBuilder; st1: TopAbsState;
                     st2: TopAbsState; i: var cint; ic1: var cint; ic2: var cint) {.
    noSideEffect, cdecl, importcpp: "KPisdisjanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum; L: var TopToolsListOfShape): cint {.
    cdecl, importcpp: "TopOpeBRepBuild_Builder::KPls(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPls*(s: TopoDS_Shape; t: TopAbsShapeEnum): cint {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclassF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "KPclassF", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPclassFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
               t1: var TopAbsState; t2: var TopAbsState) {.cdecl,
    importcpp: "KPclassFF", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPiskoleFF*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape; f2: TopoDS_Shape;
                t1: var TopAbsState; t2: var TopAbsState): bool {.cdecl,
    importcpp: "KPiskoleFF", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::KPContains(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc kPmakeface*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                lf2: TopToolsListOfShape; t1: TopAbsState; t2: TopAbsState; r1: bool;
                r2: bool): TopoDS_Shape {.cdecl, importcpp: "KPmakeface",
                                       header: "TopOpeBRepBuild_Builder.hxx".}
proc kPreturn*(kp: cint): cint {.cdecl,
                             importcpp: "TopOpeBRepBuild_Builder::KPreturn(@)",
                             header: "TopOpeBRepBuild_Builder.hxx".}
proc splitEvisoONperiodicF*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "SplitEvisoONperiodicF", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeSolids*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSolidsSFS*(this: var TopOpeBRepBuildBuilder; lso1: TopToolsListOfShape;
                    lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidsSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSurfaceTopologySFS*(this: var TopOpeBRepBuildBuilder; so1: TopoDS_Shape;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillSurfaceTopologySFS*(this: TopOpeBRepBuildBuilder;
                             it: TopOpeBRepDS_SurfaceIterator;
                             g: TopOpeBRepBuildGTopo;
                             sfs: var TopOpeBRepBuildShellFaceSet) {.noSideEffect,
    cdecl, importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                  lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitFaceSFS*(this: var TopOpeBRepBuildBuilder; f1: TopoDS_Shape;
                   lSclass: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GSplitFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeFaceSFS*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; sfs: var TopOpeBRepBuildShellFaceSet) {.
    cdecl, importcpp: "GMergeFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitFace*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.cdecl,
    importcpp: "GSplitFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc addONPatchesSFS*(this: var TopOpeBRepBuildBuilder; g: TopOpeBRepBuildGTopo;
                     sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "AddONPatchesSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc fillOnPatches*(this: var TopOpeBRepBuildBuilder;
                   anEdgesON: TopToolsListOfShape; aBaseFace: TopoDS_Shape;
                   avoidMap: TopToolsIndexedMapOfOrientedShape) {.cdecl,
    importcpp: "FillOnPatches", header: "TopOpeBRepBuild_Builder.hxx".}
proc findFacesTouchingEdge*(this: TopOpeBRepBuildBuilder; aFace: TopoDS_Shape;
                           anEdge: TopoDS_Shape; aShRank: cint;
                           aFaces: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "FindFacesTouchingEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeFaces*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                 lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWES*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFacesWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWESK*(this: var TopOpeBRepBuildBuilder; lf1: TopToolsListOfShape;
                    lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet; k: cint) {.cdecl,
    importcpp: "GFillFacesWESK", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFacesWESMakeFaces*(this: var TopOpeBRepBuildBuilder;
                            lf1: TopToolsListOfShape; lf2: TopToolsListOfShape;
                            lso: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.
    cdecl, importcpp: "GFillFacesWESMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillFaceWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillCurveTopologyWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillCurveTopologyWES*(this: TopOpeBRepBuildBuilder;
                           it: TopOpeBRepDS_CurveIterator;
                           g: TopOpeBRepBuildGTopo;
                           wes: var TopOpeBRepBuildWireEdgeSet) {.noSideEffect,
    cdecl, importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillONPartsWES*(this: var TopOpeBRepBuildBuilder; f: TopoDS_Shape;
                     g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape;
                     wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillONPartsWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillWireWES*(this: var TopOpeBRepBuildBuilder; w: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   lf2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GSplitEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeEdgeWES*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                   g: TopOpeBRepBuildGTopo; wes: var TopOpeBRepBuildWireEdgeSet) {.
    cdecl, importcpp: "GMergeEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSplitEdge*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                g: TopOpeBRepBuildGTopo; lSclass: TopToolsListOfShape) {.cdecl,
    importcpp: "GSplitEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMergeEdges*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                 le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo) {.cdecl,
    importcpp: "GMergeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgesPVS*(this: var TopOpeBRepBuildBuilder; le1: TopToolsListOfShape;
                   le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillEdgesPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillEdgePVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                  le2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                  pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillEdgePVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillPointTopologyPVS*(this: var TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.cdecl,
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFillPointTopologyPVS*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape;
                           it: TopOpeBRepDS_PointIterator;
                           g: TopOpeBRepBuildGTopo;
                           pvs: var TopOpeBRepBuildPaveSet) {.noSideEffect, cdecl,
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gParamOnReference*(this: TopOpeBRepBuildBuilder; v: TopoDS_Vertex;
                       e: TopoDS_Edge; p: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GParamOnReference", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShape*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                lref: TopToolsListOfShape; t: TopAbsState): bool {.cdecl,
    importcpp: "GKeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShape1*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState; pos: var TopAbsState): bool {.
    cdecl, importcpp: "GKeepShape1", header: "TopOpeBRepBuild_Builder.hxx".}
proc gKeepShapes*(this: var TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 lref: TopToolsListOfShape; t: TopAbsState;
                 lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "GKeepShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSFSMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                    sfs: var TopOpeBRepBuildShellFaceSet;
                    loso: var TopToolsListOfShape) {.cdecl,
    importcpp: "GSFSMakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc gSOBUMakeSolids*(this: var TopOpeBRepBuildBuilder; sof: TopoDS_Shape;
                     sobu: var TopOpeBRepBuildSolidBuilder;
                     loso: var TopToolsListOfShape) {.cdecl,
    importcpp: "GSOBUMakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "GWESMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFABUMakeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    fabu: var TopOpeBRepBuildFaceBuilder;
                    lof: var TopToolsListOfShape;
                    mWisOld: var TopToolsDataMapOfShapeInteger) {.cdecl,
    importcpp: "GFABUMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeFaces*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                     lnewFace: TopToolsListOfShape; lof: var TopToolsListOfShape) {.
    cdecl, importcpp: "RegularizeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeFace*(this: var TopOpeBRepBuildBuilder; ff: TopoDS_Shape;
                    newFace: TopoDS_Shape; lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "RegularizeFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeSolids*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                      lnewSolid: TopToolsListOfShape; los: var TopToolsListOfShape) {.
    cdecl, importcpp: "RegularizeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc regularizeSolid*(this: var TopOpeBRepBuildBuilder; ss: TopoDS_Shape;
                     newSolid: TopoDS_Shape; los: var TopToolsListOfShape) {.cdecl,
    importcpp: "RegularizeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc gPVSMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                   pvs: var TopOpeBRepBuildPaveSet; loe: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GPVSMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gEDBUMakeEdges*(this: TopOpeBRepBuildBuilder; ef: TopoDS_Shape;
                    edbu: var TopOpeBRepBuildEdgeBuilder;
                    loe: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GEDBUMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc gToSplit*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; tb: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "GToSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc gToMerge*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "GToMerge", header: "TopOpeBRepBuild_Builder.hxx".}
proc gTakeCommonOfSame*(g: TopOpeBRepBuildGTopo): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfSame(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gTakeCommonOfDiff*(g: TopOpeBRepBuildGTopo): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfDiff(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                 l1: var TopToolsListOfShape; l2: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDom*(this: TopOpeBRepBuildBuilder; l1: var TopToolsListOfShape;
                 l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                     lso: var TopToolsListOfShape; ldo: var TopToolsListOfShape) {.
    noSideEffect, cdecl, importcpp: "GFindSamDomSODO", header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSamDomSODO*(this: TopOpeBRepBuildBuilder; lso: var TopToolsListOfShape;
                     ldo: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSamDomSODO", header: "TopOpeBRepBuild_Builder.hxx".}
proc gMapShapes*(this: var TopOpeBRepBuildBuilder; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "GMapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc gClearMaps*(this: var TopOpeBRepBuildBuilder) {.cdecl, importcpp: "GClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc gFindSameRank*(this: TopOpeBRepBuildBuilder; l1: TopToolsListOfShape; r: cint;
                   l2: var TopToolsListOfShape) {.noSideEffect, cdecl,
    importcpp: "GFindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc gShapeRank*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): cint {.noSideEffect,
    cdecl, importcpp: "GShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc gIsShapeOf*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; i12: cint): bool {.
    noSideEffect, cdecl, importcpp: "GIsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc gContains*(s: TopoDS_Shape; L: TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GContains(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gCopyList*(lin: TopToolsListOfShape; i1: cint; i2: cint;
               lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gCopyList*(lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpLS*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape) {.noSideEffect,
    cdecl, importcpp: "GdumpLS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpPNT*(p: PntObj) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::GdumpPNT(@)",
                      header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpORIPARPNT*(o: TopAbsOrientation; p: cfloat; pnt: PntObj) {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GdumpORIPARPNT(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpSHA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHAORI*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpSHAORI", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHAORIGEO*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape;
                    str: pointer = nil) {.noSideEffect, cdecl,
                                      importcpp: "GdumpSHAORIGEO", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 a: TCollectionAsciiString = newTCollectionAsciiString(""); b: TCollectionAsciiString = newTCollectionAsciiString("")) {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; t: TopAbsState;
                 a: TCollectionAsciiString = newTCollectionAsciiString(""); b: TCollectionAsciiString = newTCollectionAsciiString("")) {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASTA*(this: TopOpeBRepBuildBuilder; `iS`: cint; t: TopAbsState;
                 ss: TopOpeBRepBuildShapeSet; a: TCollectionAsciiString = newTCollectionAsciiString("");
                 b: TCollectionAsciiString = newTCollectionAsciiString(""); c: TCollectionAsciiString = newTCollectionAsciiString("\n")) {.
    noSideEffect, cdecl, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDG*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; str: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "GdumpEDG", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDGVER*(this: TopOpeBRepBuildBuilder; e: TopoDS_Shape; v: TopoDS_Shape;
                 str: pointer = nil) {.noSideEffect, cdecl, importcpp: "GdumpEDGVER",
                                   header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSAMDOM*(this: TopOpeBRepBuildBuilder; L: TopToolsListOfShape;
                 str: pointer = nil) {.noSideEffect, cdecl, importcpp: "GdumpSAMDOM",
                                   header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEXP*(this: TopOpeBRepBuildBuilder; e: TopOpeBRepToolShapeExplorer) {.
    noSideEffect, cdecl, importcpp: "GdumpEXP", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSOBU*(this: TopOpeBRepBuildBuilder; sb: var TopOpeBRepBuildSolidBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpSOBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpFABU*(this: TopOpeBRepBuildBuilder; fb: var TopOpeBRepBuildFaceBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpFABU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpEDBU*(this: TopOpeBRepBuildBuilder; eb: var TopOpeBRepBuildEdgeBuilder) {.
    noSideEffect, cdecl, importcpp: "GdumpEDBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint): bool {.noSideEffect, cdecl,
    importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; `iS`: cint; jS: cint): bool {.
    noSideEffect, cdecl, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gtraceSPS*(this: TopOpeBRepBuildBuilder; s: TopoDS_Shape; `is`: var cint): bool {.
    noSideEffect, cdecl, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASETreset*(this: var TopOpeBRepBuildBuilder) {.cdecl,
    importcpp: "GdumpSHASETreset", header: "TopOpeBRepBuild_Builder.hxx".}
proc gdumpSHASETindex*(this: var TopOpeBRepBuildBuilder): cint {.cdecl,
    importcpp: "GdumpSHASETindex", header: "TopOpeBRepBuild_Builder.hxx".}
proc printGeo*(s: TopoDS_Shape) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintGeo(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc printSur*(f: TopoDS_Face) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintSur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc printCur*(e: TopoDS_Edge) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintCur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc printPnt*(v: TopoDS_Vertex) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintPnt(@)",
                                header: "TopOpeBRepBuild_Builder.hxx".}
proc printOri*(s: TopoDS_Shape) {.cdecl, importcpp: "TopOpeBRepBuild_Builder::PrintOri(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc stringState*(s: TopAbsState): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::StringState(@)", header: "TopOpeBRepBuild_Builder.hxx".}
proc gcheckNBOUNDS*(e: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Builder::GcheckNBOUNDS(@)", header: "TopOpeBRepBuild_Builder.hxx".}


