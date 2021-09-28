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
discard "forward decl of TopOpeBRepBuild_HBuilder"
type
  HandleC1C1* = Handle[TopOpeBRepBuildHBuilder]

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


proc constructTopOpeBRepBuildHBuilder*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildHBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_HBuilder(@)",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc buildTool*(this: TopOpeBRepBuildHBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, importcpp: "BuildTool", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc perform*(this: var TopOpeBRepBuildHBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc perform*(this: var TopOpeBRepBuildHBuilder;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_HBuilder.hxx".}
proc clear*(this: var TopOpeBRepBuildHBuilder) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc dataStructure*(this: TopOpeBRepBuildHBuilder): Handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, importcpp: "DataStructure",
                                  header: "TopOpeBRepBuild_HBuilder.hxx".}
proc changeBuildTool*(this: var TopOpeBRepBuildHBuilder): var TopOpeBRepDS_BuildTool {.
    importcpp: "ChangeBuildTool", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc mergeShapes*(this: var TopOpeBRepBuildHBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.
    importcpp: "MergeShapes", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc mergeSolids*(this: var TopOpeBRepBuildHBuilder; s1: TopoDS_Shape;
                 tb1: TopAbsState; s2: TopoDS_Shape; tb2: TopAbsState) {.
    importcpp: "MergeSolids", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc mergeSolid*(this: var TopOpeBRepBuildHBuilder; s: TopoDS_Shape; tb: TopAbsState) {.
    importcpp: "MergeSolid", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc isSplit*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): bool {.
    noSideEffect, importcpp: "IsSplit", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc splits*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): TopToolsListOfShape {.
    noSideEffect, importcpp: "Splits", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc isMerged*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): bool {.
    noSideEffect, importcpp: "IsMerged", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc merged*(this: TopOpeBRepBuildHBuilder; s: TopoDS_Shape; toBuild: TopAbsState): TopToolsListOfShape {.
    noSideEffect, importcpp: "Merged", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc newVertex*(this: TopOpeBRepBuildHBuilder; i: cint): TopoDS_Shape {.noSideEffect,
    importcpp: "NewVertex", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc newEdges*(this: TopOpeBRepBuildHBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc changeNewEdges*(this: var TopOpeBRepBuildHBuilder; i: cint): var TopToolsListOfShape {.
    importcpp: "ChangeNewEdges", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc newFaces*(this: TopOpeBRepBuildHBuilder; i: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "NewFaces", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc section*(this: var TopOpeBRepBuildHBuilder): TopToolsListOfShape {.
    importcpp: "Section", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc initExtendedSectionDS*(this: var TopOpeBRepBuildHBuilder; k: cint = 3) {.
    importcpp: "InitExtendedSectionDS", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc initSection*(this: var TopOpeBRepBuildHBuilder; k: cint = 3) {.
    importcpp: "InitSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc moreSection*(this: TopOpeBRepBuildHBuilder): bool {.noSideEffect,
    importcpp: "MoreSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc nextSection*(this: var TopOpeBRepBuildHBuilder) {.importcpp: "NextSection",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc currentSection*(this: TopOpeBRepBuildHBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "CurrentSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getDSEdgeFromSectEdge*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                           rank: cint): cint {.importcpp: "GetDSEdgeFromSectEdge",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getDSFaceFromDSEdge*(this: var TopOpeBRepBuildHBuilder; indexEdg: cint;
                         rank: cint): var TColStdListOfInteger {.
    importcpp: "GetDSFaceFromDSEdge", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getDSCurveFromSectEdge*(this: var TopOpeBRepBuildHBuilder;
                            sectEdge: TopoDS_Shape): cint {.
    importcpp: "GetDSCurveFromSectEdge", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getDSFaceFromDSCurve*(this: var TopOpeBRepBuildHBuilder; indexCur: cint;
                          rank: cint): cint {.importcpp: "GetDSFaceFromDSCurve",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getDSPointFromNewVertex*(this: var TopOpeBRepBuildHBuilder;
                             newVert: TopoDS_Shape): cint {.
    importcpp: "GetDSPointFromNewVertex", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc edgeCurveAncestors*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                        f1: var TopoDS_Shape; f2: var TopoDS_Shape; ic: var cint): bool {.
    importcpp: "EdgeCurveAncestors", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc edgeSectionAncestors*(this: var TopOpeBRepBuildHBuilder; e: TopoDS_Shape;
                          lf1: var TopToolsListOfShape;
                          lf2: var TopToolsListOfShape;
                          le1: var TopToolsListOfShape;
                          le2: var TopToolsListOfShape): bool {.
    importcpp: "EdgeSectionAncestors", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc isKPart*(this: var TopOpeBRepBuildHBuilder): cint {.importcpp: "IsKPart",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildHBuilder; tb1: TopAbsState; tb2: TopAbsState) {.
    importcpp: "MergeKPart", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc changeBuilder*(this: var TopOpeBRepBuildHBuilder): var TopOpeBRepBuildBuilder {.
    importcpp: "ChangeBuilder", header: "TopOpeBRepBuild_HBuilder.hxx".}
type
  TopOpeBRepBuildHBuilderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepBuild_HBuilder::get_type_name(@)",
                            header: "TopOpeBRepBuild_HBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepBuild_HBuilder::get_type_descriptor(@)",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc dynamicType*(this: TopOpeBRepBuildHBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepBuild_HBuilder.hxx".}

























