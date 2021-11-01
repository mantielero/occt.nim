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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopOpeBRepDS_BuildTool"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Builder"
discard "forward decl of TopOpeBRepBuild_HBuilder"
type
  HandleTopOpeBRepBuildHBuilder* = Handle[TopOpeBRepBuildHBuilder]

## ! The HBuilder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.

type
  TopOpeBRepBuildHBuilder* {.importcpp: "TopOpeBRepBuild_HBuilder",
                            header: "TopOpeBRepBuild_HBuilder.hxx", bycopy.} = object of StandardTransient


proc newTopOpeBRepBuildHBuilder*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildHBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_HBuilder(@)", dynlib: tkfillet.}
proc buildTool*(this: TopOpeBRepBuildHBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, cdecl, importcpp: "BuildTool", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildHBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildHBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.cdecl, importcpp: "Perform", dynlib: tkfillet.}
proc clear*(this: var TopOpeBRepBuildHBuilder) {.cdecl, importcpp: "Clear",
    dynlib: tkfillet.}
proc dataStructure*(this: TopOpeBRepBuildHBuilder): Handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, cdecl, importcpp: "DataStructure",
                                  dynlib: tkfillet.}
proc changeBuildTool*(this: var TopOpeBRepBuildHBuilder): var TopOpeBRepDS_BuildTool {.
    cdecl, importcpp: "ChangeBuildTool", dynlib: tkfillet.}
proc mergeShapes*(this: var TopOpeBRepBuildHBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeShapes", dynlib: tkfillet.}
proc mergeSolids*(this: var TopOpeBRepBuildHBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.cdecl,
    importcpp: "MergeSolids", dynlib: tkfillet.}
proc mergeSolid*(this: var TopOpeBRepBuildHBuilder; s: TopoDS_Shape; tb: TopAbsState) {.
    cdecl, importcpp: "MergeSolid", dynlib: tkfillet.}
proc isSplit*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsSplit", dynlib: tkfillet.}
proc splits*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Splits", dynlib: tkfillet.}
proc isMerged*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "IsMerged", dynlib: tkfillet.}
proc merged*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Merged", dynlib: tkfillet.}
proc newVertex*(this: TopOpeBRepBuildHBuilder; i: cint): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "NewVertex", dynlib: tkfillet.}
proc newEdges*(this: TopOpeBRepBuildHBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewEdges", dynlib: tkfillet.}
proc changeNewEdges*(this: var TopOpeBRepBuildHBuilder; i: cint): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeNewEdges", dynlib: tkfillet.}
proc newFaces*(this: TopOpeBRepBuildHBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "NewFaces", dynlib: tkfillet.}
proc section*(this: var TopOpeBRepBuildHBuilder): TopToolsListOfShape {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc initExtendedSectionDS*(this: var TopOpeBRepBuildHBuilder; k: cint = 3) {.cdecl,
    importcpp: "InitExtendedSectionDS", dynlib: tkfillet.}
proc initSection*(this: var TopOpeBRepBuildHBuilder; k: cint = 3) {.cdecl,
    importcpp: "InitSection", dynlib: tkfillet.}
proc moreSection*(this: TopOpeBRepBuildHBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreSection", dynlib: tkfillet.}
proc nextSection*(this: var TopOpeBRepBuildHBuilder) {.cdecl,
    importcpp: "NextSection", dynlib: tkfillet.}
proc currentSection*(this: TopOpeBRepBuildHBuilder): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "CurrentSection", dynlib: tkfillet.}
proc getDSEdgeFromSectEdge*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                           rank: cint): cint {.cdecl,
    importcpp: "GetDSEdgeFromSectEdge", dynlib: tkfillet.}
proc getDSFaceFromDSEdge*(this: var TopOpeBRepBuildHBuilder; indexEdg: cint;
                         rank: cint): var TColStdListOfInteger {.cdecl,
    importcpp: "GetDSFaceFromDSEdge", dynlib: tkfillet.}
proc getDSCurveFromSectEdge*(this: var TopOpeBRepBuildHBuilder;
                            sectEdge: TopoDS_Shape): cint {.cdecl,
    importcpp: "GetDSCurveFromSectEdge", dynlib: tkfillet.}
proc getDSFaceFromDSCurve*(this: var TopOpeBRepBuildHBuilder; indexCur: cint;
                          rank: cint): cint {.cdecl,
    importcpp: "GetDSFaceFromDSCurve", dynlib: tkfillet.}
proc getDSPointFromNewVertex*(this: var TopOpeBRepBuildHBuilder;
                             newVert: TopoDS_Shape): cint {.cdecl,
    importcpp: "GetDSPointFromNewVertex", dynlib: tkfillet.}
proc edgeCurveAncestors*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                        f1: var TopoDS_Shape; f2: var TopoDS_Shape; ic: var cint): bool {.
    cdecl, importcpp: "EdgeCurveAncestors", dynlib: tkfillet.}
proc edgeSectionAncestors*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                          lf1: var TopToolsListOfShape;
                          lf2: var TopToolsListOfShape;
                          le1: var TopToolsListOfShape;
                          le2: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "EdgeSectionAncestors", dynlib: tkfillet.}
proc isKPart*(this: var TopOpeBRepBuildHBuilder): cint {.cdecl, importcpp: "IsKPart",
    dynlib: tkfillet.}
proc mergeKPart*(this: var TopOpeBRepBuildHBuilder; tb1: TopAbsState; tb2: TopAbsState) {.
    cdecl, importcpp: "MergeKPart", dynlib: tkfillet.}
proc changeBuilder*(this: var TopOpeBRepBuildHBuilder): var TopOpeBRepBuildBuilder {.
    cdecl, importcpp: "ChangeBuilder", dynlib: tkfillet.}